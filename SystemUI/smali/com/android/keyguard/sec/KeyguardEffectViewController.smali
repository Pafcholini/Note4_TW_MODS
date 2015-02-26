.class public Lcom/android/keyguard/sec/KeyguardEffectViewController;
.super Ljava/lang/Object;
.source "KeyguardEffectViewController.java"

# interfaces
.implements Lcom/android/keyguard/sec/KeyguardEffectViewBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/sec/KeyguardEffectViewController$8;,
        Lcom/android/keyguard/sec/KeyguardEffectViewController$LockSoundChangeCallback;,
        Lcom/android/keyguard/sec/KeyguardEffectViewController$Foreground;,
        Lcom/android/keyguard/sec/KeyguardEffectViewController$Background;
    }
.end annotation


# static fields
.field private static final ACTION_IMAGES_CHANGED:Ljava/lang/String; = "com.sec.android.slidingGallery.LOCKSCREEN_IMAGE_CHANGED"

.field public static final EFFECT_ABSTRACTTILE:I = 0xb

.field public static final EFFECT_AUTUMN:I = 0x53

.field public static final EFFECT_BLIND:I = 0x5

.field public static final EFFECT_BRILLIANTCUT:I = 0x9

.field public static final EFFECT_BRILLIANTRING:I = 0x8

.field public static final EFFECT_GEOMETRICMOSAIC:I = 0xc

.field public static final EFFECT_JUST_LOCK_LIVE_WALLPAPER:I = 0x64

.field public static final EFFECT_LIGHT:I = 0x2

.field public static final EFFECT_LIVEWALLPAPER:I = -0x1

.field public static final EFFECT_MASS_RIPPLE:I = 0x7

.field public static final EFFECT_MASS_TENSION:I = 0x6

.field public static final EFFECT_MONTBLANC:I = 0xa

.field public static final EFFECT_NONE:I = 0x0

.field public static final EFFECT_PARTICLE:I = 0x3

.field public static final EFFECT_RIPPLE:I = 0x1

.field public static final EFFECT_SEASONAL:I = 0x55

.field public static final EFFECT_SPRING:I = 0x51

.field public static final EFFECT_SUMMER:I = 0x52

.field public static final EFFECT_TILT:I = 0x65

.field public static final EFFECT_WATERCOLOR:I = 0x4

.field public static final EFFECT_WINTER:I = 0x54

.field public static final EFFECT_ZOOM_PANNING:I = 0x50

.field private static final EMPTY_WALLPAPER_IMAGE_PATH:Ljava/lang/String; = "/system/wallpaper/keyguard_empty_image.jpg"

.field public static final KEYGUARD_DEFAULT_WALLPAPER_TYPE_BRILLIANT:I = 0x1

.field public static final LOCK_SOUND_ABSTRACT_TILE:Ljava/lang/String; = "/system/media/audio/ui/abstracttile_lock.ogg"

.field public static final LOCK_SOUND_AUTUMN:Ljava/lang/String; = "/system/media/audio/ui/autumn_lock.ogg"

.field public static final LOCK_SOUND_BLIND:Ljava/lang/String; = "/system/media/audio/ui/blind_lock.ogg"

.field public static final LOCK_SOUND_BRILLIANT_CUT:Ljava/lang/String; = "/system/media/audio/ui/brilliantcut_lock.ogg"

.field public static final LOCK_SOUND_BRILLIANT_RING:Ljava/lang/String; = "/system/media/audio/ui/brilliantring_lock.ogg"

.field public static final LOCK_SOUND_GEOMETRIC_MOSAIC:Ljava/lang/String; = "/system/media/audio/ui/GeometricMosaic_lock.ogg"

.field public static final LOCK_SOUND_LENS:Ljava/lang/String; = "/system/media/audio/ui/lens_flare_lock.ogg"

.field public static final LOCK_SOUND_NONE:Ljava/lang/String; = "/system/media/audio/ui/Lock_none_effect.ogg"

.field public static final LOCK_SOUND_PARTICLE:Ljava/lang/String; = "/system/media/audio/ui/Particle_Lock.ogg"

.field public static final LOCK_SOUND_SPRING:Ljava/lang/String; = "/system/media/audio/ui/spring_lock.ogg"

.field public static final LOCK_SOUND_SUMMER:Ljava/lang/String; = "/system/media/audio/ui/summer_lock.ogg"

.field public static final LOCK_SOUND_WINTER:Ljava/lang/String; = "/system/media/audio/ui/winter_lock.ogg"

.field private static final MSG_CHARGE_STATE_CHANGED:I = 0x12f4

.field private static final MSG_WALLPAPER_FILE_CHANGED:I = 0x12f2

.field private static final MSG_WALLPAPER_PATH_CHANGED:I = 0x12f1

.field private static final MSG_WALLPAPER_PRELOAD_CHANGED:I = 0x12f3

.field private static final MSG_WALLPAPER_TYPE_CHANGED:I = 0x12f0

.field private static final RICH_LOCK_CATEGORIES_WALLPAPER_ROOT_PATH:Ljava/lang/String; = "/data/data/com.samsung.android.keyguardwallpaperupdator/files/wallpaper_images"

.field private static final RICH_LOCK_WALLPAPER_ROOT_PATH:Ljava/lang/String; = "/data/data/com.samsung.android.keyguardwallpaperupdator"

.field public static final SETTING_KEYGUARD_DEFAULT_WALLPAPER_TYPE_FOR_EFFECT:Ljava/lang/String; = "keyguard_default_wallpaper_type_for_effect"

.field public static final SETTING_KEYGUARD_SET_DEFAULT_WALLPAPER:Ljava/lang/String; = "keyguard_set_default_wallpaper"

.field public static final SETTING_LOCKSCREEN_MONTBLANC_WALLPAPER:Ljava/lang/String; = "lockscreen_montblanc_wallpaper"

.field public static final SLIDING_INTERNAL_EVERY_12HOUR:I = 0x2

.field public static final SLIDING_INTERNAL_EVERY_1HOUR:I = 0x1

.field public static final SLIDING_INTERNAL_EVERY_24HOUR:I = 0x3

.field public static final SLIDING_INTERNAL_SCREENOFF:I = 0x0

.field public static final SlidingWallpaperPath:Ljava/lang/String; = "com.sec.android.slidingGallery"

.field private static final TAG:Ljava/lang/String; = "KeyguardEffectViewController"

.field public static final UNLOCK_SOUND_AUTUMN:Ljava/lang/String; = "/system/media/audio/ui/autumn_unlock.ogg"

.field public static final UNLOCK_SOUND_LENS:Ljava/lang/String; = "/system/media/audio/ui/lock_screen_silence.ogg"

.field public static final UNLOCK_SOUND_NONE:Ljava/lang/String; = "/system/media/audio/ui/Unlock_none_effect.ogg"

.field public static final UNLOCK_SOUND_PARTICLE:Ljava/lang/String; = "/system/media/audio/ui/lock_screen_silence.ogg"

.field public static final UNLOCK_SOUND_SPRING:Ljava/lang/String; = "/system/media/audio/ui/spring_unlock.ogg"

.field public static final UNLOCK_SOUND_SUMMER:Ljava/lang/String; = "/system/media/audio/ui/summer_unlock.ogg"

.field public static final UNLOCK_SOUND_WINTER:Ljava/lang/String; = "/system/media/audio/ui/winter_unlock.ogg"

.field private static displayHeight:I

.field private static displayWidth:I

.field private static mOrientation:I

.field private static mSlidingHour:I

.field private static mSlidingInterval:I

.field private static mSlidingMin:I

.field private static mSlidingScreenOffTime:J

.field private static mSlidingTime:J

.field private static mSlidingTotalCount:I

.field private static mSlidingWallpaperIndex:I

.field private static sKeyguardEffectViewController:Lcom/android/keyguard/sec/KeyguardEffectViewController;

.field public static uriArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final UNLOCK_EFFECT_VIEW_BACKGROUND:I

.field private final UNLOCK_EFFECT_VIEW_FOREGROUND:I

.field private final mAdminReceiver:Landroid/content/BroadcastReceiver;

.field private mAttributionInfoView:Lcom/android/keyguard/sec/rich/SecAttributionInfoView;

.field private mBackgroundRootLayout:Landroid/widget/FrameLayout;

.field private mBackgroundType:Lcom/android/keyguard/sec/KeyguardEffectViewController$Background;

.field private mBackgroundTypeMapping:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/keyguard/sec/KeyguardEffectViewController$Background;",
            ">;"
        }
    .end annotation
.end field

.field private mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

.field private mBgHasAddChargeView:Z

.field private mBootCompleted:Z

.field private mChargeView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

.field private mContentObserver:Landroid/database/ContentObserver;

.field private mContext:Landroid/content/Context;

.field private mCurrentEffect:I

.field private final mCurrentVoiceCallChnageReceiver:Landroid/content/BroadcastReceiver;

.field private mEmergencyModeStateChanged:Z

.field private mFestivalEffect:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

.field private mFestivalEffectEnabled:Z

.field private mFileObserver:Landroid/os/FileObserver;

.field private mForegroundCircleView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

.field private mForegroundRootLayout:Landroid/widget/FrameLayout;

.field private mForegroundType:Lcom/android/keyguard/sec/KeyguardEffectViewController$Foreground;

.field private mForegroundTypeMapping:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/keyguard/sec/KeyguardEffectViewController$Foreground;",
            ">;"
        }
    .end annotation
.end field

.field private mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

.field private final mHandler:Landroid/os/Handler;

.field mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mIsShowing:Z

.field private mIsVisible:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockSoundChangeCallback:Lcom/android/keyguard/sec/KeyguardEffectViewController$LockSoundChangeCallback;

.field private mMusicBackgroundSet:Z

.field private mNotificationPanel:Landroid/widget/FrameLayout;

.field private mOldBackgroundType:Lcom/android/keyguard/sec/KeyguardEffectViewController$Background;

.field private mOldEffect:I

.field private mOldForegroundType:Lcom/android/keyguard/sec/KeyguardEffectViewController$Foreground;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mRegisterReceiver:Z

.field private mStatusBarGradationView:Landroid/view/View;

.field private mUnlockEffectView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

.field private mUnlockEffectViewMapping:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mUserSwitching:Z

.field protected mWallpaperPath:Ljava/lang/String;

