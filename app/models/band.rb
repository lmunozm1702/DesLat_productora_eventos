class Band < ApplicationRecord
    has_many :concerts, dependent: :destroy

    enum band_type: %i[band girl_band boy_band]

    def all_assistants
        self.concerts.sum(:assistants)
    end

    def this_month_concerts
        self.concerts.where(date: (Date.today.beginning_of_month)..(Date.today)).size
    end

    def last_concert
        self.concerts.order(:date).last
    end

    def last_concert_date
        self.last_concert.date.strftime("%Y - %B - %d")
    end

    def most_popular_concert
        self.concerts.maximum(:assistants)
    end

    def longest_concert
        self.concerts.maximum(:duration)
    end

    def longest_concerts_location
        self.concerts.where(duration: longest_concert)
    end
end
