use strict;
use Time::Piece;

sub {
    [
        200, 
        [ 'Content-Type' => 'text/html;charset=utf-8' ], 
        [ sprintf '<html><body><h1>Time</h1>%s</body></html>', localtime->strftime('%Y-%m-%d %H:%M:%S') ]
    ]
};
