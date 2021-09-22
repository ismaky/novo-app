import Foundation

protocol MovieService {
    <#requirements#>
}


enum MovieListEndpoint: String {
    case nowPlaying = "now_playing"
    case upcoming
    case topRated = "top_rared"
    case popular
    
    var description: String {
        switch self {
            case .nowPlaying: return "Now Playing"
            case .upcoming: return "Upco"
        }
    }
}