.field private mWallpaperType:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 234
    sput v0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mSlidingInterval:I

    .line 235
    sput v0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mSlidingTotalCount:I

    .line 236
    sput v0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mSlidingHour:I

    .line 237
    sput v0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mSlidingMin:I

    .line 238
    sput-wide v2, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mSlidingTime:J

    .line 239
    sput-wide v2, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mSlidingScreenOffTime:J

    .line 241
    sput v0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mSlidingWallpaperIndex:I

    .line 242
    sput v0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mOrientation:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 372
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    iput v5, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->UNLOCK_EFFECT_VIEW_FOREGROUND:I

    .line 120
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->UNLOCK_EFFECT_VIEW_BACKGROUND:I

    .line 145
    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundTypeMapping:Ljava/util/HashMap;

    .line 146
    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundTypeMapping:Ljava/util/HashMap;

    .line 147
    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mUnlockEffectViewMapping:Ljava/util/HashMap;

    .line 148
    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundRootLayout:Landroid/widget/FrameLayout;

    .line 149
    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundRootLayout:Landroid/widget/FrameLayout;

    .line 150
    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mNotificationPanel:Landroid/widget/FrameLayout;

    .line 151
    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mUnlockEffectView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    .line 153
    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    .line 154
    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    .line 155
    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mChargeView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    .line 156
    iput-boolean v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBgHasAddChargeView:Z

    .line 157
    iput-boolean v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mFestivalEffectEnabled:Z

    .line 159
    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundCircleView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    .line 161
    sget-object v1, Lcom/android/keyguard/sec/KeyguardEffectViewController$Background;->wallpaper:Lcom/android/keyguard/sec/KeyguardEffectViewController$Background;

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundType:Lcom/android/keyguard/sec/KeyguardEffectViewController$Background;

    .line 162
    sget-object v1, Lcom/android/keyguard/sec/KeyguardEffectViewController$Foreground;->circle:Lcom/android/keyguard/sec/KeyguardEffectViewController$Foreground;

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundType:Lcom/android/keyguard/sec/KeyguardEffectViewController$Foreground;

    .line 163
    sget-object v1, Lcom/android/keyguard/sec/KeyguardEffectViewController$Background;->unspecified:Lcom/android/keyguard/sec/KeyguardEffectViewController$Background;

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mOldBackgroundType:Lcom/android/keyguard/sec/KeyguardEffectViewController$Background;

    .line 164
    sget-object v1, Lcom/android/keyguard/sec/KeyguardEffectViewController$Foreground;->unspecified:Lcom/android/keyguard/sec/KeyguardEffectViewController$Foreground;

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mOldForegroundType:Lcom/android/keyguard/sec/KeyguardEffectViewController$Foreground;

    .line 170
    iput-boolean v5, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mIsVisible:Z

    .line 176
    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mAttributionInfoView:Lcom/android/keyguard/sec/rich/SecAttributionInfoView;

    .line 182
    iput-boolean v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mUserSwitching:Z

    .line 200
    iput-boolean v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mMusicBackgroundSet:Z

    .line 201
    iput-boolean v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mRegisterReceiver:Z

    .line 208
    iput-boolean v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBootCompleted:Z

    .line 215
    iput-boolean v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mEmergencyModeStateChanged:Z

    .line 269
    new-instance v1, Lcom/android/keyguard/sec/KeyguardEffectViewController$1;

    invoke-direct {v1, p0}, Lcom/android/keyguard/sec/KeyguardEffectViewController$1;-><init>(Lcom/android/keyguard/sec/KeyguardEffectViewController;)V

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mHandler:Landroid/os/Handler;

    .line 294
    new-instance v1, Lcom/android/keyguard/sec/KeyguardEffectViewController$2;

    invoke-direct {v1, p0}, Lcom/android/keyguard/sec/KeyguardEffectViewController$2;-><init>(Lcom/android/keyguard/sec/KeyguardEffectViewController;)V

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 322
    new-instance v1, Lcom/android/keyguard/sec/KeyguardEffectViewController$3;

    invoke-direct {v1, p0}, Lcom/android/keyguard/sec/KeyguardEffectViewController$3;-><init>(Lcom/android/keyguard/sec/KeyguardEffectViewController;)V

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 330
    new-instance v1, Lcom/android/keyguard/sec/KeyguardEffectViewController$4;

    invoke-direct {v1, p0}, Lcom/android/keyguard/sec/KeyguardEffectViewController$4;-><init>(Lcom/android/keyguard/sec/KeyguardEffectViewController;)V

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mAdminReceiver:Landroid/content/BroadcastReceiver;

    .line 356
    new-instance v1, Lcom/android/keyguard/sec/KeyguardEffectViewController$5;

    invoke-direct {v1, p0}, Lcom/android/keyguard/sec/KeyguardEffectViewController$5;-><init>(Lcom/android/keyguard/sec/KeyguardEffectViewController;)V

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mCurrentVoiceCallChnageReceiver:Landroid/content/BroadcastReceiver;

    .line 373
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    .line 374
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 376
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lockscreen_wallpaper_path"

    const/4 v3, -0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mWallpaperPath:Ljava/lang/String;

    .line 380
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mWallpaperPath:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mWallpaperPath:Ljava/lang/String;

    const-string v2, "com.sec.android.slidingGallery"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 381
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->getDataFromSlideshow(Landroid/content/Context;)V

    .line 383
    const-string v1, "KeyguardEffectViewController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KeyguardEffectViewMain SlidingWallpaperPath = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mWallpaperPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    :cond_0
    new-instance v0, Lcom/samsung/android/theme/SThemeManager;

    invoke-direct {v0, p1}, Lcom/samsung/android/theme/SThemeManager;-><init>(Landroid/content/Context;)V

    .line 386
    .local v0, "mSThemeManager":Lcom/samsung/android/theme/SThemeManager;
    const-string v1, "2"

    invoke-virtual {v0, v5}, Lcom/samsung/android/theme/SThemeManager;->getVersionFromFeature(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 387
    iput-boolean v5, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mFestivalEffectEnabled:Z

    .line 391
    :goto_0
    new-instance v1, Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p1, v2}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mFestivalEffect:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    .line 392
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mPowerManager:Landroid/os/PowerManager;

    .line 393
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->initWallpaperTypes()V

    .line 394
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->setWallpaperContentObservers()V

    .line 395
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    sput v1, Lcom/android/keyguard/sec/KeyguardEffectViewController;->displayWidth:I

    .line 396
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    sput v1, Lcom/android/keyguard/sec/KeyguardEffectViewController;->displayHeight:I

    .line 397
    return-void

    .line 389
    :cond_1
    iput-boolean v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mFestivalEffectEnabled:Z

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/KeyguardEffectViewController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardEffectViewController;

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->handleWallpaperTypeChanged()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/keyguard/sec/KeyguardEffectViewController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardEffectViewController;

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->handleWallpaperImageChanged()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/keyguard/sec/KeyguardEffectViewController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardEffectViewController;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/keyguard/sec/KeyguardEffectViewController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardEffectViewController;
    .param p1, "x1"    # Z

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBootCompleted:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/keyguard/sec/KeyguardEffectViewController;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardEffectViewController;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->getDataFromSlideshow(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/keyguard/sec/KeyguardEffectViewController;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardEffectViewController;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/keyguard/sec/KeyguardEffectViewController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardEffectViewController;
    .param p1, "x1"    # Z

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mEmergencyModeStateChanged:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/keyguard/sec/KeyguardEffectViewController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardEffectViewController;

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->handleSetGradationLayer()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/keyguard/sec/KeyguardEffectViewController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardEffectViewController;

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->handleChargeStateChange()V

    return-void
.end method

.method static synthetic access$402(Lcom/android/keyguard/sec/KeyguardEffectViewController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardEffectViewController;
    .param p1, "x1"    # Z

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mUserSwitching:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/keyguard/sec/KeyguardEffectViewController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardEffectViewController;

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->setWallpaperFileObserver()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/keyguard/sec/KeyguardEffectViewController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardEffectViewController;

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->chenckSlidingWallpaperByScreenon()V

    return-void
.end method

.method static synthetic access$702(J)J
    .locals 0
    .param p0, "x0"    # J

    .prologue
    .line 76
    sput-wide p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mSlidingScreenOffTime:J

    return-wide p0
.end method

.method static synthetic access$800(Lcom/android/keyguard/sec/KeyguardEffectViewController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardEffectViewController;

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mRegisterReceiver:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/keyguard/sec/KeyguardEffectViewController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardEffectViewController;
    .param p1, "x1"    # Z

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mRegisterReceiver:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/keyguard/sec/KeyguardEffectViewController;)Landroid/content/BroadcastReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardEffectViewController;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mAdminReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method private static adjustPhotoRotation(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "bm"    # Landroid/graphics/Bitmap;
    .param p1, "orientationDegree"    # I

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 1720
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 1721
    .local v5, "m":Landroid/graphics/Matrix;
    int-to-float v0, p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    invoke-virtual {v5, v0, v1, v2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 1724
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 1728
    :goto_0
    return-object v7

    .line 1726
    :catch_0
    move-exception v0

    .line 1728
    const/4 v7, 0x0

    goto :goto_0
.end method

.method private chenckSlidingWallpaperByScreenon()V
    .locals 5

    .prologue
    const/16 v4, 0x12f2

    .line 1502
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1503
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "com.sec.android.slidingGallery.LOCKSCREEN_IMAGE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1504
    const-string v2, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1505
    const-string v2, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1508
    const-string v2, "android.intent.action.sec.LSO_CONFIG_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1512
    const-string v2, "android.intent.action.DEFAULT_CS_SIM_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1513
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mAdminReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1514
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mRegisterReceiver:Z

    .line 1516
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1517
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->setSlidingWallpaperInfo(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1518
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1519
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1520
    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1522
    :cond_1
    return-void
.end method

.method private getCurrentSeasonEffect()I
    .locals 14

    .prologue
    .line 2018
    const/4 v3, 0x0

    .line 2019
    .local v3, "season":I
    new-instance v6, Landroid/text/format/Time;

    const-string v9, "GMT+8"

    invoke-direct {v6, v9}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 2020
    .local v6, "time":Landroid/text/format/Time;
    invoke-virtual {v6}, Landroid/text/format/Time;->setToNow()V

    .line 2022
    iget v8, v6, Landroid/text/format/Time;->year:I

    .line 2023
    .local v8, "year":I
    iget v9, v6, Landroid/text/format/Time;->month:I

    add-int/lit8 v2, v9, 0x1

    .line 2024
    .local v2, "month":I
    iget v1, v6, Landroid/text/format/Time;->monthDay:I

    .line 2026
    .local v1, "day":I
    add-int/lit16 v9, v8, -0x7d0

    int-to-double v10, v9

    const-wide v12, 0x3fcf0068db8bac71L    # 0.2422

    mul-double/2addr v10, v12

    const-wide v12, 0x400ef5c28f5c28f6L    # 3.87

    add-double/2addr v10, v12

    add-int/lit16 v9, v8, -0x7d0

    div-int/lit8 v9, v9, 0x4

    int-to-double v12, v9

    sub-double/2addr v10, v12

    double-to-int v4, v10

    .line 2027
    .local v4, "springday":I
    add-int/lit16 v9, v8, -0x7d0

    int-to-double v10, v9

    const-wide v12, 0x3fcf0068db8bac71L    # 0.2422

    mul-double/2addr v10, v12

    const-wide v12, 0x4016147ae147ae14L    # 5.52

    add-double/2addr v10, v12

    add-int/lit16 v9, v8, -0x7d0

    div-int/lit8 v9, v9, 0x4

    int-to-double v12, v9

    sub-double/2addr v10, v12

    double-to-int v5, v10

    .line 2028
    .local v5, "summerday":I
    add-int/lit16 v9, v8, -0x7d0

    int-to-double v10, v9

    const-wide v12, 0x3fcf0068db8bac71L    # 0.2422

    mul-double/2addr v10, v12

    const-wide/high16 v12, 0x401e000000000000L    # 7.5

    add-double/2addr v10, v12

    add-int/lit16 v9, v8, -0x7d0

    div-int/lit8 v9, v9, 0x4

    int-to-double v12, v9

    sub-double/2addr v10, v12

    double-to-int v0, v10

    .line 2029
    .local v0, "autumnday":I
    add-int/lit16 v9, v8, -0x7d0

    int-to-double v10, v9

    const-wide v12, 0x3fcf0068db8bac71L    # 0.2422

    mul-double/2addr v10, v12

    const-wide v12, 0x401dc083126e978dL    # 7.438

    add-double/2addr v10, v12

    add-int/lit16 v9, v8, -0x7d0

    div-int/lit8 v9, v9, 0x4

    int-to-double v12, v9

    sub-double/2addr v10, v12

    double-to-int v7, v10

    .line 2030
    .local v7, "winterday":I
    const/4 v9, 0x2

    if-ne v2, v9, :cond_2

    .line 2031
    if-lt v1, v4, :cond_1

    .line 2032
    const/16 v3, 0x51

    .line 2064
    :cond_0
    :goto_0
    const-string v9, "KeyguardEffectViewController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "CurrentSeason: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2066
    return v3

    .line 2034
    :cond_1
    const/16 v3, 0x54

    goto :goto_0

    .line 2036
    :cond_2
    const/4 v9, 0x2

    if-ge v9, v2, :cond_3

    const/4 v9, 0x5

    if-ge v2, v9, :cond_3

    .line 2037
    const/16 v3, 0x51

    goto :goto_0

    .line 2038
    :cond_3
    const/4 v9, 0x5

    if-ne v2, v9, :cond_5

    .line 2039
    if-lt v1, v5, :cond_4

    .line 2040
    const/16 v3, 0x52

    goto :goto_0

    .line 2042
    :cond_4
    const/16 v3, 0x51

    goto :goto_0

    .line 2044
    :cond_5
    const/4 v9, 0x5

    if-ge v9, v2, :cond_6

    const/16 v9, 0x8

    if-ge v2, v9, :cond_6

    .line 2045
    const/16 v3, 0x52

    goto :goto_0

    .line 2046
    :cond_6
    const/16 v9, 0x8

    if-ne v2, v9, :cond_8

    .line 2047
    if-lt v1, v0, :cond_7

    .line 2048
    const/16 v3, 0x53

    goto :goto_0

    .line 2050
    :cond_7
    const/16 v3, 0x52

    goto :goto_0

    .line 2052
    :cond_8
    const/16 v9, 0x8

    if-ge v9, v2, :cond_9

    const/16 v9, 0xb

    if-ge v2, v9, :cond_9

    .line 2053
    const/16 v3, 0x53

    goto :goto_0

    .line 2054
    :cond_9
    const/16 v9, 0xb

    if-ne v2, v9, :cond_b

    .line 2055
    if-lt v1, v7, :cond_a

    .line 2056
    const/16 v3, 0x54

    goto :goto_0

    .line 2058
    :cond_a
    const/16 v3, 0x53

    goto :goto_0

    .line 2060
    :cond_b
    const/16 v9, 0xb

    if-gt v2, v9, :cond_c

    const/4 v9, 0x2

    if-ge v2, v9, :cond_0

    .line 2061
    :cond_c
    const/16 v3, 0x54

    goto :goto_0
.end method

.method private getDataFromSlideshow(Landroid/content/Context;)V
    .locals 14
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1603
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "emergency_mode"

    const/4 v12, 0x0

    const/4 v13, -0x2

    invoke-static {v10, v11, v12, v13}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_2

    const/4 v4, 0x1

    .line 1606
    .local v4, "isEmergencyMode":Z
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "ultra_powersaving_mode"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_3

    const/4 v5, 0x1

    .line 1608
    .local v5, "isUltraPowerSavingMode":Z
    :goto_1
    const-string v10, "KeyguardEffectViewController"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "EMMode : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ",UPSMode :"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1609
    if-nez v4, :cond_0

    if-eqz v5, :cond_4

    .line 1610
    :cond_0
    const/4 v10, 0x0

    sput-object v10, Lcom/android/keyguard/sec/KeyguardEffectViewController;->uriArray:Ljava/util/ArrayList;

    .line 1646
    :cond_1
    :goto_2
    return-void

    .line 1603
    .end local v4    # "isEmergencyMode":Z
    .end local v5    # "isUltraPowerSavingMode":Z
    :cond_2
    const/4 v4, 0x0

    goto :goto_0

    .line 1606
    .restart local v4    # "isEmergencyMode":Z
    :cond_3
    const/4 v5, 0x0

    goto :goto_1

    .line 1613
    .restart local v5    # "isUltraPowerSavingMode":Z
    :cond_4
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 1614
    .local v7, "resolver":Landroid/content/ContentResolver;
    const-string v10, "content://com.samsung.slidinggallery"

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 1615
    .local v8, "uri":Landroid/net/Uri;
    const-string v10, "getData"

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v7, v8, v10, v11, v12}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 1617
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_6

    .line 1618
    const-string v10, "interval"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    sput v10, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mSlidingInterval:I

    .line 1619
    const-string v10, "imgCount"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    sput v10, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mSlidingTotalCount:I

    .line 1620
    const-string v10, "time"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    sput-wide v10, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mSlidingTime:J

    .line 1621
    const-string v10, "hour"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    sput v10, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mSlidingHour:I

    .line 1622
    const-string v10, "minute"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    sput v10, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mSlidingMin:I

    .line 1623
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 1624
    .local v1, "calendar":Ljava/util/Calendar;
    sget-wide v10, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mSlidingTime:J

    invoke-virtual {v1, v10, v11}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1625
    new-instance v10, Ljava/text/SimpleDateFormat;

    const-string v11, "HH"

    invoke-direct {v10, v11}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 1626
    .local v2, "hourText":Ljava/lang/String;
    new-instance v10, Ljava/text/SimpleDateFormat;

    const-string v11, "mm"

    invoke-direct {v10, v11}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    .line 1627
    .local v6, "minuteText":Ljava/lang/String;
    sget v10, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mSlidingInterval:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_5

    .line 1628
    new-instance v10, Ljava/text/SimpleDateFormat;

    const-string v11, "hh"

    invoke-direct {v10, v11}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 1630
    :cond_5
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    sput v10, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mSlidingHour:I

    .line 1631
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    sput v10, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mSlidingMin:I

    .line 1632
    const-string v10, "uriArray"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    sput-object v10, Lcom/android/keyguard/sec/KeyguardEffectViewController;->uriArray:Ljava/util/ArrayList;

    .line 1634
    const-string v10, "KeyguardEffectViewController"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "interval: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget v12, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mSlidingInterval:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1635
    const-string v10, "KeyguardEffectViewController"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "imgCount: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget v12, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mSlidingTotalCount:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1636
    const-string v10, "KeyguardEffectViewController"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mSlidingTime: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-wide v12, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mSlidingTime:J

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " ,Hour :"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget v12, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mSlidingHour:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " ,Min:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget v12, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mSlidingMin:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1638
    sget-object v10, Lcom/android/keyguard/sec/KeyguardEffectViewController;->uriArray:Ljava/util/ArrayList;

    if-eqz v10, :cond_1

    .line 1639
    sget-object v10, Lcom/android/keyguard/sec/KeyguardEffectViewController;->uriArray:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 1640
    .local v9, "uriStr":Ljava/lang/String;
    const-string v10, "KeyguardEffectViewController"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "uriStr: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1644
    .end local v1    # "calendar":Ljava/util/Calendar;
    .end local v2    # "hourText":Ljava/lang/String;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v6    # "minuteText":Ljava/lang/String;
    .end local v9    # "uriStr":Ljava/lang/String;
    :cond_6
    const/4 v10, 0x0

    sput-object v10, Lcom/android/keyguard/sec/KeyguardEffectViewController;->uriArray:Ljava/util/ArrayList;

    goto/16 :goto_2
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/KeyguardEffectViewController;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 400
    sget-object v0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->sKeyguardEffectViewController:Lcom/android/keyguard/sec/KeyguardEffectViewController;

    if-nez v0, :cond_0

    .line 401
    new-instance v0, Lcom/android/keyguard/sec/KeyguardEffectViewController;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/KeyguardEffectViewController;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->sKeyguardEffectViewController:Lcom/android/keyguard/sec/KeyguardEffectViewController;

    .line 402
    const-string v0, "KeyguardEffectViewController"

    const-string v1, "*** KeyguardEffectView create instance ***"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    :cond_0
    sget-object v0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->sKeyguardEffectViewController:Lcom/android/keyguard/sec/KeyguardEffectViewController;

    return-object v0
.end method

.method public static getInstanceIfExists(Landroid/content/Context;)Lcom/android/keyguard/sec/KeyguardEffectViewController;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 409
    const-string v0, "KeyguardEffectViewController"

    const-string v1, "*** KeyguardEffectView getInstanceIfExists ***"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    sget-object v0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->sKeyguardEffectViewController:Lcom/android/keyguard/sec/KeyguardEffectViewController;

    return-object v0
.end method

.method public static getScaledBitmapDrawable(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1649
    invoke-static {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->getSlidingWallpaperPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    .line 1651
    .local v8, "tempPath":Ljava/lang/String;
    const-string v9, "KeyguardEffectViewController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getScaledBitmapDrawable Path = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1653
    const/4 v3, 0x0

    .line 1654
    .local v3, "sis":Ljava/io/InputStream;
    const/4 v5, 0x0

    .line 1655
    .local v5, "tempBitmap":Landroid/graphics/Bitmap;
    const/4 v6, 0x0

    .line 1657
    .local v6, "tempBitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    const-string v9, "/system/wallpaper/keyguard_empty_image.jpg"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1658
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/android/keyguard/R$drawable;->intro_bg:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v3

    .line 1659
    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    .end local v6    # "tempBitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-direct {v6, v9, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/io/InputStream;)V

    .restart local v6    # "tempBitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    move-object v7, v6

    .line 1692
    .end local v6    # "tempBitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    .local v7, "tempBitmapDrawable":Ljava/lang/Object;
    :goto_0
    return-object v7

    .line 1664
    .end local v7    # "tempBitmapDrawable":Ljava/lang/Object;
    .restart local v6    # "tempBitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1665
    .local v1, "mdmFile":Ljava/io/File;
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1666
    .end local v3    # "sis":Ljava/io/InputStream;
    .local v4, "sis":Ljava/io/InputStream;
    :try_start_1
    invoke-static {v8}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->getSlidingWallpaperDegree(Ljava/lang/String;)I

    move-result v9

    sput v9, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mOrientation:I

    .line 1667
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1668
    .local v2, "opts":Landroid/graphics/BitmapFactory$Options;
    const/4 v9, 0x4

    iput v9, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 1669
    const/4 v9, 0x0

    invoke-static {v4, v9, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 1670
    sget v9, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mOrientation:I

    if-lez v9, :cond_1

    .line 1671
    sget v9, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mOrientation:I

    invoke-static {v5, v9}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->adjustPhotoRotation(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 1674
    :cond_1
    const-string v9, "KeyguardEffectViewController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getScaledBitmapDrawable File = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " ,canRead() : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " tempBitmap:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " displayWidth="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget v11, Lcom/android/keyguard/sec/KeyguardEffectViewController;->displayWidth:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " displayHeight="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget v11, Lcom/android/keyguard/sec/KeyguardEffectViewController;->displayHeight:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1676
    if-eqz v5, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v9

    if-nez v9, :cond_3

    .line 1677
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/android/keyguard/R$drawable;->intro_bg:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v3

    .line 1678
    .end local v4    # "sis":Ljava/io/InputStream;
    .restart local v3    # "sis":Ljava/io/InputStream;
    :try_start_2
    new-instance v9, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v9, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v9}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    .line 1682
    :goto_1
    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    .end local v6    # "tempBitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-direct {v6, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1688
    .end local v1    # "mdmFile":Ljava/io/File;
    .end local v2    # "opts":Landroid/graphics/BitmapFactory$Options;
    .restart local v6    # "tempBitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    :goto_2
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :goto_3
    move-object v7, v6

    .line 1692
    .restart local v7    # "tempBitmapDrawable":Ljava/lang/Object;
    goto/16 :goto_0

    .line 1680
    .end local v3    # "sis":Ljava/io/InputStream;
    .end local v7    # "tempBitmapDrawable":Ljava/lang/Object;
    .restart local v1    # "mdmFile":Ljava/io/File;
    .restart local v2    # "opts":Landroid/graphics/BitmapFactory$Options;
    .restart local v4    # "sis":Ljava/io/InputStream;
    :cond_3
    :try_start_4
    sget v9, Lcom/android/keyguard/sec/KeyguardEffectViewController;->displayWidth:I

    sget v10, Lcom/android/keyguard/sec/KeyguardEffectViewController;->displayHeight:I

    const/4 v11, 0x1

    invoke-static {v5, v9, v10, v11}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    move-result-object v5

    move-object v3, v4

    .end local v4    # "sis":Ljava/io/InputStream;
    .restart local v3    # "sis":Ljava/io/InputStream;
    goto :goto_1

    .line 1683
    .end local v1    # "mdmFile":Ljava/io/File;
    .end local v2    # "opts":Landroid/graphics/BitmapFactory$Options;
    .end local v6    # "tempBitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    :catch_0
    move-exception v0

    .line 1684
    .local v0, "e":Ljava/io/IOException;
    :goto_4
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/android/keyguard/R$drawable;->intro_bg:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v3

    .line 1685
    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-direct {v6, v9, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/io/InputStream;)V

    .restart local v6    # "tempBitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    goto :goto_2

    .line 1689
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 1690
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 1683
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "sis":Ljava/io/InputStream;
    .restart local v1    # "mdmFile":Ljava/io/File;
    .restart local v4    # "sis":Ljava/io/InputStream;
    :catch_2
    move-exception v0

    move-object v3, v4

    .end local v4    # "sis":Ljava/io/InputStream;
    .restart local v3    # "sis":Ljava/io/InputStream;
    goto :goto_4
.end method

.method private getSeasonalLockSoundPath(IZ)Ljava/lang/String;
    .locals 1
    .param p1, "season"    # I
    .param p2, "isLock"    # Z

    .prologue
    .line 2072
    packed-switch p1, :pswitch_data_0

    .line 2102
    const/4 v0, 0x0

    .line 2105
    .local v0, "path":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 2074
    .end local v0    # "path":Ljava/lang/String;
    :pswitch_0
    if-eqz p2, :cond_0

    .line 2075
    const-string v0, "/system/media/audio/ui/spring_lock.ogg"

    .restart local v0    # "path":Ljava/lang/String;
    goto :goto_0

    .line 2077
    .end local v0    # "path":Ljava/lang/String;
    :cond_0
    const-string v0, "/system/media/audio/ui/spring_unlock.ogg"

    .line 2079
    .restart local v0    # "path":Ljava/lang/String;
    goto :goto_0

    .line 2081
    .end local v0    # "path":Ljava/lang/String;
    :pswitch_1
    if-eqz p2, :cond_1

    .line 2082
    const-string v0, "/system/media/audio/ui/summer_lock.ogg"

    .restart local v0    # "path":Ljava/lang/String;
    goto :goto_0

    .line 2084
    .end local v0    # "path":Ljava/lang/String;
    :cond_1
    const-string v0, "/system/media/audio/ui/summer_unlock.ogg"

    .line 2086
    .restart local v0    # "path":Ljava/lang/String;
    goto :goto_0

    .line 2088
    .end local v0    # "path":Ljava/lang/String;
    :pswitch_2
    if-eqz p2, :cond_2

    .line 2089
    const-string v0, "/system/media/audio/ui/autumn_lock.ogg"

    .restart local v0    # "path":Ljava/lang/String;
    goto :goto_0

    .line 2091
    .end local v0    # "path":Ljava/lang/String;
    :cond_2
    const-string v0, "/system/media/audio/ui/autumn_unlock.ogg"

    .line 2093
    .restart local v0    # "path":Ljava/lang/String;
    goto :goto_0

    .line 2095
    .end local v0    # "path":Ljava/lang/String;
    :pswitch_3
    if-eqz p2, :cond_3

    .line 2096
    const-string v0, "/system/media/audio/ui/winter_lock.ogg"

    .restart local v0    # "path":Ljava/lang/String;
    goto :goto_0

    .line 2098
    .end local v0    # "path":Ljava/lang/String;
    :cond_3
    const-string v0, "/system/media/audio/ui/winter_unlock.ogg"

    .line 2100
    .restart local v0    # "path":Ljava/lang/String;
    goto :goto_0

    .line 2072
    nop

    :pswitch_data_0
    .packed-switch 0x51
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static getSlidingWallpaperDegree(Ljava/lang/String;)I
    .locals 6
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 1696
    const/4 v0, 0x0

    .line 1698
    .local v0, "degree":I
    :try_start_0
    new-instance v2, Landroid/media/ExifInterface;

    invoke-direct {v2, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 1699
    .local v2, "exifInterface":Landroid/media/ExifInterface;
    const-string v4, "Orientation"

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 1700
    .local v3, "orientation":I
    packed-switch v3, :pswitch_data_0

    .line 1714
    .end local v2    # "exifInterface":Landroid/media/ExifInterface;
    .end local v3    # "orientation":I
    :goto_0
    :pswitch_0
    return v0

    .line 1702
    .restart local v2    # "exifInterface":Landroid/media/ExifInterface;
    .restart local v3    # "orientation":I
    :pswitch_1
    const/16 v0, 0x5a

    .line 1703
    goto :goto_0

    .line 1705
    :pswitch_2
    const/16 v0, 0xb4

    .line 1706
    goto :goto_0

    .line 1708
    :pswitch_3
    const/16 v0, 0x10e

    goto :goto_0

    .line 1711
    .end local v2    # "exifInterface":Landroid/media/ExifInterface;
    .end local v3    # "orientation":I
    :catch_0
    move-exception v1

    .line 1712
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 1700
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static getSlidingWallpaperPath(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1480
    const/4 v2, 0x0

    .line 1481
    .local v2, "ret":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1483
    .local v1, "path":Ljava/lang/String;
    sget-object v3, Lcom/android/keyguard/sec/KeyguardEffectViewController;->uriArray:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    .line 1484
    const-string v3, "KeyguardEffectViewController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mSlidingWallpaperIndex = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mSlidingWallpaperIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , uriArray.size(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/keyguard/sec/KeyguardEffectViewController;->uriArray:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1486
    sget v3, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mSlidingWallpaperIndex:I

    sget-object v4, Lcom/android/keyguard/sec/KeyguardEffectViewController;->uriArray:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v3, v4, :cond_0

    .line 1487
    const/4 v3, 0x0

    sput v3, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mSlidingWallpaperIndex:I

    .line 1490
    :cond_0
    sget-object v3, Lcom/android/keyguard/sec/KeyguardEffectViewController;->uriArray:Ljava/util/ArrayList;

    sget v4, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mSlidingWallpaperIndex:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "ret":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 1491
    .restart local v2    # "ret":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1492
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1493
    const-string v2, "/system/wallpaper/keyguard_empty_image.jpg"

    .line 1497
    .end local v0    # "file":Ljava/io/File;
    :cond_1
    :goto_0
    const-string v3, "KeyguardEffectViewController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSlidingWallpaperPath = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1498
    return-object v2

    .line 1495
    :cond_2
    const-string v2, "/system/wallpaper/keyguard_empty_image.jpg"

    goto :goto_0
.end method

.method private handleChargeStateChange()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 844
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mFestivalEffect:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->isChargeState()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 845
    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBgHasAddChargeView:Z

    if-ne v0, v2, :cond_0

    .line 846
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundRootLayout:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mChargeView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 847
    iput-boolean v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBgHasAddChargeView:Z

    .line 848
    iput-object v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mChargeView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    .line 850
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mFestivalEffect:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->getChargeEffectView()Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mChargeView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    .line 851
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mChargeView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eqz v0, :cond_1

    .line 852
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-nez v0, :cond_2

    .line 853
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundRootLayout:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mChargeView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 857
    :goto_0
    iput-boolean v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBgHasAddChargeView:Z

    .line 866
    :cond_1
    :goto_1
    return-void

    .line 855
    :cond_2
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundRootLayout:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mChargeView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    goto :goto_0

    .line 860
    :cond_3
    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBgHasAddChargeView:Z

    if-ne v0, v2, :cond_1

    .line 861
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundRootLayout:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mChargeView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 862
    iput-boolean v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBgHasAddChargeView:Z

    .line 863
    iput-object v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mChargeView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    goto :goto_1
.end method

.method private handleFestivalEffect()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 689
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mFestivalEffect:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    invoke-virtual {v3}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mFestivalEffect:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    invoke-virtual {v3}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->isCommonDayShowFestivalWallpaper()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 690
    :cond_0
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/sec/KeyguardEffectViewUtil;->isStrongPowerSavingMode(Landroid/content/Context;)Z

    move-result v1

    .line 691
    .local v1, "isStrongPowerSavingEnabled":Z
    if-eqz v1, :cond_2

    .line 749
    .end local v1    # "isStrongPowerSavingEnabled":Z
    :cond_1
    :goto_0
    return v2

    .line 695
    .restart local v1    # "isStrongPowerSavingEnabled":Z
    :cond_2
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mFestivalEffect:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    invoke-virtual {v3}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->getFestivalView()Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    move-result-object v0

    .line 696
    .local v0, "festivalView":Lcom/android/keyguard/sec/KeyguardEffectViewBase;
    if-eqz v0, :cond_1

    .line 697
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eq v3, v0, :cond_3

    .line 698
    const-string v3, "KeyguardFestivalEffect"

    const-string v4, "change festival"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    .line 700
    const-string v3, "KeyguardEffectViewController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleFestivalEffect   mIsShowing = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mIsShowing:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->setBackground()V

    .line 719
    :cond_3
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mFestivalEffect:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    invoke-virtual {v3}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->isUnlockEffectEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 720
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    .line 721
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mFestivalEffect:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    invoke-virtual {v2}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->getUnlockEffectView()Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    .line 722
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mUnlockEffectView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    .line 723
    const/16 v2, 0x55

    iput v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mCurrentEffect:I

    .line 724
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->setForeground()V

    .line 745
    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    .line 735
    :cond_4
    sget-object v3, Lcom/android/keyguard/sec/KeyguardEffectViewController$Foreground;->circle:Lcom/android/keyguard/sec/KeyguardEffectViewController$Foreground;

    iput-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundType:Lcom/android/keyguard/sec/KeyguardEffectViewController$Foreground;

    .line 736
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundType:Lcom/android/keyguard/sec/KeyguardEffectViewController$Foreground;

    invoke-direct {p0, v3}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->makeForeground(Lcom/android/keyguard/sec/KeyguardEffectViewController$Foreground;)V

    .line 737
    iput v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mCurrentEffect:I

    .line 738
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eqz v2, :cond_5

    .line 739
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mUnlockEffectView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    goto :goto_1

    .line 741
    :cond_5
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundCircleView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mUnlockEffectView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    goto :goto_1
.end method

.method private handleSetGradationLayer()V
    .locals 6

    .prologue
    const/4 v5, -0x2

    const/4 v0, 0x1

    const/4 v4, -0x1

    .line 2109
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundRootLayout:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_1

    .line 2110
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lockscreen_wallpaper_transparent"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_2

    .line 2112
    .local v0, "isPreloadedWallpaper":Z
    :goto_0
    const-string v1, "KeyguardEffectViewController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isPreloadedWallpaper="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2113
    if-nez v0, :cond_4

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isSupportBlendedFilter()Z

    move-result v1

    if-nez v1, :cond_4

    .line 2114
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mStatusBarGradationView:Landroid/view/View;

    if-nez v1, :cond_0

    .line 2115
    new-instance v1, Landroid/view/View;

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mStatusBarGradationView:Landroid/view/View;

    .line 2116
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mStatusBarGradationView:Landroid/view/View;

    sget v2, Lcom/android/keyguard/R$drawable;->gradation_indi_bg:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 2117
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mStatusBarGradationView:Landroid/view/View;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2120
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundRootLayout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mStatusBarGradationView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->indexOfChild(Landroid/view/View;)I

    move-result v1

    if-ne v1, v4, :cond_3

    .line 2121
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundRootLayout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mStatusBarGradationView:Landroid/view/View;

    invoke-virtual {v1, v2, v4, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    .line 2133
    .end local v0    # "isPreloadedWallpaper":Z
    :cond_1
    :goto_1
    return-void

    .line 2110
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 2124
    .restart local v0    # "isPreloadedWallpaper":Z
    :cond_3
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundRootLayout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mStatusBarGradationView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->bringChildToFront(Landroid/view/View;)V

    goto :goto_1

    .line 2127
    :cond_4
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mStatusBarGradationView:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 2128
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundRootLayout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mStatusBarGradationView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 2129
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mStatusBarGradationView:Landroid/view/View;

    goto :goto_1
.end method

.method private handleWallpaperImageChanged()V
    .locals 3

    .prologue
    .line 1168
    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mMusicBackgroundSet:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->isRichLockWallpaper()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->isCategoriesWallpaper()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1183
    :cond_0
    :goto_0
    return-void

    .line 1171
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eqz v0, :cond_0

    .line 1174
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->isRichLockWallpaper()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1175
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lockscreen_zoom_panning_effect"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1180
    :cond_2
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->handleWallpaperTypeChanged()V

    .line 1181
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->updateMontblancEffectType()V

    .line 1182
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->update()V

    goto :goto_0
.end method

.method private handleWallpaperTypeChanged()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 753
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundRootLayout:Landroid/widget/FrameLayout;

    if-nez v1, :cond_0

    .line 835
    :goto_0
    return-void

    .line 757
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lockscreen_ripple_effect"

    const/4 v3, -0x2

    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mCurrentEffect:I

    .line 759
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundCircleView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-nez v1, :cond_1

    .line 761
    new-instance v1, Lcom/android/keyguard/sec/KeyguardEffectViewNone;

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/keyguard/sec/KeyguardEffectViewNone;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundCircleView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    .line 771
    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->isZoomPanningEffectEnabled()Z

    move-result v1

    if-ne v1, v5, :cond_2

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->isRichLockWallpaper()Z

    move-result v1

    if-ne v1, v5, :cond_2

    .line 772
    const/16 v1, 0x50

    iput v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mCurrentEffect:I

    .line 774
    :cond_2
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->handleFestivalEffect()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 775
    sget-object v1, Lcom/android/keyguard/sec/KeyguardEffectViewController$Background;->unspecified:Lcom/android/keyguard/sec/KeyguardEffectViewController$Background;

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mOldBackgroundType:Lcom/android/keyguard/sec/KeyguardEffectViewController$Background;

    .line 776
    sget-object v1, Lcom/android/keyguard/sec/KeyguardEffectViewController$Foreground;->unspecified:Lcom/android/keyguard/sec/KeyguardEffectViewController$Foreground;

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mOldForegroundType:Lcom/android/keyguard/sec/KeyguardEffectViewController$Foreground;

    goto :goto_0

    .line 784
    :cond_3
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardEffectViewUtil;->getWallpaperType(Landroid/content/Context;)I

    move-result v0

    .line 786
    .local v0, "wallpaperType":I
    packed-switch v0, :pswitch_data_0

    .line 796
    :pswitch_0
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundRootLayout:Landroid/widget/FrameLayout;

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 800
    :goto_1
    iget v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mOldEffect:I

    iget v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mCurrentEffect:I

    if-eq v1, v2, :cond_4

    .line 801
    iget v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mCurrentEffect:I

    iput v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mOldEffect:I

    .line 802
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->reloadLockSound()V

    .line 805
    :cond_4
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundTypeMapping:Ljava/util/HashMap;

    iget v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mCurrentEffect:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/sec/KeyguardEffectViewController$Foreground;

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundType:Lcom/android/keyguard/sec/KeyguardEffectViewController$Foreground;

    .line 806
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundType:Lcom/android/keyguard/sec/KeyguardEffectViewController$Foreground;

    if-nez v1, :cond_5

    .line 807
    sget-object v1, Lcom/android/keyguard/sec/KeyguardEffectViewController$Foreground;->circle:Lcom/android/keyguard/sec/KeyguardEffectViewController$Foreground;

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundType:Lcom/android/keyguard/sec/KeyguardEffectViewController$Foreground;

    .line 809
    :cond_5
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundTypeMapping:Ljava/util/HashMap;

    iget v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mCurrentEffect:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/sec/KeyguardEffectViewController$Background;

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundType:Lcom/android/keyguard/sec/KeyguardEffectViewController$Background;

    .line 810
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundType:Lcom/android/keyguard/sec/KeyguardEffectViewController$Background;

    if-nez v1, :cond_6

    .line 811
    sget-object v1, Lcom/android/keyguard/sec/KeyguardEffectViewController$Background;->wallpaper:Lcom/android/keyguard/sec/KeyguardEffectViewController$Background;

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundType:Lcom/android/keyguard/sec/KeyguardEffectViewController$Background;

    .line 813
    :cond_6
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundType:Lcom/android/keyguard/sec/KeyguardEffectViewController$Foreground;

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mOldForegroundType:Lcom/android/keyguard/sec/KeyguardEffectViewController$Foreground;

    if-ne v1, v2, :cond_7

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundType:Lcom/android/keyguard/sec/KeyguardEffectViewController$Foreground;

    sget-object v2, Lcom/android/keyguard/sec/KeyguardEffectViewController$Foreground;->seasonal:Lcom/android/keyguard/sec/KeyguardEffectViewController$Foreground;

    if-ne v1, v2, :cond_8

    .line 814
    :cond_7
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundType:Lcom/android/keyguard/sec/KeyguardEffectViewController$Foreground;

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mOldForegroundType:Lcom/android/keyguard/sec/KeyguardEffectViewController$Foreground;

    .line 815
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundType:Lcom/android/keyguard/sec/KeyguardEffectViewController$Foreground;

    invoke-direct {p0, v1}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->makeForeground(Lcom/android/keyguard/sec/KeyguardEffectViewController$Foreground;)V

    .line 817
    :cond_8
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundType:Lcom/android/keyguard/sec/KeyguardEffectViewController$Background;

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mOldBackgroundType:Lcom/android/keyguard/sec/KeyguardEffectViewController$Background;

    if-eq v1, v2, :cond_a

    .line 818
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundType:Lcom/android/keyguard/sec/KeyguardEffectViewController$Background;

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mOldBackgroundType:Lcom/android/keyguard/sec/KeyguardEffectViewController$Background;

    .line 819
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundType:Lcom/android/keyguard/sec/KeyguardEffectViewController$Background;

    invoke-direct {p0, v1}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->makeBackground(Lcom/android/keyguard/sec/KeyguardEffectViewController$Background;)V

    .line 824
    :cond_9
    :goto_2
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mUnlockEffectViewMapping:Ljava/util/HashMap;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mUnlockEffectViewMapping:Ljava/util/HashMap;

    iget v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mCurrentEffect:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mUnlockEffectViewMapping:Ljava/util/HashMap;

    iget v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mCurrentEffect:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_b

    .line 826
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mUnlockEffectView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    .line 833
    :goto_3
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->setLayerAndBitmapForParticleEffect()V

    .line 834
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->updateAttributionInfoView()V

    goto/16 :goto_0

    .line 788
    :pswitch_1
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mCurrentEffect:I

    .line 789
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundRootLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    goto/16 :goto_1

    .line 792
    :pswitch_2
    const/16 v1, 0x64

    iput v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mCurrentEffect:I

    .line 793
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundRootLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    goto/16 :goto_1

    .line 820
    :cond_a
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->isJustLockLiveEnabled()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 821
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v1}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->update()V

    goto :goto_2

    .line 827
    :cond_b
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-nez v1, :cond_c

    .line 828
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundCircleView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mUnlockEffectView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    goto :goto_3

    .line 830
    :cond_c
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mUnlockEffectView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    goto :goto_3

    .line 786
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private initWallpaperTypes()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 448
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundTypeMapping:Ljava/util/HashMap;

    .line 449
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundTypeMapping:Ljava/util/HashMap;

    .line 450
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mUnlockEffectViewMapping:Ljava/util/HashMap;

    .line 453
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundTypeMapping:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/keyguard/sec/KeyguardEffectViewController$Background;->none:Lcom/android/keyguard/sec/KeyguardEffectViewController$Background;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundTypeMapping:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/keyguard/sec/KeyguardEffectViewController$Foreground;->circle:Lcom/android/keyguard/sec/KeyguardEffectViewController$Foreground;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mUnlockEffectViewMapping:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 457
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->setDefaultEffectViewTypes()V

    .line 458
    return-void
.end method

.method public static isLockScreenEffect(I)Z
    .locals 2
    .param p0, "effectType"    # I

    .prologue
    const/4 v0, 0x1

    .line 415
    if-eqz p0, :cond_0

    if-eq p0, v0, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    const/4 v1, 0x4

    if-eq p0, v1, :cond_0

    const/4 v1, 0x5

    if-eq p0, v1, :cond_0

    const/4 v1, 0x6

    if-eq p0, v1, :cond_0

    const/4 v1, 0x7

    if-eq p0, v1, :cond_0

    const/16 v1, 0x8

    if-eq p0, v1, :cond_0

    const/16 v1, 0x9

    if-eq p0, v1, :cond_0

    const/16 v1, 0x50

    if-eq p0, v1, :cond_0

    const/16 v1, 0xa

    if-eq p0, v1, :cond_0

    const/16 v1, 0x64

    if-eq p0, v1, :cond_0

    const/16 v1, 0x65

    if-eq p0, v1, :cond_0

    const/16 v1, 0x51

    if-eq p0, v1, :cond_0

    const/16 v1, 0x52

    if-eq p0, v1, :cond_0

    const/16 v1, 0x53

    if-eq p0, v1, :cond_0

    const/16 v1, 0x54

    if-eq p0, v1, :cond_0

    const/16 v1, 0x55

    if-eq p0, v1, :cond_0

    const/16 v1, 0xb

    if-eq p0, v1, :cond_0

    const/16 v1, 0xc

    if-ne p0, v1, :cond_1

    .line 439
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private makeBackground(Lcom/android/keyguard/sec/KeyguardEffectViewController$Background;)V
    .locals 3
    .param p1, "background"    # Lcom/android/keyguard/sec/KeyguardEffectViewController$Background;

    .prologue
    const/4 v2, 0x0

    .line 978
    sget-object v0, Lcom/android/keyguard/sec/KeyguardEffectViewController$8;->$SwitchMap$com$android$keyguard$sec$KeyguardEffectViewController$Background:[I

    invoke-virtual {p1}, Lcom/android/keyguard/sec/KeyguardEffectViewController$Background;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1134
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eqz v0, :cond_0

    .line 1135
    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    .line 1137
    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->setBackground()V

    .line 1141
    :cond_1
    :goto_0
    :pswitch_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mUserSwitching:Z

    .line 1142
    return-void

    .line 981
    :pswitch_1
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    instance-of v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;

    if-nez v0, :cond_2

    .line 982
    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    .line 983
    new-instance v0, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    .line 984
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->setBackground()V

    goto :goto_0

    .line 985
    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eqz v0, :cond_1

    .line 986
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    instance-of v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;

    if-eqz v0, :cond_3

    .line 987
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    check-cast v0, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;->update(I)V

    goto :goto_0

    .line 990
    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->update()V

    goto :goto_0

    .line 1005
    :pswitch_2
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    instance-of v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewWallpaper;

    if-nez v0, :cond_4

    .line 1006
    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    .line 1007
    new-instance v0, Lcom/android/keyguard/sec/KeyguardEffectViewWallpaper;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/keyguard/sec/KeyguardEffectViewWallpaper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    .line 1008
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->setBackground()V

    goto :goto_0

    .line 1009
    :cond_4
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eqz v0, :cond_1

    .line 1010
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->update()V

    goto :goto_0

    .line 1014
    :pswitch_3
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    instance-of v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;

    if-nez v0, :cond_5

    .line 1015
    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    .line 1016
    new-instance v0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    .line 1017
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->setBackground()V

    .line 1018
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->update()V

    goto :goto_0

    .line 1019
    :cond_5
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eqz v0, :cond_1

    .line 1020
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->update()V

    goto :goto_0

    .line 1025
    :pswitch_4
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    instance-of v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewWallpaper;

    if-nez v0, :cond_6

    .line 1026
    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    .line 1027
    new-instance v0, Lcom/android/keyguard/sec/KeyguardEffectViewWallpaper;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/keyguard/sec/KeyguardEffectViewWallpaper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    .line 1028
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->setBackground()V

    goto/16 :goto_0

    .line 1029
    :cond_6
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eqz v0, :cond_1

    .line 1030
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->update()V

    goto/16 :goto_0

    .line 1045
    :pswitch_5
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    instance-of v0, v0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;

    if-nez v0, :cond_7

    .line 1046
    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    .line 1047
    new-instance v0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    .line 1048
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->setBackground()V

    goto/16 :goto_0

    .line 1049
    :cond_7
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eqz v0, :cond_1

    .line 1050
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->update()V

    goto/16 :goto_0

    .line 1068
    :pswitch_6
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    instance-of v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;

    if-nez v0, :cond_8

    .line 1069
    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    .line 1070
    new-instance v0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    .line 1074
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->setBackground()V

    .line 1075
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->update()V

    goto/16 :goto_0

    .line 1076
    :cond_8
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eqz v0, :cond_1

    .line 1077
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->update()V

    goto/16 :goto_0

    .line 1082
    :pswitch_7
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    instance-of v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;

    if-nez v0, :cond_9

    .line 1083
    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    .line 1084
    new-instance v0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    .line 1085
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->setBackground()V

    goto/16 :goto_0

    .line 1086
    :cond_9
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eqz v0, :cond_1

    .line 1087
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->update()V

    goto/16 :goto_0

    .line 1092
    :pswitch_8
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    instance-of v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;

    if-nez v0, :cond_a

    .line 1093
    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    .line 1094
    new-instance v0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    .line 1095
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->setBackground()V

    goto/16 :goto_0

    .line 1096
    :cond_a
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eqz v0, :cond_1

    .line 1097
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->update()V

    goto/16 :goto_0

    .line 1112
    :pswitch_9
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    instance-of v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;

    if-nez v0, :cond_b

    .line 1113
    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    .line 1114
    new-instance v0, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    .line 1115
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->setBackground()V

    .line 1116
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->update()V

    goto/16 :goto_0

    .line 1117
    :cond_b
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eqz v0, :cond_1

    .line 1118
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->update()V

    goto/16 :goto_0

    .line 1122
    :pswitch_a
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    instance-of v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile;

    if-nez v0, :cond_c

    .line 1123
    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    .line 1124
    new-instance v0, Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    .line 1125
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->setBackground()V

    .line 1126
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->update()V

    goto/16 :goto_0

    .line 1127
    :cond_c
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eqz v0, :cond_1

    .line 1128
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->update()V

    goto/16 :goto_0

    .line 978
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method private makeForeground(Lcom/android/keyguard/sec/KeyguardEffectViewController$Foreground;)V
    .locals 3
    .param p1, "foreground"    # Lcom/android/keyguard/sec/KeyguardEffectViewController$Foreground;

    .prologue
    const/4 v2, 0x0

    .line 905
    sget-object v0, Lcom/android/keyguard/sec/KeyguardEffectViewController$8;->$SwitchMap$com$android$keyguard$sec$KeyguardEffectViewController$Foreground:[I

    invoke-virtual {p1}, Lcom/android/keyguard/sec/KeyguardEffectViewController$Foreground;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 952
    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    .line 956
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->setForeground()V

    .line 957
    return-void

    .line 907
    :pswitch_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    instance-of v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewLensFlare;

    if-nez v0, :cond_0

    .line 908
    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    .line 909
    new-instance v0, Lcom/android/keyguard/sec/KeyguardEffectViewLensFlare;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/keyguard/sec/KeyguardEffectViewLensFlare;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    goto :goto_0

    .line 913
    :pswitch_1
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    instance-of v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;

    if-nez v0, :cond_0

    .line 914
    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    .line 915
    new-instance v0, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    goto :goto_0

    .line 919
    :pswitch_2
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    instance-of v0, v0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;

    if-nez v0, :cond_0

    .line 920
    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    .line 921
    new-instance v0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/keyguard/sec/MassRippleUnlockTwin;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    goto :goto_0

    .line 925
    :pswitch_3
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    instance-of v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;

    if-nez v0, :cond_0

    .line 926
    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    .line 927
    new-instance v0, Lcom/android/keyguard/sec/MassTensionUnlockView;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/keyguard/sec/MassTensionUnlockView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    goto :goto_0

    .line 932
    :pswitch_4
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mFestivalEffect:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->makeForeground(Landroid/content/Context;Lcom/android/keyguard/sec/KeyguardEffectViewBase;Lcom/android/keyguard/sec/KeyguardEffectViewController$Foreground;)Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    goto :goto_0

    .line 936
    :pswitch_5
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mFestivalEffect:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->makeForeground(Landroid/content/Context;Lcom/android/keyguard/sec/KeyguardEffectViewBase;Lcom/android/keyguard/sec/KeyguardEffectViewController$Foreground;)Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    goto :goto_0

    .line 940
    :pswitch_6
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mFestivalEffect:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->makeForeground(Landroid/content/Context;Lcom/android/keyguard/sec/KeyguardEffectViewBase;Lcom/android/keyguard/sec/KeyguardEffectViewController$Foreground;)Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    goto :goto_0

    .line 944
    :pswitch_7
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mFestivalEffect:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->makeForeground(Landroid/content/Context;Lcom/android/keyguard/sec/KeyguardEffectViewBase;Lcom/android/keyguard/sec/KeyguardEffectViewController$Foreground;)Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    goto :goto_0

    .line 947
    :pswitch_8
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mFestivalEffect:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->makeForeground(Landroid/content/Context;Lcom/android/keyguard/sec/KeyguardEffectViewBase;Lcom/android/keyguard/sec/KeyguardEffectViewController$Foreground;)Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    goto/16 :goto_0

    .line 905
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private setBackground()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 1145
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mChargeView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eqz v0, :cond_0

    .line 1146
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mChargeView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->cleanUp()V

    .line 1148
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundRootLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 1150
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eqz v0, :cond_1

    .line 1151
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundRootLayout:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0, v2, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    .line 1152
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->handleSetGradationLayer()V

    .line 1155
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mFestivalEffect:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->isChargeState()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1156
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mFestivalEffect:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->getChargeEffectView()Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mChargeView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    .line 1157
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mChargeView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eqz v0, :cond_2

    .line 1158
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundRootLayout:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mChargeView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0, v2, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    .line 1159
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBgHasAddChargeView:Z

    .line 1162
    :cond_2
    return-void
.end method

.method private setDefaultEffectViewTypes()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 462
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundTypeMapping:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/keyguard/sec/KeyguardEffectViewController$Background;->wallpaper:Lcom/android/keyguard/sec/KeyguardEffectViewController$Background;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundTypeMapping:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/keyguard/sec/KeyguardEffectViewController$Foreground;->circle:Lcom/android/keyguard/sec/KeyguardEffectViewController$Foreground;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mUnlockEffectViewMapping:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundTypeMapping:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/keyguard/sec/KeyguardEffectViewController$Background;->ripple:Lcom/android/keyguard/sec/KeyguardEffectViewController$Background;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundTypeMapping:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/keyguard/sec/KeyguardEffectViewController$Foreground;->none:Lcom/android/keyguard/sec/KeyguardEffectViewController$Foreground;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mUnlockEffectViewMapping:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundTypeMapping:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/keyguard/sec/KeyguardEffectViewController$Background;->wallpaper:Lcom/android/keyguard/sec/KeyguardEffectViewController$Background;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 473
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundTypeMapping:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/keyguard/sec/KeyguardEffectViewController$Foreground;->lens:Lcom/android/keyguard/sec/KeyguardEffectViewController$Foreground;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mUnlockEffectViewMapping:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 477
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundTypeMapping:Ljava/util/HashMap;

    const/16 v1, 0x51

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/keyguard/sec/KeyguardEffectViewController$Background;->wallpaper:Lcom/android/keyguard/sec/KeyguardEffectViewController$Background;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundTypeMapping:Ljava/util/HashMap;

    const/16 v1, 0x51

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/keyguard/sec/KeyguardEffectViewController$Foreground;->spring:Lcom/android/keyguard/sec/KeyguardEffectViewController$Foreground;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mUnlockEffectViewMapping:Ljava/util/HashMap;

    const/16 v1, 0x51

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 482
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundTypeMapping:Ljava/util/HashMap;

    const/16 v1, 0x52

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/keyguard/sec/KeyguardEffectViewController$Background;->wallpaper:Lcom/android/keyguard/sec/KeyguardEffectViewController$Background;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 483
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundTypeMapping:Ljava/util/HashMap;

    const/16 v1, 0x52

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/keyguard/sec/KeyguardEffectViewController$Foreground;->summer:Lcom/android/keyguard/sec/KeyguardEffectViewController$Foreground;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 484
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mUnlockEffectViewMapping:Ljava/util/HashMap;

    const/16 v1, 0x52

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundTypeMapping:Ljava/util/HashMap;

    const/16 v1, 0x53

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/keyguard/sec/KeyguardEffectViewController$Background;->wallpaper:Lcom/android/keyguard/sec/KeyguardEffectViewController$Background;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 488
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundTypeMapping:Ljava/util/HashMap;

    const/16 v1, 0x53

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/keyguard/sec/KeyguardEffectViewController$Foreground;->autumn:Lcom/android/keyguard/sec/KeyguardEffectViewController$Foreground;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 489
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mUnlockEffectViewMapping:Ljava/util/HashMap;

    const/16 v1, 0x53

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 492
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundTypeMapping:Ljava/util/HashMap;

    const/16 v1, 0x54

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/keyguard/sec/KeyguardEffectViewController$Background;->wallpaper:Lcom/android/keyguard/sec/KeyguardEffectViewController$Background;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 493
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundTypeMapping:Ljava/util/HashMap;

    const/16 v1, 0x54

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/keyguard/sec/KeyguardEffectViewController$Foreground;->winter:Lcom/android/keyguard/sec/KeyguardEffectViewController$Foreground;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 494
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mUnlockEffectViewMapping:Ljava/util/HashMap;

    const/16 v1, 0x54

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 497
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundTypeMapping:Ljava/util/HashMap;

    const/16 v1, 0x55

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/keyguard/sec/KeyguardEffectViewController$Background;->wallpaper:Lcom/android/keyguard/sec/KeyguardEffectViewController$Background;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 498
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundTypeMapping:Ljava/util/HashMap;

    const/16 v1, 0x55

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/keyguard/sec/KeyguardEffectViewController$Foreground;->seasonal:Lcom/android/keyguard/sec/KeyguardEffectViewController$Foreground;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 499
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mUnlockEffectViewMapping:Ljava/util/HashMap;

    const/16 v1, 0x55

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundTypeMapping:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/keyguard/sec/KeyguardEffectViewController$Background;->particle:Lcom/android/keyguard/sec/KeyguardEffectViewController$Background;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 503
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundTypeMapping:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/keyguard/sec/KeyguardEffectViewController$Foreground;->particle:Lcom/android/keyguard/sec/KeyguardEffectViewController$Foreground;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 504
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mUnlockEffectViewMapping:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 507
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundTypeMapping:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/keyguard/sec/KeyguardEffectViewController$Background;->watercolor:Lcom/android/keyguard/sec/KeyguardEffectViewController$Background;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 508
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundTypeMapping:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/keyguard/sec/KeyguardEffectViewController$Foreground;->none:Lcom/android/keyguard/sec/KeyguardEffectViewController$Foreground;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 509
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mUnlockEffectViewMapping:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 512
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundTypeMapping:Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/keyguard/sec/KeyguardEffectViewController$Background;->blind:Lcom/android/keyguard/sec/KeyguardEffectViewController$Background;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 513
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundTypeMapping:Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/keyguard/sec/KeyguardEffectViewController$Foreground;->circle:Lcom/android/keyguard/sec/KeyguardEffectViewController$Foreground;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 514
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mUnlockEffectViewMapping:Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 517
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundTypeMapping:Ljava/util/HashMap;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/keyguard/sec/KeyguardEffectViewController$Background;->brilliantring:Lcom/android/keyguard/sec/KeyguardEffectViewController$Background;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 518
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundTypeMapping:Ljava/util/HashMap;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/keyguard/sec/KeyguardEffectViewController$Foreground;->none:Lcom/android/keyguard/sec/KeyguardEffectViewController$Foreground;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 519
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mUnlockEffectViewMapping:Ljava/util/HashMap;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 522
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundTypeMapping:Ljava/util/HashMap;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/keyguard/sec/KeyguardEffectViewController$Background;->brilliantcut:Lcom/android/keyguard/sec/KeyguardEffectViewController$Background;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 523
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundTypeMapping:Ljava/util/HashMap;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/keyguard/sec/KeyguardEffectViewController$Foreground;->none:Lcom/android/keyguard/sec/KeyguardEffectViewController$Foreground;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 524
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mUnlockEffectViewMapping:Ljava/util/HashMap;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 527
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundTypeMapping:Ljava/util/HashMap;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/keyguard/sec/KeyguardEffectViewController$Background;->wallpaper:Lcom/android/keyguard/sec/KeyguardEffectViewController$Background;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 528
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundTypeMapping:Ljava/util/HashMap;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/keyguard/sec/KeyguardEffectViewController$Foreground;->massRipple:Lcom/android/keyguard/sec/KeyguardEffectViewController$Foreground;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 529
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mUnlockEffectViewMapping:Ljava/util/HashMap;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 532
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundTypeMapping:Ljava/util/HashMap;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/keyguard/sec/KeyguardEffectViewController$Background;->wallpaper:Lcom/android/keyguard/sec/KeyguardEffectViewController$Background;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 533
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundTypeMapping:Ljava/util/HashMap;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/keyguard/sec/KeyguardEffectViewController$Foreground;->massTension:Lcom/android/keyguard/sec/KeyguardEffectViewController$Foreground;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 534
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mUnlockEffectViewMapping:Ljava/util/HashMap;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 537
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundTypeMapping:Ljava/util/HashMap;

    const/16 v1, 0x64

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/keyguard/sec/KeyguardEffectViewController$Background;->justLockLive:Lcom/android/keyguard/sec/KeyguardEffectViewController$Background;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 538
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundTypeMapping:Ljava/util/HashMap;

    const/16 v1, 0x64

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/keyguard/sec/KeyguardEffectViewController$Foreground;->circle:Lcom/android/keyguard/sec/KeyguardEffectViewController$Foreground;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 539
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mUnlockEffectViewMapping:Ljava/util/HashMap;

    const/16 v1, 0x64

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 542
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundTypeMapping:Ljava/util/HashMap;

    const/16 v1, 0x50

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/keyguard/sec/KeyguardEffectViewController$Background;->zoompanning:Lcom/android/keyguard/sec/KeyguardEffectViewController$Background;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 543
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundTypeMapping:Ljava/util/HashMap;

    const/16 v1, 0x50

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/keyguard/sec/KeyguardEffectViewController$Foreground;->none:Lcom/android/keyguard/sec/KeyguardEffectViewController$Foreground;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 544
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mUnlockEffectViewMapping:Ljava/util/HashMap;

    const/16 v1, 0x50

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 547
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundTypeMapping:Ljava/util/HashMap;

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/keyguard/sec/KeyguardEffectViewController$Background;->montblanc:Lcom/android/keyguard/sec/KeyguardEffectViewController$Background;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 548
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundTypeMapping:Ljava/util/HashMap;

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/keyguard/sec/KeyguardEffectViewController$Foreground;->none:Lcom/android/keyguard/sec/KeyguardEffectViewController$Foreground;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 549
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mUnlockEffectViewMapping:Ljava/util/HashMap;

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 552
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundTypeMapping:Ljava/util/HashMap;

    const/16 v1, 0x65

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/keyguard/sec/KeyguardEffectViewController$Background;->tilt:Lcom/android/keyguard/sec/KeyguardEffectViewController$Background;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 553
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundTypeMapping:Ljava/util/HashMap;

    const/16 v1, 0x65

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/keyguard/sec/KeyguardEffectViewController$Foreground;->circle:Lcom/android/keyguard/sec/KeyguardEffectViewController$Foreground;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 554
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mUnlockEffectViewMapping:Ljava/util/HashMap;

    const/16 v1, 0x65

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 556
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundTypeMapping:Ljava/util/HashMap;

    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/keyguard/sec/KeyguardEffectViewController$Background;->abstracttile:Lcom/android/keyguard/sec/KeyguardEffectViewController$Background;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 557
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundTypeMapping:Ljava/util/HashMap;

    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/keyguard/sec/KeyguardEffectViewController$Foreground;->none:Lcom/android/keyguard/sec/KeyguardEffectViewController$Foreground;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 558
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mUnlockEffectViewMapping:Ljava/util/HashMap;

    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 561
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundTypeMapping:Ljava/util/HashMap;

    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/keyguard/sec/KeyguardEffectViewController$Background;->geometricmosaic:Lcom/android/keyguard/sec/KeyguardEffectViewController$Background;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 562
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundTypeMapping:Ljava/util/HashMap;

    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/keyguard/sec/KeyguardEffectViewController$Foreground;->none:Lcom/android/keyguard/sec/KeyguardEffectViewController$Foreground;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 563
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mUnlockEffectViewMapping:Ljava/util/HashMap;

    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 564
    return-void
.end method

.method private setForeground()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 960
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundRootLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 961
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundRootLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 963
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eqz v0, :cond_1

    .line 964
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundRootLayout:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0, v2, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    .line 966
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundRootLayout:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundCircleView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0, v2, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    .line 975
    :cond_0
    :goto_0
    return-void

    .line 970
    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundRootLayout:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundCircleView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0, v2, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    goto :goto_0
.end method

.method public static setSlidingWallpaperInfo(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 18
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1524
    const/4 v12, 0x0

    .line 1526
    .local v12, "results":Z
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1528
    .local v0, "action":Ljava/lang/String;
    const-string v13, "KeyguardEffectViewController"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "mSlidingInterval = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget v15, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mSlidingInterval:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " , mSlidingWallpaperIndex:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget v15, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mSlidingWallpaperIndex:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1529
    const-wide/16 v8, 0x0

    .line 1530
    .local v8, "minuteThreshold":J
    sget v13, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mSlidingInterval:I

    packed-switch v13, :pswitch_data_0

    .line 1591
    :cond_0
    :goto_0
    if-eqz v12, :cond_1

    .line 1592
    sget v13, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mSlidingWallpaperIndex:I

    add-int/lit8 v13, v13, 0x1

    sput v13, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mSlidingWallpaperIndex:I

    .line 1593
    sget v13, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mSlidingWallpaperIndex:I

    sget v14, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mSlidingTotalCount:I

    if-lt v13, v14, :cond_1

    .line 1594
    const/4 v13, 0x0

    sput v13, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mSlidingWallpaperIndex:I

    .line 1597
    :cond_1
    const-string v13, "KeyguardEffectViewController"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "results = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " , mSlidingWallpaperIndex:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget v15, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mSlidingWallpaperIndex:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1599
    return v12

    .line 1532
    :pswitch_0
    const-string v13, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 1533
    const/4 v12, 0x1

    goto :goto_0

    .line 1537
    :pswitch_1
    const-wide/16 v14, 0x0

    cmp-long v13, v8, v14

    if-nez v13, :cond_2

    .line 1538
    const-wide/16 v8, 0x3c

    .line 1541
    :cond_2
    :pswitch_2
    const-wide/16 v14, 0x0

    cmp-long v13, v8, v14

    if-nez v13, :cond_3

    .line 1542
    const-wide/16 v8, 0x2d0

    .line 1545
    :cond_3
    :pswitch_3
    const-wide/16 v14, 0x0

    cmp-long v13, v8, v14

    if-nez v13, :cond_4

    .line 1546
    const-wide/16 v8, 0x5a0

    .line 1548
    :cond_4
    const-wide/16 v14, 0x3c

    mul-long/2addr v14, v8

    const-wide/16 v16, 0x3e8

    mul-long v8, v14, v16

    .line 1549
    const-string v13, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 1550
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sget-wide v16, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mSlidingScreenOffTime:J

    sub-long v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    .line 1551
    .local v10, "minutesCount":J
    sget-wide v14, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mSlidingScreenOffTime:J

    sget-wide v16, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mSlidingTime:J

    cmp-long v13, v14, v16

    if-lez v13, :cond_5

    .line 1552
    sget-wide v14, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mSlidingScreenOffTime:J

    sget-wide v16, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mSlidingTime:J

    sub-long v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(J)J

    move-result-wide v14

    rem-long/2addr v14, v8

    add-long/2addr v10, v14

    .line 1556
    :goto_1
    const-string v13, "KeyguardEffectViewController"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "(minutesCount "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " minuteThreshold "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ")"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1557
    cmp-long v13, v10, v8

    if-ltz v13, :cond_0

    .line 1558
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 1554
    :cond_5
    sget-wide v14, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mSlidingScreenOffTime:J

    sget-wide v16, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mSlidingTime:J

    sub-long v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(J)J

    move-result-wide v14

    rem-long/2addr v14, v8

    sub-long v14, v8, v14

    add-long/2addr v10, v14

    goto :goto_1

    .line 1560
    .end local v10    # "minutesCount":J
    :cond_6
    const-string v13, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 1561
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 1562
    .local v1, "calendar":Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-virtual {v1, v14, v15}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1564
    new-instance v13, Ljava/text/SimpleDateFormat;

    const-string v14, "HH"

    invoke-direct {v13, v14}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 1565
    .local v2, "hourText":Ljava/lang/String;
    new-instance v13, Ljava/text/SimpleDateFormat;

    const-string v14, "hh"

    invoke-direct {v13, v14}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 1566
    .local v3, "hourTextBy12":Ljava/lang/String;
    new-instance v13, Ljava/text/SimpleDateFormat;

    const-string v14, "mm"

    invoke-direct {v13, v14}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    .line 1567
    .local v7, "minuteText":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1568
    .local v4, "mHour":I
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 1569
    .local v5, "mHour12":I
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 1570
    .local v6, "mMinute":I
    const-string v13, "KeyguardEffectViewController"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " , : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " , "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget v15, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mSlidingHour:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ",  :"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget v15, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mSlidingMin:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1572
    sget v13, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mSlidingInterval:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_7

    .line 1573
    sget v13, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mSlidingMin:I

    if-ne v6, v13, :cond_0

    .line 1574
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 1576
    :cond_7
    sget v13, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mSlidingInterval:I

    const/4 v14, 0x2

    if-ne v13, v14, :cond_8

    .line 1577
    sget v13, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mSlidingHour:I

    if-ne v5, v13, :cond_0

    sget v13, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mSlidingMin:I

    if-ne v6, v13, :cond_0

    .line 1578
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 1580
    :cond_8
    sget v13, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mSlidingInterval:I

    const/4 v14, 0x3

    if-ne v13, v14, :cond_0

    .line 1581
    sget v13, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mSlidingHour:I

    if-ne v4, v13, :cond_0

    sget v13, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mSlidingMin:I

    if-ne v6, v13, :cond_0

    .line 1582
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 1530
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private final setWallpaperContentObservers()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 567
    new-instance v1, Lcom/android/keyguard/sec/KeyguardEffectViewController$6;

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/android/keyguard/sec/KeyguardEffectViewController$6;-><init>(Lcom/android/keyguard/sec/KeyguardEffectViewController;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mContentObserver:Landroid/database/ContentObserver;

    .line 614
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lockscreen_ripple_effect"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 616
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lockscreen_wallpaper"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 618
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lockscreen_wallpaper_path"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 620
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lockscreen_wallpaper_path_2"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 622
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "emergency_mode"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 624
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lockscreen_wallpaper_transparent"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 626
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lockscreen_zoom_panning_effect"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 629
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->setWallpaperFileObserver()V

    .line 631
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 632
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.sec.android.slidingGallery.LOCKSCREEN_IMAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 633
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 634
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 637
    const-string v1, "android.intent.action.sec.LSO_CONFIG_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 641
    const-string v1, "android.intent.action.DEFAULT_CS_SIM_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 642
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mAdminReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 643
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mRegisterReceiver:Z

    .line 644
    return-void
.end method

.method private setWallpaperFileObserver()V
    .locals 3

    .prologue
    .line 647
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lockscreen_wallpaper_path"

    const/4 v2, -0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mWallpaperPath:Ljava/lang/String;

    .line 650
    const-string v0, "KeyguardEffectViewController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mWallpaperPath = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mWallpaperPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mWallpaperPath:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 686
    :goto_0
    return-void

    .line 654
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mWallpaperPath:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mWallpaperPath:Ljava/lang/String;

    const-string v1, "com.sec.android.slidingGallery"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 655
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->getDataFromSlideshow(Landroid/content/Context;)V

    .line 658
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mFileObserver:Landroid/os/FileObserver;

    if-eqz v0, :cond_2

    .line 659
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mFileObserver:Landroid/os/FileObserver;

    invoke-virtual {v0}, Landroid/os/FileObserver;->stopWatching()V

    .line 660
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mFileObserver:Landroid/os/FileObserver;

    .line 663
    :cond_2
    new-instance v0, Lcom/android/keyguard/sec/KeyguardEffectViewController$7;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mWallpaperPath:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/sec/KeyguardEffectViewController$7;-><init>(Lcom/android/keyguard/sec/KeyguardEffectViewController;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mFileObserver:Landroid/os/FileObserver;

    .line 685
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mFileObserver:Landroid/os/FileObserver;

    invoke-virtual {v0}, Landroid/os/FileObserver;->startWatching()V

    goto :goto_0
.end method


# virtual methods
.method public changeEffectType()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x2

    .line 1800
    const-string v1, "KeyguardEffectViewController"

    const-string v2, "changeEffectType()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1802
    iget-boolean v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mEmergencyModeStateChanged:Z

    if-eqz v1, :cond_0

    .line 1803
    iput-boolean v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mEmergencyModeStateChanged:Z

    .line 1820
    :goto_0
    return-void

    .line 1807
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "keyguard_set_default_wallpaper"

    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 1810
    .local v0, "changedDefaultWallpaperType":I
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "keyguard_set_default_wallpaper"

    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1817
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "keyguard_default_wallpaper_type_for_effect"

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_0
.end method

.method public changeWallpaperByScreenOff()V
    .locals 4

    .prologue
    const/16 v3, 0x12f2

    .line 1823
    const-string v1, "KeyguardEffectViewController"

    const-string v2, "changeWallpaperByScreenOff()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1825
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mWallpaperPath:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mWallpaperPath:Ljava/lang/String;

    const-string v2, "com.sec.android.slidingGallery"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1826
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1827
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "KeyguardEffectViewController"

    const-string v2, "change sliding wallpaper()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1828
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->setSlidingWallpaperInfo(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1829
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1830
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1832
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1835
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method public cleanUp()V
    .locals 2

    .prologue
    .line 1308
    const-string v0, "KeyguardEffectViewController"

    const-string v1, "cleanUp()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1310
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mFestivalEffect:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->SetShowState(Z)V

    .line 1311
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eqz v0, :cond_0

    .line 1312
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->cleanUp()V

    .line 1314
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundCircleView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eqz v0, :cond_1

    .line 1315
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundCircleView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->cleanUp()V

    .line 1317
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eqz v0, :cond_2

    .line 1318
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->cleanUp()V

    .line 1320
    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mChargeView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eqz v0, :cond_3

    .line 1321
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mChargeView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->cleanUp()V

    .line 1323
    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 1324
    return-void
.end method

.method public getARGB8888Bitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 9
    .param p1, "srcBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v8, 0x0

    const/4 v4, 0x0

    .line 1239
    if-nez p1, :cond_1

    move-object p1, v4

    .line 1257
    .end local p1    # "srcBitmap":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-object p1

    .line 1242
    .restart local p1    # "srcBitmap":Landroid/graphics/Bitmap;
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-eq v5, v6, :cond_0

    .line 1245
    const-string v5, "KeyguardEffectViewController"

    const-string v6, "start to convert album art"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1246
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 1247
    .local v3, "width":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 1249
    .local v2, "height":I
    if-lez v3, :cond_2

    if-gtz v2, :cond_3

    :cond_2
    move-object p1, v4

    .line 1250
    goto :goto_0

    .line 1252
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1254
    .local v0, "destBitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1255
    .local v1, "destCanvas":Landroid/graphics/Canvas;
    invoke-virtual {v1, p1, v8, v8, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    move-object p1, v0

    .line 1257
    goto :goto_0
.end method

.method protected getBackgroundEffectType()Lcom/android/keyguard/sec/KeyguardEffectViewController$Background;
    .locals 1

    .prologue
    .line 1748
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundType:Lcom/android/keyguard/sec/KeyguardEffectViewController$Background;

    return-object v0
.end method

.method public getBackgroundLayout()Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 1476
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundRootLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getCircleView()Lcom/android/keyguard/sec/KeyguardEffectViewBase;
    .locals 1

    .prologue
    .line 2150
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundCircleView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    return-object v0
.end method

.method protected getCurrentEffecType()I
    .locals 1

    .prologue
    .line 1756
    iget v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mCurrentEffect:I

    return v0
.end method

.method public getDefaultWallpaperTypeForEffect()I
    .locals 4

    .prologue
    .line 1790
    const/4 v0, 0x1

    .line 1794
    .local v0, "defaultType":I
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "keyguard_default_wallpaper_type_for_effect"

    const/4 v3, -0x2

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    return v1
.end method

.method protected getForegroundEffectType()Lcom/android/keyguard/sec/KeyguardEffectViewController$Background;
    .locals 1

    .prologue
    .line 1752
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundType:Lcom/android/keyguard/sec/KeyguardEffectViewController$Background;

    return-object v0
.end method

.method public getForegroundLayout()Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 1472
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundRootLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getUnlockDelay()J
    .locals 2

    .prologue
    .line 1364
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mUnlockEffectView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eqz v0, :cond_0

    .line 1365
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mUnlockEffectView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->getUnlockDelay()J

    move-result-wide v0

    .line 1367
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public handleHoverEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1446
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mUnlockEffectView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eqz v0, :cond_0

    .line 1447
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mUnlockEffectView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    instance-of v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;

    if-eqz v0, :cond_0

    .line 1448
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mUnlockEffectView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    check-cast v0, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;

    invoke-virtual {v0, p1, p2}, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;->handleHoverEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    .line 1451
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public handleSensorEvent(Landroid/hardware/SensorEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v1, 0x0

    .line 1455
    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mMusicBackgroundSet:Z

    if-eqz v0, :cond_0

    .line 1463
    :cond_0
    return v1
.end method

.method public handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1427
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundCircleView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eqz v0, :cond_0

    .line 1428
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundCircleView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v0, p1, p2}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    .line 1432
    :goto_0
    return v0

    .line 1429
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mUnlockEffectView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eqz v0, :cond_1

    .line 1430
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mUnlockEffectView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v0, p1, p2}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 1432
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public handleTouchEventForPatternLock(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1438
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mUnlockEffectView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eqz v0, :cond_0

    .line 1439
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mUnlockEffectView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v0, p1, p2}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->handleTouchEventForPatternLock(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    .line 1441
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public handleUnlock(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1416
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundCircleView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eqz v0, :cond_1

    .line 1417
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundCircleView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v0, p1, p2}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->handleUnlock(Landroid/view/View;Landroid/view/MotionEvent;)V

    .line 1421
    :cond_0
    :goto_0
    return-void

    .line 1418
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mUnlockEffectView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eqz v0, :cond_0

    .line 1419
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mUnlockEffectView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v0, p1, p2}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->handleUnlock(Landroid/view/View;Landroid/view/MotionEvent;)V

    goto :goto_0
.end method

.method public handleUpdateKeyguardMusicBackground(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1198
    const-string v0, "KeyguardEffectViewController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleUpdateKeyguardMusicBackground(): bmp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1199
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-nez v0, :cond_1

    .line 1236
    :cond_0
    :goto_0
    return-void

    .line 1203
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mMusicBackgroundSet:Z

    .line 1204
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->updateAttributionInfoView()V

    .line 1213
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    instance-of v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewWallpaper;

    if-eqz v0, :cond_2

    .line 1214
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    check-cast v0, Lcom/android/keyguard/sec/KeyguardEffectViewWallpaper;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/sec/KeyguardEffectViewWallpaper;->setContextualWallpaper(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 1215
    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    instance-of v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;

    if-eqz v0, :cond_3

    .line 1216
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    check-cast v0, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->getARGB8888Bitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;->setContextualWallpaper(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 1217
    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    instance-of v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;

    if-eqz v0, :cond_4

    .line 1218
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    check-cast v0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->getARGB8888Bitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->setContextualWallpaper(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 1221
    :cond_4
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    instance-of v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;

    if-eqz v0, :cond_5

    .line 1222
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    check-cast v0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->getARGB8888Bitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;->setContextualWallpaper(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 1226
    :cond_5
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    instance-of v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;

    if-eqz v0, :cond_6

    .line 1227
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    check-cast v0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->getARGB8888Bitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->setContextualWallpaper(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 1230
    :cond_6
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    instance-of v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;

    if-eqz v0, :cond_7

    .line 1231
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    check-cast v0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->getARGB8888Bitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->setContextualWallpaper(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 1232
    :cond_7
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    instance-of v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile;

    if-eqz v0, :cond_8

    .line 1233
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    check-cast v0, Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->getARGB8888Bitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile;->setContextualWallpaper(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 1234
    :cond_8
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    instance-of v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;

    if-eqz v0, :cond_0

    .line 1235
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    check-cast v0, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->getARGB8888Bitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;->setContextualWallpaper(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0
.end method

.method public isCategoriesWallpaper()Z
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 892
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mWallpaperPath:Ljava/lang/String;

    if-nez v4, :cond_0

    .line 901
    :goto_0
    return v3

    .line 896
    :cond_0
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mWallpaperPath:Ljava/lang/String;

    const-string v5, "/data/data/com.samsung.android.keyguardwallpaperupdator/files/wallpaper_images"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    .line 897
    .local v0, "isCategoriesWallpaper":Z
    iget v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mCurrentEffect:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    move v1, v2

    .line 899
    .local v1, "isLiveWallpaper":Z
    :goto_1
    const-string v4, "KeyguardEffectViewController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isCategoriesWallpaper = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", isLiveWallpaper = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    if-eqz v0, :cond_2

    if-nez v1, :cond_2

    :goto_2
    move v3, v2

    goto :goto_0

    .end local v1    # "isLiveWallpaper":Z
    :cond_1
    move v1, v3

    .line 897
    goto :goto_1

    .restart local v1    # "isLiveWallpaper":Z
    :cond_2
    move v2, v3

    .line 901
    goto :goto_2
.end method

.method public isFestivalActivated()Z
    .locals 3

    .prologue
    .line 2010
    const-string v0, "KeyguardEffectViewController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isFestivalActivated()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mFestivalEffectEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2011
    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mFestivalEffectEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mFestivalEffect:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mFestivalEffect:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->isActivated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2012
    const/4 v0, 0x1

    .line 2014
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isJustLockLiveEnabled()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 838
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    instance-of v3, v3, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;

    if-eqz v3, :cond_0

    move v0, v1

    .line 840
    .local v0, "isLiveWallpaperBackground":Z
    :goto_0
    iget v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mCurrentEffect:I

    const/16 v4, 0x64

    if-ne v3, v4, :cond_1

    if-eqz v0, :cond_1

    :goto_1
    return v1

    .end local v0    # "isLiveWallpaperBackground":Z
    :cond_0
    move v0, v2

    .line 838
    goto :goto_0

    .restart local v0    # "isLiveWallpaperBackground":Z
    :cond_1
    move v1, v2

    .line 840
    goto :goto_1
.end method

.method public isMusicBackgroundSet()Z
    .locals 1

    .prologue
    .line 1838
    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mMusicBackgroundSet:Z

    return v0
.end method

.method public isRichLockWallpaper()Z
    .locals 4

    .prologue
    .line 880
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mWallpaperPath:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 881
    const/4 v0, 0x0

    .line 888
    :goto_0
    return v0

    .line 884
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mWallpaperPath:Ljava/lang/String;

    const-string v2, "/data/data/com.samsung.android.keyguardwallpaperupdator"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    .line 886
    .local v0, "isRichLock":Z
    const-string v1, "KeyguardEffectViewController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isRichLockWallpaper() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isZoomPanningEffectEnabled()Z
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 869
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "lockscreen_zoom_panning_effect"

    const/4 v6, -0x2

    invoke-static {v4, v5, v3, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-ne v4, v2, :cond_0

    move v1, v2

    .line 871
    .local v1, "isZoomPanningEffect":Z
    :goto_0
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/keyguard/sec/KeyguardEffectViewUtil;->isPowerSavingMode(Landroid/content/Context;)Z

    move-result v0

    .line 873
    .local v0, "isPowerSavingModeEnabled":Z
    const-string v4, "KeyguardEffectViewController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isZoomPanningEffectEnabled() isZoomPanningEffect = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", isPowerSavingMode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 876
    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    :goto_1
    return v2

    .end local v0    # "isPowerSavingModeEnabled":Z
    .end local v1    # "isZoomPanningEffect":Z
    :cond_0
    move v1, v3

    .line 869
    goto :goto_0

    .restart local v0    # "isPowerSavingModeEnabled":Z
    .restart local v1    # "isZoomPanningEffect":Z
    :cond_1
    move v2, v3

    .line 876
    goto :goto_1
.end method

.method public playLockSound()V
    .locals 1

    .prologue
    .line 1372
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mUnlockEffectView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eqz v0, :cond_0

    .line 1373
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mUnlockEffectView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->playLockSound()V

    .line 1374
    :cond_0
    return-void
.end method

.method public reloadLockSound()V
    .locals 10

    .prologue
    const/16 v9, 0x53

    const/16 v8, 0x52

    const/16 v7, 0x51

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1921
    const-string v3, "KeyguardEffectViewController"

    const-string v4, "reloadLockSound()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1924
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->isFestivalActivated()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1925
    iget v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mCurrentEffect:I

    packed-switch v3, :pswitch_data_0

    .line 1932
    const-string v0, "/system/media/audio/ui/Lock_none_effect.ogg"

    .line 1933
    .local v0, "pathLock":Ljava/lang/String;
    const-string v1, "/system/media/audio/ui/Unlock_none_effect.ogg"

    .line 2004
    .local v1, "pathUnlock":Ljava/lang/String;
    :goto_0
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mLockSoundChangeCallback:Lcom/android/keyguard/sec/KeyguardEffectViewController$LockSoundChangeCallback;

    if-eqz v3, :cond_0

    .line 2005
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mLockSoundChangeCallback:Lcom/android/keyguard/sec/KeyguardEffectViewController$LockSoundChangeCallback;

    invoke-interface {v3, v0, v1}, Lcom/android/keyguard/sec/KeyguardEffectViewController$LockSoundChangeCallback;->reloadLockSound(Ljava/lang/String;Ljava/lang/String;)V

    .line 2007
    :cond_0
    return-void

    .line 1927
    .end local v0    # "pathLock":Ljava/lang/String;
    .end local v1    # "pathUnlock":Ljava/lang/String;
    :pswitch_0
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->getCurrentSeasonEffect()I

    move-result v2

    .line 1928
    .local v2, "season":I
    invoke-direct {p0, v2, v6}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->getSeasonalLockSoundPath(IZ)Ljava/lang/String;

    move-result-object v0

    .line 1929
    .restart local v0    # "pathLock":Ljava/lang/String;
    invoke-direct {p0, v2, v5}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->getSeasonalLockSoundPath(IZ)Ljava/lang/String;

    move-result-object v1

    .line 1930
    .restart local v1    # "pathUnlock":Ljava/lang/String;
    goto :goto_0

    .line 1937
    .end local v0    # "pathLock":Ljava/lang/String;
    .end local v1    # "pathUnlock":Ljava/lang/String;
    .end local v2    # "season":I
    :cond_1
    iget v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mCurrentEffect:I

    sparse-switch v3, :sswitch_data_0

    .line 1998
    const-string v0, "/system/media/audio/ui/Lock_none_effect.ogg"

    .line 1999
    .restart local v0    # "pathLock":Ljava/lang/String;
    const-string v1, "/system/media/audio/ui/Unlock_none_effect.ogg"

    .restart local v1    # "pathUnlock":Ljava/lang/String;
    goto :goto_0

    .line 1939
    .end local v0    # "pathLock":Ljava/lang/String;
    .end local v1    # "pathUnlock":Ljava/lang/String;
    :sswitch_0
    const-string v0, "/system/media/audio/ui/lens_flare_lock.ogg"

    .line 1940
    .restart local v0    # "pathLock":Ljava/lang/String;
    const-string v1, "/system/media/audio/ui/lock_screen_silence.ogg"

    .line 1941
    .restart local v1    # "pathUnlock":Ljava/lang/String;
    goto :goto_0

    .line 1945
    .end local v0    # "pathLock":Ljava/lang/String;
    .end local v1    # "pathUnlock":Ljava/lang/String;
    :sswitch_1
    const-string v0, ""

    .line 1946
    .restart local v0    # "pathLock":Ljava/lang/String;
    const-string v1, ""

    .line 1947
    .restart local v1    # "pathUnlock":Ljava/lang/String;
    goto :goto_0

    .line 1949
    .end local v0    # "pathLock":Ljava/lang/String;
    .end local v1    # "pathUnlock":Ljava/lang/String;
    :sswitch_2
    const-string v0, ""

    .line 1950
    .restart local v0    # "pathLock":Ljava/lang/String;
    const-string v1, "/system/media/audio/ui/lock_screen_silence.ogg"

    .line 1951
    .restart local v1    # "pathUnlock":Ljava/lang/String;
    goto :goto_0

    .line 1953
    .end local v0    # "pathLock":Ljava/lang/String;
    .end local v1    # "pathUnlock":Ljava/lang/String;
    :sswitch_3
    const-string v0, "/system/media/audio/ui/blind_lock.ogg"

    .line 1954
    .restart local v0    # "pathLock":Ljava/lang/String;
    const-string v1, "/system/media/audio/ui/lock_screen_silence.ogg"

    .line 1955
    .restart local v1    # "pathUnlock":Ljava/lang/String;
    goto :goto_0

    .line 1957
    .end local v0    # "pathLock":Ljava/lang/String;
    .end local v1    # "pathUnlock":Ljava/lang/String;
    :sswitch_4
    const-string v0, "/system/media/audio/ui/Particle_Lock.ogg"

    .line 1958
    .restart local v0    # "pathLock":Ljava/lang/String;
    const-string v1, "/system/media/audio/ui/lock_screen_silence.ogg"

    .line 1959
    .restart local v1    # "pathUnlock":Ljava/lang/String;
    goto :goto_0

    .line 1961
    .end local v0    # "pathLock":Ljava/lang/String;
    .end local v1    # "pathUnlock":Ljava/lang/String;
    :sswitch_5
    const-string v0, "/system/media/audio/ui/brilliantring_lock.ogg"

    .line 1962
    .restart local v0    # "pathLock":Ljava/lang/String;
    const-string v1, "/system/media/audio/ui/lock_screen_silence.ogg"

    .line 1963
    .restart local v1    # "pathUnlock":Ljava/lang/String;
    goto :goto_0

    .line 1965
    .end local v0    # "pathLock":Ljava/lang/String;
    .end local v1    # "pathUnlock":Ljava/lang/String;
    :sswitch_6
    const-string v0, "/system/media/audio/ui/brilliantcut_lock.ogg"

    .line 1966
    .restart local v0    # "pathLock":Ljava/lang/String;
    const-string v1, "/system/media/audio/ui/lock_screen_silence.ogg"

    .line 1967
    .restart local v1    # "pathUnlock":Ljava/lang/String;
    goto :goto_0

    .line 1969
    .end local v0    # "pathLock":Ljava/lang/String;
    .end local v1    # "pathUnlock":Ljava/lang/String;
    :sswitch_7
    const-string v0, "/system/media/audio/ui/abstracttile_lock.ogg"

    .line 1970
    .restart local v0    # "pathLock":Ljava/lang/String;
    const-string v1, "/system/media/audio/ui/lock_screen_silence.ogg"

    .line 1971
    .restart local v1    # "pathUnlock":Ljava/lang/String;
    goto :goto_0

    .line 1973
    .end local v0    # "pathLock":Ljava/lang/String;
    .end local v1    # "pathUnlock":Ljava/lang/String;
    :sswitch_8
    const-string v0, "/system/media/audio/ui/GeometricMosaic_lock.ogg"

    .line 1974
    .restart local v0    # "pathLock":Ljava/lang/String;
    const-string v1, "/system/media/audio/ui/lock_screen_silence.ogg"

    .line 1975
    .restart local v1    # "pathUnlock":Ljava/lang/String;
    goto :goto_0

    .line 1977
    .end local v0    # "pathLock":Ljava/lang/String;
    .end local v1    # "pathUnlock":Ljava/lang/String;
    :sswitch_9
    invoke-direct {p0, v7, v6}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->getSeasonalLockSoundPath(IZ)Ljava/lang/String;

    move-result-object v0

    .line 1978
    .restart local v0    # "pathLock":Ljava/lang/String;
    invoke-direct {p0, v7, v5}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->getSeasonalLockSoundPath(IZ)Ljava/lang/String;

    move-result-object v1

    .line 1979
    .restart local v1    # "pathUnlock":Ljava/lang/String;
    goto :goto_0

    .line 1981
    .end local v0    # "pathLock":Ljava/lang/String;
    .end local v1    # "pathUnlock":Ljava/lang/String;
    :sswitch_a
    invoke-direct {p0, v8, v6}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->getSeasonalLockSoundPath(IZ)Ljava/lang/String;

    move-result-object v0

    .line 1982
    .restart local v0    # "pathLock":Ljava/lang/String;
    invoke-direct {p0, v8, v5}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->getSeasonalLockSoundPath(IZ)Ljava/lang/String;

    move-result-object v1

    .line 1983
    .restart local v1    # "pathUnlock":Ljava/lang/String;
    goto :goto_0

    .line 1985
    .end local v0    # "pathLock":Ljava/lang/String;
    .end local v1    # "pathUnlock":Ljava/lang/String;
    :sswitch_b
    invoke-direct {p0, v9, v6}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->getSeasonalLockSoundPath(IZ)Ljava/lang/String;

    move-result-object v0

    .line 1986
    .restart local v0    # "pathLock":Ljava/lang/String;
    invoke-direct {p0, v9, v5}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->getSeasonalLockSoundPath(IZ)Ljava/lang/String;

    move-result-object v1

    .line 1987
    .restart local v1    # "pathUnlock":Ljava/lang/String;
    goto :goto_0

    .line 1989
    .end local v0    # "pathLock":Ljava/lang/String;
    .end local v1    # "pathUnlock":Ljava/lang/String;
    :sswitch_c
    const/16 v3, 0x54

    invoke-direct {p0, v3, v6}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->getSeasonalLockSoundPath(IZ)Ljava/lang/String;

    move-result-object v0

    .line 1990
    .restart local v0    # "pathLock":Ljava/lang/String;
    const/16 v3, 0x54

    invoke-direct {p0, v3, v5}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->getSeasonalLockSoundPath(IZ)Ljava/lang/String;

    move-result-object v1

    .line 1991
    .restart local v1    # "pathUnlock":Ljava/lang/String;
    goto :goto_0

    .line 1993
    .end local v0    # "pathLock":Ljava/lang/String;
    .end local v1    # "pathUnlock":Ljava/lang/String;
    :sswitch_d
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->getCurrentSeasonEffect()I

    move-result v2

    .line 1994
    .restart local v2    # "season":I
    invoke-direct {p0, v2, v6}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->getSeasonalLockSoundPath(IZ)Ljava/lang/String;

    move-result-object v0

    .line 1995
    .restart local v0    # "pathLock":Ljava/lang/String;
    invoke-direct {p0, v2, v5}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->getSeasonalLockSoundPath(IZ)Ljava/lang/String;

    move-result-object v1

    .line 1996
    .restart local v1    # "pathUnlock":Ljava/lang/String;
    goto/16 :goto_0

    .line 1925
    :pswitch_data_0
    .packed-switch 0x55
        :pswitch_0
    .end packed-switch

    .line 1937
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_0
        0x3 -> :sswitch_4
        0x4 -> :sswitch_2
        0x5 -> :sswitch_3
        0x7 -> :sswitch_1
        0x8 -> :sswitch_5
        0x9 -> :sswitch_6
        0xa -> :sswitch_1
        0xb -> :sswitch_7
        0xc -> :sswitch_8
        0x51 -> :sswitch_9
        0x52 -> :sswitch_a
        0x53 -> :sswitch_b
        0x54 -> :sswitch_c
        0x55 -> :sswitch_d
    .end sparse-switch
.end method

.method public removeMusicWallpaper()V
    .locals 2

    .prologue
    .line 1773
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mMusicBackgroundSet:Z

    .line 1774
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->updateAttributionInfoView()V

    .line 1776
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    instance-of v1, v1, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;

    if-eqz v1, :cond_0

    .line 1777
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    check-cast v1, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;

    invoke-virtual {v1}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->removeMusicWallpaper()V

    .line 1779
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->getDefaultWallpaperTypeForEffect()I

    move-result v0

    .line 1787
    .local v0, "changedDefaultWallpaperType":I
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 1328
    const-string v0, "KeyguardEffectViewController"

    const-string v1, "reset()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1330
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eqz v0, :cond_0

    .line 1331
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->reset()V

    .line 1333
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundCircleView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eqz v0, :cond_1

    .line 1334
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundCircleView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->reset()V

    .line 1336
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eqz v0, :cond_2

    .line 1337
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->reset()V

    .line 1339
    :cond_2
    return-void
.end method

.method public screenTurnedOff()V
    .locals 2

    .prologue
    .line 1378
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mFestivalEffect:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->SetScreenState(Z)V

    .line 1380
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eqz v0, :cond_0

    .line 1381
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->screenTurnedOff()V

    .line 1383
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundCircleView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eqz v0, :cond_1

    .line 1384
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundCircleView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->screenTurnedOff()V

    .line 1386
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eqz v0, :cond_2

    .line 1387
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->screenTurnedOff()V

    .line 1389
    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mChargeView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eqz v0, :cond_3

    .line 1390
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mChargeView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->screenTurnedOff()V

    .line 1392
    :cond_3
    return-void
.end method

.method public screenTurnedOn()V
    .locals 2

    .prologue
    .line 1343
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mFestivalEffect:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->SetScreenState(Z)V

    .line 1345
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eqz v0, :cond_0

    .line 1346
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->screenTurnedOn()V

    .line 1348
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundCircleView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eqz v0, :cond_1

    .line 1349
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundCircleView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->screenTurnedOn()V

    .line 1351
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eqz v0, :cond_2

    .line 1352
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->screenTurnedOn()V

    .line 1354
    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mFestivalEffect:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->isChargeState()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1355
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mChargeView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eqz v0, :cond_3

    .line 1356
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mChargeView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->screenTurnedOn()V

    .line 1357
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mFestivalEffect:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->pauseAnimation()V

    .line 1360
    :cond_3
    return-void
.end method

.method public setAttributionInfoView(Lcom/android/keyguard/sec/rich/SecAttributionInfoView;)V
    .locals 0
    .param p1, "view"    # Lcom/android/keyguard/sec/rich/SecAttributionInfoView;

    .prologue
    .line 1853
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mAttributionInfoView:Lcom/android/keyguard/sec/rich/SecAttributionInfoView;

    .line 1854
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->updateAttributionInfoView()V

    .line 1855
    return-void
.end method

.method public setEffectLayout(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .param p1, "background"    # Landroid/view/View;
    .param p2, "foreground"    # Landroid/view/View;
    .param p3, "panel"    # Landroid/view/View;

    .prologue
    .line 1865
    check-cast p1, Landroid/widget/FrameLayout;

    .end local p1    # "background":Landroid/view/View;
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundRootLayout:Landroid/widget/FrameLayout;

    .line 1866
    check-cast p2, Landroid/widget/FrameLayout;

    .end local p2    # "foreground":Landroid/view/View;
    iput-object p2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundRootLayout:Landroid/widget/FrameLayout;

    .line 1867
    check-cast p3, Landroid/widget/FrameLayout;

    .end local p3    # "panel":Landroid/view/View;
    iput-object p3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mNotificationPanel:Landroid/widget/FrameLayout;

    .line 1869
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->handleWallpaperTypeChanged()V

    .line 1870
    return-void
.end method

.method public setFestivalKeyguardShowing(ZI)V
    .locals 6
    .param p1, "showing"    # Z
    .param p2, "visibility"    # I

    .prologue
    .line 1894
    const-string v3, "KeyguardEffectViewController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setFestivalKeyguardShowing = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ,:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->isFestivalActivated()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1895
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->isFestivalActivated()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1908
    :cond_0
    :goto_0
    return-void

    .line 1897
    :cond_1
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eqz v3, :cond_0

    .line 1898
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    check-cast v2, Landroid/view/ViewGroup;

    .line 1899
    .local v2, "convertedView":Landroid/view/ViewGroup;
    const/4 v0, 0x0

    .local v0, "childIdx":I
    :goto_1
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 1900
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1901
    .local v1, "childView":Landroid/view/View;
    if-nez v1, :cond_2

    .line 1899
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1903
    :cond_2
    invoke-virtual {v1, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 1905
    .end local v1    # "childView":Landroid/view/View;
    :cond_3
    invoke-virtual {v2, p2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1906
    invoke-virtual {v2}, Landroid/view/ViewGroup;->invalidate()V

    goto :goto_0
.end method

.method public setHidden(Z)V
    .locals 3
    .param p1, "isHidden"    # Z

    .prologue
    .line 1733
    const-string v0, "KeyguardEffectViewController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setHidden = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1735
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eqz v0, :cond_0

    .line 1736
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v0, p1}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->setHidden(Z)V

    .line 1738
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundCircleView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eqz v0, :cond_1

    .line 1739
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundCircleView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v0, p1}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->setHidden(Z)V

    .line 1741
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eqz v0, :cond_2

    .line 1742
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v0, p1}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->setHidden(Z)V

    .line 1744
    :cond_2
    if-nez p1, :cond_3

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mIsVisible:Z

    .line 1745
    return-void

    .line 1744
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setKeyguardShowing(Z)V
    .locals 4
    .param p1, "showing"    # Z

    .prologue
    .line 1873
    const-string v1, "KeyguardEffectViewController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setKeyguardShowing = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1874
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 1876
    .local v0, "visibility":I
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundRootLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1877
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundRootLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1879
    if-eqz p1, :cond_2

    .line 1880
    iget-boolean v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mIsShowing:Z

    if-eqz v1, :cond_1

    .line 1881
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->reset()V

    .line 1889
    :goto_1
    iput-boolean p1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mIsShowing:Z

    .line 1890
    invoke-virtual {p0, p1, v0}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->setFestivalKeyguardShowing(ZI)V

    .line 1891
    return-void

    .line 1874
    .end local v0    # "visibility":I
    :cond_0
    const/16 v0, 0x8

    goto :goto_0

    .line 1883
    .restart local v0    # "visibility":I
    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->show()V

    goto :goto_1

    .line 1886
    :cond_2
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->cleanUp()V

    goto :goto_1
.end method

.method public setLayerAndBitmapForParticleEffect()V
    .locals 4

    .prologue
    .line 1760
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    instance-of v3, v3, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;

    if-eqz v3, :cond_0

    .line 1761
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    check-cast v0, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;

    .line 1762
    .local v0, "effectViewParticleSpace":Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    check-cast v2, Lcom/android/keyguard/sec/KeyguardEffectViewWallpaper;

    .line 1763
    .local v2, "effectWallpaper":Lcom/android/keyguard/sec/KeyguardEffectViewWallpaper;
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mNotificationPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2, v3}, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->setLayers(Lcom/android/keyguard/sec/KeyguardEffectViewWallpaper;Landroid/widget/FrameLayout;)V

    .line 1766
    .end local v0    # "effectViewParticleSpace":Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;
    .end local v2    # "effectWallpaper":Lcom/android/keyguard/sec/KeyguardEffectViewWallpaper;
    :cond_0
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    instance-of v3, v3, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;

    if-eqz v3, :cond_1

    .line 1767
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    check-cast v1, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;

    .line 1768
    .local v1, "effectViewZoomPanning":Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mNotificationPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v3}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->setLayers(Landroid/view/View;)V

    .line 1770
    .end local v1    # "effectViewZoomPanning":Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;
    :cond_1
    return-void
.end method

.method public setLiveWallpaperBg(Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1186
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-nez v1, :cond_1

    .line 1188
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardEffectViewUtil;->getWallpaperType(Landroid/content/Context;)I

    move-result v0

    .line 1189
    .local v0, "wallpaperType":I
    if-eqz v0, :cond_0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1191
    :cond_0
    const-string v2, "KeyguardEffectViewController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setLiveWallpaperBg = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1192
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundRootLayout:Landroid/widget/FrameLayout;

    check-cast v1, Lcom/android/keyguard/sec/EffectBehindView;

    invoke-virtual {v1, p1}, Lcom/android/keyguard/sec/EffectBehindView;->setLiveWallpaperBg(Landroid/graphics/Bitmap;)V

    .line 1195
    .end local v0    # "wallpaperType":I
    :cond_1
    return-void

    .line 1191
    .restart local v0    # "wallpaperType":I
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setLiveWeatherViewVisibility(Z)V
    .locals 2
    .param p1, "isVisible"    # Z

    .prologue
    .line 2136
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundRootLayout:Landroid/widget/FrameLayout;

    if-nez v0, :cond_1

    .line 2147
    :cond_0
    :goto_0
    return-void

    .line 2138
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundType:Lcom/android/keyguard/sec/KeyguardEffectViewController$Background;

    sget-object v1, Lcom/android/keyguard/sec/KeyguardEffectViewController$Background;->justLockLive:Lcom/android/keyguard/sec/KeyguardEffectViewController$Background;

    if-ne v0, v1, :cond_0

    .line 2139
    if-eqz p1, :cond_2

    .line 2140
    new-instance v0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    .line 2141
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->setBackground()V

    goto :goto_0

    .line 2142
    :cond_2
    if-nez p1, :cond_0

    .line 2143
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundRootLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 2144
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    goto :goto_0
.end method

.method public setLockSoundChangeCallback(Lcom/android/keyguard/sec/KeyguardEffectViewController$LockSoundChangeCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/keyguard/sec/KeyguardEffectViewController$LockSoundChangeCallback;

    .prologue
    .line 1911
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mLockSoundChangeCallback:Lcom/android/keyguard/sec/KeyguardEffectViewController$LockSoundChangeCallback;

    .line 1912
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->reloadLockSound()V

    .line 1913
    return-void
.end method

.method public shouldShowAttributionInfoView()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1842
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardEffectViewUtil;->isStrongPowerSavingMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1849
    :cond_0
    :goto_0
    return v0

    .line 1846
    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->isCategoriesWallpaper()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->isJustLockLiveEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1847
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public show()V
    .locals 2

    .prologue
    .line 1282
    const-string v0, "KeyguardEffectViewController"

    const-string v1, "show()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1283
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 1285
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mFestivalEffect:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->SetShowState(Z)V

    .line 1287
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eqz v0, :cond_0

    .line 1288
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->show()V

    .line 1290
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundCircleView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eqz v0, :cond_1

    .line 1291
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundCircleView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->show()V

    .line 1293
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eqz v0, :cond_2

    .line 1294
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->show()V

    .line 1296
    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mFestivalEffect:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->isChargeState()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mFestivalEffect:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->GetScreenState()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1297
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mChargeView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eqz v0, :cond_3

    .line 1298
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mChargeView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->show()V

    .line 1301
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mFestivalEffect:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->pauseAnimation()V

    .line 1304
    :cond_3
    return-void
.end method

.method public showUnlockAffordance(JLandroid/graphics/Rect;)V
    .locals 1
    .param p1, "startDelay"    # J
    .param p3, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 1408
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mUnlockEffectView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eqz v0, :cond_0

    .line 1409
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mUnlockEffectView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->showUnlockAffordance(JLandroid/graphics/Rect;)V

    .line 1410
    :cond_0
    return-void
.end method

.method public update()V
    .locals 1

    .prologue
    .line 1396
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eqz v0, :cond_0

    .line 1397
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->update()V

    .line 1399
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundCircleView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eqz v0, :cond_1

    .line 1400
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundCircleView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->update()V

    .line 1402
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eqz v0, :cond_2

    .line 1403
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->update()V

    .line 1404
    :cond_2
    return-void
.end method

.method public updateAttributionInfoView()V
    .locals 1

    .prologue
    .line 1858
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mAttributionInfoView:Lcom/android/keyguard/sec/rich/SecAttributionInfoView;

    if-nez v0, :cond_0

    .line 1862
    :goto_0
    return-void

    .line 1861
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mAttributionInfoView:Lcom/android/keyguard/sec/rich/SecAttributionInfoView;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->update()V

    goto :goto_0
.end method

.method public updateMontblancEffectType()V
    .locals 6

    .prologue
    .line 1261
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    instance-of v2, v2, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;

    if-eqz v2, :cond_1

    .line 1262
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lockscreen_montblanc_wallpaper"

    const/4 v4, 0x0

    const/4 v5, -0x2

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 1266
    .local v0, "montblancWallpaperInkType":I
    const/4 v1, 0x0

    .line 1267
    .local v1, "type":I
    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 1268
    const/4 v1, 0x1

    .line 1271
    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    check-cast v2, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;

    invoke-virtual {v2, v1}, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->settingsForImageType(I)V

    .line 1273
    .end local v0    # "montblancWallpaperInkType":I
    .end local v1    # "type":I
    :cond_1
    return-void
.end method
