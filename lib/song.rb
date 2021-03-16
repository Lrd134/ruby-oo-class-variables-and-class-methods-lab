class Song
    attr_accessor :name, :artist, :genre
    @@artists = []
    @@genres = []
    @@count = 0
    def initialize(song_name, song_maker, song_genre)
        @name = song_name
        @artist = song_maker
        @genre = song_genre
        @@count += 1
        @@genres << song_genre
        @@artists << song_maker

    end
    def self.artists
        @@artists.uniq
    end
    def self.count
        @@count
    end
    def self.genres
        @@genres.uniq
    end
    def self.genre_count
        count_hash = {}

        
        @@genres.each do | genre_element | 
            
            if count_hash["#{genre_element}"].nil? 
                count_hash["#{genre_element}"] = 1
            else
                count_hash["#{genre_element}"] += 1
            end
        end
        count_hash
    end
    def self.artist_count
        count_hash = {}

        
        @@artists.each do | artist_element | 
            
            if count_hash["#{artist_element}"].nil? 
                count_hash["#{artist_element}"] = 1
            else
                count_hash["#{artist_element}"] += 1
            end
        end
        count_hash
    end
end
