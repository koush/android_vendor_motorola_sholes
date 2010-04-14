# Build configuration for AOSP on A855 (Droid)
$(call inherit-product, build/target/product/generic.mk)
$(call inherit-product, vendor/motorola/sholes-open/device_sholes.mk)

PRODUCT_PACKAGES += \
    DeskClock \
    DownloadProvider \
    Gallery3D \
    GlobalSearch \
    Launcher2 \
    LiveWallpapers \
    LiveWallpapersPicker \
    MagicSmokeWallpapers \
    SoundRecorder \
    VisualizationWallpers \
    VoiceDialer \
    libRS \
    librs_jni

# How this product is called in the build system
PRODUCT_NAME := sholes

# Which actual hardware this is based on (this is a path under vendor/)
PRODUCT_BRAND := motorola
PRODUCT_DEVICE := sholes-open

# The user-visible product name
PRODUCT_MODEL := A855 (Droid)
PRODUCT_MANUFACTURER := Motorola

# Pick up some sounds
include frameworks/base/data/sounds/AudioPackage4.mk

# This is the list of locales included in AOSP builds
PRODUCT_LOCALES := en_US en_GB fr_FR it_IT de_DE es_ES

# This is a high DPI device, so add the hdpi pseudo-locale
PRODUCT_LOCALES += hdpi
