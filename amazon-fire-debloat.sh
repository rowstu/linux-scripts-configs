#!/bin/bash

# script to disable amazon xhite on the new firehd10
# device is called a KFMAWI

adb shell pm disable-user --user 0 com.amazon.legalsettings

#Forced OTA
adb shell pm disable-user --user 0 com.amazon.kindle.otter.oobe.forced.ota

adb shell pm disable-user --user 0 com.amazon.device.software.ota

adb shell pm disable-user --user 0 com.amazon.device.software.ota.override

#Weather
adb shell pm disable-user --user 0 com.amazon.weather

adb shell pm disable-user --user 0 com.amazon.platform

#System updates
adb shell pm disable-user --user 0 com.amazon.settings.systemupdates

#Kindle books
adb shell pm disable-user --user 0 com.amazon.kindle

#Prime video
adb shell pm disable-user --user 0 com.amazon.avod

#Special offers
adb shell pm disable-user --user 0 com.amazon.kindle.kso

#Content Management service
adb shell pm disable-user --user 0 com.amazon.kindle.cms

#Kindle store
adb shell pm disable-user --user 0 com.amazon.webapp

adb shell pm disable-user --user 0 com.amazon.tahoe

adb shell pm disable-user --user 0 com.amazon.iris

adb shell pm disable-user --user 0 com.audible.application.kindle

adb shell pm disable-user --user 0 com.amazon.cloud9.kids

adb shell pm disable-user --user 0 com.amazon.cloud9.contentservice

#Silk browser
adb shell pm disable-user --user 0 com.amazon.cloud9

#Amazon app store
adb shell pm disable-user --user 0 com.amazon.venezia

#Amazon goodreads share
adb shell pm disable-user --user 0 com.amazon.unifiedsharegoodreads

#Goodreads
adb shell pm disable-user --user 0 com.goodreads.kindle

#Amazon gamecircle
adb shell pm disable-user --user 0 com.amazon.ags.app

#Amazon Maps
adb shell pm disable-user --user 0 com.amazon.geo.mapsv2.services

adb shell pm disable-user --user 0 com.amazon.geo.mapsv2

adb shell pm disable-user --user 0 com.amazon.geo.client.maps

#Shop Amazon
adb shell pm disable-user --user 0 com.amazon.windowshop

adb shell pm disable-user --user 0 com.amazon.csapp

adb shell pm disable-user --user 0 amazon.alexa.tablet

adb shell pm disable-user --user 0 com.amazon.dee.app

adb shell pm disable-user --user 0 com.amazon.mp3

adb shell pm disable-user --user 0 com.amazon.photos

#Calendar/Contacts/Email
adb shell pm disable-user --user 0 com.android.calendar
adb shell pm disable-user --user 0 com.android.contacts
adb shell pm disable-user --user 0 com.android.email

#OTA Photo Importer
adb shell pm disable-user --user 0 com.amazon.photos.importer

#Device Setup
adb shell pm disable-user --user 0 com.amazon.kindle.otter.oobe


echo done
