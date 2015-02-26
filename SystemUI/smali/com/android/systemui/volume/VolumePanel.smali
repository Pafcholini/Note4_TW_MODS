.class public Lcom/android/systemui/volume/VolumePanel;
.super Landroid/os/Handler;
.source "VolumePanel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/volume/VolumePanel$Callback;,
        Lcom/android/systemui/volume/VolumePanel$LoadListener;,
        Lcom/android/systemui/volume/VolumePanel$SafetyWarning;,
        Lcom/android/systemui/volume/VolumePanel$StreamControl;,
        Lcom/android/systemui/volume/VolumePanel$StreamResources;
    }
.end annotation


# static fields
.field public static final ACTION_VOLUMEPANEL_CLICK_BUTTON1:Ljava/lang/String; = "android.view.volumepanel.CLICK_BUTTON1"

.field public static final ACTION_VOLUMEPANEL_CLICK_BUTTON2:Ljava/lang/String; = "android.view.volumepanel.CLICK_BUTTON2"

.field public static final ACTION_VOLUMEPANEL_TOUCH_POPUP:Ljava/lang/String; = "android.view.volumepanel.TOUCH_POPUP"

.field private static final BEEP_DURATION:I = 0x96

.field private static final FREE_DELAY:I = 0x2710

.field private static final IC_AUDIO_VOL:I = 0x7f0200d8

.field private static final IC_AUDIO_VOL_MUTE:I = 0x7f0200d9

.field private static LOGD:Z = false

.field private static final L_AMERICANO:Z

.field private static final MAX_VOLUME:I = 0x64

.field private static final MSG_DISPLAY_SAFE_VOLUME_WARNING:I = 0xb

.field private static final MSG_DISSMISS_SAFE_VOLUME_WARNING:I = 0x10

.field private static final MSG_FREE_RESOURCES:I = 0x1

.field private static final MSG_LAYOUT_DIRECTION:I = 0xc

.field private static final MSG_MUTE_CHANGED:I = 0x7

.field private static final MSG_NOTIFICATION_EFFECTS_SUPPRESSOR_CHANGED:I = 0xf

.field private static final MSG_PLAY_SOUND:I = 0x2

.field private static final MSG_REMOTE_VOLUME_CHANGED:I = 0x8

.field private static final MSG_REMOTE_VOLUME_UPDATE_IF_SHOWN:I = 0x9

.field private static final MSG_RINGER_MODE_CHANGED:I = 0x6

.field private static final MSG_SLIDER_VISIBILITY_CHANGED:I = 0xa

.field private static final MSG_STOP_SOUNDS:I = 0x3

.field private static final MSG_TIMEOUT:I = 0x5

.field private static final MSG_USER_ACTIVITY:I = 0xe

.field private static final MSG_VIBRATE:I = 0x4

.field private static final MSG_VOLUME_CHANGED:I = 0x0

.field private static final MSG_ZEN_MODE_AVAILABLE_CHANGED:I = 0xd

.field private static final NUM_VOLUME_EFFECT:I = 0x1

.field private static final PLAY_SOUND_DELAY:I = 0x0

.field private static final SOUND_EFFECTS_PATH:Ljava/lang/String; = "/media/audio/ui/"

