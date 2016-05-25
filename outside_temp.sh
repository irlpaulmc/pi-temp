#!/bin/sh

URL='http://www.accuweather.com/en/ie/dublin/207931/weather-forecast/207931'

wget -q -O- "$URL" | awk -F\' '/acm_RecentLocationsCarousel\.push/{print $10}' | head -1
