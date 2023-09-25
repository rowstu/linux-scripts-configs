#!/bin/bash

# get shell
pm uninstall -k --user 0 com.tblenovo.wallpaper

# get packages
pm list packages -f
                    
# google

pm uninstall -k --user 0 com.google.android.youtube
pm uninstall -k --user 0 com.google.android.apps.youtube.music.setupwizard                        
pm uninstall -k --user 0 com.google.android.apps.youtube.kids                                      
pm uninstall -k --user 0 com.google.android.apps.youtube.music                                     
pm uninstall -k --user 0 com.google.android.cellbroadcastreceiver                      
pm uninstall -k --user 0 com.google.android.tag                                
pm uninstall -k --user 0 com.google.android.apps.kids.home                     
pm uninstall -k --user 0 com.google.android.apps.books                             
pm uninstall -k --user 0 com.google.android.videos                              
pm uninstall -k --user 0 com.google.android.apps.subscriptions.red              
pm uninstall -k --user 0 com.google.android.googlequicksearchbox                           
pm uninstall -k --user 0 com.google.android.gm                                           
pm uninstall -k --user 0 com.google.android.apps.mediahome.launcher                        
pm uninstall -k --user 0 com.google.android.apps.tachyon                                    
pm uninstall -k --user 0 com.google.android.apps.docs                            
pm uninstall -k --user 0 com.google.android.apps.wellbeing                     
pm uninstall -k --user 0 com.android.chrome                                    
pm uninstall -k --user 0 com.google.android.apps.googleassistant     
pm uninstall -k --user 0 com.google.android.apps.photos
pm uninstall -k --user 0 com.google.android.apps.nbu.files
pm uninstall -k --user 0 com.google.android.apps.walletnfcrel
pm uninstall -k --user 0 com.google.android.calendar
pm uninstall -k --user 0 com.google.android.gms.location.history


#amazon
pm uninstall -k --user 0 com.amazon.mp3   

# ms
pm uninstall -k --user 0 com.microsoft.bing.wallpapers      

# android
pm uninstall -k --user 0 com.android.emergency

# lenovo
pm uninstall -k --user 0 com.lenovo.ota                                  
pm uninstall -k --user 0 com.tblenovo.soundrecorder
pm uninstall -k --user 0 com.tblenovo.center
pm uninstall -k --user 0 com.tblenovo.lenovotips
pm uninstall -k --user 0 com.motorola.demo
pm uninstall -k --user 0 com.lenovo.lsf                                        
pm uninstall -k --user 0 com.lenovo.tbengine
pm uninstall -k --user 0 com.lenovo.screencapture
pm uninstall -k --user 0 com.tblenovo.wallpaper

# do not remove
pm uninstall -k --user 0 com.tblenovo.launcher