.field private static final SOUND_EFFECT_FILES:[Ljava/lang/String;

.field private static final SOUND_VOLUME_CONTROL:I = 0x0

.field private static final STREAMS:[Lcom/android/systemui/volume/VolumePanel$StreamResources;

.field private static final STREAM_MASTER:I = -0x64

.field private static final STREAM_REMOTE_MUSIC:I = -0xc8

.field private static final SUPPORT_WEARABLE_HMT:Z = true

.field private static final SVIEWCOVER_FEATURE_LEVEL:Ljava/lang/String; = "com.sec.feature.cover.sviewcover"

.field private static final TAG:Ljava/lang/String; = "VolumePanel"

.field private static final TIMEOUT_DELAY:I = 0xbb8

.field private static final TIMEOUT_DELAY_COLLAPSED:I = 0x1194

.field private static final TIMEOUT_DELAY_EXPANDED:I = 0x2710

.field private static final TIMEOUT_DELAY_FOR_VZW:I = 0xfa0

.field private static final TIMEOUT_DELAY_SAFETY_WARNING:I = 0x1388

.field private static final TIMEOUT_DELAY_SHORT:I = 0x5dc

.field public static final VIBRATE_DELAY:I = 0x12c

.field private static final VIBRATE_DURATION:I = 0x12c

.field private static final VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

.field static mIsLoadSoundPool:Z

.field private static sSafetyWarning:Landroid/app/AlertDialog;

.field private static sSafetyWarningLock:Ljava/lang/Object;


# instance fields
.field private SOUND_EFFECT_FILES_MAP:[[I

.field private final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mActiveStreamType:I

.field private final mAudioManager:Landroid/media/AudioManager;

.field private final mBottomMarginView:Landroid/view/View;

.field private mCallback:Lcom/android/systemui/volume/VolumePanel$Callback;

.field protected final mContext:Landroid/content/Context;

.field private mCoverBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCoverLevel:I

.field private mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

.field private mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

.field private mCoverType:I

.field private final mDialog:Landroid/app/Dialog;

.field private mDisabledAlpha:F

.field private final mDivider:Landroid/view/View;

.field private mIsShowingSCoverWarning:Z

.field private mIsWhiteTheme:Z

.field private mLastRingerMode:I

.field private mLastRingerProgress:I

.field private final mMediaControllerCb:Landroid/media/session/MediaController$Callback;

.field private final mMoreButton:Landroid/view/View;

.field private final mPanel:Landroid/view/ViewGroup;

.field private final mPlayMasterStreamTones:Z

.field private mRingIsSilent:Z

.field private mScover:Lcom/samsung/android/sdk/cover/Scover;

.field private final mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private final mSliderPanel:Landroid/view/ViewGroup;

.field private mSoundPool:Landroid/media/SoundPool;

.field private mStreamControls:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/systemui/volume/VolumePanel$StreamControl;",
            ">;"
        }
    .end annotation
.end field

.field private final mTag:Ljava/lang/String;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTimeoutDelay:I

.field private mToneGenerators:[Landroid/media/ToneGenerator;

.field private final mTopMarginView:Landroid/view/View;

.field private mTopOffset:I

.field private mVibrator:Landroid/os/Vibrator;

.field private final mView:Landroid/view/View;

.field private mVoiceCapable:Z

.field private mVolumeTitleTextColor:I

.field private final mZenCallback:Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;

.field private final mZenController:Lcom/android/systemui/statusbar/policy/ZenModeController;

.field private mZenModeAvailable:Z

.field private mZenPanel:Lcom/android/systemui/volume/ZenModePanel;

.field private mZenPanelExpanded:Z

.field private sCoverTopOffset:I

.field private volumeDarkThemeResources:[I

.field private volumeWhiteThemeResources:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 118
    sput-boolean v3, Lcom/android/systemui/volume/VolumePanel;->LOGD:Z

    .line 172
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v0, v4}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/volume/VolumePanel;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    .line 228
    sput-boolean v2, Lcom/android/systemui/volume/VolumePanel;->mIsLoadSoundPool:Z

    .line 235
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "TW_Volume_control.ogg"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/systemui/volume/VolumePanel;->SOUND_EFFECT_FILES:[Ljava/lang/String;

    .line 261
    const-string v0, "americano"

    const-string v1, "ro.build.scafe"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/volume/VolumePanel;->L_AMERICANO:Z

    .line 366
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/android/systemui/volume/VolumePanel$StreamResources;

    sget-object v1, Lcom/android/systemui/volume/VolumePanel$StreamResources;->BluetoothSCOStream:Lcom/android/systemui/volume/VolumePanel$StreamResources;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/volume/VolumePanel$StreamResources;->RingerStream:Lcom/android/systemui/volume/VolumePanel$StreamResources;

    aput-object v1, v0, v3

    const/4 v1, 0x2

    sget-object v2, Lcom/android/systemui/volume/VolumePanel$StreamResources;->VoiceStream:Lcom/android/systemui/volume/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/android/systemui/volume/VolumePanel$StreamResources;->MediaStream:Lcom/android/systemui/volume/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    sget-object v1, Lcom/android/systemui/volume/VolumePanel$StreamResources;->NotificationStream:Lcom/android/systemui/volume/VolumePanel$StreamResources;

    aput-object v1, v0, v4

    const/4 v1, 0x5

    sget-object v2, Lcom/android/systemui/volume/VolumePanel$StreamResources;->AlarmStream:Lcom/android/systemui/volume/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/systemui/volume/VolumePanel$StreamResources;->MasterStream:Lcom/android/systemui/volume/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/systemui/volume/VolumePanel$StreamResources;->RemoteStream:Lcom/android/systemui/volume/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/android/systemui/volume/VolumePanel$StreamResources;->FMStream:Lcom/android/systemui/volume/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/android/systemui/volume/VolumePanel$StreamResources;->VideoCallStream:Lcom/android/systemui/volume/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/android/systemui/volume/VolumePanel$StreamResources;->SystemStream:Lcom/android/systemui/volume/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/systemui/volume/VolumePanel;->STREAMS:[Lcom/android/systemui/volume/VolumePanel$StreamResources;

    .line 468
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/systemui/volume/VolumePanel;->sSafetyWarningLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/ZenModeController;)V
    .locals 18
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "zenController"    # Lcom/android/systemui/statusbar/policy/ZenModeController;

    .prologue
    .line 656
    invoke-direct/range {p0 .. p0}, Landroid/os/Handler;-><init>()V

    .line 188
    const/16 v14, 0xbb8

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/systemui/volume/VolumePanel;->mTimeoutDelay:I

    .line 190
    const/4 v14, 0x2

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/systemui/volume/VolumePanel;->mLastRingerMode:I

    .line 191
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/systemui/volume/VolumePanel;->mLastRingerProgress:I

    .line 221
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/systemui/volume/VolumePanel;->mActiveStreamType:I

    .line 242
    const/4 v14, 0x1

    new-array v14, v14, [[I

    const/4 v15, 0x0

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [I

    move-object/from16 v16, v0

    fill-array-data v16, :array_0

    aput-object v16, v14, v15

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/systemui/volume/VolumePanel;->SOUND_EFFECT_FILES_MAP:[[I

    .line 248
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/systemui/volume/VolumePanel;->mScover:Lcom/samsung/android/sdk/cover/Scover;

    .line 249
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/systemui/volume/VolumePanel;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    .line 250
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/systemui/volume/VolumePanel;->mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    .line 251
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/systemui/volume/VolumePanel;->mCoverType:I

    .line 252
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/systemui/volume/VolumePanel;->mIsShowingSCoverWarning:Z

    .line 254
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/systemui/volume/VolumePanel;->mCoverLevel:I

    .line 255
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/systemui/volume/VolumePanel;->mTopOffset:I

    .line 256
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/systemui/volume/VolumePanel;->sCoverTopOffset:I

    .line 259
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/systemui/volume/VolumePanel;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 570
    new-instance v14, Lcom/android/systemui/volume/VolumePanel$1;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/systemui/volume/VolumePanel$1;-><init>(Lcom/android/systemui/volume/VolumePanel;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/systemui/volume/VolumePanel;->mCoverBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 618
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/systemui/volume/VolumePanel;->mIsWhiteTheme:Z

    .line 625
    const/4 v14, 0x4

    new-array v14, v14, [I

    fill-array-data v14, :array_1

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/systemui/volume/VolumePanel;->volumeWhiteThemeResources:[I

    .line 632
    const/4 v14, 0x4

    new-array v14, v14, [I

    fill-array-data v14, :array_2

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/systemui/volume/VolumePanel;->volumeDarkThemeResources:[I

    .line 2464
    new-instance v14, Lcom/android/systemui/volume/VolumePanel$11;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/systemui/volume/VolumePanel$11;-><init>(Lcom/android/systemui/volume/VolumePanel;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/systemui/volume/VolumePanel;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 2507
    new-instance v14, Lcom/android/systemui/volume/VolumePanel$12;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/systemui/volume/VolumePanel$12;-><init>(Lcom/android/systemui/volume/VolumePanel;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/systemui/volume/VolumePanel;->mZenCallback:Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;

    .line 2519
    new-instance v14, Lcom/android/systemui/volume/VolumePanel$13;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/systemui/volume/VolumePanel$13;-><init>(Lcom/android/systemui/volume/VolumePanel;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/systemui/volume/VolumePanel;->mMediaControllerCb:Landroid/media/session/MediaController$Callback;

    .line 657
    const-string v14, "%s.%08x"

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const-string v17, "VolumePanel"

    aput-object v17, v15, v16

    const/16 v16, 0x1

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->hashCode()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/systemui/volume/VolumePanel;->mTag:Ljava/lang/String;

    .line 658
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/volume/VolumePanel;->mContext:Landroid/content/Context;

    .line 659
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/volume/VolumePanel;->mZenController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    .line 660
    const-string v14, "audio"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/media/AudioManager;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/systemui/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    .line 661
    const-string v14, "accessibility"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/accessibility/AccessibilityManager;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/systemui/volume/VolumePanel;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 665
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 666
    .local v10, "res":Landroid/content/res/Resources;
    const v14, 0x1120012

    invoke-virtual {v10, v14}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v12

    .line 667
    .local v12, "useMasterVolume":Z
    if-eqz v12, :cond_1

    .line 668
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    sget-object v14, Lcom/android/systemui/volume/VolumePanel;->STREAMS:[Lcom/android/systemui/volume/VolumePanel$StreamResources;

    array-length v14, v14

    if-ge v5, v14, :cond_1

    .line 669
    sget-object v14, Lcom/android/systemui/volume/VolumePanel;->STREAMS:[Lcom/android/systemui/volume/VolumePanel$StreamResources;

    aget-object v11, v14, v5

    .line 670
    .local v11, "streamRes":Lcom/android/systemui/volume/VolumePanel$StreamResources;
    iget v14, v11, Lcom/android/systemui/volume/VolumePanel$StreamResources;->streamType:I

    const/16 v15, -0x64

    if-ne v14, v15, :cond_0

    const/4 v14, 0x1

    :goto_1
    iput-boolean v14, v11, Lcom/android/systemui/volume/VolumePanel$StreamResources;->show:Z

    .line 668
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 670
    :cond_0
    const/4 v14, 0x0

    goto :goto_1

    .line 673
    .end local v5    # "i":I
    .end local v11    # "streamRes":Lcom/android/systemui/volume/VolumePanel$StreamResources;
    :cond_1
    sget-boolean v14, Lcom/android/systemui/volume/VolumePanel;->LOGD:Z

    if-eqz v14, :cond_2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/volume/VolumePanel;->mTag:Ljava/lang/String;

    const-string v15, "new VolumePanel"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    :cond_2
    const/high16 v14, 0x3f000000    # 0.5f

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/systemui/volume/VolumePanel;->mDisabledAlpha:F

    .line 676
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/volume/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v14

    if-eqz v14, :cond_3

    .line 677
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/volume/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v14

    const/4 v15, 0x1

    new-array v15, v15, [I

    const/16 v16, 0x0

    const v17, 0x1010033

    aput v17, v15, v16

    invoke-virtual {v14, v15}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 679
    .local v2, "arr":Landroid/content/res/TypedArray;
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/volume/VolumePanel;->mDisabledAlpha:F

    invoke-virtual {v2, v14, v15}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/systemui/volume/VolumePanel;->mDisabledAlpha:F

    .line 680
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 683
    .end local v2    # "arr":Landroid/content/res/TypedArray;
    :cond_3
    new-instance v14, Lcom/android/systemui/volume/VolumePanel$2;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v14, v0, v1}, Lcom/android/systemui/volume/VolumePanel$2;-><init>(Lcom/android/systemui/volume/VolumePanel;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/systemui/volume/VolumePanel;->mDialog:Landroid/app/Dialog;

    .line 695
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/volume/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v14}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v13

    .line 696
    .local v13, "window":Landroid/view/Window;
    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/view/Window;->requestFeature(I)Z

    .line 697
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/volume/VolumePanel;->mDialog:Landroid/app/Dialog;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 698
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/volume/VolumePanel;->mDialog:Landroid/app/Dialog;

    const v15, 0x7f0400ca

    invoke-virtual {v14, v15}, Landroid/app/Dialog;->setContentView(I)V

    .line 699
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/volume/VolumePanel;->mDialog:Landroid/app/Dialog;

    new-instance v15, Lcom/android/systemui/volume/VolumePanel$3;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/android/systemui/volume/VolumePanel$3;-><init>(Lcom/android/systemui/volume/VolumePanel;)V

    invoke-virtual {v14, v15}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 709
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/volume/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v14}, Landroid/app/Dialog;->create()V

    .line 711
    invoke-virtual {v13}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    .line 712
    .local v6, "lp":Landroid/view/WindowManager$LayoutParams;
    const/4 v14, 0x0

    iput-object v14, v6, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 717
    const v14, 0x1050156

    invoke-virtual {v10, v14}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v14

    iput v14, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 720
    const/16 v14, 0x7e4

    iput v14, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 721
    const/4 v14, -0x3

    iput v14, v6, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 722
    const v14, 0x7f10003b

    iput v14, v6, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 723
    const-string v14, "VolumePanel"

    invoke-virtual {v6, v14}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 724
    invoke-virtual {v13, v6}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 726
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/volume/VolumePanel;->updateWidth()V

    .line 728
    new-instance v14, Landroid/graphics/drawable/ColorDrawable;

    const/4 v15, 0x0

    invoke-direct {v14, v15}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v13, v14}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 729
    const/4 v14, 0x2

    invoke-virtual {v13, v14}, Landroid/view/Window;->clearFlags(I)V

    .line 730
    const v14, 0x1040028

    invoke-virtual {v13, v14}, Landroid/view/Window;->addFlags(I)V

    .line 734
    const v14, 0x1020002

    invoke-virtual {v13, v14}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/systemui/volume/VolumePanel;->mView:Landroid/view/View;

    .line 735
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/volume/VolumePanel;->mView:Landroid/view/View;

    new-instance v15, Lcom/android/systemui/volume/VolumePanel$4;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/android/systemui/volume/VolumePanel$4;-><init>(Lcom/android/systemui/volume/VolumePanel;)V

    invoke-static {v14, v15}, Lcom/android/systemui/volume/Interaction;->register(Landroid/view/View;Lcom/android/systemui/volume/Interaction$Callback;)V

    .line 742
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/volume/VolumePanel;->mView:Landroid/view/View;

    const v15, 0x7f0e03b6

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/systemui/volume/VolumePanel;->mPanel:Landroid/view/ViewGroup;

    .line 743
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/volume/VolumePanel;->mView:Landroid/view/View;

    const v15, 0x7f0e03b7

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/systemui/volume/VolumePanel;->mSliderPanel:Landroid/view/ViewGroup;

    .line 744
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/volume/VolumePanel;->mView:Landroid/view/View;

    const v15, 0x7f0e03bb

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Lcom/android/systemui/volume/ZenModePanel;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/systemui/volume/VolumePanel;->mZenPanel:Lcom/android/systemui/volume/ZenModePanel;

    .line 746
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/volume/VolumePanel;->mZenPanel:Lcom/android/systemui/volume/ZenModePanel;

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Lcom/android/systemui/volume/ZenModePanel;->setVisibility(I)V

    .line 749
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/volume/VolumePanel;->mView:Landroid/view/View;

    const v15, 0x7f0e0045

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/systemui/volume/VolumePanel;->mMoreButton:Landroid/view/View;

    .line 750
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/volume/VolumePanel;->mMoreButton:Landroid/view/View;

    new-instance v15, Lcom/android/systemui/volume/VolumePanel$5;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/android/systemui/volume/VolumePanel$5;-><init>(Lcom/android/systemui/volume/VolumePanel;)V

    invoke-virtual {v14, v15}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 760
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/volume/VolumePanel;->mView:Landroid/view/View;

    const v15, 0x7f0e0047

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/systemui/volume/VolumePanel;->mDivider:Landroid/view/View;

    .line 761
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/volume/VolumePanel;->mView:Landroid/view/View;

    const v15, 0x7f0e0049

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/systemui/volume/VolumePanel;->mTopMarginView:Landroid/view/View;

    .line 762
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/volume/VolumePanel;->mView:Landroid/view/View;

    const v15, 0x7f0e004a

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/systemui/volume/VolumePanel;->mBottomMarginView:Landroid/view/View;

    .line 772
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/volume/VolumePanel;->mMoreButton:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/volume/VolumePanel;->mDivider:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/android/systemui/volume/VolumePanel;->setVolumeResourcesAsTheme(Landroid/view/View;Landroid/view/View;)V

    .line 775
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/volume/VolumePanel;->initZenModePanel()V

    .line 777
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v14

    new-array v14, v14, [Landroid/media/ToneGenerator;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/systemui/volume/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    .line 778
    const-string v14, "vibrator"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/os/Vibrator;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/systemui/volume/VolumePanel;->mVibrator:Landroid/os/Vibrator;

    .line 781
    new-instance v14, Landroid/media/SoundPool;

    const/4 v15, 0x1

    const/16 v16, 0x2

    const/16 v17, 0x0

    invoke-direct/range {v14 .. v17}, Landroid/media/SoundPool;-><init>(III)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/systemui/volume/VolumePanel;->mSoundPool:Landroid/media/SoundPool;

    .line 782
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/volume/VolumePanel;->mSoundPool:Landroid/media/SoundPool;

    new-instance v15, Lcom/android/systemui/volume/VolumePanel$LoadListener;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v15, v0, v1}, Lcom/android/systemui/volume/VolumePanel$LoadListener;-><init>(Lcom/android/systemui/volume/VolumePanel;Lcom/android/systemui/volume/VolumePanel$1;)V

    invoke-virtual {v14, v15}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    .line 783
    const/4 v3, 0x0

    .local v3, "effect":I
    :goto_2
    const/4 v14, 0x1

    if-ge v3, v14, :cond_4

    .line 784
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "/media/audio/ui/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Lcom/android/systemui/volume/VolumePanel;->SOUND_EFFECT_FILES:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/VolumePanel;->SOUND_EFFECT_FILES_MAP:[[I

    move-object/from16 v16, v0

    aget-object v16, v16, v3

    const/16 v17, 0x0

    aget v16, v16, v17

    aget-object v15, v15, v16

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 785
    .local v4, "filePath":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/volume/VolumePanel;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v14, v14, v3

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/VolumePanel;->mSoundPool:Landroid/media/SoundPool;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v0, v4, v1}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v16

    aput v16, v14, v15

    .line 783
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 789
    .end local v4    # "filePath":Ljava/lang/String;
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x1120045

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v14

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/systemui/volume/VolumePanel;->mVoiceCapable:Z

    .line 791
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/volume/VolumePanel;->mZenController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    if-eqz v14, :cond_5

    if-nez v12, :cond_5

    .line 796
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/systemui/volume/VolumePanel;->mZenModeAvailable:Z

    .line 798
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/volume/VolumePanel;->mZenController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/volume/VolumePanel;->mZenCallback:Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;

    invoke-interface {v14, v15}, Lcom/android/systemui/statusbar/policy/ZenModeController;->addCallback(Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;)V

    .line 801
    :cond_5
    const v14, 0x1120012

    invoke-virtual {v10, v14}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    .line 802
    .local v8, "masterVolumeOnly":Z
    const v14, 0x1120013

    invoke-virtual {v10, v14}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    .line 803
    .local v7, "masterVolumeKeySounds":Z
    if-eqz v8, :cond_7

    if-eqz v7, :cond_7

    const/4 v14, 0x1

    :goto_3
    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/systemui/volume/VolumePanel;->mPlayMasterStreamTones:Z

    .line 805
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/volume/VolumePanel;->registerReceiver()V

    .line 807
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/volume/VolumePanel;->registerCoverReceiver()V

    .line 808
    new-instance v14, Lcom/android/systemui/volume/VolumePanel$6;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/systemui/volume/VolumePanel$6;-><init>(Lcom/android/systemui/volume/VolumePanel;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/systemui/volume/VolumePanel;->mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    .line 843
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/volume/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .line 844
    .local v9, "pm":Landroid/content/pm/PackageManager;
    if-eqz v9, :cond_6

    .line 845
    const-string v14, "com.sec.feature.cover.sviewcover"

    invoke-virtual {v9, v14}, Landroid/content/pm/PackageManager;->getSystemFeatureLevel(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/systemui/volume/VolumePanel;->mCoverLevel:I

    .line 847
    :cond_6
    const v14, 0x1050156

    invoke-virtual {v10, v14}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/systemui/volume/VolumePanel;->mTopOffset:I

    .line 848
    const v14, 0x1050157

    invoke-virtual {v10, v14}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/systemui/volume/VolumePanel;->sCoverTopOffset:I

    .line 850
    return-void

    .line 803
    .end local v9    # "pm":Landroid/content/pm/PackageManager;
    :cond_7
    const/4 v14, 0x0

    goto :goto_3

    .line 242
    :array_0
    .array-data 4
        0x0
        -0x1
    .end array-data

    .line 625
    :array_1
    .array-data 4
        0x7f0a007d
        0x7f0205ca
        0x7f0205c7
        0x7f0a007f
    .end array-data

    .line 632
    :array_2
    .array-data 4
        0x7f0a007e
        0x7f0205c9
        0x7f0205c6
        0x7f0a0080
    .end array-data
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 116
    sget-object v0, Lcom/android/systemui/volume/VolumePanel;->sSafetyWarningLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100()Landroid/app/AlertDialog;
    .locals 1

    .prologue
    .line 116
    sget-object v0, Lcom/android/systemui/volume/VolumePanel;->sSafetyWarning:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/volume/VolumePanel;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumePanel;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mMoreButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$102(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Landroid/app/AlertDialog;

    .prologue
    .line 116
    sput-object p0, Lcom/android/systemui/volume/VolumePanel;->sSafetyWarning:Landroid/app/AlertDialog;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/android/systemui/volume/VolumePanel;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumePanel;

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->resetTimeout()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/systemui/volume/VolumePanel;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumePanel;

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->expand()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/systemui/volume/VolumePanel;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumePanel;
    .param p1, "x1"    # Z

    .prologue
    .line 116
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumePanel;->sendCoverWarningMsgIntent(Z)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/systemui/volume/VolumePanel;)Lcom/android/systemui/volume/VolumePanel$Callback;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumePanel;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mCallback:Lcom/android/systemui/volume/VolumePanel$Callback;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/systemui/volume/VolumePanel;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumePanel;

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumePanel;->mZenPanelExpanded:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/android/systemui/volume/VolumePanel;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumePanel;
    .param p1, "x1"    # Z

    .prologue
    .line 116
    iput-boolean p1, p0, Lcom/android/systemui/volume/VolumePanel;->mZenPanelExpanded:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/android/systemui/volume/VolumePanel;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumePanel;

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->updateTimeoutDelay()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/systemui/volume/VolumePanel;Lcom/android/systemui/volume/VolumePanel$StreamControl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumePanel;
    .param p1, "x1"    # Lcom/android/systemui/volume/VolumePanel$StreamControl;

    .prologue
    .line 116
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumePanel;->toggle(Lcom/android/systemui/volume/VolumePanel$StreamControl;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/volume/VolumePanel;J)V
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumePanel;
    .param p1, "x1"    # J

    .prologue
    .line 116
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/volume/VolumePanel;->forceTimeout(J)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/systemui/volume/VolumePanel;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumePanel;

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->showSilentHint()V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/systemui/volume/VolumePanel;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumePanel;
    .param p1, "x1"    # I

    .prologue
    .line 116
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumePanel;->getStreamVolume(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$2200(Lcom/android/systemui/volume/VolumePanel;Lcom/android/systemui/volume/VolumePanel$StreamControl;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumePanel;
    .param p1, "x1"    # Lcom/android/systemui/volume/VolumePanel$StreamControl;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 116
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/volume/VolumePanel;->setStreamVolume(Lcom/android/systemui/volume/VolumePanel$StreamControl;II)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/systemui/volume/VolumePanel;)Lcom/android/systemui/statusbar/policy/ZenModeController;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumePanel;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mZenController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    return-object v0
.end method

.method static synthetic access$300()Z
    .locals 1

    .prologue
    .line 116
    sget-boolean v0, Lcom/android/systemui/volume/VolumePanel;->LOGD:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/systemui/volume/VolumePanel;)Landroid/app/Dialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumePanel;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/volume/VolumePanel;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumePanel;

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumePanel;->mIsShowingSCoverWarning:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/systemui/volume/VolumePanel;)Landroid/media/AudioManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumePanel;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/systemui/volume/VolumePanel;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumePanel;

    .prologue
    .line 116
    iget v0, p0, Lcom/android/systemui/volume/VolumePanel;->mActiveStreamType:I

    return v0
.end method

.method static synthetic access$802(Lcom/android/systemui/volume/VolumePanel;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumePanel;
    .param p1, "x1"    # I

    .prologue
    .line 116
    iput p1, p0, Lcom/android/systemui/volume/VolumePanel;->mActiveStreamType:I

    return p1
.end method

.method static synthetic access$900(Lcom/android/systemui/volume/VolumePanel;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumePanel;
    .param p1, "x1"    # Z

    .prologue
    .line 116
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumePanel;->setZenPanelVisible(Z)V

    return-void
.end method

.method private addOtherVolumes()V
    .locals 9

    .prologue
    const/4 v5, 0x2

    const/4 v8, 0x1

    const/16 v7, 0x8

    .line 1205
    iget-object v4, p0, Lcom/android/systemui/volume/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1207
    .local v1, "res":Landroid/content/res/Resources;
    iget v4, p0, Lcom/android/systemui/volume/VolumePanel;->mActiveStreamType:I

    if-eq v4, v5, :cond_1

    iget-boolean v4, p0, Lcom/android/systemui/volume/VolumePanel;->mVoiceCapable:Z

    if-eqz v4, :cond_1

    .line 1208
    iget-object v4, p0, Lcom/android/systemui/volume/VolumePanel;->mStreamControls:Landroid/util/SparseArray;

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/volume/VolumePanel$StreamControl;

    .line 1209
    .local v2, "sc":Lcom/android/systemui/volume/VolumePanel$StreamControl;
    iget v4, p0, Lcom/android/systemui/volume/VolumePanel;->mActiveStreamType:I

    const/4 v5, 0x6

    if-eq v4, v5, :cond_1

    iget v4, p0, Lcom/android/systemui/volume/VolumePanel;->mActiveStreamType:I

    if-eqz v4, :cond_1

    iget v4, p0, Lcom/android/systemui/volume/VolumePanel;->mActiveStreamType:I

    const/16 v5, 0xb

    if-eq v4, v5, :cond_1

    .line 1212
    const v4, 0x1080a5b

    iput v4, v2, Lcom/android/systemui/volume/VolumePanel$StreamControl;->iconRes:I

    .line 1213
    const v4, 0x1080a5d

    iput v4, v2, Lcom/android/systemui/volume/VolumePanel$StreamControl;->iconMuteRes:I

    .line 1214
    iget-object v4, v2, Lcom/android/systemui/volume/VolumePanel$StreamControl;->volTitle:Landroid/widget/TextView;

    const v5, 0x10408cd

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1215
    iget-object v4, v2, Lcom/android/systemui/volume/VolumePanel$StreamControl;->volTitle:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 1216
    iget-object v4, p0, Lcom/android/systemui/volume/VolumePanel;->mSliderPanel:Landroid/view/ViewGroup;

    iget-object v5, v2, Lcom/android/systemui/volume/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1217
    invoke-direct {p0, v2}, Lcom/android/systemui/volume/VolumePanel;->updateSlider(Lcom/android/systemui/volume/VolumePanel$StreamControl;)V

    .line 1218
    sget-boolean v4, Lcom/android/systemui/volume/VolumePanel;->LOGD:Z

    if-eqz v4, :cond_0

    const-string v4, "VolumePanel"

    const-string v5, "addOtherVolumes stream : STREAM_RING"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1219
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->isExpanded()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1220
    iget-object v4, v2, Lcom/android/systemui/volume/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1221
    iget-object v4, v2, Lcom/android/systemui/volume/VolumePanel$StreamControl;->volTitle:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1226
    .end local v2    # "sc":Lcom/android/systemui/volume/VolumePanel$StreamControl;
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v4, Lcom/android/systemui/volume/VolumePanel;->STREAMS:[Lcom/android/systemui/volume/VolumePanel$StreamResources;

    array-length v4, v4

    if-ge v0, v4, :cond_6

    .line 1228
    sget-object v4, Lcom/android/systemui/volume/VolumePanel;->STREAMS:[Lcom/android/systemui/volume/VolumePanel$StreamResources;

    aget-object v4, v4, v0

    iget v3, v4, Lcom/android/systemui/volume/VolumePanel$StreamResources;->streamType:I

    .line 1229
    .local v3, "streamType":I
    sget-object v4, Lcom/android/systemui/volume/VolumePanel;->STREAMS:[Lcom/android/systemui/volume/VolumePanel$StreamResources;

    aget-object v4, v4, v0

    iget-boolean v4, v4, Lcom/android/systemui/volume/VolumePanel$StreamResources;->show:Z

    if-eqz v4, :cond_2

    iget v4, p0, Lcom/android/systemui/volume/VolumePanel;->mActiveStreamType:I

    if-ne v3, v4, :cond_3

    .line 1226
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1233
    :cond_3
    iget v4, p0, Lcom/android/systemui/volume/VolumePanel;->mActiveStreamType:I

    const/16 v5, 0xa

    if-ne v4, v5, :cond_4

    const/4 v4, 0x3

    if-eq v3, v4, :cond_2

    .line 1238
    :cond_4
    iget-object v4, p0, Lcom/android/systemui/volume/VolumePanel;->mStreamControls:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/volume/VolumePanel$StreamControl;

    .line 1239
    .restart local v2    # "sc":Lcom/android/systemui/volume/VolumePanel$StreamControl;
    sget-object v4, Lcom/android/systemui/volume/VolumePanel;->STREAMS:[Lcom/android/systemui/volume/VolumePanel$StreamResources;

    aget-object v4, v4, v0

    iget v4, v4, Lcom/android/systemui/volume/VolumePanel$StreamResources;->iconRes:I

    iput v4, v2, Lcom/android/systemui/volume/VolumePanel$StreamControl;->iconRes:I

    .line 1240
    sget-object v4, Lcom/android/systemui/volume/VolumePanel;->STREAMS:[Lcom/android/systemui/volume/VolumePanel$StreamResources;

    aget-object v4, v4, v0

    iget v4, v4, Lcom/android/systemui/volume/VolumePanel$StreamResources;->iconMuteRes:I

    iput v4, v2, Lcom/android/systemui/volume/VolumePanel$StreamControl;->iconMuteRes:I

    .line 1241
    iget-object v4, v2, Lcom/android/systemui/volume/VolumePanel$StreamControl;->volTitle:Landroid/widget/TextView;

    sget-object v5, Lcom/android/systemui/volume/VolumePanel;->STREAMS:[Lcom/android/systemui/volume/VolumePanel$StreamResources;

    aget-object v5, v5, v0

    iget v5, v5, Lcom/android/systemui/volume/VolumePanel$StreamResources;->descRes:I

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1242
    iget-object v4, v2, Lcom/android/systemui/volume/VolumePanel$StreamControl;->volTitle:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 1243
    iget-object v4, p0, Lcom/android/systemui/volume/VolumePanel;->mSliderPanel:Landroid/view/ViewGroup;

    iget-object v5, v2, Lcom/android/systemui/volume/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1244
    invoke-direct {p0, v2}, Lcom/android/systemui/volume/VolumePanel;->updateSlider(Lcom/android/systemui/volume/VolumePanel$StreamControl;)V

    .line 1245
    sget-boolean v4, Lcom/android/systemui/volume/VolumePanel;->LOGD:Z

    if-eqz v4, :cond_5

    const-string v4, "VolumePanel"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addOtherVolumes stream : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1246
    :cond_5
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->isExpanded()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1247
    iget-object v4, v2, Lcom/android/systemui/volume/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1248
    iget-object v4, v2, Lcom/android/systemui/volume/VolumePanel$StreamControl;->volTitle:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1249
    iget-object v4, v2, Lcom/android/systemui/volume/VolumePanel$StreamControl;->underDivider:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 1253
    .end local v2    # "sc":Lcom/android/systemui/volume/VolumePanel$StreamControl;
    .end local v3    # "streamType":I
    :cond_6
    iget-object v4, p0, Lcom/android/systemui/volume/VolumePanel;->mContext:Landroid/content/Context;

    const/16 v5, 0x168

    invoke-static {v4, v5}, Landroid/util/GeneralUtil;->isBiggerThanSW(Landroid/content/Context;I)Z

    move-result v4

    if-eqz v4, :cond_8

    iget v4, p0, Lcom/android/systemui/volume/VolumePanel;->mActiveStreamType:I

    if-eq v4, v8, :cond_8

    .line 1254
    iget-object v4, p0, Lcom/android/systemui/volume/VolumePanel;->mStreamControls:Landroid/util/SparseArray;

    invoke-virtual {v4, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/volume/VolumePanel$StreamControl;

    .line 1255
    .restart local v2    # "sc":Lcom/android/systemui/volume/VolumePanel$StreamControl;
    const v4, 0x1080a62

    iput v4, v2, Lcom/android/systemui/volume/VolumePanel$StreamControl;->iconRes:I

    .line 1256
    const v4, 0x1080a64

    iput v4, v2, Lcom/android/systemui/volume/VolumePanel$StreamControl;->iconMuteRes:I

    .line 1257
    iget-object v4, v2, Lcom/android/systemui/volume/VolumePanel$StreamControl;->volTitle:Landroid/widget/TextView;

    const v5, 0x10408d0

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1258
    iget-object v4, v2, Lcom/android/systemui/volume/VolumePanel$StreamControl;->volTitle:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 1259
    iget-object v4, p0, Lcom/android/systemui/volume/VolumePanel;->mSliderPanel:Landroid/view/ViewGroup;

    iget-object v5, v2, Lcom/android/systemui/volume/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1260
    invoke-direct {p0, v2}, Lcom/android/systemui/volume/VolumePanel;->updateSlider(Lcom/android/systemui/volume/VolumePanel$StreamControl;)V

    .line 1261
    sget-boolean v4, Lcom/android/systemui/volume/VolumePanel;->LOGD:Z

    if-eqz v4, :cond_7

    const-string v4, "VolumePanel"

    const-string v5, "addOtherVolumes stream : STREAM_SYSTEM"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1262
    :cond_7
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->isExpanded()Z

    move-result v4

    if-nez v4, :cond_8

    .line 1263
    iget-object v4, v2, Lcom/android/systemui/volume/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1264
    iget-object v4, v2, Lcom/android/systemui/volume/VolumePanel$StreamControl;->volTitle:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1265
    iget-object v4, v2, Lcom/android/systemui/volume/VolumePanel$StreamControl;->underDivider:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1268
    .end local v2    # "sc":Lcom/android/systemui/volume/VolumePanel$StreamControl;
    :cond_8
    return-void
.end method

.method private announceDialogShown()V
    .locals 2

    .prologue
    .line 2025
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mView:Landroid/view/View;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 2026
    return-void
.end method

.method private clearRemoteStreamController()V
    .locals 3

    .prologue
    .line 2130
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mStreamControls:Landroid/util/SparseArray;

    if-eqz v1, :cond_0

    .line 2131
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mStreamControls:Landroid/util/SparseArray;

    const/16 v2, -0xc8

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/VolumePanel$StreamControl;

    .line 2132
    .local v0, "sc":Lcom/android/systemui/volume/VolumePanel$StreamControl;
    if-eqz v0, :cond_0

    .line 2133
    iget-object v1, v0, Lcom/android/systemui/volume/VolumePanel$StreamControl;->controller:Landroid/media/session/MediaController;

    if-eqz v1, :cond_0

    .line 2134
    iget-object v1, v0, Lcom/android/systemui/volume/VolumePanel$StreamControl;->controller:Landroid/media/session/MediaController;

    iget-object v2, p0, Lcom/android/systemui/volume/VolumePanel;->mMediaControllerCb:Landroid/media/session/MediaController$Callback;

    invoke-virtual {v1, v2}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V

    .line 2135
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/systemui/volume/VolumePanel$StreamControl;->controller:Landroid/media/session/MediaController;

    .line 2139
    .end local v0    # "sc":Lcom/android/systemui/volume/VolumePanel$StreamControl;
    :cond_0
    return-void
.end method

.method private collapse()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/16 v11, 0x8

    .line 1474
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v5, Lcom/android/systemui/volume/VolumePanel;->STREAMS:[Lcom/android/systemui/volume/VolumePanel$StreamResources;

    array-length v5, v5

    if-ge v1, v5, :cond_2

    .line 1475
    sget-object v5, Lcom/android/systemui/volume/VolumePanel;->STREAMS:[Lcom/android/systemui/volume/VolumePanel$StreamResources;

    aget-object v5, v5, v1

    iget v4, v5, Lcom/android/systemui/volume/VolumePanel$StreamResources;->streamType:I

    .line 1476
    .local v4, "streamType":I
    iget-object v5, p0, Lcom/android/systemui/volume/VolumePanel;->mStreamControls:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/volume/VolumePanel$StreamControl;

    .line 1477
    .local v3, "sc":Lcom/android/systemui/volume/VolumePanel$StreamControl;
    iget-object v5, v3, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v5}, Landroid/widget/SeekBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 1478
    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-static {}, Landroid/util/GeneralUtil;->isTablet()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1479
    iget-object v5, p0, Lcom/android/systemui/volume/VolumePanel;->mContext:Landroid/content/Context;

    const/16 v6, 0x12f

    invoke-static {v5, v6}, Landroid/util/GeneralUtil;->getPixelFromDP(Landroid/content/Context;I)I

    move-result v5

    iput v5, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1496
    :goto_1
    iget-object v5, v3, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v5, v2}, Landroid/widget/SeekBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1497
    iget-object v5, v3, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    iget-object v6, v3, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v6}, Landroid/widget/SeekBar;->getPaddingLeft()I

    move-result v6

    iget-object v7, p0, Lcom/android/systemui/volume/VolumePanel;->mContext:Landroid/content/Context;

    const/16 v8, 0xe

    invoke-static {v7, v8}, Landroid/util/GeneralUtil;->getPixelFromDP(Landroid/content/Context;I)I

    move-result v7

    iget-object v8, v3, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v8}, Landroid/widget/SeekBar;->getPaddingRight()I

    move-result v8

    iget-object v9, p0, Lcom/android/systemui/volume/VolumePanel;->mContext:Landroid/content/Context;

    const/16 v10, 0xd

    invoke-static {v9, v10}, Landroid/util/GeneralUtil;->getPixelFromDP(Landroid/content/Context;I)I

    move-result v9

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/widget/SeekBar;->setPadding(IIII)V

    .line 1498
    iget-object v5, v3, Lcom/android/systemui/volume/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    iget-object v6, v3, Lcom/android/systemui/volume/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v6

    iget-object v7, p0, Lcom/android/systemui/volume/VolumePanel;->mContext:Landroid/content/Context;

    const/16 v8, 0x13

    invoke-static {v7, v8}, Landroid/util/GeneralUtil;->getPixelFromDP(Landroid/content/Context;I)I

    move-result v7

    iget-object v8, v3, Lcom/android/systemui/volume/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v8

    iget-object v9, p0, Lcom/android/systemui/volume/VolumePanel;->mContext:Landroid/content/Context;

    const/16 v10, 0x12

    invoke-static {v9, v10}, Landroid/util/GeneralUtil;->getPixelFromDP(Landroid/content/Context;I)I

    move-result v9

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 1500
    iget-object v5, v3, Lcom/android/systemui/volume/VolumePanel$StreamControl;->volTitle:Landroid/widget/TextView;

    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1501
    iget-object v5, v3, Lcom/android/systemui/volume/VolumePanel$StreamControl;->underDivider:Landroid/widget/ImageView;

    invoke-virtual {v5, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1474
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1482
    :cond_0
    iget-object v5, p0, Lcom/android/systemui/volume/VolumePanel;->mContext:Landroid/content/Context;

    const/16 v6, 0x1e0

    invoke-static {v5, v6}, Landroid/util/GeneralUtil;->isBiggerThanSW(Landroid/content/Context;I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1483
    iget-object v5, p0, Lcom/android/systemui/volume/VolumePanel;->mContext:Landroid/content/Context;

    const/16 v6, 0x10b

    invoke-static {v5, v6}, Landroid/util/GeneralUtil;->getPixelFromDP(Landroid/content/Context;I)I

    move-result v5

    iput v5, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_1

    .line 1486
    :cond_1
    iget-object v5, p0, Lcom/android/systemui/volume/VolumePanel;->mContext:Landroid/content/Context;

    const/16 v6, 0xcb

    invoke-static {v5, v6}, Landroid/util/GeneralUtil;->getPixelFromDP(Landroid/content/Context;I)I

    move-result v5

    iput v5, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_1

    .line 1505
    .end local v2    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v3    # "sc":Lcom/android/systemui/volume/VolumePanel$StreamControl;
    .end local v4    # "streamType":I
    :cond_2
    iget-object v5, p0, Lcom/android/systemui/volume/VolumePanel;->mMoreButton:Landroid/view/View;

    invoke-virtual {v5, v12}, Landroid/view/View;->setVisibility(I)V

    .line 1506
    iget-object v5, p0, Lcom/android/systemui/volume/VolumePanel;->mDivider:Landroid/view/View;

    invoke-virtual {v5, v12}, Landroid/view/View;->setVisibility(I)V

    .line 1507
    iget-object v5, p0, Lcom/android/systemui/volume/VolumePanel;->mTopMarginView:Landroid/view/View;

    invoke-virtual {v5, v11}, Landroid/view/View;->setVisibility(I)V

    .line 1508
    iget-object v5, p0, Lcom/android/systemui/volume/VolumePanel;->mBottomMarginView:Landroid/view/View;

    invoke-virtual {v5, v11}, Landroid/view/View;->setVisibility(I)V

    .line 1511
    iget-object v5, p0, Lcom/android/systemui/volume/VolumePanel;->mSliderPanel:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 1512
    .local v0, "count":I
    const/4 v1, 0x1

    :goto_2
    if-ge v1, v0, :cond_3

    .line 1513
    iget-object v5, p0, Lcom/android/systemui/volume/VolumePanel;->mSliderPanel:Landroid/view/ViewGroup;

    invoke-virtual {v5, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v11}, Landroid/view/View;->setVisibility(I)V

    .line 1512
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1515
    :cond_3
    return-void
.end method

.method private createCoverMsgRemoteView()Landroid/widget/RemoteViews;
    .locals 3

    .prologue
    .line 549
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/cover/ScoverManager;->getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/cover/ScoverState;->getType()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/volume/VolumePanel;->mCoverType:I

    .line 550
    iget v1, p0, Lcom/android/systemui/volume/VolumePanel;->mCoverType:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    .line 551
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0400c9

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 555
    .local v0, "coverMsgRemoteViews":Landroid/widget/RemoteViews;
    :goto_0
    return-object v0

    .line 553
    .end local v0    # "coverMsgRemoteViews":Landroid/widget/RemoteViews;
    :cond_0
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0400c8

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .restart local v0    # "coverMsgRemoteViews":Landroid/widget/RemoteViews;
    goto :goto_0
.end method

.method private createKnoxCPUriCursor(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7
    .param p1, "uriString"    # Ljava/lang/String;
    .param p2, "queryMethod"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1519
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1520
    .local v1, "uri":Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, p2

    move-object v4, p3

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1522
    .local v6, "cr":Landroid/database/Cursor;
    return-object v6
.end method

.method private createSliders()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x6

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1090
    iget-object v7, p0, Lcom/android/systemui/volume/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 1091
    .local v3, "res":Landroid/content/res/Resources;
    iget-object v7, p0, Lcom/android/systemui/volume/VolumePanel;->mContext:Landroid/content/Context;

    const-string v10, "layout_inflater"

    invoke-virtual {v7, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 1094
    .local v1, "inflater":Landroid/view/LayoutInflater;
    new-instance v7, Landroid/util/SparseArray;

    sget-object v10, Lcom/android/systemui/volume/VolumePanel;->STREAMS:[Lcom/android/systemui/volume/VolumePanel$StreamResources;

    array-length v10, v10

    invoke-direct {v7, v10}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v7, p0, Lcom/android/systemui/volume/VolumePanel;->mStreamControls:Landroid/util/SparseArray;

    .line 1096
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v7, Lcom/android/systemui/volume/VolumePanel;->STREAMS:[Lcom/android/systemui/volume/VolumePanel$StreamResources;

    array-length v7, v7

    if-ge v0, v7, :cond_5

    .line 1097
    sget-object v7, Lcom/android/systemui/volume/VolumePanel;->STREAMS:[Lcom/android/systemui/volume/VolumePanel$StreamResources;

    aget-object v5, v7, v0

    .line 1099
    .local v5, "streamRes":Lcom/android/systemui/volume/VolumePanel$StreamResources;
    iget v6, v5, Lcom/android/systemui/volume/VolumePanel$StreamResources;->streamType:I

    .line 1101
    .local v6, "streamType":I
    new-instance v4, Lcom/android/systemui/volume/VolumePanel$StreamControl;

    invoke-direct {v4, p0, v12}, Lcom/android/systemui/volume/VolumePanel$StreamControl;-><init>(Lcom/android/systemui/volume/VolumePanel;Lcom/android/systemui/volume/VolumePanel$1;)V

    .line 1102
    .local v4, "sc":Lcom/android/systemui/volume/VolumePanel$StreamControl;
    iput v6, v4, Lcom/android/systemui/volume/VolumePanel$StreamControl;->streamType:I

    .line 1103
    const v7, 0x7f0400cc

    invoke-virtual {v1, v7, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    iput-object v7, v4, Lcom/android/systemui/volume/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    .line 1105
    iget-object v7, v4, Lcom/android/systemui/volume/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    invoke-virtual {v7, v4}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 1106
    iget-object v7, v4, Lcom/android/systemui/volume/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    const v10, 0x7f0e03b8

    invoke-virtual {v7, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, v4, Lcom/android/systemui/volume/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    .line 1107
    iget-object v7, v4, Lcom/android/systemui/volume/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    invoke-virtual {v7, v4}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 1108
    iget-object v7, v4, Lcom/android/systemui/volume/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    iget v10, v5, Lcom/android/systemui/volume/VolumePanel$StreamResources;->descRes:I

    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1109
    iget v7, v5, Lcom/android/systemui/volume/VolumePanel$StreamResources;->iconRes:I

    iput v7, v4, Lcom/android/systemui/volume/VolumePanel$StreamControl;->iconRes:I

    .line 1110
    iget v7, v5, Lcom/android/systemui/volume/VolumePanel$StreamResources;->iconMuteRes:I

    iput v7, v4, Lcom/android/systemui/volume/VolumePanel$StreamControl;->iconMuteRes:I

    .line 1111
    iget-object v7, v4, Lcom/android/systemui/volume/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    iget v10, v4, Lcom/android/systemui/volume/VolumePanel$StreamControl;->iconRes:I

    invoke-virtual {v7, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1113
    iget-object v7, v4, Lcom/android/systemui/volume/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    const v10, 0x7f0e0046

    invoke-virtual {v7, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v4, Lcom/android/systemui/volume/VolumePanel$StreamControl;->volTitle:Landroid/widget/TextView;

    .line 1114
    iget-object v7, v4, Lcom/android/systemui/volume/VolumePanel$StreamControl;->volTitle:Landroid/widget/TextView;

    iget v10, v5, Lcom/android/systemui/volume/VolumePanel$StreamResources;->descRes:I

    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1115
    iget-object v7, v4, Lcom/android/systemui/volume/VolumePanel$StreamControl;->volTitle:Landroid/widget/TextView;

    iget v10, p0, Lcom/android/systemui/volume/VolumePanel;->mVolumeTitleTextColor:I

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1116
    iget-object v7, v4, Lcom/android/systemui/volume/VolumePanel$StreamControl;->volTitle:Landroid/widget/TextView;

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 1117
    iget-object v7, v4, Lcom/android/systemui/volume/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    const v10, 0x7f0e0048

    invoke-virtual {v7, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, v4, Lcom/android/systemui/volume/VolumePanel$StreamControl;->underDivider:Landroid/widget/ImageView;

    .line 1118
    iget-object v7, v4, Lcom/android/systemui/volume/VolumePanel$StreamControl;->underDivider:Landroid/widget/ImageView;

    invoke-virtual {v7, v4}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 1120
    iget-object v7, v4, Lcom/android/systemui/volume/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    invoke-static {v6}, Lcom/android/systemui/volume/VolumePanel;->isNotificationOrRing(I)Z

    move-result v10

    invoke-virtual {v7, v10}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 1121
    iget-object v7, v4, Lcom/android/systemui/volume/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->isClickable()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1122
    iget-object v7, v4, Lcom/android/systemui/volume/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setSoundEffectsEnabled(Z)V

    .line 1123
    sget-boolean v7, Lcom/android/systemui/volume/VolumePanel;->L_AMERICANO:Z

    if-nez v7, :cond_0

    .line 1124
    iget-object v7, v4, Lcom/android/systemui/volume/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    new-instance v10, Lcom/android/systemui/volume/VolumePanel$9;

    invoke-direct {v10, p0, v4}, Lcom/android/systemui/volume/VolumePanel$9;-><init>(Lcom/android/systemui/volume/VolumePanel;Lcom/android/systemui/volume/VolumePanel$StreamControl;)V

    invoke-virtual {v7, v10}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1136
    :cond_0
    iget-object v7, v4, Lcom/android/systemui/volume/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    const v10, 0x7f0e03b9

    invoke-virtual {v7, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/SeekBar;

    iput-object v7, v4, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    .line 1141
    if-eq v6, v11, :cond_1

    if-nez v6, :cond_4

    :cond_1
    move v2, v9

    .line 1143
    .local v2, "plusOne":I
    :goto_1
    iget-object v7, v4, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-direct {p0, v6}, Lcom/android/systemui/volume/VolumePanel;->getStreamMaxVolume(I)I

    move-result v10

    add-int/2addr v10, v2

    invoke-virtual {v7, v10}, Landroid/widget/SeekBar;->setMax(I)V

    .line 1144
    iget-object v7, v4, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    iget-object v10, p0, Lcom/android/systemui/volume/VolumePanel;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v7, v10}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 1145
    iget-object v7, v4, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v7, v4}, Landroid/widget/SeekBar;->setTag(Ljava/lang/Object;)V

    .line 1146
    iget-object v7, p0, Lcom/android/systemui/volume/VolumePanel;->mStreamControls:Landroid/util/SparseArray;

    invoke-virtual {v7, v6, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1148
    if-eq v6, v11, :cond_2

    if-nez v6, :cond_3

    .line 1149
    :cond_2
    iget-object v7, v4, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v7, v9}, Landroid/widget/SeekBar;->setMin(I)V

    .line 1096
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .end local v2    # "plusOne":I
    :cond_4
    move v2, v8

    .line 1141
    goto :goto_1

    .line 1153
    .end local v4    # "sc":Lcom/android/systemui/volume/VolumePanel$StreamControl;
    .end local v5    # "streamRes":Lcom/android/systemui/volume/VolumePanel$StreamResources;
    .end local v6    # "streamType":I
    :cond_5
    return-void
.end method

.method private expand()V
    .locals 14

    .prologue
    const/16 v13, 0x8

    const/4 v12, 0x0

    .line 1424
    iget-object v6, p0, Lcom/android/systemui/volume/VolumePanel;->mSliderPanel:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 1425
    .local v0, "count":I
    iget-object v6, p0, Lcom/android/systemui/volume/VolumePanel;->mStreamControls:Landroid/util/SparseArray;

    iget v7, p0, Lcom/android/systemui/volume/VolumePanel;->mActiveStreamType:I

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/volume/VolumePanel$StreamControl;

    .line 1426
    .local v2, "last_sc":Lcom/android/systemui/volume/VolumePanel$StreamControl;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1427
    iget-object v6, p0, Lcom/android/systemui/volume/VolumePanel;->mSliderPanel:Landroid/view/ViewGroup;

    invoke-virtual {v6, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v12}, Landroid/view/View;->setVisibility(I)V

    .line 1426
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1429
    :cond_0
    const/4 v1, 0x0

    :goto_1
    sget-object v6, Lcom/android/systemui/volume/VolumePanel;->STREAMS:[Lcom/android/systemui/volume/VolumePanel$StreamResources;

    array-length v6, v6

    if-ge v1, v6, :cond_2

    .line 1430
    sget-object v6, Lcom/android/systemui/volume/VolumePanel;->STREAMS:[Lcom/android/systemui/volume/VolumePanel$StreamResources;

    aget-object v6, v6, v1

    iget v5, v6, Lcom/android/systemui/volume/VolumePanel$StreamResources;->streamType:I

    .line 1431
    .local v5, "streamType":I
    iget-object v6, p0, Lcom/android/systemui/volume/VolumePanel;->mStreamControls:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/volume/VolumePanel$StreamControl;

    .line 1432
    .local v4, "sc":Lcom/android/systemui/volume/VolumePanel$StreamControl;
    move-object v2, v4

    .line 1433
    iget-object v6, v4, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v6}, Landroid/widget/SeekBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 1434
    .local v3, "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {p0, v5, v4}, Lcom/android/systemui/volume/VolumePanel;->setDualColorSeekbar(ILcom/android/systemui/volume/VolumePanel$StreamControl;)V

    .line 1440
    iget-object v6, p0, Lcom/android/systemui/volume/VolumePanel;->mContext:Landroid/content/Context;

    const/16 v7, 0x1e0

    invoke-static {v6, v7}, Landroid/util/GeneralUtil;->isBiggerThanSW(Landroid/content/Context;I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1441
    iget-object v6, p0, Lcom/android/systemui/volume/VolumePanel;->mContext:Landroid/content/Context;

    const/16 v7, 0x14b

    invoke-static {v6, v7}, Landroid/util/GeneralUtil;->getPixelFromDP(Landroid/content/Context;I)I

    move-result v6

    iput v6, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1454
    :goto_2
    iget-object v6, v4, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v6, v3}, Landroid/widget/SeekBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1455
    iget-object v6, v4, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    iget-object v7, v4, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v7}, Landroid/widget/SeekBar;->getPaddingLeft()I

    move-result v7

    iget-object v8, p0, Lcom/android/systemui/volume/VolumePanel;->mContext:Landroid/content/Context;

    invoke-static {v8, v12}, Landroid/util/GeneralUtil;->getPixelFromDP(Landroid/content/Context;I)I

    move-result v8

    iget-object v9, v4, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v9}, Landroid/widget/SeekBar;->getPaddingRight()I

    move-result v9

    iget-object v10, p0, Lcom/android/systemui/volume/VolumePanel;->mContext:Landroid/content/Context;

    const/4 v11, 0x3

    invoke-static {v10, v11}, Landroid/util/GeneralUtil;->getPixelFromDP(Landroid/content/Context;I)I

    move-result v10

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/widget/SeekBar;->setPadding(IIII)V

    .line 1456
    iget-object v6, v4, Lcom/android/systemui/volume/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    iget-object v7, v4, Lcom/android/systemui/volume/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v7

    iget-object v8, p0, Lcom/android/systemui/volume/VolumePanel;->mContext:Landroid/content/Context;

    const/4 v9, 0x5

    invoke-static {v8, v9}, Landroid/util/GeneralUtil;->getPixelFromDP(Landroid/content/Context;I)I

    move-result v8

    iget-object v9, v4, Lcom/android/systemui/volume/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v9

    iget-object v10, p0, Lcom/android/systemui/volume/VolumePanel;->mContext:Landroid/content/Context;

    invoke-static {v10, v13}, Landroid/util/GeneralUtil;->getPixelFromDP(Landroid/content/Context;I)I

    move-result v10

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 1458
    iget-object v6, v4, Lcom/android/systemui/volume/VolumePanel$StreamControl;->volTitle:Landroid/widget/TextView;

    invoke-virtual {v6, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1459
    iget-object v6, v4, Lcom/android/systemui/volume/VolumePanel$StreamControl;->underDivider:Landroid/widget/ImageView;

    invoke-virtual {v6, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1429
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1444
    :cond_1
    iget-object v6, p0, Lcom/android/systemui/volume/VolumePanel;->mContext:Landroid/content/Context;

    const/16 v7, 0x10b

    invoke-static {v6, v7}, Landroid/util/GeneralUtil;->getPixelFromDP(Landroid/content/Context;I)I

    move-result v6

    iput v6, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_2

    .line 1461
    .end local v3    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v4    # "sc":Lcom/android/systemui/volume/VolumePanel$StreamControl;
    .end local v5    # "streamType":I
    :cond_2
    iget-object v6, v2, Lcom/android/systemui/volume/VolumePanel$StreamControl;->underDivider:Landroid/widget/ImageView;

    invoke-virtual {v6, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1464
    iget-object v6, p0, Lcom/android/systemui/volume/VolumePanel;->mMoreButton:Landroid/view/View;

    invoke-virtual {v6, v13}, Landroid/view/View;->setVisibility(I)V

    .line 1465
    iget-object v6, p0, Lcom/android/systemui/volume/VolumePanel;->mDivider:Landroid/view/View;

    invoke-virtual {v6, v13}, Landroid/view/View;->setVisibility(I)V

    .line 1466
    iget-object v6, p0, Lcom/android/systemui/volume/VolumePanel;->mTopMarginView:Landroid/view/View;

    invoke-virtual {v6, v12}, Landroid/view/View;->setVisibility(I)V

    .line 1467
    iget-object v6, p0, Lcom/android/systemui/volume/VolumePanel;->mBottomMarginView:Landroid/view/View;

    invoke-virtual {v6, v12}, Landroid/view/View;->setVisibility(I)V

    .line 1469
    return-void
.end method

.method private forceTimeout(J)V
    .locals 5
    .param p1, "delay"    # J

    .prologue
    const/4 v3, 0x5

    .line 2455
    sget-boolean v0, Lcom/android/systemui/volume/VolumePanel;->LOGD:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "forceTimeout delay="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " callers="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2456
    :cond_0
    invoke-virtual {p0, v3}, Lcom/android/systemui/volume/VolumePanel;->removeMessages(I)V

    .line 2457
    invoke-virtual {p0, v3, p1, p2}, Lcom/android/systemui/volume/VolumePanel;->sendEmptyMessageDelayed(IJ)Z

    .line 2458
    return-void
.end method

.method private getDefaultThemeType()Z
    .locals 3

    .prologue
    .line 621
    const-string v1, "white"

    const-string v2, "ro.build.scafe.cream"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 622
    .local v0, "isWhiteTheme":Z
    return v0
.end method

.method private getOrCreateToneGenerator(I)Landroid/media/ToneGenerator;
    .locals 4
    .param p1, "streamType"    # I

    .prologue
    .line 2292
    const/16 v1, -0x64

    if-ne p1, v1, :cond_0

    .line 2296
    iget-boolean v1, p0, Lcom/android/systemui/volume/VolumePanel;->mPlayMasterStreamTones:Z

    if-eqz v1, :cond_2

    .line 2297
    const/4 p1, 0x1

    .line 2302
    :cond_0
    monitor-enter p0

    .line 2303
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    aget-object v1, v1, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 2305
    :try_start_1
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    new-instance v2, Landroid/media/ToneGenerator;

    const/16 v3, 0x64

    invoke-direct {v2, p1, v3}, Landroid/media/ToneGenerator;-><init>(II)V

    aput-object v2, v1, p1
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2313
    :cond_1
    :goto_0
    :try_start_2
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    aget-object v1, v1, p1

    monitor-exit p0

    :goto_1
    return-object v1

    .line 2299
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 2306
    :catch_0
    move-exception v0

    .line 2307
    .local v0, "e":Ljava/lang/RuntimeException;
    sget-boolean v1, Lcom/android/systemui/volume/VolumePanel;->LOGD:Z

    if-eqz v1, :cond_1

    .line 2308
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ToneGenerator constructor failed with RuntimeException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2314
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private getStreamMaxVolume(I)I
    .locals 3
    .param p1, "streamType"    # I

    .prologue
    .line 1040
    const/16 v2, -0x64

    if-ne p1, v2, :cond_0

    .line 1041
    iget-object v2, p0, Lcom/android/systemui/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->getMasterMaxVolume()I

    move-result v2

    .line 1052
    :goto_0
    return v2

    .line 1042
    :cond_0
    const/16 v2, -0xc8

    if-ne p1, v2, :cond_2

    .line 1043
    iget-object v2, p0, Lcom/android/systemui/volume/VolumePanel;->mStreamControls:Landroid/util/SparseArray;

    if-eqz v2, :cond_1

    .line 1044
    iget-object v2, p0, Lcom/android/systemui/volume/VolumePanel;->mStreamControls:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/volume/VolumePanel$StreamControl;

    .line 1045
    .local v1, "sc":Lcom/android/systemui/volume/VolumePanel$StreamControl;
    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->controller:Landroid/media/session/MediaController;

    if-eqz v2, :cond_1

    .line 1046
    iget-object v2, v1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->controller:Landroid/media/session/MediaController;

    invoke-virtual {v2}, Landroid/media/session/MediaController;->getPlaybackInfo()Landroid/media/session/MediaController$PlaybackInfo;

    move-result-object v0

    .line 1047
    .local v0, "ai":Landroid/media/session/MediaController$PlaybackInfo;
    invoke-virtual {v0}, Landroid/media/session/MediaController$PlaybackInfo;->getMaxVolume()I

    move-result v2

    goto :goto_0

    .line 1050
    .end local v0    # "ai":Landroid/media/session/MediaController$PlaybackInfo;
    .end local v1    # "sc":Lcom/android/systemui/volume/VolumePanel$StreamControl;
    :cond_1
    const/4 v2, -0x1

    goto :goto_0

    .line 1052
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, p1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v2

    goto :goto_0
.end method

.method private getStreamVolume(I)I
    .locals 3
    .param p1, "streamType"    # I

    .prologue
    .line 1057
    const/16 v2, -0x64

    if-ne p1, v2, :cond_0

    .line 1058
    iget-object v2, p0, Lcom/android/systemui/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->getMasterVolume()I

    move-result v2

    .line 1069
    :goto_0
    return v2

    .line 1059
    :cond_0
    const/16 v2, -0xc8

    if-ne p1, v2, :cond_2

    .line 1060
    iget-object v2, p0, Lcom/android/systemui/volume/VolumePanel;->mStreamControls:Landroid/util/SparseArray;

    if-eqz v2, :cond_1

    .line 1061
    iget-object v2, p0, Lcom/android/systemui/volume/VolumePanel;->mStreamControls:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/volume/VolumePanel$StreamControl;

    .line 1062
    .local v1, "sc":Lcom/android/systemui/volume/VolumePanel$StreamControl;
    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->controller:Landroid/media/session/MediaController;

    if-eqz v2, :cond_1

    .line 1063
    iget-object v2, v1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->controller:Landroid/media/session/MediaController;

    invoke-virtual {v2}, Landroid/media/session/MediaController;->getPlaybackInfo()Landroid/media/session/MediaController$PlaybackInfo;

    move-result-object v0

    .line 1064
    .local v0, "ai":Landroid/media/session/MediaController$PlaybackInfo;
    invoke-virtual {v0}, Landroid/media/session/MediaController$PlaybackInfo;->getCurrentVolume()I

    move-result v2

    goto :goto_0

    .line 1067
    .end local v0    # "ai":Landroid/media/session/MediaController$PlaybackInfo;
    .end local v1    # "sc":Lcom/android/systemui/volume/VolumePanel$StreamControl;
    :cond_1
    const/4 v2, -0x1

    goto :goto_0

    .line 1069
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, p1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    goto :goto_0
.end method

.method private getStringQueryFromKnoxCursor(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "cr"    # Landroid/database/Cursor;
    .param p2, "queryMethod"    # Ljava/lang/String;

    .prologue
    .line 1526
    const/4 v0, 0x0

    .line 1528
    .local v0, "queryResult":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 1530
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1531
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1533
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 1537
    :cond_0
    return-object v0

    .line 1533
    :catchall_0
    move-exception v1

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method private getSuppressorCaption(Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 7
    .param p1, "suppressor"    # Landroid/content/ComponentName;

    .prologue
    .line 1337
    iget-object v5, p0, Lcom/android/systemui/volume/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1339
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v2, p1, v5}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v1

    .line 1340
    .local v1, "info":Landroid/content/pm/ServiceInfo;
    if-eqz v1, :cond_0

    .line 1341
    invoke-virtual {v1, v2}, Landroid/content/pm/ServiceInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 1342
    .local v3, "seq":Ljava/lang/CharSequence;
    if-eqz v3, :cond_0

    .line 1343
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 1344
    .local v4, "str":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-lez v5, :cond_0

    .line 1352
    .end local v1    # "info":Landroid/content/pm/ServiceInfo;
    .end local v3    # "seq":Ljava/lang/CharSequence;
    .end local v4    # "str":Ljava/lang/String;
    :goto_0
    return-object v4

    .line 1349
    :catch_0
    move-exception v0

    .line 1350
    .local v0, "e":Ljava/lang/Throwable;
    const-string v5, "VolumePanel"

    const-string v6, "Error loading suppressor caption"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1352
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private initCoverManager(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 866
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mScover:Lcom/samsung/android/sdk/cover/Scover;

    if-nez v0, :cond_0

    .line 867
    new-instance v0, Lcom/samsung/android/sdk/cover/Scover;

    invoke-direct {v0}, Lcom/samsung/android/sdk/cover/Scover;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mScover:Lcom/samsung/android/sdk/cover/Scover;

    .line 869
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mScover:Lcom/samsung/android/sdk/cover/Scover;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/cover/Scover;->initialize(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/samsung/android/sdk/SsdkUnsupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 875
    :goto_0
    const-string v0, "VolumePanel"

    const-string v1, "initCoverManager: initCoverManager"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 876
    new-instance v0, Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/cover/ScoverManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    .line 877
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mScover:Lcom/samsung/android/sdk/cover/Scover;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/cover/ScoverManager;->getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 878
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/cover/ScoverManager;->registerListener(Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;)V

    .line 879
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/cover/ScoverManager;->getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/cover/ScoverState;->getType()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/volume/VolumePanel;->mCoverType:I

    .line 883
    :cond_0
    :goto_1
    return-void

    .line 881
    :cond_1
    const-string v0, "VolumePanel"

    const-string v1, "initCoverManager fail NULL"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 872
    :catch_0
    move-exception v0

    goto :goto_0

    .line 870
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private initZenModePanel()V
    .locals 2

    .prologue
    .line 972
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mZenPanel:Lcom/android/systemui/volume/ZenModePanel;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mZenController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/ZenModePanel;->init(Lcom/android/systemui/statusbar/policy/ZenModeController;)V

    .line 973
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mZenPanel:Lcom/android/systemui/volume/ZenModePanel;

    new-instance v1, Lcom/android/systemui/volume/VolumePanel$7;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/VolumePanel$7;-><init>(Lcom/android/systemui/volume/VolumePanel;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/ZenModePanel;->setCallback(Lcom/android/systemui/volume/ZenModePanel$Callback;)V

    .line 996
    return-void
.end method

.method private isExpanded()Z
    .locals 1

    .prologue
    .line 1418
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mMoreButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isMuted(I)Z
    .locals 1
    .param p1, "streamType"    # I

    .prologue
    .line 1029
    const/16 v0, -0x64

    if-ne p1, v0, :cond_0

    .line 1030
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isMasterMute()Z

    move-result v0

    .line 1035
    :goto_0
    return v0

    .line 1031
    :cond_0
    const/16 v0, -0xc8

    if-ne p1, v0, :cond_1

    .line 1033
    const/4 v0, 0x0

    goto :goto_0

    .line 1035
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v0

    goto :goto_0
.end method

.method private static isNotificationOrRing(I)Z
    .locals 1
    .param p0, "streamType"    # I

    .prologue
    .line 1555
    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 v0, 0x5

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isShowing()Z
    .locals 1

    .prologue
    .line 2029
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    return v0
.end method

.method private isZenPanelVisible()Z
    .locals 1

    .prologue
    .line 1572
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mZenPanel:Lcom/android/systemui/volume/ZenModePanel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mZenPanel:Lcom/android/systemui/volume/ZenModePanel;

    invoke-virtual {v0}, Lcom/android/systemui/volume/ZenModePanel;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private phoneIsOffhook()Z
    .locals 4

    .prologue
    .line 405
    const/4 v0, 0x0

    .line 406
    .local v0, "phoneOffhook":Z
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v1, :cond_2

    .line 407
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 421
    :cond_0
    :goto_0
    sget-boolean v1, Lcom/android/systemui/volume/VolumePanel;->LOGD:Z

    if-eqz v1, :cond_1

    const-string v1, "VolumePanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "phoneIsOffhook : phoneOffhook = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    :cond_1
    return v0

    .line 409
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 410
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private registerReceiver()V
    .locals 3

    .prologue
    .line 1004
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1005
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1006
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1007
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/systemui/volume/VolumePanel$8;

    invoke-direct {v2, p0}, Lcom/android/systemui/volume/VolumePanel$8;-><init>(Lcom/android/systemui/volume/VolumePanel;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1026
    return-void
.end method

.method private reorderSliders(I)V
    .locals 6
    .param p1, "activeStreamType"    # I

    .prologue
    const/16 v5, 0x8

    .line 1166
    iget-object v3, p0, Lcom/android/systemui/volume/VolumePanel;->mSliderPanel:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1168
    iget-object v3, p0, Lcom/android/systemui/volume/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1170
    .local v2, "res":Landroid/content/res/Resources;
    iget-object v3, p0, Lcom/android/systemui/volume/VolumePanel;->mStreamControls:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/VolumePanel$StreamControl;

    .line 1171
    .local v0, "active":Lcom/android/systemui/volume/VolumePanel$StreamControl;
    if-nez v0, :cond_0

    .line 1172
    const-string v3, "VolumePanel"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Missing stream type! - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1173
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/systemui/volume/VolumePanel;->mActiveStreamType:I

    .line 1197
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->addOtherVolumes()V

    .line 1200
    return-void

    .line 1175
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/volume/VolumePanel;->mSliderPanel:Landroid/view/ViewGroup;

    iget-object v4, v0, Lcom/android/systemui/volume/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1176
    iput p1, p0, Lcom/android/systemui/volume/VolumePanel;->mActiveStreamType:I

    .line 1177
    iget-object v3, v0, Lcom/android/systemui/volume/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1179
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    sget-object v3, Lcom/android/systemui/volume/VolumePanel;->STREAMS:[Lcom/android/systemui/volume/VolumePanel$StreamResources;

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 1180
    sget-object v3, Lcom/android/systemui/volume/VolumePanel;->STREAMS:[Lcom/android/systemui/volume/VolumePanel$StreamResources;

    aget-object v3, v3, v1

    iget v3, v3, Lcom/android/systemui/volume/VolumePanel$StreamResources;->streamType:I

    if-ne p1, v3, :cond_2

    .line 1181
    iget-object v3, v0, Lcom/android/systemui/volume/VolumePanel$StreamControl;->volTitle:Landroid/widget/TextView;

    sget-object v4, Lcom/android/systemui/volume/VolumePanel;->STREAMS:[Lcom/android/systemui/volume/VolumePanel$StreamResources;

    aget-object v4, v4, v1

    iget v4, v4, Lcom/android/systemui/volume/VolumePanel$StreamResources;->descRes:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1182
    iget-object v3, v0, Lcom/android/systemui/volume/VolumePanel$StreamControl;->volTitle:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 1183
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->isExpanded()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1184
    iget-object v3, v0, Lcom/android/systemui/volume/VolumePanel$StreamControl;->volTitle:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1185
    iget-object v3, v0, Lcom/android/systemui/volume/VolumePanel$StreamControl;->underDivider:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1191
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/systemui/volume/VolumePanel;->updateSlider(Lcom/android/systemui/volume/VolumePanel$StreamControl;)V

    .line 1192
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->updateTimeoutDelay()V

    .line 1193
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->updateZenPanelVisible()V

    goto :goto_0

    .line 1179
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private resetTimeout()V
    .locals 8

    .prologue
    const/16 v7, 0xe

    const/4 v6, 0x5

    .line 2442
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    .line 2443
    .local v0, "touchExploration":Z
    sget-boolean v1, Lcom/android/systemui/volume/VolumePanel;->LOGD:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resetTimeout at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " delay="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/volume/VolumePanel;->mTimeoutDelay:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " touchExploration="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2445
    :cond_0
    sget-object v1, Lcom/android/systemui/volume/VolumePanel;->sSafetyWarning:Landroid/app/AlertDialog;

    if-eqz v1, :cond_1

    if-nez v0, :cond_2

    .line 2446
    :cond_1
    invoke-virtual {p0, v6}, Lcom/android/systemui/volume/VolumePanel;->removeMessages(I)V

    .line 2447
    const-string v1, "VolumePanel"

    const-string v2, "resetTimeout : call sendEmptyMessageDelayed : MSG_TIMEOUT"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2448
    iget v1, p0, Lcom/android/systemui/volume/VolumePanel;->mTimeoutDelay:I

    int-to-long v2, v1

    invoke-virtual {p0, v6, v2, v3}, Lcom/android/systemui/volume/VolumePanel;->sendEmptyMessageDelayed(IJ)Z

    .line 2449
    invoke-virtual {p0, v7}, Lcom/android/systemui/volume/VolumePanel;->removeMessages(I)V

    .line 2450
    invoke-virtual {p0, v7}, Lcom/android/systemui/volume/VolumePanel;->sendEmptyMessage(I)Z

    .line 2452
    :cond_2
    return-void
.end method

.method private sendCoverWarningMsgIntent(Z)V
    .locals 4
    .param p1, "coverMessageEnabled"    # Z

    .prologue
    .line 561
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->createCoverMsgRemoteView()Landroid/widget/RemoteViews;

    move-result-object v1

    .line 562
    .local v1, "remoteViews":Landroid/widget/RemoteViews;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.samsung.cover.REMOTEVIEWS_UPDATE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 563
    .local v0, "coverIntent":Landroid/content/Intent;
    const-string v2, "visibility"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 564
    const-string v2, "type"

    const-string v3, "volume"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 565
    const-string v2, "remote"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 566
    iget-object v2, p0, Lcom/android/systemui/volume/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 567
    iput-boolean p1, p0, Lcom/android/systemui/volume/VolumePanel;->mIsShowingSCoverWarning:Z

    .line 568
    return-void
.end method

.method private setDualColorSeekbar(ILcom/android/systemui/volume/VolumePanel$StreamControl;)V
    .locals 2
    .param p1, "streamType"    # I
    .param p2, "sc"    # Lcom/android/systemui/volume/VolumePanel$StreamControl;

    .prologue
    .line 2533
    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/16 v0, 0xa

    if-ne p1, v0, :cond_2

    .line 2534
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2535
    :cond_1
    iget-object v0, p2, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMode(I)V

    .line 2536
    iget-object v0, p2, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-static {}, Landroid/media/AudioManager;->getEarProtectLimitIndex()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOverlapPointForDualColor(I)V

    .line 2541
    :cond_2
    :goto_0
    iget-object v0, p2, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->invalidate()V

    .line 2542
    return-void

    .line 2538
    :cond_3
    iget-object v0, p2, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOverlapPointForDualColor(I)V

    goto :goto_0
.end method

.method private setLayoutDirection(I)V
    .locals 1
    .param p1, "layoutDirection"    # I

    .prologue
    .line 999
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setLayoutDirection(I)V

    .line 1000
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumePanel;->updateStates()V

    .line 1001
    return-void
.end method

.method private setMusicIcon(II)V
    .locals 3
    .param p1, "resId"    # I
    .param p2, "resMuteId"    # I

    .prologue
    .line 2323
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mStreamControls:Landroid/util/SparseArray;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/VolumePanel$StreamControl;

    .line 2324
    .local v0, "sc":Lcom/android/systemui/volume/VolumePanel$StreamControl;
    if-eqz v0, :cond_0

    .line 2325
    iput p1, v0, Lcom/android/systemui/volume/VolumePanel$StreamControl;->iconRes:I

    .line 2326
    iput p2, v0, Lcom/android/systemui/volume/VolumePanel$StreamControl;->iconMuteRes:I

    .line 2327
    iget v1, v0, Lcom/android/systemui/volume/VolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v1}, Lcom/android/systemui/volume/VolumePanel;->isMuted(I)Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/volume/VolumePanel;->updateSliderIcon(Lcom/android/systemui/volume/VolumePanel$StreamControl;Z)V

    .line 2329
    :cond_0
    return-void
.end method

.method private setStreamVolume(Lcom/android/systemui/volume/VolumePanel$StreamControl;II)V
    .locals 2
    .param p1, "sc"    # Lcom/android/systemui/volume/VolumePanel$StreamControl;
    .param p2, "index"    # I
    .param p3, "flags"    # I

    .prologue
    .line 1074
    iget v0, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->streamType:I

    const/16 v1, -0xc8

    if-ne v0, v1, :cond_2

    .line 1075
    iget-object v0, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->controller:Landroid/media/session/MediaController;

    if-eqz v0, :cond_1

    .line 1076
    iget-object v0, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->controller:Landroid/media/session/MediaController;

    invoke-virtual {v0, p2, p3}, Landroid/media/session/MediaController;->setVolumeTo(II)V

    .line 1087
    :cond_0
    :goto_0
    return-void

    .line 1078
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mTag:Ljava/lang/String;

    const-string v1, "Adjusting remote volume without a controller!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1080
    :cond_2
    iget v0, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/VolumePanel;->getStreamVolume(I)I

    move-result v0

    if-eq v0, p2, :cond_0

    .line 1081
    iget v0, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->streamType:I

    const/16 v1, -0x64

    if-ne v0, v1, :cond_3

    .line 1082
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p2, p3}, Landroid/media/AudioManager;->setMasterVolume(II)V

    goto :goto_0

    .line 1084
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->streamType:I

    invoke-virtual {v0, v1, p2, p3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_0
.end method

.method private setVolumeResourcesAsTheme(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .param p1, "moreButton"    # Landroid/view/View;
    .param p2, "divider"    # Landroid/view/View;

    .prologue
    .line 640
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->getDefaultThemeType()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/volume/VolumePanel;->mIsWhiteTheme:Z

    .line 641
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumePanel;->mIsWhiteTheme:Z

    if-eqz v0, :cond_0

    .line 642
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->volumeWhiteThemeResources:[I

    invoke-direct {p0, v0, p1, p2}, Lcom/android/systemui/volume/VolumePanel;->setVolumeResrouces([ILandroid/view/View;Landroid/view/View;)V

    .line 646
    :goto_0
    return-void

    .line 644
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->volumeDarkThemeResources:[I

    invoke-direct {p0, v0, p1, p2}, Lcom/android/systemui/volume/VolumePanel;->setVolumeResrouces([ILandroid/view/View;Landroid/view/View;)V

    goto :goto_0
.end method

.method private setVolumeResrouces([ILandroid/view/View;Landroid/view/View;)V
    .locals 3
    .param p1, "themeResource"    # [I
    .param p2, "moreButton"    # Landroid/view/View;
    .param p3, "divider"    # Landroid/view/View;

    .prologue
    .line 649
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mDialog:Landroid/app/Dialog;

    const v2, 0x7f0e0044

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 650
    .local v0, "volumeDialogLayout":Landroid/widget/FrameLayout;
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x0

    aget v2, p1, v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 651
    check-cast p2, Landroid/widget/ImageView;

    .end local p2    # "moreButton":Landroid/view/View;
    const/4 v1, 0x1

    aget v1, p1, v1

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 652
    check-cast p3, Landroid/widget/ImageView;

    .end local p3    # "divider":Landroid/view/View;
    const/4 v1, 0x2

    aget v1, p1, v1

    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 653
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x3

    aget v2, p1, v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/volume/VolumePanel;->mVolumeTitleTextColor:I

    .line 654
    return-void
.end method

.method private setZenPanelVisible(Z)V
    .locals 6
    .param p1, "visible"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1576
    sget-boolean v3, Lcom/android/systemui/volume/VolumePanel;->LOGD:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/volume/VolumePanel;->mTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setZenPanelVisible "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mZenPanel="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/volume/VolumePanel;->mZenPanel:Lcom/android/systemui/volume/ZenModePanel;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1577
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->isZenPanelVisible()Z

    move-result v3

    if-eq p1, v3, :cond_2

    move v0, v1

    .line 1578
    .local v0, "changing":Z
    :goto_0
    if-eqz p1, :cond_3

    .line 1579
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mZenPanel:Lcom/android/systemui/volume/ZenModePanel;

    invoke-virtual {v1, v2}, Lcom/android/systemui/volume/ZenModePanel;->setHidden(Z)V

    .line 1580
    const-string v1, "VolumePanel"

    const-string v2, "setZenPanelVisible : call resetTimeout() #1"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1581
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->resetTimeout()V

    .line 1585
    :goto_1
    if-eqz v0, :cond_1

    .line 1586
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->updateTimeoutDelay()V

    .line 1587
    const-string v1, "VolumePanel"

    const-string v2, "setZenPanelVisible : call resetTimeout() #2"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1588
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->resetTimeout()V

    .line 1590
    :cond_1
    return-void

    .end local v0    # "changing":Z
    :cond_2
    move v0, v2

    .line 1577
    goto :goto_0

    .line 1583
    .restart local v0    # "changing":Z
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/volume/VolumePanel;->mZenPanel:Lcom/android/systemui/volume/ZenModePanel;

    invoke-virtual {v2, v1}, Lcom/android/systemui/volume/ZenModePanel;->setHidden(Z)V

    goto :goto_1
.end method

.method private showInterruptionToast(I)V
    .locals 3
    .param p1, "streamType"    # I

    .prologue
    .line 1541
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 1544
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mContext:Landroid/content/Context;

    const v1, 0x7f0d0485

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1546
    :cond_0
    return-void
.end method

.method private showSilentHint()V
    .locals 1

    .prologue
    .line 1549
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mZenPanel:Lcom/android/systemui/volume/ZenModePanel;

    if-eqz v0, :cond_0

    .line 1550
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mZenPanel:Lcom/android/systemui/volume/ZenModePanel;

    invoke-virtual {v0}, Lcom/android/systemui/volume/ZenModePanel;->showSilentHint()V

    .line 1552
    :cond_0
    return-void
.end method

.method private toggle(Lcom/android/systemui/volume/VolumePanel$StreamControl;)V
    .locals 2
    .param p1, "sc"    # Lcom/android/systemui/volume/VolumePanel$StreamControl;

    .prologue
    const/4 v1, 0x2

    .line 1156
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 1157
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 1158
    iget v0, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->streamType:I

    const/16 v1, 0x11

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/volume/VolumePanel;->postVolumeChanged(II)V

    .line 1163
    :goto_0
    return-void

    .line 1160
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 1161
    iget v0, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->streamType:I

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/volume/VolumePanel;->postVolumeChanged(II)V

    goto :goto_0
.end method

.method private updateSlider(Lcom/android/systemui/volume/VolumePanel$StreamControl;)V
    .locals 3
    .param p1, "sc"    # Lcom/android/systemui/volume/VolumePanel$StreamControl;

    .prologue
    .line 1357
    const/4 v1, -0x1

    invoke-direct {p0, p1, v1}, Lcom/android/systemui/volume/VolumePanel;->updateSliderProgress(Lcom/android/systemui/volume/VolumePanel$StreamControl;I)V

    .line 1358
    iget v1, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v1}, Lcom/android/systemui/volume/VolumePanel;->isMuted(I)Z

    move-result v0

    .line 1360
    .local v0, "muted":Z
    iget-object v1, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1361
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/volume/VolumePanel;->updateSliderIcon(Lcom/android/systemui/volume/VolumePanel$StreamControl;Z)V

    .line 1362
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/volume/VolumePanel;->updateSliderEnabled(Lcom/android/systemui/volume/VolumePanel$StreamControl;ZZ)V

    .line 1365
    return-void
.end method

.method private updateSliderEnabled(Lcom/android/systemui/volume/VolumePanel$StreamControl;ZZ)V
    .locals 7
    .param p1, "sc"    # Lcom/android/systemui/volume/VolumePanel$StreamControl;
    .param p2, "muted"    # Z
    .param p3, "fixedVolume"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1368
    iget-object v5, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v5}, Landroid/widget/SeekBar;->isEnabled()Z

    move-result v2

    .line 1369
    .local v2, "wasEnabled":Z
    iget v5, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->streamType:I

    invoke-static {v5}, Lcom/android/systemui/volume/VolumePanel;->isNotificationOrRing(I)Z

    move-result v0

    .line 1370
    .local v0, "isRinger":Z
    iget v5, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->streamType:I

    const/16 v6, -0xc8

    if-ne v5, v6, :cond_3

    .line 1373
    iget-object v5, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    if-nez p3, :cond_0

    move v3, v4

    :cond_0
    invoke-virtual {v5, v3}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 1394
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    iget-object v3, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->isEnabled()Z

    move-result v3

    if-eq v2, v3, :cond_2

    .line 1395
    iget-object v3, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1396
    iget-object v3, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1397
    iget-object v3, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 1411
    :cond_2
    :goto_1
    return-void

    .line 1374
    :cond_3
    if-eqz v0, :cond_4

    iget-object v5, p0, Lcom/android/systemui/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v5

    if-nez v5, :cond_4

    .line 1375
    iget-object v5, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v5, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1376
    iget-object v5, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v5, v3}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 1377
    iget-object v5, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1378
    iget-object v5, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    iget v6, p0, Lcom/android/systemui/volume/VolumePanel;->mDisabledAlpha:F

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1379
    iget-object v5, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setClickable(Z)V

    goto :goto_0

    .line 1380
    :cond_4
    if-nez p3, :cond_6

    iget v5, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->streamType:I

    iget-object v6, p0, Lcom/android/systemui/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v6}, Landroid/media/AudioManager;->getMasterStreamType()I

    move-result v6

    if-eq v5, v6, :cond_5

    if-nez p2, :cond_6

    :cond_5
    sget-object v5, Lcom/android/systemui/volume/VolumePanel;->sSafetyWarning:Landroid/app/AlertDialog;

    if-eqz v5, :cond_7

    .line 1383
    :cond_6
    iget-object v5, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v5, v3}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 1384
    iget v3, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->streamType:I

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/android/systemui/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v3

    if-nez v3, :cond_1

    .line 1386
    iget-object v3, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    iget v5, p0, Lcom/android/systemui/volume/VolumePanel;->mDisabledAlpha:F

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_0

    .line 1389
    :cond_7
    iget-object v3, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 1390
    iget-object v3, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1391
    iget-object v3, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_0

    .line 1399
    :cond_8
    new-instance v1, Lcom/android/systemui/volume/VolumePanel$10;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/VolumePanel$10;-><init>(Lcom/android/systemui/volume/VolumePanel;)V

    .line 1408
    .local v1, "showHintOnTouch":Landroid/view/View$OnTouchListener;
    iget-object v3, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_1
.end method

.method private updateSliderIcon(Lcom/android/systemui/volume/VolumePanel$StreamControl;Z)V
    .locals 4
    .param p1, "sc"    # Lcom/android/systemui/volume/VolumePanel$StreamControl;
    .param p2, "muted"    # Z

    .prologue
    const/4 v3, 0x1

    .line 1292
    iget-object v2, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    if-eqz p2, :cond_3

    iget v1, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->iconMuteRes:I

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1293
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    .line 1295
    .local v0, "ringerMode":I
    iget v1, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->streamType:I

    if-ne v1, v3, :cond_0

    if-ne v0, v3, :cond_0

    .line 1297
    iget-object v1, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    const v2, 0x1080a66

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1299
    :cond_0
    iget v1, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->streamType:I

    invoke-static {v1}, Lcom/android/systemui/volume/VolumePanel;->isNotificationOrRing(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1300
    iget v1, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->streamType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    if-ne v0, v3, :cond_4

    .line 1302
    iget-object v1, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    const v2, 0x1080a5f

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1309
    :cond_1
    :goto_1
    if-nez v0, :cond_5

    .line 1310
    iget v0, p0, Lcom/android/systemui/volume/VolumePanel;->mLastRingerMode:I

    .line 1318
    :cond_2
    :goto_2
    return-void

    .line 1292
    .end local v0    # "ringerMode":I
    :cond_3
    iget v1, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->iconRes:I

    goto :goto_0

    .line 1303
    .restart local v0    # "ringerMode":I
    :cond_4
    iget v1, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->streamType:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    if-ne v0, v3, :cond_1

    .line 1305
    iget-object v1, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    const v2, 0x1080a58

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 1312
    :cond_5
    iput v0, p0, Lcom/android/systemui/volume/VolumePanel;->mLastRingerMode:I

    goto :goto_2
.end method

.method private updateSliderProgress(Lcom/android/systemui/volume/VolumePanel$StreamControl;I)V
    .locals 3
    .param p1, "sc"    # Lcom/android/systemui/volume/VolumePanel$StreamControl;
    .param p2, "progress"    # I

    .prologue
    .line 1272
    iget v1, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->streamType:I

    invoke-static {v1}, Lcom/android/systemui/volume/VolumePanel;->isNotificationOrRing(I)Z

    move-result v0

    .line 1273
    .local v0, "isRinger":Z
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    if-nez v1, :cond_0

    .line 1274
    iget p2, p0, Lcom/android/systemui/volume/VolumePanel;->mLastRingerProgress:I

    .line 1276
    :cond_0
    if-gez p2, :cond_2

    .line 1277
    iget v1, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v1}, Lcom/android/systemui/volume/VolumePanel;->getStreamVolume(I)I

    move-result p2

    .line 1278
    iget v1, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->streamType:I

    if-eqz v1, :cond_1

    iget v1, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->streamType:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_2

    .line 1280
    :cond_1
    add-int/lit8 p2, p2, 0x1

    .line 1284
    :cond_2
    iget v1, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v1, p1}, Lcom/android/systemui/volume/VolumePanel;->setDualColorSeekbar(ILcom/android/systemui/volume/VolumePanel$StreamControl;)V

    .line 1285
    iget-object v1, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v1, p2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1286
    if-eqz v0, :cond_3

    .line 1287
    iput p2, p0, Lcom/android/systemui/volume/VolumePanel;->mLastRingerProgress:I

    .line 1289
    :cond_3
    return-void
.end method

.method private updateSliderSupressor(Lcom/android/systemui/volume/VolumePanel$StreamControl;)V
    .locals 3
    .param p1, "sc"    # Lcom/android/systemui/volume/VolumePanel$StreamControl;

    .prologue
    .line 1321
    iget v1, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->streamType:I

    invoke-static {v1}, Lcom/android/systemui/volume/VolumePanel;->isNotificationOrRing(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mZenController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/ZenModeController;->getEffectsSuppressor()Landroid/content/ComponentName;

    move-result-object v0

    .line 1323
    .local v0, "suppressor":Landroid/content/ComponentName;
    :goto_0
    if-nez v0, :cond_1

    .line 1324
    iget-object v1, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 1334
    :goto_1
    return-void

    .line 1321
    .end local v0    # "suppressor":Landroid/content/ComponentName;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1327
    .restart local v0    # "suppressor":Landroid/content/ComponentName;
    :cond_1
    iget-object v1, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setVisibility(I)V

    goto :goto_1
.end method

.method private updateTimeoutDelay()V
    .locals 2

    .prologue
    .line 1564
    sget-object v0, Lcom/android/systemui/volume/VolumePanel;->sSafetyWarning:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    const/16 v0, 0x1388

    :goto_0
    iput v0, p0, Lcom/android/systemui/volume/VolumePanel;->mTimeoutDelay:I

    .line 1569
    return-void

    .line 1564
    :cond_0
    iget v0, p0, Lcom/android/systemui/volume/VolumePanel;->mActiveStreamType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    const/16 v0, 0x5dc

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumePanel;->mZenPanelExpanded:Z

    if-eqz v0, :cond_2

    const/16 v0, 0x2710

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->isZenPanelVisible()Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x1194

    goto :goto_0

    :cond_3
    const/16 v0, 0xbb8

    goto :goto_0
.end method

.method private updateWidth()V
    .locals 5

    .prologue
    .line 923
    const-string v2, "VolumePanel"

    const-string v3, "===== Start updateWidth ====="

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    iget-object v2, p0, Lcom/android/systemui/volume/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 925
    .local v1, "res":Landroid/content/res/Resources;
    iget-object v2, p0, Lcom/android/systemui/volume/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 927
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    const v2, 0x7f0c0385

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 928
    const-string v2, "VolumePanel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateWidth : lp.width = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    const/16 v2, 0x31

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 931
    iget-object v2, p0, Lcom/android/systemui/volume/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 932
    return-void
.end method

.method private updateZenPanelVisible()V
    .locals 1

    .prologue
    .line 1601
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumePanel;->mZenModeAvailable:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/volume/VolumePanel;->mActiveStreamType:I

    invoke-static {v0}, Lcom/android/systemui/volume/VolumePanel;->isNotificationOrRing(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/systemui/volume/VolumePanel;->setZenPanelVisible(Z)V

    .line 1602
    return-void

    .line 1601
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 935
    const-string v3, "VolumePanel state:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 936
    const-string v3, "  mTag="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/systemui/volume/VolumePanel;->mTag:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 937
    const-string v3, "  mRingIsSilent="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/systemui/volume/VolumePanel;->mRingIsSilent:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 938
    const-string v3, "  mVoiceCapable="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/systemui/volume/VolumePanel;->mVoiceCapable:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 939
    const-string v3, "  mZenModeAvailable="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/systemui/volume/VolumePanel;->mZenModeAvailable:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 940
    const-string v3, "  mZenPanelExpanded="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/systemui/volume/VolumePanel;->mZenPanelExpanded:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 941
    const-string v3, "  mTimeoutDelay="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/systemui/volume/VolumePanel;->mTimeoutDelay:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 942
    const-string v3, "  mDisabledAlpha="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/systemui/volume/VolumePanel;->mDisabledAlpha:F

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(F)V

    .line 943
    const-string v3, "  mLastRingerMode="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/systemui/volume/VolumePanel;->mLastRingerMode:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 944
    const-string v3, "  mLastRingerProgress="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/systemui/volume/VolumePanel;->mLastRingerProgress:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 945
    const-string v3, "  mPlayMasterStreamTones="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/systemui/volume/VolumePanel;->mPlayMasterStreamTones:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 946
    const-string v3, "  isShowing()="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->isShowing()Z

    move-result v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 947
    const-string v3, "  mCallback="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/systemui/volume/VolumePanel;->mCallback:Lcom/android/systemui/volume/VolumePanel$Callback;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 948
    const-string v3, "  sConfirmSafeVolumeDialog="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 949
    sget-object v3, Lcom/android/systemui/volume/VolumePanel;->sSafetyWarning:Landroid/app/AlertDialog;

    if-eqz v3, :cond_1

    const-string v3, "<not null>"

    :goto_0
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 950
    const-string v3, "  mActiveStreamType="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/systemui/volume/VolumePanel;->mActiveStreamType:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 951
    const-string v3, "  mStreamControls="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 952
    iget-object v3, p0, Lcom/android/systemui/volume/VolumePanel;->mStreamControls:Landroid/util/SparseArray;

    if-nez v3, :cond_2

    .line 953
    const-string v3, "null"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 969
    :cond_0
    return-void

    .line 949
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 955
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/volume/VolumePanel;->mStreamControls:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 956
    .local v0, "N":I
    const-string v3, "<size "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const/16 v3, 0x3e

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(C)V

    .line 957
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_0

    .line 958
    iget-object v3, p0, Lcom/android/systemui/volume/VolumePanel;->mStreamControls:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/volume/VolumePanel$StreamControl;

    .line 959
    .local v2, "sc":Lcom/android/systemui/volume/VolumePanel$StreamControl;
    const-string v3, "    stream "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v2, Lcom/android/systemui/volume/VolumePanel$StreamControl;->streamType:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, ":"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 960
    iget-object v3, v2, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    if-eqz v3, :cond_3

    .line 961
    const-string v3, " progress="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v2, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 962
    const-string v3, " of "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v2, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getMax()I

    move-result v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 963
    iget-object v3, v2, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, " (disabled)"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 965
    :cond_3
    iget-object v3, v2, Lcom/android/systemui/volume/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    if-eqz v3, :cond_4

    iget-object v3, v2, Lcom/android/systemui/volume/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->isClickable()Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, " (clickable)"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 966
    :cond_4
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 957
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public getZenController()Lcom/android/systemui/statusbar/policy/ZenModeController;
    .locals 1

    .prologue
    .line 2461
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mZenController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v0, 0x0

    .line 2344
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 2439
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 2347
    :pswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/volume/VolumePanel;->onVolumeChanged(II)V

    goto :goto_0

    .line 2352
    :pswitch_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/volume/VolumePanel;->onMuteChanged(II)V

    goto :goto_0

    .line 2357
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumePanel;->onFreeResources()V

    goto :goto_0

    .line 2362
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumePanel;->onStopSounds()V

    goto :goto_0

    .line 2367
    :pswitch_5
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/volume/VolumePanel;->onPlaySound(II)V

    goto :goto_0

    .line 2377
    :pswitch_6
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2378
    const-string v1, "VolumePanel"

    const-string v2, "handleMessage : call mDialog.dismiss()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2379
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 2380
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->clearRemoteStreamController()V

    .line 2381
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/systemui/volume/VolumePanel;->mActiveStreamType:I

    .line 2382
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mCallback:Lcom/android/systemui/volume/VolumePanel$Callback;

    if-eqz v1, :cond_1

    .line 2383
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mCallback:Lcom/android/systemui/volume/VolumePanel$Callback;

    invoke-interface {v1, v0}, Lcom/android/systemui/volume/VolumePanel$Callback;->onVisible(Z)V

    .line 2386
    :cond_1
    sget-object v1, Lcom/android/systemui/volume/VolumePanel;->sSafetyWarningLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2387
    :try_start_0
    sget-object v0, Lcom/android/systemui/volume/VolumePanel;->sSafetyWarning:Landroid/app/AlertDialog;

    if-eqz v0, :cond_3

    .line 2388
    sget-boolean v0, Lcom/android/systemui/volume/VolumePanel;->LOGD:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mTag:Ljava/lang/String;

    const-string v2, "SafetyWarning timeout"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2390
    :cond_2
    sget-object v0, Lcom/android/systemui/volume/VolumePanel;->sSafetyWarning:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2391
    const-string v0, "VolumePanel"

    const-string v2, "handleMessage : call sSafetyWarning.dismiss()"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2392
    sget-object v0, Lcom/android/systemui/volume/VolumePanel;->sSafetyWarning:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 2395
    :cond_3
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 2401
    :pswitch_7
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2402
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumePanel;->updateStates()V

    goto :goto_0

    .line 2408
    :pswitch_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/media/session/MediaController;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/volume/VolumePanel;->onRemoteVolumeChanged(Landroid/media/session/MediaController;I)V

    goto :goto_0

    .line 2413
    :pswitch_9
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumePanel;->onRemoteVolumeUpdateIfShown()V

    goto/16 :goto_0

    .line 2417
    :pswitch_a
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/volume/VolumePanel;->onSliderVisibilityChanged(II)V

    goto/16 :goto_0

    .line 2421
    :pswitch_b
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/VolumePanel;->onDisplaySafeVolumeWarning(I)V

    goto/16 :goto_0

    .line 2425
    :pswitch_c
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/VolumePanel;->setLayoutDirection(I)V

    goto/16 :goto_0

    .line 2429
    :pswitch_d
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_4

    const/4 v0, 0x1

    :cond_4
    iput-boolean v0, p0, Lcom/android/systemui/volume/VolumePanel;->mZenModeAvailable:Z

    .line 2430
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->updateZenPanelVisible()V

    goto/16 :goto_0

    .line 2434
    :pswitch_e
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mCallback:Lcom/android/systemui/volume/VolumePanel$Callback;

    if-eqz v0, :cond_0

    .line 2435
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mCallback:Lcom/android/systemui/volume/VolumePanel$Callback;

    invoke-interface {v0}, Lcom/android/systemui/volume/VolumePanel$Callback;->onInteraction()V

    goto/16 :goto_0

    .line 2344
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_2
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_7
    .end packed-switch
.end method

.method public isExtraButtonOn()Z
    .locals 6

    .prologue
    .line 426
    const/4 v2, 0x0

    .line 427
    .local v2, "rtvalue":Z
    iget-object v3, p0, Lcom/android/systemui/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    const-string v4, "extraVolume"

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 428
    .local v0, "extraButtonOn":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/systemui/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    const-string v4, "audioParam;extraVolume"

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 430
    .local v1, "extraButtonOnDevice":Ljava/lang/String;
    sget-boolean v3, Lcom/android/systemui/volume/VolumePanel;->LOGD:Z

    if-eqz v3, :cond_0

    .line 431
    const-string v3, "VolumePanel"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isExtraButtonOn : extraButtonOn = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    const-string v3, "VolumePanel"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isExtraButtonOn : extraButtonOnDevice = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    :cond_0
    const-string v3, "true"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "true"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 436
    const/4 v2, 0x1

    .line 441
    :goto_0
    sget-boolean v3, Lcom/android/systemui/volume/VolumePanel;->LOGD:Z

    if-eqz v3, :cond_1

    .line 442
    const-string v3, "VolumePanel"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isExtraButtonOn : rtvalue = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    :cond_1
    return v2

    .line 438
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isSafeVolumeDialogShowing()Z
    .locals 1

    .prologue
    .line 1690
    sget-object v0, Lcom/android/systemui/volume/VolumePanel;->sSafetyWarning:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/volume/VolumePanel;->sSafetyWarning:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSviewCoverOpened()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 448
    iget-object v2, p0, Lcom/android/systemui/volume/VolumePanel;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    if-eqz v2, :cond_1

    .line 449
    iget-object v2, p0, Lcom/android/systemui/volume/VolumePanel;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/cover/ScoverManager;->getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;

    move-result-object v0

    .line 450
    .local v0, "state":Lcom/samsung/android/sdk/cover/ScoverState;
    if-eqz v0, :cond_0

    .line 451
    const-string v1, "VolumePanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCoverManager.getCoverState() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/samsung/android/sdk/cover/ScoverState;->getSwitchState()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    invoke-virtual {v0}, Lcom/samsung/android/sdk/cover/ScoverState;->getSwitchState()Z

    move-result v1

    .line 459
    .end local v0    # "state":Lcom/samsung/android/sdk/cover/ScoverState;
    :goto_0
    return v1

    .line 454
    .restart local v0    # "state":Lcom/samsung/android/sdk/cover/ScoverState;
    :cond_0
    const-string v2, "VolumePanel"

    const-string v3, "state is null "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 458
    .end local v0    # "state":Lcom/samsung/android/sdk/cover/ScoverState;
    :cond_1
    const-string v2, "VolumePanel"

    const-string v3, "mCoverManager is null "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 7
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 900
    const-string v5, "VolumePanel"

    const-string v6, "===== Start onConfigurationChanged ====="

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    const-string v5, "VolumePanel"

    const-string v6, "onConfigurationChanged : call updateWidth"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->updateWidth()V

    .line 904
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v5, Lcom/android/systemui/volume/VolumePanel;->STREAMS:[Lcom/android/systemui/volume/VolumePanel$StreamResources;

    array-length v5, v5

    if-ge v0, v5, :cond_1

    .line 905
    sget-object v5, Lcom/android/systemui/volume/VolumePanel;->STREAMS:[Lcom/android/systemui/volume/VolumePanel$StreamResources;

    aget-object v3, v5, v0

    .line 907
    .local v3, "streamRes":Lcom/android/systemui/volume/VolumePanel$StreamResources;
    if-eqz v3, :cond_0

    iget-object v5, p0, Lcom/android/systemui/volume/VolumePanel;->mStreamControls:Landroid/util/SparseArray;

    if-eqz v5, :cond_0

    .line 908
    iget v4, v3, Lcom/android/systemui/volume/VolumePanel$StreamResources;->streamType:I

    .line 909
    .local v4, "streamType":I
    iget-object v5, p0, Lcom/android/systemui/volume/VolumePanel;->mStreamControls:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/volume/VolumePanel$StreamControl;

    .line 910
    .local v2, "sc":Lcom/android/systemui/volume/VolumePanel$StreamControl;
    iget-object v5, p0, Lcom/android/systemui/volume/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 911
    .local v1, "res":Landroid/content/res/Resources;
    if-eqz v2, :cond_0

    .line 912
    iget-object v5, v2, Lcom/android/systemui/volume/VolumePanel$StreamControl;->volTitle:Landroid/widget/TextView;

    sget-object v6, Lcom/android/systemui/volume/VolumePanel;->STREAMS:[Lcom/android/systemui/volume/VolumePanel$StreamResources;

    aget-object v6, v6, v0

    iget v6, v6, Lcom/android/systemui/volume/VolumePanel$StreamResources;->descRes:I

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 913
    iget-object v5, v2, Lcom/android/systemui/volume/VolumePanel$StreamControl;->volTitle:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 904
    .end local v1    # "res":Landroid/content/res/Resources;
    .end local v2    # "sc":Lcom/android/systemui/volume/VolumePanel$StreamControl;
    .end local v4    # "streamType":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 917
    .end local v3    # "streamRes":Lcom/android/systemui/volume/VolumePanel$StreamResources;
    :cond_1
    iget-object v5, p0, Lcom/android/systemui/volume/VolumePanel;->mZenPanel:Lcom/android/systemui/volume/ZenModePanel;

    if-eqz v5, :cond_2

    .line 918
    iget-object v5, p0, Lcom/android/systemui/volume/VolumePanel;->mZenPanel:Lcom/android/systemui/volume/ZenModePanel;

    invoke-virtual {v5}, Lcom/android/systemui/volume/ZenModePanel;->updateLocale()V

    .line 920
    :cond_2
    return-void
.end method

.method protected onDismissSafeVolumeWarning()V
    .locals 3

    .prologue
    .line 2274
    sget-object v1, Lcom/android/systemui/volume/VolumePanel;->sSafetyWarningLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2275
    :try_start_0
    sget-object v0, Lcom/android/systemui/volume/VolumePanel;->sSafetyWarning:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/volume/VolumePanel;->sSafetyWarning:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2276
    const-string v0, "VolumePanel"

    const-string v2, "onDismissSafeVolumeWarning : call sSafetyWarning.dismiss()"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2277
    sget-object v0, Lcom/android/systemui/volume/VolumePanel;->sSafetyWarning:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 2279
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2281
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumePanel;->mIsShowingSCoverWarning:Z

    if-eqz v0, :cond_2

    .line 2282
    sget-boolean v0, Lcom/android/systemui/volume/VolumePanel;->LOGD:Z

    if-eqz v0, :cond_1

    const-string v0, "VolumePanel"

    const-string v1, "dismiss warning popup on the s view cover"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2283
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/VolumePanel;->sendCoverWarningMsgIntent(Z)V

    .line 2286
    :cond_2
    return-void

    .line 2279
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected onDisplaySafeVolumeWarning(I)V
    .locals 21
    .param p1, "flags"    # I

    .prologue
    .line 2165
    const/high16 v17, 0x20000

    and-int v17, v17, p1

    if-eqz v17, :cond_0

    .line 2166
    const-string v17, "VolumePanel"

    const-string v18, "onDisplaySafeVolumeWarning : get FLAG_DISMISS_UI_WARNINGS, call onDismissSafeVolumeWarning"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2167
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/volume/VolumePanel;->onDismissSafeVolumeWarning()V

    .line 2168
    const-string v17, "VolumePanel"

    const-string v18, "onDisplaySafeVolumeWarning : return"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2271
    :goto_0
    return-void

    .line 2172
    :cond_0
    const/4 v9, 0x1

    .line 2173
    .local v9, "isCoverOpen":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/volume/VolumePanel;->isSviewCoverOpened()Z

    move-result v9

    .line 2177
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getKnoxCustomManager()Lcom/sec/enterprise/knoxcustom/KnoxCustomManager;

    move-result-object v10

    .line 2179
    .local v10, "knoxCustomManager":Lcom/sec/enterprise/knoxcustom/KnoxCustomManager;
    const-string v17, "content://com.sec.knox.provider2/KnoxCustomManagerService1"

    const-string v18, "getSealedState"

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/volume/VolumePanel;->createKnoxCPUriCursor(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 2181
    .local v5, "cr":Landroid/database/Cursor;
    const-string v17, "getSealedState"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v5, v1}, Lcom/android/systemui/volume/VolumePanel;->getStringQueryFromKnoxCursor(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2183
    .local v6, "getSealedState":Ljava/lang/String;
    if-eqz v10, :cond_1

    if-eqz v6, :cond_1

    const-string v17, "true"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1

    invoke-virtual {v10}, Lcom/sec/enterprise/knoxcustom/KnoxCustomManager;->getSealedHideNotificationMessages()I

    move-result v17

    and-int/lit8 v17, v17, 0x4

    if-eqz v17, :cond_1

    .line 2188
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/media/AudioManager;->disableSafeMediaVolume()V

    .line 2264
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/VolumePanel;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v17

    if-eqz v17, :cond_c

    .line 2265
    const/16 v17, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/VolumePanel;->removeMessages(I)V

    goto :goto_0

    .line 2189
    :cond_1
    const-string v17, "sys.hmt.connected"

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 2190
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/media/AudioManager;->disableSafeMediaVolume()V

    goto :goto_1

    .line 2195
    :cond_2
    sget-object v18, Lcom/android/systemui/volume/VolumePanel;->sSafetyWarningLock:Ljava/lang/Object;

    monitor-enter v18

    .line 2196
    :try_start_0
    sget-object v17, Lcom/android/systemui/volume/VolumePanel;->sSafetyWarning:Landroid/app/AlertDialog;

    if-eqz v17, :cond_5

    .line 2197
    if-nez v9, :cond_4

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/volume/VolumePanel;->mIsShowingSCoverWarning:Z

    move/from16 v17, v0

    if-nez v17, :cond_4

    .line 2199
    sget-boolean v17, Lcom/android/systemui/volume/VolumePanel;->LOGD:Z

    if-eqz v17, :cond_3

    const-string v17, "VolumePanel"

    const-string v19, "show warning popup on the s view cover and than return"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2200
    :cond_3
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/systemui/volume/VolumePanel;->sendCoverWarningMsgIntent(Z)V

    .line 2203
    :cond_4
    monitor-exit v18

    goto/16 :goto_0

    .line 2260
    :catchall_0
    move-exception v17

    monitor-exit v18
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v17

    .line 2205
    :cond_5
    :try_start_1
    new-instance v17, Lcom/android/systemui/volume/VolumePanel$SafetyWarning;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/VolumePanel;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, p0

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/volume/VolumePanel$SafetyWarning;-><init>(Landroid/content/Context;Lcom/android/systemui/volume/VolumePanel;Landroid/media/AudioManager;)V

    sput-object v17, Lcom/android/systemui/volume/VolumePanel;->sSafetyWarning:Landroid/app/AlertDialog;

    .line 2207
    const-string v17, "VolumePanel"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "isCoverOpen = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2208
    if-eqz v9, :cond_a

    .line 2209
    const-string v17, "VolumePanel"

    const-string v19, "cover open, warning popup window type is set to TYPE_VOLUME_OVERLAY"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2210
    sget-object v17, Lcom/android/systemui/volume/VolumePanel;->sSafetyWarning:Landroid/app/AlertDialog;

    invoke-virtual/range {v17 .. v17}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v17

    const/16 v19, 0x7e4

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 2215
    :goto_2
    if-nez v9, :cond_6

    .line 2216
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/VolumePanel;->mDialog:Landroid/app/Dialog;

    move-object/from16 v17, v0

    if-eqz v17, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/VolumePanel;->mDialog:Landroid/app/Dialog;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/app/Dialog;->isShowing()Z

    move-result v17

    if-eqz v17, :cond_6

    .line 2217
    const-string v17, "VolumePanel"

    const-string v19, "onDisplaySafeVolumeWarning :  call mDialog.dismiss()"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2218
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/VolumePanel;->mDialog:Landroid/app/Dialog;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/app/Dialog;->dismiss()V

    .line 2219
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/volume/VolumePanel;->mActiveStreamType:I

    .line 2223
    :cond_6
    sget-object v17, Lcom/android/systemui/volume/VolumePanel;->sSafetyWarning:Landroid/app/AlertDialog;

    invoke-virtual/range {v17 .. v17}, Landroid/app/AlertDialog;->show()V

    .line 2225
    sget-object v17, Lcom/android/systemui/volume/VolumePanel;->STREAMS:[Lcom/android/systemui/volume/VolumePanel$StreamResources;

    const/16 v19, 0x3

    aget-object v15, v17, v19

    .line 2226
    .local v15, "streamRes":Lcom/android/systemui/volume/VolumePanel$StreamResources;
    if-eqz v15, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/VolumePanel;->mStreamControls:Landroid/util/SparseArray;

    move-object/from16 v17, v0

    if-eqz v17, :cond_7

    .line 2227
    iget v0, v15, Lcom/android/systemui/volume/VolumePanel$StreamResources;->streamType:I

    move/from16 v16, v0

    .line 2228
    .local v16, "streamType":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/VolumePanel;->mStreamControls:Landroid/util/SparseArray;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/systemui/volume/VolumePanel$StreamControl;

    .line 2229
    .local v14, "sc":Lcom/android/systemui/volume/VolumePanel$StreamControl;
    iget-object v0, v14, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    move-object/from16 v17, v0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setPressed(Z)V

    .line 2233
    .end local v14    # "sc":Lcom/android/systemui/volume/VolumePanel$StreamControl;
    .end local v16    # "streamType":I
    :cond_7
    if-nez v9, :cond_9

    .line 2235
    sget-boolean v17, Lcom/android/systemui/volume/VolumePanel;->LOGD:Z

    if-eqz v17, :cond_8

    const-string v17, "VolumePanel"

    const-string v19, "show warning popup on the s view cover"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2237
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/VolumePanel;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/sdk/cover/ScoverManager;->getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/sdk/cover/ScoverState;->getType()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/volume/VolumePanel;->mCoverType:I

    .line 2238
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/volume/VolumePanel;->mCoverType:I

    move/from16 v17, v0

    const/16 v19, 0x6

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_b

    .line 2239
    new-instance v13, Landroid/widget/RemoteViews;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/VolumePanel;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v17

    const v19, 0x7f0400c9

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-direct {v13, v0, v1}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 2243
    .local v13, "remoteViews":Landroid/widget/RemoteViews;
    :goto_3
    new-instance v4, Landroid/content/Intent;

    const-string v17, "com.samsung.cover.REMOTEVIEWS_UPDATE"

    move-object/from16 v0, v17

    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2244
    .local v4, "coverIntent":Landroid/content/Intent;
    const-string v17, "visibility"

    const/16 v19, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2245
    const-string v17, "type"

    const-string v19, "volume"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2246
    const-string v17, "remote"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2248
    new-instance v7, Landroid/content/Intent;

    const-string v17, "android.view.volumepanel.CLICK_BUTTON1"

    move-object/from16 v0, v17

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2249
    .local v7, "intent1":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/VolumePanel;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const/16 v19, 0x0

    const/high16 v20, 0x8000000

    move-object/from16 v0, v17

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v7, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v11

    .line 2251
    .local v11, "pendingIntent1":Landroid/app/PendingIntent;
    new-instance v8, Landroid/content/Intent;

    const-string v17, "android.view.volumepanel.CLICK_BUTTON2"

    move-object/from16 v0, v17

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2252
    .local v8, "intent2":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/VolumePanel;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const/16 v19, 0x0

    const/high16 v20, 0x8000000

    move-object/from16 v0, v17

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v8, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v12

    .line 2254
    .local v12, "pendingIntent2":Landroid/app/PendingIntent;
    const v17, 0x7f0e03b4

    move/from16 v0, v17

    invoke-virtual {v13, v0, v11}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 2255
    const v17, 0x7f0e03b5

    move/from16 v0, v17

    invoke-virtual {v13, v0, v12}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 2256
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/VolumePanel;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2257
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/volume/VolumePanel;->mIsShowingSCoverWarning:Z

    .line 2260
    .end local v4    # "coverIntent":Landroid/content/Intent;
    .end local v7    # "intent1":Landroid/content/Intent;
    .end local v8    # "intent2":Landroid/content/Intent;
    .end local v11    # "pendingIntent1":Landroid/app/PendingIntent;
    .end local v12    # "pendingIntent2":Landroid/app/PendingIntent;
    .end local v13    # "remoteViews":Landroid/widget/RemoteViews;
    :cond_9
    monitor-exit v18
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2261
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/volume/VolumePanel;->updateStates()V

    goto/16 :goto_1

    .line 2212
    .end local v15    # "streamRes":Lcom/android/systemui/volume/VolumePanel$StreamResources;
    :cond_a
    :try_start_2
    const-string v17, "VolumePanel"

    const-string v19, "cover closed, warning popup window type is set to TYPE_KEYGUARD_DIALOG"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2213
    sget-object v17, Lcom/android/systemui/volume/VolumePanel;->sSafetyWarning:Landroid/app/AlertDialog;

    invoke-virtual/range {v17 .. v17}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v17

    const/16 v19, 0x7d9

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    goto/16 :goto_2

    .line 2241
    .restart local v15    # "streamRes":Lcom/android/systemui/volume/VolumePanel$StreamResources;
    :cond_b
    new-instance v13, Landroid/widget/RemoteViews;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/VolumePanel;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v17

    const v19, 0x7f0400c8

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-direct {v13, v0, v1}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .restart local v13    # "remoteViews":Landroid/widget/RemoteViews;
    goto/16 :goto_3

    .line 2267
    .end local v13    # "remoteViews":Landroid/widget/RemoteViews;
    .end local v15    # "streamRes":Lcom/android/systemui/volume/VolumePanel$StreamResources;
    :cond_c
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/volume/VolumePanel;->updateTimeoutDelay()V

    .line 2268
    const-string v17, "VolumePanel"

    const-string v18, "onDisplaySafeVolumeWarning : call resetTimeout()"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2269
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/volume/VolumePanel;->resetTimeout()V

    goto/16 :goto_0
.end method

.method protected onFreeResources()V
    .locals 3

    .prologue
    .line 2332
    monitor-enter p0

    .line 2333
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 2334
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 2335
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/media/ToneGenerator;->release()V

    .line 2337
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 2333
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2339
    :cond_1
    monitor-exit p0

    .line 2340
    return-void

    .line 2339
    .end local v0    # "i":I
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected onMuteChanged(II)V
    .locals 4
    .param p1, "streamType"    # I
    .param p2, "flags"    # I

    .prologue
    .line 1787
    sget-boolean v1, Lcom/android/systemui/volume/VolumePanel;->LOGD:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onMuteChanged(streamType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", flags: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1789
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mStreamControls:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/VolumePanel$StreamControl;

    .line 1790
    .local v0, "sc":Lcom/android/systemui/volume/VolumePanel$StreamControl;
    if-eqz v0, :cond_1

    .line 1791
    iget v1, v0, Lcom/android/systemui/volume/VolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v1}, Lcom/android/systemui/volume/VolumePanel;->isMuted(I)Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/volume/VolumePanel;->updateSliderIcon(Lcom/android/systemui/volume/VolumePanel$StreamControl;Z)V

    .line 1794
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/volume/VolumePanel;->onVolumeChanged(II)V

    .line 1795
    return-void
.end method

.method protected onPlaySound(II)V
    .locals 11
    .param p1, "streamType"    # I
    .param p2, "flags"    # I

    .prologue
    const/4 v10, 0x3

    const/4 v4, 0x1

    .line 2034
    invoke-virtual {p0, v10}, Lcom/android/systemui/volume/VolumePanel;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2035
    invoke-virtual {p0, v10}, Lcom/android/systemui/volume/VolumePanel;->removeMessages(I)V

    .line 2037
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumePanel;->onStopSounds()V

    .line 2040
    :cond_0
    monitor-enter p0

    .line 2049
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mSoundPool:Landroid/media/SoundPool;

    if-nez v0, :cond_1

    .line 2050
    monitor-exit p0

    .line 2071
    :goto_0
    return-void

    .line 2053
    :cond_1
    sget-boolean v0, Lcom/android/systemui/volume/VolumePanel;->mIsLoadSoundPool:Z

    if-nez v0, :cond_3

    .line 2054
    const-string v0, "VolumePanel"

    const-string v1, "soundpool is not loaded"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2055
    const/4 v8, 0x0

    .local v8, "effect":I
    :goto_1
    if-ge v8, v4, :cond_2

    .line 2056
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/media/audio/ui/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/volume/VolumePanel;->SOUND_EFFECT_FILES:[Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/volume/VolumePanel;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v2, v2, v8

    const/4 v3, 0x0

    aget v2, v2, v3

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 2057
    .local v9, "filePath":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v0, v0, v8

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/systemui/volume/VolumePanel;->mSoundPool:Landroid/media/SoundPool;

    const/4 v3, 0x0

    invoke-virtual {v2, v9, v3}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v2

    aput v2, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2055
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 2060
    .end local v9    # "filePath":Ljava/lang/String;
    :cond_2
    const-wide/16 v0, 0x28

    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2066
    .end local v8    # "effect":I
    :cond_3
    :goto_2
    :try_start_2
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0, p1}, Landroid/media/SoundPool;->setStreamType(I)V

    .line 2067
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->SOUND_EFFECT_FILES_MAP:[[I

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const/4 v2, 0x1

    aget v1, v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 2068
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2069
    invoke-virtual {p0, v10}, Lcom/android/systemui/volume/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v2, 0x96

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/systemui/volume/VolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 2061
    .restart local v8    # "effect":I
    :catch_0
    move-exception v7

    .line 2063
    .local v7, "e1":Ljava/lang/InterruptedException;
    :try_start_3
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    .line 2068
    .end local v7    # "e1":Ljava/lang/InterruptedException;
    .end local v8    # "effect":I
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method protected onRemoteVolumeChanged(Landroid/media/session/MediaController;I)V
    .locals 5
    .param p1, "controller"    # Landroid/media/session/MediaController;
    .param p2, "flags"    # I

    .prologue
    const/4 v4, 0x1

    const/16 v3, -0xc8

    .line 2097
    sget-boolean v0, Lcom/android/systemui/volume/VolumePanel;->LOGD:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRemoteVolumeChanged(controller:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", flags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2100
    :cond_0
    and-int/lit8 v0, p2, 0x1

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2101
    :cond_1
    monitor-enter p0

    .line 2102
    :try_start_0
    iget v0, p0, Lcom/android/systemui/volume/VolumePanel;->mActiveStreamType:I

    if-eq v0, v3, :cond_2

    .line 2103
    const/16 v0, -0xc8

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/VolumePanel;->reorderSliders(I)V

    .line 2105
    :cond_2
    const/16 v0, -0xc8

    invoke-virtual {p0, v0, p2, p1}, Lcom/android/systemui/volume/VolumePanel;->onShowVolumeChanged(IILandroid/media/session/MediaController;)V

    .line 2106
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2111
    :cond_3
    :goto_0
    invoke-virtual {p0, v4}, Lcom/android/systemui/volume/VolumePanel;->removeMessages(I)V

    .line 2112
    invoke-virtual {p0, v4}, Lcom/android/systemui/volume/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v2, 0x2710

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/systemui/volume/VolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2113
    const-string v0, "VolumePanel"

    const-string v1, "onRemoteVolumeChanged : call resetTimeout()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2114
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->resetTimeout()V

    .line 2115
    return-void

    .line 2106
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 2108
    :cond_4
    sget-boolean v0, Lcom/android/systemui/volume/VolumePanel;->LOGD:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mTag:Ljava/lang/String;

    const-string v1, "not calling onShowVolumeChanged(), no FLAG_SHOW_UI or no UI"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onRemoteVolumeUpdateIfShown()V
    .locals 3

    .prologue
    const/16 v2, -0xc8

    .line 2118
    sget-boolean v0, Lcom/android/systemui/volume/VolumePanel;->LOGD:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mTag:Ljava/lang/String;

    const-string v1, "onRemoteVolumeUpdateIfShown()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2119
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/systemui/volume/VolumePanel;->mActiveStreamType:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mStreamControls:Landroid/util/SparseArray;

    if-eqz v0, :cond_1

    .line 2122
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/volume/VolumePanel;->onShowVolumeChanged(IILandroid/media/session/MediaController;)V

    .line 2124
    :cond_1
    return-void
.end method

.method protected onShowVolumeChanged(IILandroid/media/session/MediaController;)V
    .locals 12
    .param p1, "streamType"    # I
    .param p2, "flags"    # I
    .param p3, "controller"    # Landroid/media/session/MediaController;

    .prologue
    .line 1798
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumePanel;->getStreamVolume(I)I

    move-result v1

    .line 1801
    .local v1, "index":I
    iget-object v9, p0, Lcom/android/systemui/volume/VolumePanel;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    if-nez v9, :cond_0

    .line 1802
    iget-object v9, p0, Lcom/android/systemui/volume/VolumePanel;->mContext:Landroid/content/Context;

    invoke-direct {p0, v9}, Lcom/android/systemui/volume/VolumePanel;->initCoverManager(Landroid/content/Context;)V

    .line 1803
    sget-boolean v9, Lcom/android/systemui/volume/VolumePanel;->LOGD:Z

    if-eqz v9, :cond_0

    const-string v9, "VolumePanel"

    const-string v10, "onShowVolumeChanged():initCoverManager"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1807
    :cond_0
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/systemui/volume/VolumePanel;->mRingIsSilent:Z

    .line 1809
    sget-boolean v9, Lcom/android/systemui/volume/VolumePanel;->LOGD:Z

    if-eqz v9, :cond_1

    .line 1810
    iget-object v9, p0, Lcom/android/systemui/volume/VolumePanel;->mTag:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onShowVolumeChanged(streamType: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", flags: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "), index: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1816
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumePanel;->getStreamMaxVolume(I)I

    move-result v3

    .line 1817
    .local v3, "max":I
    iget-object v9, p0, Lcom/android/systemui/volume/VolumePanel;->mStreamControls:Landroid/util/SparseArray;

    invoke-virtual {v9, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/volume/VolumePanel$StreamControl;

    .line 1819
    .local v5, "sc":Lcom/android/systemui/volume/VolumePanel$StreamControl;
    sparse-switch p1, :sswitch_data_0

    .line 1904
    :cond_2
    :goto_0
    :sswitch_0
    if-eqz v5, :cond_6

    .line 1905
    const/16 v9, -0xc8

    if-ne p1, v9, :cond_4

    iget-object v9, v5, Lcom/android/systemui/volume/VolumePanel$StreamControl;->controller:Landroid/media/session/MediaController;

    if-eq p3, v9, :cond_4

    .line 1906
    iget-object v9, v5, Lcom/android/systemui/volume/VolumePanel$StreamControl;->controller:Landroid/media/session/MediaController;

    if-eqz v9, :cond_3

    .line 1907
    iget-object v9, v5, Lcom/android/systemui/volume/VolumePanel$StreamControl;->controller:Landroid/media/session/MediaController;

    iget-object v10, p0, Lcom/android/systemui/volume/VolumePanel;->mMediaControllerCb:Landroid/media/session/MediaController$Callback;

    invoke-virtual {v9, v10}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V

    .line 1909
    :cond_3
    iput-object p3, v5, Lcom/android/systemui/volume/VolumePanel$StreamControl;->controller:Landroid/media/session/MediaController;

    .line 1910
    if-eqz p3, :cond_4

    .line 1911
    iget-object v9, v5, Lcom/android/systemui/volume/VolumePanel$StreamControl;->controller:Landroid/media/session/MediaController;

    iget-object v10, p0, Lcom/android/systemui/volume/VolumePanel;->mMediaControllerCb:Landroid/media/session/MediaController$Callback;

    invoke-virtual {v9, v10}, Landroid/media/session/MediaController;->registerCallback(Landroid/media/session/MediaController$Callback;)V

    .line 1914
    :cond_4
    iget-object v9, v5, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v9}, Landroid/widget/SeekBar;->getMax()I

    move-result v9

    if-eq v9, v3, :cond_5

    .line 1915
    iget-object v9, v5, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v9, v3}, Landroid/widget/SeekBar;->setMax(I)V

    .line 1917
    :cond_5
    invoke-direct {p0, v5, v1}, Lcom/android/systemui/volume/VolumePanel;->updateSliderProgress(Lcom/android/systemui/volume/VolumePanel$StreamControl;I)V

    .line 1918
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumePanel;->isMuted(I)Z

    move-result v10

    and-int/lit8 v9, p2, 0x20

    if-eqz v9, :cond_c

    const/4 v9, 0x1

    :goto_1
    invoke-direct {p0, v5, v10, v9}, Lcom/android/systemui/volume/VolumePanel;->updateSliderEnabled(Lcom/android/systemui/volume/VolumePanel$StreamControl;ZZ)V

    .line 1923
    :cond_6
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumePanel;->isSviewCoverOpened()Z

    move-result v9

    if-nez v9, :cond_d

    .line 1924
    sget-object v9, Lcom/android/systemui/volume/VolumePanel;->sSafetyWarning:Landroid/app/AlertDialog;

    if-eqz v9, :cond_d

    sget-object v9, Lcom/android/systemui/volume/VolumePanel;->sSafetyWarning:Landroid/app/AlertDialog;

    invoke-virtual {v9}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v9

    if-eqz v9, :cond_d

    .line 1925
    iget-object v9, p0, Lcom/android/systemui/volume/VolumePanel;->mDialog:Landroid/app/Dialog;

    if-eqz v9, :cond_7

    .line 1926
    const-string v9, "VolumePanel"

    const-string v10, "onShowVolumeChanged :  call mDialog.dismiss()"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1927
    iget-object v9, p0, Lcom/android/systemui/volume/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v9}, Landroid/app/Dialog;->dismiss()V

    .line 1928
    const/4 v9, -0x1

    iput v9, p0, Lcom/android/systemui/volume/VolumePanel;->mActiveStreamType:I

    .line 2022
    :cond_7
    :goto_2
    return-void

    .line 1823
    :sswitch_1
    iget-object v9, p0, Lcom/android/systemui/volume/VolumePanel;->mContext:Landroid/content/Context;

    const/4 v10, 0x1

    invoke-static {v9, v10}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v4

    .line 1825
    .local v4, "ringuri":Landroid/net/Uri;
    if-nez v4, :cond_2

    .line 1826
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/systemui/volume/VolumePanel;->mRingIsSilent:Z

    goto :goto_0

    .line 1833
    .end local v4    # "ringuri":Landroid/net/Uri;
    :sswitch_2
    iget-object v9, p0, Lcom/android/systemui/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    const/4 v10, 0x3

    invoke-virtual {v9, v10}, Landroid/media/AudioManager;->getDevicesForStream(I)I

    move-result v9

    and-int/lit16 v9, v9, 0x3a0

    if-eqz v9, :cond_8

    .line 1839
    const v9, 0x1080a52

    const v10, 0x1080a52

    invoke-direct {p0, v9, v10}, Lcom/android/systemui/volume/VolumePanel;->setMusicIcon(II)V

    goto/16 :goto_0

    .line 1842
    :cond_8
    const v9, 0x1080a68

    const v10, 0x1080a6a

    invoke-direct {p0, v9, v10}, Lcom/android/systemui/volume/VolumePanel;->setMusicIcon(II)V

    goto/16 :goto_0

    .line 1853
    :sswitch_3
    add-int/lit8 v1, v1, 0x1

    .line 1854
    add-int/lit8 v3, v3, 0x1

    .line 1855
    goto/16 :goto_0

    .line 1863
    :sswitch_4
    iget-object v9, p0, Lcom/android/systemui/volume/VolumePanel;->mContext:Landroid/content/Context;

    const/4 v10, 0x2

    invoke-static {v9, v10}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v4

    .line 1865
    .restart local v4    # "ringuri":Landroid/net/Uri;
    if-nez v4, :cond_2

    .line 1866
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/systemui/volume/VolumePanel;->mRingIsSilent:Z

    goto/16 :goto_0

    .line 1877
    .end local v4    # "ringuri":Landroid/net/Uri;
    :sswitch_5
    add-int/lit8 v1, v1, 0x1

    .line 1878
    add-int/lit8 v3, v3, 0x1

    .line 1879
    goto/16 :goto_0

    .line 1883
    :sswitch_6
    if-nez p3, :cond_9

    if-eqz v5, :cond_9

    .line 1885
    iget-object p3, v5, Lcom/android/systemui/volume/VolumePanel$StreamControl;->controller:Landroid/media/session/MediaController;

    .line 1887
    :cond_9
    if-nez p3, :cond_b

    .line 1889
    iget-object v9, p0, Lcom/android/systemui/volume/VolumePanel;->mTag:Ljava/lang/String;

    const-string v10, "sent remote volume change without a controller!"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1899
    :cond_a
    :goto_3
    sget-boolean v9, Lcom/android/systemui/volume/VolumePanel;->LOGD:Z

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/android/systemui/volume/VolumePanel;->mTag:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "showing remote volume "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " over "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1891
    :cond_b
    invoke-virtual {p3}, Landroid/media/session/MediaController;->getPlaybackInfo()Landroid/media/session/MediaController$PlaybackInfo;

    move-result-object v7

    .line 1892
    .local v7, "vi":Landroid/media/session/MediaController$PlaybackInfo;
    invoke-virtual {v7}, Landroid/media/session/MediaController$PlaybackInfo;->getCurrentVolume()I

    move-result v1

    .line 1893
    invoke-virtual {v7}, Landroid/media/session/MediaController$PlaybackInfo;->getMaxVolume()I

    move-result v3

    .line 1894
    invoke-virtual {v7}, Landroid/media/session/MediaController$PlaybackInfo;->getVolumeControl()I

    move-result v9

    and-int/lit8 v9, v9, 0x0

    if-eqz v9, :cond_a

    .line 1896
    or-int/lit8 p2, p2, 0x20

    goto :goto_3

    .line 1918
    .end local v7    # "vi":Landroid/media/session/MediaController$PlaybackInfo;
    :cond_c
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 1935
    :cond_d
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->isShowing()Z

    move-result v9

    if-nez v9, :cond_16

    .line 1936
    const/16 v9, -0xc8

    if-ne p1, v9, :cond_10

    const/4 v6, -0x1

    .line 1938
    .local v6, "stream":I
    :goto_4
    iget-object v9, p0, Lcom/android/systemui/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v9, v6}, Landroid/media/AudioManager;->forceVolumeControlStream(I)V

    .line 1941
    and-int/lit16 v9, p2, 0x4000

    if-eqz v9, :cond_11

    .line 1942
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->expand()V

    .line 1948
    :goto_5
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumePanel;->isSviewCoverOpened()Z

    move-result v9

    if-nez v9, :cond_12

    .line 1949
    const-string v9, "VolumePanel"

    const-string v10, "onShowVolumeChanged: Cover is closed"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1951
    iget-object v9, p0, Lcom/android/systemui/volume/VolumePanel;->mMoreButton:Landroid/view/View;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 1952
    iget-object v9, p0, Lcom/android/systemui/volume/VolumePanel;->mDivider:Landroid/view/View;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 1953
    iget-object v9, p0, Lcom/android/systemui/volume/VolumePanel;->mTopMarginView:Landroid/view/View;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 1954
    iget-object v9, p0, Lcom/android/systemui/volume/VolumePanel;->mBottomMarginView:Landroid/view/View;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 1957
    iget-object v9, p0, Lcom/android/systemui/volume/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0c0382

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 1958
    .local v0, "cmargin":I
    if-eqz v0, :cond_e

    if-eqz v5, :cond_e

    .line 1959
    iget-object v9, v5, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v9}, Landroid/widget/SeekBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 1960
    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v9, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    sub-int/2addr v9, v0

    iput v9, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1961
    iget-object v9, v5, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v9, v2}, Landroid/widget/SeekBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1963
    .end local v2    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_e
    iget v9, p0, Lcom/android/systemui/volume/VolumePanel;->mCoverLevel:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_f

    .line 1964
    iget-object v9, p0, Lcom/android/systemui/volume/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v9}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    .line 1965
    .local v8, "window":Landroid/view/Window;
    invoke-virtual {v8}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 1966
    .local v2, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v9, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v10, p0, Lcom/android/systemui/volume/VolumePanel;->sCoverTopOffset:I

    if-eq v9, v10, :cond_f

    .line 1967
    iget v9, p0, Lcom/android/systemui/volume/VolumePanel;->sCoverTopOffset:I

    iput v9, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1968
    invoke-virtual {v8, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1993
    .end local v0    # "cmargin":I
    .end local v2    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v8    # "window":Landroid/view/Window;
    :cond_f
    :goto_6
    sget-object v9, Lcom/android/systemui/volume/VolumePanel;->sSafetyWarning:Landroid/app/AlertDialog;

    if-eqz v9, :cond_14

    sget-object v9, Lcom/android/systemui/volume/VolumePanel;->sSafetyWarning:Landroid/app/AlertDialog;

    invoke-virtual {v9}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v9

    if-eqz v9, :cond_14

    .line 1994
    iget-object v9, p0, Lcom/android/systemui/volume/VolumePanel;->mDialog:Landroid/app/Dialog;

    if-eqz v9, :cond_7

    .line 1995
    iget-object v9, p0, Lcom/android/systemui/volume/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v9}, Landroid/app/Dialog;->dismiss()V

    .line 1996
    const/4 v9, -0x1

    iput v9, p0, Lcom/android/systemui/volume/VolumePanel;->mActiveStreamType:I

    goto/16 :goto_2

    .end local v6    # "stream":I
    :cond_10
    move v6, p1

    .line 1936
    goto/16 :goto_4

    .line 1944
    .restart local v6    # "stream":I
    :cond_11
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->collapse()V

    goto/16 :goto_5

    .line 1973
    :cond_12
    const-string v9, "VolumePanel"

    const-string v10, "onShowVolumeChanged: Cover is opened"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1974
    and-int/lit16 v9, p2, 0x4000

    if-nez v9, :cond_13

    .line 1976
    iget-object v9, p0, Lcom/android/systemui/volume/VolumePanel;->mMoreButton:Landroid/view/View;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 1977
    iget-object v9, p0, Lcom/android/systemui/volume/VolumePanel;->mDivider:Landroid/view/View;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 1978
    iget-object v9, p0, Lcom/android/systemui/volume/VolumePanel;->mTopMarginView:Landroid/view/View;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 1979
    iget-object v9, p0, Lcom/android/systemui/volume/VolumePanel;->mBottomMarginView:Landroid/view/View;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 1982
    :cond_13
    iget v9, p0, Lcom/android/systemui/volume/VolumePanel;->mCoverLevel:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_f

    .line 1983
    iget-object v9, p0, Lcom/android/systemui/volume/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v9}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    .line 1984
    .restart local v8    # "window":Landroid/view/Window;
    invoke-virtual {v8}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 1985
    .restart local v2    # "lp":Landroid/view/WindowManager$LayoutParams;
    iget v9, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v10, p0, Lcom/android/systemui/volume/VolumePanel;->mTopOffset:I

    if-eq v9, v10, :cond_f

    .line 1986
    iget v9, p0, Lcom/android/systemui/volume/VolumePanel;->mTopOffset:I

    iput v9, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1987
    invoke-virtual {v8, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_6

    .line 2001
    .end local v2    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v8    # "window":Landroid/view/Window;
    :cond_14
    iget-object v9, p0, Lcom/android/systemui/volume/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v9}, Landroid/app/Dialog;->show()V

    .line 2002
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumePanel;->showInterruptionToast(I)V

    .line 2004
    iget-object v9, p0, Lcom/android/systemui/volume/VolumePanel;->mCallback:Lcom/android/systemui/volume/VolumePanel$Callback;

    if-eqz v9, :cond_15

    .line 2005
    iget-object v9, p0, Lcom/android/systemui/volume/VolumePanel;->mCallback:Lcom/android/systemui/volume/VolumePanel$Callback;

    const/4 v10, 0x1

    invoke-interface {v9, v10}, Lcom/android/systemui/volume/VolumePanel$Callback;->onVisible(Z)V

    .line 2007
    :cond_15
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->announceDialogShown()V

    .line 2011
    .end local v6    # "stream":I
    :cond_16
    const/16 v9, -0xc8

    if-eq p1, v9, :cond_17

    and-int/lit8 v9, p2, 0x10

    if-eqz v9, :cond_17

    iget-object v9, p0, Lcom/android/systemui/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v9, p1}, Landroid/media/AudioManager;->isStreamAffectedByRingerMode(I)Z

    move-result v9

    if-eqz v9, :cond_17

    iget-object v9, p0, Lcom/android/systemui/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v9}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_17

    .line 2015
    const/4 v9, 0x4

    invoke-virtual {p0, v9}, Lcom/android/systemui/volume/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    const-wide/16 v10, 0x12c

    invoke-virtual {p0, v9, v10, v11}, Lcom/android/systemui/volume/VolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2019
    :cond_17
    and-int/lit16 v9, p2, 0x80

    if-eqz v9, :cond_7

    .line 2020
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->showSilentHint()V

    goto/16 :goto_2

    .line 1819
    nop

    :sswitch_data_0
    .sparse-switch
        -0xc8 -> :sswitch_6
        0x0 -> :sswitch_3
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_0
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
    .end sparse-switch
.end method

.method protected declared-synchronized onSliderVisibilityChanged(II)V
    .locals 6
    .param p1, "streamType"    # I
    .param p2, "visible"    # I

    .prologue
    const/4 v1, 0x1

    .line 2149
    monitor-enter p0

    :try_start_0
    sget-boolean v3, Lcom/android/systemui/volume/VolumePanel;->LOGD:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/volume/VolumePanel;->mTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onSliderVisibilityChanged(stream="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", visi="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2150
    :cond_0
    if-ne p2, v1, :cond_2

    .line 2151
    .local v1, "isVisible":Z
    :goto_0
    sget-object v3, Lcom/android/systemui/volume/VolumePanel;->STREAMS:[Lcom/android/systemui/volume/VolumePanel$StreamResources;

    array-length v3, v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_1

    .line 2152
    sget-object v3, Lcom/android/systemui/volume/VolumePanel;->STREAMS:[Lcom/android/systemui/volume/VolumePanel$StreamResources;

    aget-object v2, v3, v0

    .line 2153
    .local v2, "streamRes":Lcom/android/systemui/volume/VolumePanel$StreamResources;
    iget v3, v2, Lcom/android/systemui/volume/VolumePanel$StreamResources;->streamType:I

    if-ne v3, p1, :cond_3

    .line 2154
    iput-boolean v1, v2, Lcom/android/systemui/volume/VolumePanel$StreamResources;->show:Z

    .line 2155
    if-nez v1, :cond_1

    iget v3, p0, Lcom/android/systemui/volume/VolumePanel;->mActiveStreamType:I

    if-ne v3, p1, :cond_1

    .line 2156
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/systemui/volume/VolumePanel;->mActiveStreamType:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2161
    .end local v2    # "streamRes":Lcom/android/systemui/volume/VolumePanel$StreamResources;
    :cond_1
    monitor-exit p0

    return-void

    .line 2150
    .end local v0    # "i":I
    .end local v1    # "isVisible":Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 2151
    .restart local v0    # "i":I
    .restart local v1    # "isVisible":Z
    .restart local v2    # "streamRes":Lcom/android/systemui/volume/VolumePanel$StreamResources;
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 2149
    .end local v0    # "i":I
    .end local v1    # "isVisible":Z
    .end local v2    # "streamRes":Lcom/android/systemui/volume/VolumePanel$StreamResources;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method protected onStopSounds()V
    .locals 5

    .prologue
    .line 2074
    monitor-enter p0

    .line 2075
    :try_start_0
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v1

    .line 2076
    .local v1, "numStreamTypes":I
    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 2077
    iget-object v3, p0, Lcom/android/systemui/volume/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    aget-object v2, v3, v0

    .line 2078
    .local v2, "toneGen":Landroid/media/ToneGenerator;
    if-eqz v2, :cond_1

    .line 2079
    sget-boolean v3, Lcom/android/systemui/volume/VolumePanel;->LOGD:Z

    if-eqz v3, :cond_0

    const-string v3, "VolumePanel"

    const-string v4, "VolumePanel onStopSounds"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2080
    :cond_0
    invoke-virtual {v2}, Landroid/media/ToneGenerator;->stopTone()V

    .line 2076
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2083
    .end local v2    # "toneGen":Landroid/media/ToneGenerator;
    :cond_2
    monitor-exit p0

    .line 2084
    return-void

    .line 2083
    .end local v0    # "i":I
    .end local v1    # "numStreamTypes":I
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method protected onVibrate()V
    .locals 4

    .prologue
    .line 2089
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 2094
    :goto_0
    return-void

    .line 2093
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v2, 0x12c

    sget-object v1, Lcom/android/systemui/volume/VolumePanel;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/Vibrator;->vibrate(JLandroid/media/AudioAttributes;)V

    goto :goto_0
.end method

.method protected onVolumeChanged(II)V
    .locals 7
    .param p1, "streamType"    # I
    .param p2, "flags"    # I

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1701
    sget-boolean v1, Lcom/android/systemui/volume/VolumePanel;->LOGD:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onVolumeChanged(streamType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", flags: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1704
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    if-nez v1, :cond_1

    .line 1705
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/android/systemui/volume/VolumePanel;->initCoverManager(Landroid/content/Context;)V

    .line 1706
    sget-boolean v1, Lcom/android/systemui/volume/VolumePanel;->LOGD:Z

    if-eqz v1, :cond_1

    const-string v1, "VolumePanel"

    const-string v2, "onVolumeChanged():initCoverManager"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1711
    :cond_1
    and-int/lit16 v1, p2, 0x800

    if-eqz v1, :cond_4

    .line 1712
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1713
    sget-boolean v1, Lcom/android/systemui/volume/VolumePanel;->LOGD:Z

    if-eqz v1, :cond_2

    const-string v1, "VolumePanel"

    const-string v2, "onVolumeChanged updateStates"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1714
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumePanel;->updateStates()V

    .line 1783
    :cond_3
    :goto_0
    return-void

    .line 1722
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mStreamControls:Landroid/util/SparseArray;

    invoke-virtual {v1, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/VolumePanel$StreamControl;

    .line 1723
    .local v0, "sc_voice":Lcom/android/systemui/volume/VolumePanel$StreamControl;
    if-eqz v0, :cond_6

    .line 1724
    if-nez p1, :cond_d

    .line 1725
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->phoneIsOffhook()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumePanel;->isExtraButtonOn()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1726
    sget-boolean v1, Lcom/android/systemui/volume/VolumePanel;->LOGD:Z

    if-eqz v1, :cond_5

    const-string v1, "VolumePanel"

    const-string v2, "Call setMode(ProgressBar.MODE_WARNING)_#1"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1727
    :cond_5
    iget-object v1, v0, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v1, v4}, Landroid/widget/SeekBar;->setMode(I)V

    .line 1749
    :cond_6
    :goto_1
    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_8

    .line 1750
    monitor-enter p0

    .line 1754
    :try_start_0
    iget v1, p0, Lcom/android/systemui/volume/VolumePanel;->mActiveStreamType:I

    if-eq v1, p1, :cond_7

    .line 1756
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->isExpanded()Z

    move-result v1

    if-nez v1, :cond_11

    .line 1757
    const-string v1, "VolumePanel"

    const-string v2, "onVolumeChanged : call reorderSliders"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1758
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumePanel;->reorderSliders(I)V

    .line 1764
    :cond_7
    :goto_2
    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1}, Lcom/android/systemui/volume/VolumePanel;->onShowVolumeChanged(IILandroid/media/session/MediaController;)V

    .line 1765
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1768
    :cond_8
    and-int/lit8 v1, p2, 0x4

    if-eqz v1, :cond_9

    iget-boolean v1, p0, Lcom/android/systemui/volume/VolumePanel;->mRingIsSilent:Z

    if-nez v1, :cond_9

    .line 1769
    invoke-virtual {p0, v6}, Lcom/android/systemui/volume/VolumePanel;->removeMessages(I)V

    .line 1770
    invoke-virtual {p0, v6, p1, p2}, Lcom/android/systemui/volume/VolumePanel;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/systemui/volume/VolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1773
    :cond_9
    and-int/lit8 v1, p2, 0x8

    if-eqz v1, :cond_a

    .line 1774
    invoke-virtual {p0, v6}, Lcom/android/systemui/volume/VolumePanel;->removeMessages(I)V

    .line 1775
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/android/systemui/volume/VolumePanel;->removeMessages(I)V

    .line 1776
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumePanel;->onStopSounds()V

    .line 1779
    :cond_a
    invoke-virtual {p0, v4}, Lcom/android/systemui/volume/VolumePanel;->removeMessages(I)V

    .line 1780
    invoke-virtual {p0, v4}, Lcom/android/systemui/volume/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x2710

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/systemui/volume/VolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1781
    const-string v1, "VolumePanel"

    const-string v2, "onVolumeChanged : call resetTimeout()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1782
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->resetTimeout()V

    goto :goto_0

    .line 1729
    :cond_b
    if-eqz v0, :cond_6

    .line 1730
    sget-boolean v1, Lcom/android/systemui/volume/VolumePanel;->LOGD:Z

    if-eqz v1, :cond_c

    const-string v1, "VolumePanel"

    const-string v2, "Call setChangeSeekbarColor(false)_#2"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1731
    :cond_c
    iget-object v1, v0, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v1, v5}, Landroid/widget/SeekBar;->setMode(I)V

    goto :goto_1

    .line 1737
    :cond_d
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->phoneIsOffhook()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumePanel;->isExtraButtonOn()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1739
    sget-boolean v1, Lcom/android/systemui/volume/VolumePanel;->LOGD:Z

    if-eqz v1, :cond_e

    const-string v1, "VolumePanel"

    const-string v2, "Call setMode(ProgressBar.MODE_WARNING)_#3"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1740
    :cond_e
    iget-object v1, v0, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v1, v4}, Landroid/widget/SeekBar;->setMode(I)V

    goto/16 :goto_1

    .line 1742
    :cond_f
    sget-boolean v1, Lcom/android/systemui/volume/VolumePanel;->LOGD:Z

    if-eqz v1, :cond_10

    const-string v1, "VolumePanel"

    const-string v2, "Call setMode(ProgressBar.MODE_STANDARD)_#4"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1743
    :cond_10
    iget-object v1, v0, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v1, v5}, Landroid/widget/SeekBar;->setMode(I)V

    goto/16 :goto_1

    .line 1760
    :cond_11
    :try_start_1
    const-string v1, "VolumePanel"

    const-string v2, "onVolumeChanged : call updateStates #2"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1761
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumePanel;->updateStates()V

    goto/16 :goto_2

    .line 1765
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public postDismiss(J)V
    .locals 1
    .param p1, "delay"    # J

    .prologue
    .line 1680
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/volume/VolumePanel;->forceTimeout(J)V

    .line 1681
    return-void
.end method

.method public postDisplaySafeVolumeWarning(I)V
    .locals 3
    .param p1, "flags"    # I

    .prologue
    const/16 v2, 0xb

    .line 1670
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    if-nez v0, :cond_0

    .line 1671
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/VolumePanel;->initCoverManager(Landroid/content/Context;)V

    .line 1672
    sget-boolean v0, Lcom/android/systemui/volume/VolumePanel;->LOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "VolumePanel"

    const-string v1, "postDisplaySafeVolumeWarning():initCoverManager"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1675
    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/systemui/volume/VolumePanel;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1677
    :goto_0
    return-void

    .line 1676
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v2, p1, v0}, Lcom/android/systemui/volume/VolumePanel;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public postHasNewRemotePlaybackInfo()V
    .locals 2

    .prologue
    const/16 v1, 0x9

    .line 1643
    invoke-virtual {p0, v1}, Lcom/android/systemui/volume/VolumePanel;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1647
    :goto_0
    return-void

    .line 1646
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/systemui/volume/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public postLayoutDirection(I)V
    .locals 2
    .param p1, "layoutDirection"    # I

    .prologue
    const/16 v1, 0xc

    .line 1684
    invoke-virtual {p0, v1}, Lcom/android/systemui/volume/VolumePanel;->removeMessages(I)V

    .line 1685
    const/4 v0, 0x0

    invoke-virtual {p0, v1, p1, v0}, Lcom/android/systemui/volume/VolumePanel;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1686
    return-void
.end method

.method public postMasterMuteChanged(I)V
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 1665
    const/16 v0, -0x64

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/volume/VolumePanel;->postMuteChanged(II)V

    .line 1666
    return-void
.end method

.method public postMasterVolumeChanged(I)V
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 1650
    const/16 v0, -0x64

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/volume/VolumePanel;->postVolumeChanged(II)V

    .line 1651
    return-void
.end method

.method public postMuteChanged(II)V
    .locals 1
    .param p1, "streamType"    # I
    .param p2, "flags"    # I

    .prologue
    .line 1654
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/VolumePanel;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1662
    :goto_0
    return-void

    .line 1655
    :cond_0
    monitor-enter p0

    .line 1656
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mStreamControls:Landroid/util/SparseArray;

    if-nez v0, :cond_1

    .line 1657
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->createSliders()V

    .line 1659
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1660
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/VolumePanel;->removeMessages(I)V

    .line 1661
    const/4 v0, 0x7

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/systemui/volume/VolumePanel;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 1659
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public postRemoteSliderVisibility(Z)V
    .locals 3
    .param p1, "visible"    # Z

    .prologue
    .line 1627
    const/16 v1, 0xa

    const/16 v2, -0xc8

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v1, v2, v0}, Lcom/android/systemui/volume/VolumePanel;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1629
    return-void

    .line 1627
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public postRemoteVolumeChanged(Landroid/media/session/MediaController;I)V
    .locals 2
    .param p1, "controller"    # Landroid/media/session/MediaController;
    .param p2, "flags"    # I

    .prologue
    const/16 v1, 0x8

    .line 1616
    invoke-virtual {p0, v1}, Lcom/android/systemui/volume/VolumePanel;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1624
    :goto_0
    return-void

    .line 1617
    :cond_0
    monitor-enter p0

    .line 1618
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mStreamControls:Landroid/util/SparseArray;

    if-nez v0, :cond_1

    .line 1619
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->createSliders()V

    .line 1621
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1622
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/VolumePanel;->removeMessages(I)V

    .line 1623
    const/4 v0, 0x0

    invoke-virtual {p0, v1, p2, v0, p1}, Lcom/android/systemui/volume/VolumePanel;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 1621
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public postVolumeChanged(II)V
    .locals 2
    .param p1, "streamType"    # I
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x0

    .line 1605
    invoke-virtual {p0, v1}, Lcom/android/systemui/volume/VolumePanel;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1613
    :goto_0
    return-void

    .line 1606
    :cond_0
    monitor-enter p0

    .line 1607
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mStreamControls:Landroid/util/SparseArray;

    if-nez v0, :cond_1

    .line 1608
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->createSliders()V

    .line 1610
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1611
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/VolumePanel;->removeMessages(I)V

    .line 1612
    invoke-virtual {p0, v1, p1, p2}, Lcom/android/systemui/volume/VolumePanel;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 1610
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public registerCoverReceiver()V
    .locals 3

    .prologue
    .line 854
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 856
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 857
    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 858
    const-string v1, "android.view.volumepanel.CLICK_BUTTON1"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 859
    const-string v1, "android.view.volumepanel.CLICK_BUTTON2"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 862
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/volume/VolumePanel;->mCoverBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 863
    return-void
.end method

.method public setCallback(Lcom/android/systemui/volume/VolumePanel$Callback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/systemui/volume/VolumePanel$Callback;

    .prologue
    .line 1560
    iput-object p1, p0, Lcom/android/systemui/volume/VolumePanel;->mCallback:Lcom/android/systemui/volume/VolumePanel$Callback;

    .line 1561
    return-void
.end method

.method public updateStates()V
    .locals 4

    .prologue
    .line 1593
    iget-object v3, p0, Lcom/android/systemui/volume/VolumePanel;->mSliderPanel:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 1594
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1595
    iget-object v3, p0, Lcom/android/systemui/volume/VolumePanel;->mSliderPanel:Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/volume/VolumePanel$StreamControl;

    .line 1596
    .local v2, "sc":Lcom/android/systemui/volume/VolumePanel$StreamControl;
    invoke-direct {p0, v2}, Lcom/android/systemui/volume/VolumePanel;->updateSlider(Lcom/android/systemui/volume/VolumePanel$StreamControl;)V

    .line 1594
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1598
    .end local v2    # "sc":Lcom/android/systemui/volume/VolumePanel$StreamControl;
    :cond_0
    return-void
.end method
