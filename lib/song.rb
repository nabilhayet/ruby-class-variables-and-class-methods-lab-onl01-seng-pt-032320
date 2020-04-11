class Song 
  @@count=0 
  @@genres=[]
  @@artists=[]
  @@uniqgenres=[]
  @@uniqartist=[]
attr_accessor :name, :artist, :genre

def initialize(name,artist,genre)
@name=name 
@artist=artist
@genre=genre
@@count+=1 
@@genres << genre 
@@artists << artist
end 
def self.count 
@@count
end 
def self.genres 
 @@genres.each do |value|
 if  !@@uniqgenres.include?(value)
 @@uniqgenres << value 
 end 
end 
@@uniqgenres
end 
def self.artists 
   @@artists.each do |value|
 if  !@@uniqartist.include?(value)
 @@uniqartist << value 
end 
end 
@@uniqartist
end 

def self.genre_count
  hash1={}
  @@genres.each do |value|
  if hash1[value]
    hash1[value]+=1
  else
    hash1[value]=1
  end
end
hash1
end

def self.artist_count 
  hash2={}
  @@artists.each do |value|
  if hash2["value"]==value
    hash2[value]+=1
  else 
    hash2[value]+=1 
  end 
end 
end 

end 