.class public Lcom/android/systemui/keyguard/KeyguardViewMediator;
.super Lcom/android/systemui/SystemUI;
.source "KeyguardViewMediator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/keyguard/KeyguardViewMediator$11;,
        Lcom/android/systemui/keyguard/KeyguardViewMediator$StartKeyguardExitAnimParams;,
        Lcom/android/systemui/keyguard/KeyguardViewMediator$UsbConnectionBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final ACTION_PEN_INSERT:Ljava/lang/String; = "com.samsung.pen.INSERT"

.field public static final AWAKE_INTERVAL_DEFAULT_MS:I = 0x2710

.field private static final BIG_VIEW:Ljava/lang/String; = "bigView"

.field public static final CARRIER_FLPP_LOCKED_ACTION:Ljava/lang/String; = "com.sec.android.FindingLostPhonePlus.SUBSCRIBE"

.field public static final CARRIER_FLPP_UNLOCKED_ACTION:Ljava/lang/String; = "com.sec.android.FindingLostPhonePlus.CANCEL"

.field private static final DBG_WAKE:Z = false

.field static final DEBUG:Z = true

.field private static final DELAYED_KEYGUARD_ACTION:Ljava/lang/String; = "com.android.internal.policy.impl.PhoneWindowManager.DELAYED_KEYGUARD"

.field private static final DISABLE_KEYGUARD_FACTORY_ACTION:Ljava/lang/String; = "com.android.samsungtest.DISABLE_KEYGUARD_FACTORY"

.field private static final DISMISS:I = 0x11

.field public static final FMM_LOCKED_ACTION:Ljava/lang/String; = "com.android.internal.policy.impl.Keyguard.PCW_LOCKED"

.field public static final FMM_UNLOCKED_ACTION:Ljava/lang/String; = "com.android.internal.policy.impl.Keyguard.PCW_UNLOCKED"

.field private static final HIDE:I = 0x3

.field private static final KEYGUARD_ANALYTICS_SETTING:Ljava/lang/String; = "keyguard_analytics"

.field private static final KEYGUARD_DISPLAY_TIMEOUT_DELAY_DEFAULT:I = 0x7530

.field private static final KEYGUARD_DONE:I = 0x9

.field private static final KEYGUARD_DONE_AUTHENTICATING:I = 0xb

.field private static final KEYGUARD_DONE_DRAWING:I = 0xa

.field private static final KEYGUARD_DONE_DRAWING_TIMEOUT_MS:I = 0x7d0

.field private static final KEYGUARD_LOCK_AFTER_DELAY_DEFAULT:I = 0x1388

.field private static final KEYGUARD_TIMEOUT:I = 0xd

.field private static final LAUNCH_ACTIVITY_BENDED:I = 0x19

.field private static final LAUNCH_PERSO_LOCK:I = 0x18

.field private static final NOTIFY_SCREEN_OFF:I = 0x6

.field private static final NOTIFY_SCREEN_ON:I = 0x7

.field private static final ON_ACTIVITY_DRAWN:I = 0x13

.field private static OUT_OF_RANGE_ALERT_TIMEOUT:I = 0x0

.field private static final REMOVE_ADAPTIVE_EVENT:I = 0x15

.field private static final REQUEST_CLASS:Ljava/lang/String; = "requestClass"

.field private static final RESET:I = 0x4

.field private static final SET_ADAPTIVE_EVENT:I = 0x14

.field private static final SET_OCCLUDED:I = 0xc

.field private static final SHOW:I = 0x2

.field private static final SMALL_VIEW:Ljava/lang/String; = "smallView"

.field private static final SMART_UNLOCK_PERMISSION:Ljava/lang/String; = "com.sec.android.permission.SMART_UNLOCK"

.field private static final START_KEYGUARD_EXIT_ANIM:I = 0x12

.field private static final TAG:Ljava/lang/String; = "KeyguardViewMediator"

.field private static final UPDATE_ADAPTIVE_EVENT:I = 0x16

.field private static final UPDATE_RSSI_FOR_SMART_UNLOCK:I = 0x17

.field private static final USER_PRESENT_INTENT:Landroid/content/Intent;

.field private static final VERIFY_UNLOCK:I = 0x5

.field private static sIsVzwDevice:Z


# instance fields
.field private mAdaptiveEventManager:Lcom/android/keyguard/sec/AdaptiveEventManager;

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBendedBundle:Landroid/os/Bundle;

.field private mBootCompleted:Z

.field private mBootSendUserPresent:Z

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCriteria_IN_RSSI:I

.field private mCriteria_OUT_RSSI:I

.field private mDelayedShowingSequence:I

.field private final mEdmBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mExitSecureCallback:Lcom/android/internal/policy/IKeyguardExitCallback;

.field private mExternallyEnabled:Z

.field private mHandler:Landroid/os/Handler;

.field private mHideAnimation:Landroid/view/animation/Animation;

.field private mHideAnimationRun:Z

.field private mHiding:Z

.field private mIsUsbAlreadyConnected:Z

.field private mIsValidValue:Z

.field private mKeyguardBackupRestoreManager:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;

.field private mKeyguardDisplayManager:Lcom/android/keyguard/KeyguardDisplayManager;

.field private mKeyguardDonePending:Z

.field private mKeyguardEffectViewController:Lcom/android/keyguard/sec/KeyguardEffectViewController;

.field private final mKeyguardGoingAwayRunnable:Ljava/lang/Runnable;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockSoundChangeCallback:Lcom/android/keyguard/sec/KeyguardEffectViewController$LockSoundChangeCallback;

.field private mLockSoundId:I

.field private mLockSoundStreamId:I

.field private mLockSoundVolume:F

.field private mLockSounds:Landroid/media/SoundPool;

.field private mMasterStreamType:I

.field private mNeedReenableAdbAfterUnlock:Z

.field private mNeedToReshowWhenReenabled:Z

.field private mOccluded:Z

.field private mOffset_IN_RSSI:I

.field private mOffset_OUT_RSSI:I

.field private mOutOfRangeAlertRunnable:Ljava/lang/Runnable;

.field private mPM:Landroid/os/PowerManager;

.field private mPhoneState:I

.field private mSViewCoverCovered:Z

.field private mScreenOffByProxSensor:Z

.field private mScreenOn:Z

.field private mSearchManager:Landroid/app/SearchManager;

.field private mSecureLockSoundId:I

.field private mSecureUnlockSoundId:I

.field private mShowKeyguardWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mShowing:Z

.field private final mSmartUnlockReceiver:Landroid/content/BroadcastReceiver;

.field private mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field private mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

.field private mSuppressNextLockSound:Z

.field private mSuppressNextUnLockSound:Z

.field private mSwitchingUser:Z

.field private mSystemReady:Z

.field private mTrust:Z

.field private mTrustedSoundId:I

.field private mUnlockSoundId:I

.field mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mUserManager:Landroid/os/UserManager;

.field mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

.field private mWM:Landroid/view/IWindowManager;

.field private mWaitingUntilKeyguardVisible:Z

.field private mWearabledevice:Landroid/bluetooth/BluetoothDevice;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 344
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x24000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->USER_PRESENT_INTENT:Landroid/content/Intent;

    .line 392
    const-string v0, "VZW"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->sIsVzwDevice:Z

    .line 2351
    const/16 v0, 0x7d0

    sput v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->OUT_OF_RANGE_ALERT_TIMEOUT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 173
    invoke-direct {p0}, Lcom/android/systemui/SystemUI;-><init>()V

    .line 264
    iput-boolean v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSuppressNextLockSound:Z

    .line 292
    iput-boolean v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mExternallyEnabled:Z

    .line 299
    iput-boolean v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mNeedToReshowWhenReenabled:Z

    .line 306
    iput-boolean v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mOccluded:Z

    .line 328
    iput-boolean v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mScreenOffByProxSensor:Z

    .line 332
    iput v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPhoneState:I

    .line 352
    iput-boolean v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mWaitingUntilKeyguardVisible:Z

    .line 354
    iput-boolean v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardDonePending:Z

    .line 355
    iput-boolean v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHideAnimationRun:Z

    .line 373
    iput-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardBackupRestoreManager:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;

    .line 390
    iput-boolean v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mIsUsbAlreadyConnected:Z

    .line 393
    iput-boolean v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mTrust:Z

    .line 403
    iput-boolean v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSuppressNextUnLockSound:Z

    .line 405
    new-instance v0, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 602
    new-instance v0, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    .line 1578
    new-instance v0, Lcom/android/systemui/keyguard/KeyguardViewMediator$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator$3;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mEdmBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1618
    new-instance v0, Lcom/android/systemui/keyguard/KeyguardViewMediator$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator$4;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1819
    new-instance v0, Lcom/android/systemui/keyguard/KeyguardViewMediator$5;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1, v4, v3}, Lcom/android/systemui/keyguard/KeyguardViewMediator$5;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    .line 2056
    new-instance v0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;

    invoke-direct {v0, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardGoingAwayRunnable:Ljava/lang/Runnable;

    .line 2352
    iput-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mWearabledevice:Landroid/bluetooth/BluetoothDevice;

    .line 2354
    new-instance v0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;

    invoke-direct {v0, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mOutOfRangeAlertRunnable:Ljava/lang/Runnable;

    .line 2375
    iput-boolean v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mIsValidValue:Z

    .line 2376
    iput v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mCriteria_IN_RSSI:I

    .line 2377
    iput v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mCriteria_OUT_RSSI:I

    .line 2378
    iput v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mOffset_IN_RSSI:I

    .line 2379
    iput v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mOffset_OUT_RSSI:I

    .line 2381
    new-instance v0, Lcom/android/systemui/keyguard/KeyguardViewMediator$8;

    invoke-direct {v0, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator$8;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSmartUnlockReceiver:Landroid/content/BroadcastReceiver;

    .line 2546
    new-instance v0, Lcom/android/systemui/keyguard/KeyguardViewMediator$9;

    invoke-direct {v0, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator$9;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockSoundChangeCallback:Lcom/android/keyguard/sec/KeyguardEffectViewController$LockSoundChangeCallback;

    .line 2587
    iput-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mBendedBundle:Landroid/os/Bundle;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    .line 173
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mTrust:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/systemui/keyguard/KeyguardViewMediator;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;
    .param p1, "x1"    # Z

    .prologue
    .line 173
    iput-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mTrust:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    .line 173
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->resetStateLocked()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;
    .param p1, "x1"    # Landroid/os/Bundle;

    .prologue
    .line 173
    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->doKeyguardLocked(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    .line 173
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->sendUserPresentBroadcast()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/keyguard/KeyguardUpdateMonitor;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/systemui/keyguard/KeyguardViewMediator;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;
    .param p1, "x1"    # Z

    .prologue
    .line 173
    iput-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHideAnimationRun:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/keyguard/KeyguardDisplayManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardDisplayManager:Lcom/android/keyguard/KeyguardDisplayManager;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    .line 173
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->playTrustedSound()V

    return-void
.end method

.method static synthetic access$1802(Lcom/android/systemui/keyguard/KeyguardViewMediator;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;
    .param p1, "x1"    # Z

    .prologue
    .line 173
    iput-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSViewCoverCovered:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    .line 173
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSystemReady:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    .line 173
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->adjustStatusBarLocked()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    .line 173
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mIsUsbAlreadyConnected:Z

    return v0
.end method

.method static synthetic access$2002(Lcom/android/systemui/keyguard/KeyguardViewMediator;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;
    .param p1, "x1"    # Z

    .prologue
    .line 173
    iput-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mIsUsbAlreadyConnected:Z

    return p1
.end method

.method static synthetic access$2102(Lcom/android/systemui/keyguard/KeyguardViewMediator;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;
    .param p1, "x1"    # Z

    .prologue
    .line 173
    iput-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mNeedReenableAdbAfterUnlock:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    .line 173
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isAdbEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Lcom/android/systemui/keyguard/KeyguardViewMediator;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;
    .param p1, "x1"    # Z

    .prologue
    .line 173
    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->setAdbModeEnabled(Z)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Landroid/os/PowerManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPM:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/systemui/keyguard/KeyguardViewMediator;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    .line 173
    iget v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDelayedShowingSequence:I

    return v0
.end method

.method static synthetic access$2702(Lcom/android/systemui/keyguard/KeyguardViewMediator;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;
    .param p1, "x1"    # Z

    .prologue
    .line 173
    iput-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSuppressNextLockSound:Z

    return p1
.end method

.method static synthetic access$2800(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    .line 173
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isFactoryMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2900(Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 173
    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isGear1(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3000(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Landroid/bluetooth/BluetoothDevice;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mWearabledevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic access$3002(Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 173
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mWearabledevice:Landroid/bluetooth/BluetoothDevice;

    return-object p1
.end method

.method static synthetic access$302(Lcom/android/systemui/keyguard/KeyguardViewMediator;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;
    .param p1, "x1"    # Z

    .prologue
    .line 173
    iput-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSwitchingUser:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/android/systemui/keyguard/KeyguardViewMediator;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    .line 173
    iget v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mCriteria_IN_RSSI:I

    return v0
.end method

.method static synthetic access$3102(Lcom/android/systemui/keyguard/KeyguardViewMediator;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;
    .param p1, "x1"    # I

    .prologue
    .line 173
    iput p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mCriteria_IN_RSSI:I

    return p1
.end method

.method static synthetic access$3200(Lcom/android/systemui/keyguard/KeyguardViewMediator;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    .line 173
    iget v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mCriteria_OUT_RSSI:I

    return v0
.end method

.method static synthetic access$3202(Lcom/android/systemui/keyguard/KeyguardViewMediator;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;
    .param p1, "x1"    # I

    .prologue
    .line 173
    iput p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mCriteria_OUT_RSSI:I

    return p1
.end method

.method static synthetic access$3300(Lcom/android/systemui/keyguard/KeyguardViewMediator;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    .line 173
    iget v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mOffset_IN_RSSI:I

    return v0
.end method

.method static synthetic access$3302(Lcom/android/systemui/keyguard/KeyguardViewMediator;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;
    .param p1, "x1"    # I

    .prologue
    .line 173
    iput p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mOffset_IN_RSSI:I

    return p1
.end method

.method static synthetic access$3400(Lcom/android/systemui/keyguard/KeyguardViewMediator;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    .line 173
    iget v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mOffset_OUT_RSSI:I

    return v0
.end method

.method static synthetic access$3402(Lcom/android/systemui/keyguard/KeyguardViewMediator;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;
    .param p1, "x1"    # I

    .prologue
    .line 173
    iput p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mOffset_OUT_RSSI:I

    return p1
.end method

.method static synthetic access$3500(Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;
    .param p1, "x1"    # Landroid/os/Bundle;

    .prologue
    .line 173
    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleShow(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    .line 173
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleHide()V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    .line 173
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleReset()V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    .line 173
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleVerifyUnlock()V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    .line 173
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleNotifyScreenOff()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    .line 173
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardDonePending:Z

    return v0
.end method

.method static synthetic access$4000(Lcom/android/systemui/keyguard/KeyguardViewMediator;Lcom/android/internal/policy/IKeyguardShowCallback;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;
    .param p1, "x1"    # Lcom/android/internal/policy/IKeyguardShowCallback;

    .prologue
    .line 173
    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleNotifyScreenOn(Lcom/android/internal/policy/IKeyguardShowCallback;)V

    return-void
.end method

.method static synthetic access$402(Lcom/android/systemui/keyguard/KeyguardViewMediator;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;
    .param p1, "x1"    # Z

    .prologue
    .line 173
    iput-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardDonePending:Z

    return p1
.end method

.method static synthetic access$4100(Lcom/android/systemui/keyguard/KeyguardViewMediator;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .prologue
    .line 173
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleKeyguardDone(ZZ)V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    .line 173
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleKeyguardDoneDrawing()V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/systemui/keyguard/KeyguardViewMediator;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;
    .param p1, "x1"    # Z

    .prologue
    .line 173
    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleSetOccluded(Z)V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/systemui/keyguard/KeyguardViewMediator;JJ)V
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;
    .param p1, "x1"    # J
    .param p3, "x2"    # J

    .prologue
    .line 173
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleStartKeyguardExitAnimation(JJ)V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    .line 173
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleOnActivityDrawn()V

    return-void
.end method

.method static synthetic access$4600(Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;
    .param p1, "x1"    # Landroid/os/Bundle;

    .prologue
    .line 173
    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleUpdateRSSI(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$4700(Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;
    .param p1, "x1"    # Landroid/os/Bundle;

    .prologue
    .line 173
    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleLaunchActivityBended(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$4800(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Landroid/view/IWindowManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mWM:Landroid/view/IWindowManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    .line 173
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mIsValidValue:Z

    return v0
.end method

.method static synthetic access$5002(Lcom/android/systemui/keyguard/KeyguardViewMediator;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;
    .param p1, "x1"    # Z

    .prologue
    .line 173
    iput-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mIsValidValue:Z

    return p1
.end method

.method static synthetic access$5100(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mOutOfRangeAlertRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$5200()I
    .locals 1

    .prologue
    .line 173
    sget v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->OUT_OF_RANGE_ALERT_TIMEOUT:I

    return v0
.end method

.method static synthetic access$5300(Lcom/android/systemui/keyguard/KeyguardViewMediator;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    .line 173
    iget v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockSoundId:I

    return v0
.end method

.method static synthetic access$5302(Lcom/android/systemui/keyguard/KeyguardViewMediator;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;
    .param p1, "x1"    # I

    .prologue
    .line 173
    iput p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockSoundId:I

    return p1
.end method

.method static synthetic access$5400(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Landroid/media/SoundPool;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockSounds:Landroid/media/SoundPool;

    return-object v0
.end method

.method static synthetic access$5500(Lcom/android/systemui/keyguard/KeyguardViewMediator;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    .line 173
    iget v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUnlockSoundId:I

    return v0
.end method

.method static synthetic access$5502(Lcom/android/systemui/keyguard/KeyguardViewMediator;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;
    .param p1, "x1"    # I

    .prologue
    .line 173
    iput p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUnlockSoundId:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/systemui/keyguard/KeyguardViewMediator;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    .line 173
    iget v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPhoneState:I

    return v0
.end method

.method static synthetic access$602(Lcom/android/systemui/keyguard/KeyguardViewMediator;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;
    .param p1, "x1"    # I

    .prologue
    .line 173
    iput p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPhoneState:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    .line 173
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mScreenOn:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    .line 173
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mExternallyEnabled:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    .line 173
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mScreenOffByProxSensor:Z

    return v0
.end method

.method private adjustStatusBarLocked()V
    .locals 4

    .prologue
    .line 2141
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-nez v1, :cond_0

    .line 2142
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    const-string v2, "statusbar"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/StatusBarManager;

    iput-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 2145
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-nez v1, :cond_2

    .line 2146
    const-string v1, "KeyguardViewMediator"

    const-string v2, "Could not get status bar manager"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2171
    :cond_1
    :goto_0
    return-void

    .line 2150
    :cond_2
    const/4 v0, 0x0

    .line 2151
    .local v0, "flags":I
    iget-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    if-eqz v1, :cond_3

    .line 2155
    const/high16 v1, 0x1000000

    or-int/2addr v0, v1

    .line 2156
    const/high16 v1, 0x2000000

    or-int/2addr v0, v1

    .line 2158
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isShowingAndNotOccluded()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2159
    const/high16 v1, 0x200000

    or-int/2addr v0, v1

    .line 2163
    :cond_4
    const-string v1, "KeyguardViewMediator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "adjustStatusBarLocked: mShowing="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mOccluded="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mOccluded:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isSecure="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isSecure()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " --> flags=0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2167
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    instance-of v1, v1, Landroid/app/Activity;

    if-nez v1, :cond_1

    .line 2168
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual {v1, v0}, Landroid/app/StatusBarManager;->disable(I)V

    goto :goto_0
.end method

.method private cancelDoKeyguardLaterLocked()V
    .locals 1

    .prologue
    .line 1096
    iget v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDelayedShowingSequence:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDelayedShowingSequence:I

    .line 1097
    return-void
.end method

.method private checkSViewCoverWithNonSecure()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2538
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "automatic_unlock"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_0

    move v0, v1

    .line 2540
    .local v0, "isAutoUnlockEnabled":Z
    :goto_0
    const-string v3, "KeyguardViewMediator"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isAutoUnlockEnabled in KeyguardViewMediator = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2542
    iget-boolean v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSViewCoverCovered:Z

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isSecure()Z

    move-result v3

    if-nez v3, :cond_1

    if-eqz v0, :cond_1

    :goto_1
    return v1

    .end local v0    # "isAutoUnlockEnabled":Z
    :cond_0
    move v0, v2

    .line 2538
    goto :goto_0

    .restart local v0    # "isAutoUnlockEnabled":Z
    :cond_1
    move v1, v2

    .line 2542
    goto :goto_1
.end method

.method private doKeyguardLaterLocked(I)V
    .locals 31
    .param p1, "why"    # I

    .prologue
    .line 951
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 954
    .local v6, "cr":Landroid/content/ContentResolver;
    const-string v21, "screen_off_timeout"

    const/16 v28, 0x7530

    move-object/from16 v0, v21

    move/from16 v1, v28

    invoke-static {v6, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v21

    move/from16 v0, v21

    int-to-long v8, v0

    .line 958
    .local v8, "displayTimeout":J
    const-string v21, "lock_screen_lock_after_timeout"

    const/16 v28, 0x1388

    move-object/from16 v0, v21

    move/from16 v1, v28

    invoke-static {v6, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v21

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v16, v0

    .line 963
    .local v16, "lockAfterTimeout":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v21

    const/16 v28, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v29

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;I)J

    move-result-wide v18

    .line 967
    .local v18, "policyTimeout":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const-string v28, "enterprise_policy"

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 969
    .local v7, "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    const-wide/16 v24, -0x1

    .line 970
    .local v24, "unlock_delay":J
    if-eqz v7, :cond_0

    .line 971
    invoke-virtual {v7}, Landroid/app/enterprise/EnterpriseDeviceManager;->getPasswordPolicy()Landroid/app/enterprise/PasswordPolicy;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/app/enterprise/PasswordPolicy;->getPasswordLockDelay()I

    move-result v21

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v24, v0

    .line 972
    :cond_0
    move-wide/from16 v10, v16

    .line 973
    .local v10, "final_delay":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v21

    if-eqz v21, :cond_1

    const-wide/16 v28, 0x0

    cmp-long v21, v24, v28

    if-ltz v21, :cond_1

    .line 974
    const-wide/16 v28, 0x3e8

    mul-long v28, v28, v24

    move-wide/from16 v0, v28

    invoke-static {v0, v1, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    .line 975
    const-string v21, "KeyguardViewMediator"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "final_delay was changed by mdm"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 979
    :cond_1
    const-wide/16 v28, 0x0

    cmp-long v21, v18, v28

    if-lez v21, :cond_a

    .line 981
    const-wide/16 v28, 0x0

    move-wide/from16 v0, v28

    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    .line 982
    sub-long v28, v18, v8

    move-wide/from16 v0, v28

    invoke-static {v0, v1, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v22

    .line 985
    .local v22, "timeout":J
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->useIndependentLockTimeout()Z

    move-result v21

    if-eqz v21, :cond_3

    .line 986
    const/16 v21, 0x2

    move/from16 v0, p1

    move/from16 v1, v21

    if-ne v0, v1, :cond_6

    .line 987
    move-wide/from16 v0, v18

    invoke-static {v0, v1, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v22

    .line 1002
    :cond_2
    :goto_0
    const-string v21, "KeyguardViewMediator"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "timeout="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1033
    :cond_3
    :goto_1
    const-wide/16 v28, 0x0

    cmp-long v21, v22, v28

    if-gtz v21, :cond_10

    .line 1035
    const/16 v21, 0x3

    move/from16 v0, p1

    move/from16 v1, v21

    if-ne v0, v1, :cond_4

    .line 1036
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSuppressNextLockSound:Z

    .line 1038
    :cond_4
    const/16 v21, 0x0

    sput-boolean v21, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSwipeLockShowingBeforeTimeout:Z

    .line 1039
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->useIndependentLockTimeout()Z

    move-result v21

    if-eqz v21, :cond_f

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    move/from16 v21, v0

    if-eqz v21, :cond_f

    .line 1040
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->resetStateLocked()V

    .line 1093
    :cond_5
    :goto_2
    return-void

    .line 988
    :cond_6
    const/16 v21, 0x3

    move/from16 v0, p1

    move/from16 v1, v21

    if-ne v0, v1, :cond_2

    .line 989
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    move/from16 v21, v0

    if-eqz v21, :cond_7

    .line 990
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->getUserActivityTimeout()J

    move-result-wide v8

    .line 992
    :cond_7
    cmp-long v21, v18, v8

    if-gtz v21, :cond_8

    .line 993
    const-wide/16 v22, 0x0

    goto :goto_0

    .line 995
    :cond_8
    cmp-long v21, v18, v10

    if-lez v21, :cond_9

    .line 996
    sub-long v22, v10, v8

    goto :goto_0

    .line 998
    :cond_9
    sub-long v22, v18, v8

    goto :goto_0

    .line 1007
    .end local v22    # "timeout":J
    :cond_a
    move-wide/from16 v22, v10

    .line 1008
    .restart local v22    # "timeout":J
    const-string v21, "KeyguardViewMediator"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "timeout : "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1011
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->useIndependentLockTimeout()Z

    move-result v21

    if-eqz v21, :cond_3

    .line 1012
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v21

    if-eqz v21, :cond_d

    .line 1013
    const/16 v21, 0x3

    move/from16 v0, p1

    move/from16 v1, v21

    if-ne v0, v1, :cond_c

    .line 1014
    const-wide/16 v28, 0x0

    move-wide/from16 v0, v28

    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    .line 1015
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    move/from16 v21, v0

    if-eqz v21, :cond_b

    .line 1016
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->getUserActivityTimeout()J

    move-result-wide v8

    .line 1018
    :cond_b
    sub-long v22, v10, v8

    .line 1027
    :cond_c
    :goto_3
    const-string v21, "KeyguardViewMediator"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "timeout="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1021
    :cond_d
    const/16 v21, 0x3

    move/from16 v0, p1

    move/from16 v1, v21

    if-ne v0, v1, :cond_e

    .line 1022
    const-wide/16 v22, 0x1388

    goto :goto_3

    .line 1023
    :cond_e
    const/16 v21, 0x2

    move/from16 v0, p1

    move/from16 v1, v21

    if-ne v0, v1, :cond_c

    .line 1024
    const-wide/16 v22, 0x0

    goto :goto_3

    .line 1042
    :cond_f
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->doKeyguardLocked(Landroid/os/Bundle;)V

    goto/16 :goto_2

    .line 1046
    :cond_10
    const/4 v15, 0x1

    .line 1047
    .local v15, "isSetAlarm":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-string v28, "automatic_unlock"

    const/16 v29, 0x0

    const/16 v30, -0x2

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v30

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v13

    .line 1051
    .local v13, "isAutoUnlock":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v21

    if-nez v21, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v21

    if-eqz v21, :cond_14

    :cond_11
    const/4 v14, 0x1

    .line 1053
    .local v14, "isSecureLock":Z
    :goto_4
    if-nez v14, :cond_12

    const/16 v21, 0x1

    move/from16 v0, v21

    if-ne v13, v0, :cond_12

    .line 1066
    :cond_12
    if-eqz v15, :cond_13

    .line 1068
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v28

    add-long v26, v28, v22

    .line 1069
    .local v26, "when":J
    new-instance v12, Landroid/content/Intent;

    const-string v21, "com.android.internal.policy.impl.PhoneWindowManager.DELAYED_KEYGUARD"

    move-object/from16 v0, v21

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1070
    .local v12, "intent":Landroid/content/Intent;
    const-string v21, "seq"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDelayedShowingSequence:I

    move/from16 v28, v0

    move-object/from16 v0, v21

    move/from16 v1, v28

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1071
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const/16 v28, 0x0

    const/high16 v29, 0x10000000

    move-object/from16 v0, v21

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-static {v0, v1, v12, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v20

    .line 1073
    .local v20, "sender":Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mAlarmManager:Landroid/app/AlarmManager;

    move-object/from16 v21, v0

    const/16 v28, 0x2

    move-object/from16 v0, v21

    move/from16 v1, v28

    move-wide/from16 v2, v26

    move-object/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 1075
    const-string v21, "KeyguardViewMediator"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "setting alarm to turn off keyguard, seq = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDelayedShowingSequence:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1078
    .end local v12    # "intent":Landroid/content/Intent;
    .end local v20    # "sender":Landroid/app/PendingIntent;
    .end local v26    # "when":J
    :cond_13
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->useIndependentLockTimeout()Z

    move-result v21

    if-eqz v21, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v21

    if-eqz v21, :cond_5

    .line 1079
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    move/from16 v21, v0

    if-eqz v21, :cond_15

    .line 1080
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->notifyScreenOffLocked()V

    .line 1081
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->resetStateLocked()V

    goto/16 :goto_2

    .line 1051
    .end local v14    # "isSecureLock":Z
    :cond_14
    const/4 v14, 0x0

    goto/16 :goto_4

    .line 1083
    .restart local v14    # "isSecureLock":Z
    :cond_15
    const/16 v21, 0x1

    sput-boolean v21, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSwipeLockShowingBeforeTimeout:Z

    .line 1084
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/widget/LockPatternUtils;->isSmartUnlockEnabled()Z

    move-result v21

    if-eqz v21, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/widget/LockPatternUtils;->isSwipeSmartLock()Z

    move-result v21

    if-nez v21, :cond_16

    .line 1086
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v21, v0

    const/16 v28, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->setSwipeSmartLock(Z)V

    .line 1088
    :cond_16
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->doKeyguardLocked(Landroid/os/Bundle;)V

    goto/16 :goto_2
.end method

.method private doKeyguardLocked(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "options"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1347
    iget-boolean v9, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mExternallyEnabled:Z

    if-nez v9, :cond_2

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isKoreaFeature()Z

    move-result v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v9}, Lcom/android/internal/widget/LockPatternUtils;->isCarrierLockPlusEnabled()Z

    move-result v9

    if-nez v9, :cond_2

    iget-object v9, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v9}, Lcom/android/internal/widget/LockPatternUtils;->isCarrierLockEnabled()Z

    move-result v9

    if-nez v9, :cond_2

    :cond_0
    iget-object v9, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v9

    if-nez v9, :cond_2

    iget-object v9, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v9}, Lcom/android/internal/widget/LockPatternUtils;->isFMMLockEnabled()Z

    move-result v9

    if-nez v9, :cond_2

    .line 1349
    const-string v7, "KeyguardViewMediator"

    const-string v8, "doKeyguard: not showing because externally disabled"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1450
    :cond_1
    :goto_0
    return-void

    .line 1364
    :cond_2
    iget-object v9, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1365
    const-string v7, "KeyguardViewMediator"

    const-string v8, "doKeyguard: not showing because it is already showing"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1371
    :cond_3
    new-instance v3, Landroid/lsm/LockedStatePasswordWrapper;

    iget-object v9, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-direct {v3, v9}, Landroid/lsm/LockedStatePasswordWrapper;-><init>(Landroid/content/Context;)V

    .line 1372
    .local v3, "lsw":Landroid/lsm/LockedStatePasswordWrapper;
    invoke-virtual {v3}, Landroid/lsm/LockedStatePasswordWrapper;->setLocked()I

    .line 1377
    iget-object v9, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1378
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v9, "access_control_enabled"

    const/4 v10, -0x2

    invoke-static {v0, v9, v7, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v9

    if-ne v9, v8, :cond_4

    .line 1380
    const-string v7, "KeyguardViewMediator"

    const-string v8, "doKeyguard: not showing because access control is enabled"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1381
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->userActivity()V

    goto :goto_0

    .line 1386
    :cond_4
    iget-object v9, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v9}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceProvisioned()Z

    move-result v5

    .line 1387
    .local v5, "provisioned":Z
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v4

    .line 1388
    .local v4, "numPhones":I
    const/4 v2, 0x0

    .line 1389
    .local v2, "lockedOrMissing":Z
    new-array v6, v4, [Lcom/android/internal/telephony/IccCardConstants$State;

    .line 1391
    .local v6, "state":[Lcom/android/internal/telephony/IccCardConstants$State;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v4, :cond_6

    .line 1392
    iget-object v9, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v9, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSimState(I)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v9

    aput-object v9, v6, v1

    .line 1393
    if-nez v2, :cond_5

    aget-object v9, v6, v1

    invoke-virtual {p0, v9}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isLockedOrMissing(Lcom/android/internal/telephony/IccCardConstants$State;)Z

    move-result v9

    if-eqz v9, :cond_8

    :cond_5
    move v2, v8

    .line 1394
    :goto_2
    if-eqz v2, :cond_9

    .line 1397
    :cond_6
    if-nez v2, :cond_a

    if-nez v5, :cond_a

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isKoreaFeature()Z

    move-result v9

    if-eqz v9, :cond_7

    iget-object v9, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v9}, Lcom/android/internal/widget/LockPatternUtils;->isCarrierLockPlusEnabled()Z

    move-result v9

    if-nez v9, :cond_a

    .line 1398
    :cond_7
    const-string v7, "KeyguardViewMediator"

    const-string v8, "doKeyguard: not showing because device isn\'t provisioned and the sim is not locked or missing"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_8
    move v2, v7

    .line 1393
    goto :goto_2

    .line 1391
    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1403
    :cond_a
    iget-object v9, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v9}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled()Z

    move-result v9

    if-eqz v9, :cond_c

    if-nez v2, :cond_c

    iget-object v9, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v9}, Lcom/android/internal/widget/LockPatternUtils;->isFMMLockEnabled()Z

    move-result v9

    if-nez v9, :cond_c

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isKoreaFeature()Z

    move-result v9

    if-eqz v9, :cond_b

    iget-object v9, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v9}, Lcom/android/internal/widget/LockPatternUtils;->isCarrierLockPlusEnabled()Z

    move-result v9

    if-nez v9, :cond_c

    .line 1407
    :cond_b
    const-string v7, "KeyguardViewMediator"

    const-string v8, "doKeyguard: not showing because lockscreen is off"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1412
    :cond_c
    iget-object v9, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v9}, Lcom/android/internal/widget/LockPatternUtils;->checkVoldPassword()Z

    move-result v9

    if-eqz v9, :cond_d

    iget-object v9, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v9

    if-nez v9, :cond_d

    iget-object v9, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v9}, Lcom/android/internal/widget/LockPatternUtils;->isFMMLockEnabled()Z

    move-result v9

    if-nez v9, :cond_d

    iget-object v9, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v9}, Lcom/android/internal/widget/LockPatternUtils;->getRecoveryScreenLocked()Z

    move-result v9

    if-nez v9, :cond_d

    .line 1418
    const-string v8, "KeyguardViewMediator"

    const-string v9, "Not showing lock screen since just decrypted"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1420
    iput-boolean v7, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    .line 1421
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->hideLocked()V

    goto/16 :goto_0

    .line 1426
    :cond_d
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isFactoryMode()Z

    move-result v9

    if-eqz v9, :cond_e

    .line 1427
    const-string v7, "KeyguardViewMediator"

    const-string v8, "doKeyguard: not showing because factory mode"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1432
    :cond_e
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->checkSViewCoverWithNonSecure()Z

    move-result v9

    if-eqz v9, :cond_f

    .line 1433
    const-string v8, "KeyguardViewMediator"

    const-string v9, "doKeyguard: not showing because cover is showing"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1439
    if-eqz p1, :cond_1

    const-string v8, "fromOnSystemReady"

    invoke-virtual {p1, v8, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1440
    const-string v8, "KeyguardViewMediator"

    const-string v9, "mShowing set to false"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1441
    iput-boolean v7, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    goto/16 :goto_0

    .line 1447
    :cond_f
    const-string v7, "KeyguardViewMediator"

    const-string v9, "doKeyguard: showing the lock screen"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1448
    iput-boolean v8, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSuppressNextUnLockSound:Z

    .line 1449
    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->showLocked(Landroid/os/Bundle;)V

    goto/16 :goto_0
.end method

.method private handleHide()V
    .locals 4

    .prologue
    .line 2077
    monitor-enter p0

    .line 2078
    :try_start_0
    const-string v0, "KeyguardViewMediator"

    const-string v1, "handleHide"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2080
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHiding:Z

    .line 2081
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->checkSViewCoverWithNonSecure()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2082
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHideAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v2}, Landroid/view/animation/Animation;->getStartOffset()J

    move-result-wide v2

    add-long/2addr v0, v2

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHideAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v2}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleStartKeyguardExitAnimation(JJ)V

    .line 2084
    monitor-exit p0

    .line 2102
    :goto_0
    return-void

    .line 2087
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mOccluded:Z

    if-nez v0, :cond_2

    .line 2088
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHideAnimationRun:Z

    if-nez v0, :cond_1

    .line 2089
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardGoingAwayRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->startPreHideAnimation(Ljava/lang/Runnable;)V

    .line 2101
    :goto_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 2091
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardGoingAwayRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    .line 2097
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHideAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v2}, Landroid/view/animation/Animation;->getStartOffset()J

    move-result-wide v2

    add-long/2addr v0, v2

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHideAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v2}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleStartKeyguardExitAnimation(JJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private handleKeyguardDone(ZZ)V
    .locals 5
    .param p1, "authenticated"    # Z
    .param p2, "wakeup"    # Z

    .prologue
    const/4 v4, 0x1

    .line 1898
    const-string v1, "KeyguardViewMediator"

    const-string v2, "handleKeyguardDone"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1906
    if-eqz p1, :cond_0

    .line 1907
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->clearFailedUnlockAttempts()V

    .line 1909
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->clearFingerprintRecognized()V

    .line 1911
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mExitSecureCallback:Lcom/android/internal/policy/IKeyguardExitCallback;

    if-eqz v1, :cond_1

    .line 1913
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mExitSecureCallback:Lcom/android/internal/policy/IKeyguardExitCallback;

    invoke-interface {v1, p1}, Lcom/android/internal/policy/IKeyguardExitCallback;->onKeyguardExitResult(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1918
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mExitSecureCallback:Lcom/android/internal/policy/IKeyguardExitCallback;

    .line 1920
    if-eqz p1, :cond_1

    .line 1923
    iput-boolean v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mExternallyEnabled:Z

    .line 1924
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mNeedToReshowWhenReenabled:Z

    .line 1928
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleHide()V

    .line 1929
    sget-boolean v1, Lcom/android/systemui/keyguard/KeyguardViewMediator;->sIsVzwDevice:Z

    if-eqz v1, :cond_2

    .line 1930
    iget-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mNeedReenableAdbAfterUnlock:Z

    if-eqz v1, :cond_2

    invoke-direct {p0, v4}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->setAdbModeEnabled(Z)V

    .line 1932
    :cond_2
    return-void

    .line 1914
    :catch_0
    move-exception v0

    .line 1915
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "KeyguardViewMediator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to call onKeyguardExitResult("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private handleKeyguardDoneDrawing()V
    .locals 2

    .prologue
    .line 1950
    monitor-enter p0

    .line 1951
    :try_start_0
    const-string v0, "KeyguardViewMediator"

    const-string v1, "handleKeyguardDoneDrawing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1952
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mWaitingUntilKeyguardVisible:Z

    if-eqz v0, :cond_0

    .line 1953
    const-string v0, "KeyguardViewMediator"

    const-string v1, "handleKeyguardDoneDrawing: notifying mWaitingUntilKeyguardVisible"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1954
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mWaitingUntilKeyguardVisible:Z

    .line 1955
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1960
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1962
    :cond_0
    monitor-exit p0

    .line 1963
    return-void

    .line 1962
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private handleLaunchActivityBended(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    .line 2608
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/cocktailbar/CocktailBarFeatures;->isSupportCocktail(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2609
    const-string v2, "KeyguardViewMediator"

    const-string v3, "CocktailBar is not supported but setBendedPendingIntent() is called"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2629
    :cond_0
    :goto_0
    return-void

    .line 2613
    :cond_1
    const-string v2, "PI"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    .line 2614
    .local v1, "pIntent":Landroid/app/PendingIntent;
    const-string v2, "FI"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 2615
    .local v0, "fIntent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2616
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    new-instance v3, Lcom/android/systemui/keyguard/KeyguardViewMediator$10;

    invoke-direct {v3, p0, v1, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator$10;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/app/PendingIntent;Landroid/content/Intent;)V

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->dismissWithAction(Lcom/android/keyguard/KeyguardHostView$OnDismissAction;ZZ)V

    goto :goto_0
.end method

.method private handleNotifyScreenOff()V
    .locals 2

    .prologue
    .line 2216
    monitor-enter p0

    .line 2217
    :try_start_0
    const-string v0, "KeyguardViewMediator"

    const-string v1, "handleNotifyScreenOff"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2218
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->onScreenTurnedOff()V

    .line 2219
    monitor-exit p0

    .line 2220
    return-void

    .line 2219
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private handleNotifyScreenOn(Lcom/android/internal/policy/IKeyguardShowCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/android/internal/policy/IKeyguardShowCallback;

    .prologue
    .line 2227
    monitor-enter p0

    .line 2228
    :try_start_0
    const-string v0, "KeyguardViewMediator"

    const-string v1, "handleNotifyScreenOn"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2229
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->onScreenTurnedOn(Lcom/android/internal/policy/IKeyguardShowCallback;)V

    .line 2230
    monitor-exit p0

    .line 2231
    return-void

    .line 2230
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private handleOnActivityDrawn()V
    .locals 1

    .prologue
    .line 2105
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardDonePending:Z

    if-eqz v0, :cond_0

    .line 2106
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->onActivityDrawn()V

    .line 2108
    :cond_0
    return-void
.end method

.method private handleReset()V
    .locals 4

    .prologue
    .line 2180
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v1

    .line 2181
    .local v1, "versionInfo":Landroid/os/Bundle;
    const-string v2, "2.0"

    const-string v3, "version"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2182
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    const-string v3, "persona"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PersonaManager;

    .line 2183
    .local v0, "personaManager":Landroid/os/PersonaManager;
    invoke-virtual {v0}, Landroid/os/PersonaManager;->isKioskContainerExistOnDevice()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardSecurityModel;->isSimLockMode(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2184
    const-string v2, "KeyguardViewMediator"

    const-string v3, "Kiosk container exist on device. Ignoring owner keyguard right now from handleReset"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2196
    .end local v0    # "personaManager":Landroid/os/PersonaManager;
    :goto_0
    return-void

    .line 2187
    .restart local v0    # "personaManager":Landroid/os/PersonaManager;
    :cond_0
    const-string v2, "KeyguardViewMediator"

    const-string v3, "Kiosk container not exists on device."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2192
    .end local v0    # "personaManager":Landroid/os/PersonaManager;
    :cond_1
    monitor-enter p0

    .line 2193
    :try_start_0
    const-string v2, "KeyguardViewMediator"

    const-string v3, "handleReset"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2194
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->reset()V

    .line 2195
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private handleSetOccluded(Z)V
    .locals 1
    .param p1, "isOccluded"    # Z

    .prologue
    .line 1313
    monitor-enter p0

    .line 1314
    :try_start_0
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mOccluded:Z

    if-eq v0, p1, :cond_0

    .line 1315
    iput-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mOccluded:Z

    .line 1316
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->setOccluded(Z)V

    .line 1317
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->updateActivityLockScreenState()V

    .line 1318
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->adjustStatusBarLocked()V

    .line 1320
    :cond_0
    monitor-exit p0

    .line 1321
    return-void

    .line 1320
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private handleShow(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "options"    # Landroid/os/Bundle;

    .prologue
    .line 2018
    monitor-enter p0

    .line 2019
    :try_start_0
    iget-boolean v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSystemReady:Z

    if-nez v2, :cond_0

    .line 2020
    const-string v2, "KeyguardViewMediator"

    const-string v3, "ignoring handleShow because system is not ready."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2021
    monitor-exit p0

    .line 2054
    :goto_0
    return-void

    .line 2023
    :cond_0
    const-string v2, "KeyguardViewMediator"

    const-string v3, "handleShow"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2027
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v1

    .line 2028
    .local v1, "versionInfo":Landroid/os/Bundle;
    const-string v2, "2.0"

    const-string v3, "version"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2029
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    const-string v3, "persona"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PersonaManager;

    .line 2030
    .local v0, "personaManager":Landroid/os/PersonaManager;
    invoke-virtual {v0}, Landroid/os/PersonaManager;->isKioskContainerExistOnDevice()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardSecurityModel;->isSimLockMode(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2031
    const-string v2, "KeyguardViewMediator"

    const-string v3, "Kiosk container exist on device. Ignoring owner keyguard right now from handleShow"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2032
    monitor-exit p0

    goto :goto_0

    .line 2052
    .end local v0    # "personaManager":Landroid/os/PersonaManager;
    .end local v1    # "versionInfo":Landroid/os/Bundle;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 2034
    .restart local v0    # "personaManager":Landroid/os/PersonaManager;
    .restart local v1    # "versionInfo":Landroid/os/Bundle;
    :cond_1
    :try_start_1
    const-string v2, "KeyguardViewMediator"

    const-string v3, "Kiosk container not exists on device."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2039
    .end local v0    # "personaManager":Landroid/os/PersonaManager;
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->show(Landroid/os/Bundle;)V

    .line 2040
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHiding:Z

    .line 2041
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    .line 2042
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardDonePending:Z

    .line 2043
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHideAnimationRun:Z

    .line 2044
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->updateActivityLockScreenState()V

    .line 2045
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->adjustStatusBarLocked()V

    .line 2046
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->userActivity()V

    .line 2049
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->playSounds(Z)V

    .line 2051
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowKeyguardWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2052
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2053
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardDisplayManager:Lcom/android/keyguard/KeyguardDisplayManager;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardDisplayManager;->show()V

    goto :goto_0
.end method

.method private handleStartKeyguardExitAnimation(JJ)V
    .locals 1
    .param p1, "startTime"    # J
    .param p3, "fadeoutDuration"    # J

    .prologue
    .line 2111
    monitor-enter p0

    .line 2113
    :try_start_0
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHiding:Z

    if-nez v0, :cond_0

    .line 2114
    monitor-exit p0

    .line 2138
    :goto_0
    return-void

    .line 2116
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHiding:Z

    .line 2120
    iget v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPhoneState:I

    if-nez v0, :cond_1

    .line 2121
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSuppressNextUnLockSound:Z

    if-eqz v0, :cond_1

    .line 2122
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSuppressNextUnLockSound:Z

    .line 2123
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->playSounds(Z)V

    .line 2127
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->hide(JJ)V

    .line 2128
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    .line 2129
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardDonePending:Z

    .line 2130
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHideAnimationRun:Z

    .line 2132
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mBendedBundle:Landroid/os/Bundle;

    .line 2134
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->updateActivityLockScreenState()V

    .line 2135
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->adjustStatusBarLocked()V

    .line 2136
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->sendUserPresentBroadcast()V

    .line 2137
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private handleUpdateRSSI(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "extra"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 2473
    const-string v2, "android.bluetooth.device.extra.RSSI"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 2474
    .local v1, "rssi":I
    const-string v2, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 2475
    .local v0, "RemoteRssidevice":Landroid/bluetooth/BluetoothDevice;
    const-string v2, "KeyguardViewMediator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleUpdateRSSI( rssi = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", BluetoothDevice = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2477
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2495
    :cond_0
    :goto_0
    return-void

    .line 2479
    :cond_1
    iget v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mCriteria_IN_RSSI:I

    iget v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mOffset_IN_RSSI:I

    sub-int/2addr v2, v3

    if-lt v1, v2, :cond_2

    .line 2480
    const-string v2, "KeyguardViewMediator"

    const-string v3, "handleUpdateRSSI(SMART_LOCK_SECURE_LOCK_TO_SWIPE_LOCK)"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2481
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isSwipeSmartLock()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2482
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->setSwipeSmartLock(Z)V

    .line 2483
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->adjustStatusBarLocked()V

    .line 2484
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->resetStateLocked()V

    goto :goto_0

    .line 2486
    :cond_2
    iget v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mCriteria_OUT_RSSI:I

    iget v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mOffset_OUT_RSSI:I

    add-int/2addr v2, v3

    if-gt v1, v2, :cond_0

    .line 2487
    const-string v2, "KeyguardViewMediator"

    const-string v3, "handleUpdateRSSI(SMART_LOCK_SWIPE_LOCK_TO_SECURE_LOCK) "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2488
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isSwipeSmartLock()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2489
    sput-boolean v5, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSwipeLockShowingBeforeTimeout:Z

    .line 2490
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2, v5}, Lcom/android/internal/widget/LockPatternUtils;->setSwipeSmartLock(Z)V

    .line 2491
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->adjustStatusBarLocked()V

    .line 2492
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->resetStateLocked()V

    goto :goto_0
.end method

.method private handleVerifyUnlock()V
    .locals 2

    .prologue
    .line 2203
    monitor-enter p0

    .line 2204
    :try_start_0
    const-string v0, "KeyguardViewMediator"

    const-string v1, "handleVerifyUnlock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2205
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->verifyUnlock()V

    .line 2206
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    .line 2207
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->updateActivityLockScreenState()V

    .line 2208
    monitor-exit p0

    .line 2209
    return-void

    .line 2208
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private hideLocked()V
    .locals 3

    .prologue
    .line 1542
    const-string v1, "KeyguardViewMediator"

    const-string v2, "hideLocked"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1543
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1544
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1545
    return-void
.end method

.method private isAdbEnabled()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2523
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "adb_enabled"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private isAssistantAvailable()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 2238
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSearchManager:Landroid/app/SearchManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSearchManager:Landroid/app/SearchManager;

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    const/4 v3, -0x2

    invoke-virtual {v1, v2, v0, v3}, Landroid/app/SearchManager;->getAssistIntent(Landroid/content/Context;ZI)Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isFactoryMode()Z
    .locals 1

    .prologue
    .line 2499
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/FactoryTest;->isAutomaticTestMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isGear1(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v1, 0x0

    .line 2503
    if-nez p1, :cond_0

    .line 2504
    const-string v2, "KeyguardViewMediator"

    const-string v3, "isGear1: device is NULL"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2519
    :goto_0
    return v1

    .line 2508
    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    .line 2509
    .local v0, "name":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 2510
    const-string v2, "KeyguardViewMediator"

    const-string v3, "isGear1: name is NULL"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2514
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "GALAXY GEAR ("

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2515
    const-string v1, "KeyguardViewMediator"

    const-string v2, "isGear1: device is B1"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2516
    const/4 v1, 0x1

    goto :goto_0

    .line 2518
    :cond_2
    const-string v2, "KeyguardViewMediator"

    const-string v3, "isGear1: device is not B1!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private maybeSendUserPresentBroadcast()V
    .locals 1

    .prologue
    .line 1122
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSystemReady:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1126
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->sendUserPresentBroadcast()V

    .line 1128
    :cond_0
    return-void
.end method

.method private notifyScreenOffLocked()V
    .locals 2

    .prologue
    .line 1510
    const-string v0, "KeyguardViewMediator"

    const-string v1, "notifyScreenOffLocked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1511
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1512
    return-void
.end method

.method private notifyScreenOnLocked(Lcom/android/internal/policy/IKeyguardShowCallback;)V
    .locals 3
    .param p1, "result"    # Lcom/android/internal/policy/IKeyguardShowCallback;

    .prologue
    .line 1520
    const-string v1, "KeyguardViewMediator"

    const-string v2, "notifyScreenOnLocked"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1521
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x7

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1522
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1523
    return-void
.end method

.method private playSound(I)V
    .locals 8
    .param p1, "soundId"    # I

    .prologue
    const/4 v4, 0x1

    .line 1980
    if-nez p1, :cond_1

    .line 1997
    :cond_0
    :goto_0
    return-void

    .line 1981
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 1982
    .local v7, "cr":Landroid/content/ContentResolver;
    const-string v0, "lockscreen_sounds_enabled"

    invoke-static {v7, v0, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v4, :cond_0

    .line 1984
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockSounds:Landroid/media/SoundPool;

    iget v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockSoundStreamId:I

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->stop(I)V

    .line 1986
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_2

    .line 1987
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mAudioManager:Landroid/media/AudioManager;

    .line 1988
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 1989
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMasterStreamType()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mMasterStreamType:I

    .line 1992
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mMasterStreamType:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1994
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockSounds:Landroid/media/SoundPool;

    iget v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockSoundVolume:F

    iget v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockSoundVolume:F

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    move v1, p1

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockSoundStreamId:I

    goto :goto_0
.end method

.method private playSounds(Z)V
    .locals 1
    .param p1, "locked"    # Z

    .prologue
    .line 1968
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSuppressNextLockSound:Z

    if-eqz v0, :cond_0

    .line 1969
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSuppressNextLockSound:Z

    .line 1977
    :goto_0
    return-void

    .line 1974
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isSecure()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    iget v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSecureLockSoundId:I

    :goto_1
    invoke-direct {p0, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->playSound(I)V

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSecureUnlockSoundId:I

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_3

    iget v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockSoundId:I

    goto :goto_1

    :cond_3
    iget v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUnlockSoundId:I

    goto :goto_1
.end method

.method private playTrustedSound()V
    .locals 1

    .prologue
    .line 2000
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSuppressNextLockSound:Z

    if-eqz v0, :cond_0

    .line 2004
    :goto_0
    return-void

    .line 2003
    :cond_0
    iget v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mTrustedSoundId:I

    invoke-direct {p0, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->playSound(I)V

    goto :goto_0
.end method

.method private resetStateLocked()V
    .locals 3

    .prologue
    .line 1489
    const-string v1, "KeyguardViewMediator"

    const-string v2, "resetStateLocked"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1490
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1491
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1492
    return-void
.end method

.method private sendUserPresentBroadcast()V
    .locals 3

    .prologue
    .line 1935
    monitor-enter p0

    .line 1936
    :try_start_0
    iget-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mBootCompleted:Z

    if-eqz v1, :cond_0

    .line 1937
    new-instance v0, Landroid/os/UserHandle;

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    .line 1938
    .local v0, "currentUser":Landroid/os/UserHandle;
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/systemui/keyguard/KeyguardViewMediator;->USER_PRESENT_INTENT:Landroid/content/Intent;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1942
    .end local v0    # "currentUser":Landroid/os/UserHandle;
    :goto_0
    monitor-exit p0

    .line 1943
    return-void

    .line 1940
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mBootSendUserPresent:Z

    goto :goto_0

    .line 1942
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private setAdbModeEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 2527
    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2535
    :cond_0
    :goto_0
    return-void

    .line 2531
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isAdbEnabled()Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 2532
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "adb_enabled"

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private setup()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v4, 0x0

    const/4 v11, 0x1

    .line 698
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPM:Landroid/os/PowerManager;

    .line 699
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mWM:Landroid/view/IWindowManager;

    .line 700
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUserManager:Landroid/os/UserManager;

    .line 701
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPM:Landroid/os/PowerManager;

    const-string v1, "show keyguard"

    invoke-virtual {v0, v11, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowKeyguardWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 702
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowKeyguardWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v12}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 705
    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    .line 707
    .local v7, "filter":Landroid/content/IntentFilter;
    const-string v0, "com.android.internal.policy.impl.PhoneWindowManager.DELAYED_KEYGUARD"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 709
    const-string v0, "com.android.internal.policy.impl.Keyguard.PCW_LOCKED"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 710
    const-string v0, "com.android.internal.policy.impl.Keyguard.PCW_UNLOCKED"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 711
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isCTCModel()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isMultiSIMDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 712
    const-string v0, "ACTION_CDMA_PINPUK_REQUIRE"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 713
    const-string v0, "ACTION_GSM_PINPUK_REQUIRE"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 717
    :cond_0
    const-string v0, "com.sec.android.FindingLostPhonePlus.SUBSCRIBE"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 718
    const-string v0, "com.sec.android.FindingLostPhonePlus.CANCEL"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 721
    const-string v0, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 722
    const-string v0, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 725
    const-string v0, "com.samsung.pen.INSERT"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 728
    const-string v0, "android.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 730
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 732
    sget-boolean v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->sIsVzwDevice:Z

    if-eqz v0, :cond_1

    .line 733
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/systemui/keyguard/KeyguardViewMediator$UsbConnectionBroadcastReceiver;

    invoke-direct {v1, p0, v4}, Lcom/android/systemui/keyguard/KeyguardViewMediator$UsbConnectionBroadcastReceiver;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;Lcom/android/systemui/keyguard/KeyguardViewMediator$1;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v5, "android.hardware.usb.action.USB_STATE"

    invoke-direct {v2, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 736
    :cond_1
    new-instance v0, Lcom/android/keyguard/KeyguardDisplayManager;

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/keyguard/KeyguardDisplayManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardDisplayManager:Lcom/android/keyguard/KeyguardDisplayManager;

    .line 738
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mAlarmManager:Landroid/app/AlarmManager;

    .line 740
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 741
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardBackupRestoreManager:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;

    .line 742
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardBackupRestoreManager:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->registerKeyguardBackupRestoreReceiver(Landroid/content/Context;)V

    .line 745
    new-instance v9, Landroid/content/IntentFilter;

    invoke-direct {v9}, Landroid/content/IntentFilter;-><init>()V

    .line 746
    .local v9, "smartUnlockFilter":Landroid/content/IntentFilter;
    const-string v0, "android.bluetooth.device.action.ACTION_OUT_OF_RANGE_ALERT"

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 747
    const-string v0, "android.bluetooth.device.action.ACTION_IN_RANGE_ALERT"

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 748
    const-string v0, "android.bluetooth.device.action.RSSI"

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 749
    const-string v0, "android.bluetooth.device.action.AUTO_LOCK_SERVICE"

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 751
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSmartUnlockReceiver:Landroid/content/BroadcastReceiver;

    const-string v2, "com.sec.android.permission.SMART_UNLOCK"

    invoke-virtual {v0, v1, v9, v2, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 755
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 756
    .local v3, "edmFilter":Landroid/content/IntentFilter;
    const-string v0, "secedm.src.android.app.enterprise.action.DO_KEYGUARD"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 757
    const-string v0, "android.app.action.DEVICE_POLICY_MANAGER_PASSWORD_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 758
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mEdmBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 761
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 762
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->setCurrentUser(I)V

    .line 765
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceProvisioned()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isFactoryMode()Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/PersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_c

    move v0, v11

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    .line 768
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, v1, v2, v4}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;-><init>(Landroid/content/Context;Lcom/android/keyguard/ViewMediatorCallback;Lcom/android/internal/widget/LockPatternUtils;)V

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 770
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 772
    .local v6, "cr":Landroid/content/ContentResolver;
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPM:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mScreenOn:Z

    .line 774
    new-instance v0, Landroid/media/SoundPool;

    invoke-direct {v0, v11, v11, v12}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockSounds:Landroid/media/SoundPool;

    .line 791
    const-string v10, "/system/media/audio/ui/Lock_none_effect.ogg"

    .line 792
    .local v10, "soundPath":Ljava/lang/String;
    if-eqz v10, :cond_3

    .line 793
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockSounds:Landroid/media/SoundPool;

    invoke-virtual {v0, v10, v11}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSecureLockSoundId:I

    .line 795
    :cond_3
    if-eqz v10, :cond_4

    iget v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSecureLockSoundId:I

    if-nez v0, :cond_5

    .line 796
    :cond_4
    const-string v0, "KeyguardViewMediator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to load secure lock sound from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    :cond_5
    const-string v10, "/system/media/audio/ui/Unlock_none_effect.ogg"

    .line 800
    if-eqz v10, :cond_6

    .line 801
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockSounds:Landroid/media/SoundPool;

    invoke-virtual {v0, v10, v11}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSecureUnlockSoundId:I

    .line 803
    :cond_6
    if-eqz v10, :cond_7

    iget v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSecureUnlockSoundId:I

    if-nez v0, :cond_8

    .line 804
    :cond_7
    const-string v0, "KeyguardViewMediator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to load secure unlock sound from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    :cond_8
    const-string v0, "trusted_sound"

    invoke-static {v6, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 809
    if-eqz v10, :cond_9

    .line 810
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockSounds:Landroid/media/SoundPool;

    invoke-virtual {v0, v10, v11}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mTrustedSoundId:I

    .line 812
    :cond_9
    if-eqz v10, :cond_a

    iget v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mTrustedSoundId:I

    if-nez v0, :cond_b

    .line 813
    :cond_a
    const-string v0, "KeyguardViewMediator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to load trusted sound from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    :cond_b
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    .line 818
    .local v8, "lockSoundDefaultAttenuation":I
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    int-to-float v2, v8

    const/high16 v4, 0x41a00000    # 20.0f

    div-float/2addr v2, v4

    float-to-double v4, v2

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockSoundVolume:F

    .line 820
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    const v1, 0x10a004b

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHideAnimation:Landroid/view/animation/Animation;

    .line 823
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/KeyguardEffectViewController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardEffectViewController:Lcom/android/keyguard/sec/KeyguardEffectViewController;

    .line 825
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardEffectViewController:Lcom/android/keyguard/sec/KeyguardEffectViewController;

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockSoundChangeCallback:Lcom/android/keyguard/sec/KeyguardEffectViewController$LockSoundChangeCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->setLockSoundChangeCallback(Lcom/android/keyguard/sec/KeyguardEffectViewController$LockSoundChangeCallback;)V

    .line 827
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/AdaptiveEventManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/AdaptiveEventManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mAdaptiveEventManager:Lcom/android/keyguard/sec/AdaptiveEventManager;

    .line 828
    return-void

    .end local v6    # "cr":Landroid/content/ContentResolver;
    .end local v8    # "lockSoundDefaultAttenuation":I
    .end local v10    # "soundPath":Ljava/lang/String;
    :cond_c
    move v0, v12

    .line 765
    goto/16 :goto_0
.end method

.method private showLocked(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "options"    # Landroid/os/Bundle;

    .prologue
    .line 1530
    const-string v1, "KeyguardViewMediator"

    const-string v2, "showLocked"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1532
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowKeyguardWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1533
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1534
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1535
    return-void
.end method

.method private updateActivityLockScreenState()V
    .locals 2

    .prologue
    .line 2008
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mOccluded:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Landroid/app/IActivityManager;->setLockScreenShown(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2011
    :goto_1
    return-void

    .line 2008
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 2009
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private verifyUnlockLocked()V
    .locals 2

    .prologue
    .line 1499
    const-string v0, "KeyguardViewMediator"

    const-string v1, "verifyUnlockLocked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1500
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1501
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .prologue
    .line 1481
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1482
    return-void
.end method

.method public doKeyguardTimeout(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "options"    # Landroid/os/Bundle;

    .prologue
    const/16 v2, 0xd

    .line 1328
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1329
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1330
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1331
    return-void
.end method

.method public getViewMediatorCallback()Lcom/android/keyguard/ViewMediatorCallback;
    .locals 1

    .prologue
    .line 2273
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    return-object v0
.end method

.method public handleDismiss()V
    .locals 1

    .prologue
    .line 1472
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mOccluded:Z

    if-nez v0, :cond_0

    .line 1473
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->dismissIfInsecure()V

    .line 1474
    sget-boolean v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->sIsVzwDevice:Z

    if-eqz v0, :cond_0

    .line 1475
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mNeedReenableAdbAfterUnlock:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->setAdbModeEnabled(Z)V

    .line 1478
    :cond_0
    return-void
.end method

.method public handleLunchPersoLock()V
    .locals 2

    .prologue
    .line 1563
    const-string v0, "KeyguardViewMediator"

    const-string v1, "handleLunchPersoLock"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1565
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1566
    const-string v0, "KeyguardViewMediator"

    const-string v1, "doKeyguardLocked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1567
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1568
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->doKeyguardLocked(Landroid/os/Bundle;)V

    .line 1573
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1574
    return-void

    .line 1570
    :cond_0
    const-string v0, "KeyguardViewMediator"

    const-string v1, "resetStateLocked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1571
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->resetStateLocked()V

    goto :goto_0
.end method

.method protected handleRemoveAdaptiveEvent(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    .line 2337
    const-string v1, "requestClass"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2338
    .local v0, "requestClass":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/sec/AdaptiveEventManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/AdaptiveEventManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/keyguard/sec/AdaptiveEventManager;->removeAdaptiveEvent(Ljava/lang/String;)V

    .line 2339
    return-void
.end method

.method protected handleSetAdaptiveEvent(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    .line 2342
    const-string v3, "requestClass"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2343
    .local v1, "requestClass":Ljava/lang/String;
    const-string v3, "smallView"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/widget/RemoteViews;

    .line 2344
    .local v2, "smallView":Landroid/widget/RemoteViews;
    const-string v3, "bigView"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/widget/RemoteViews;

    .line 2345
    .local v0, "bigView":Landroid/widget/RemoteViews;
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/sec/AdaptiveEventManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/AdaptiveEventManager;

    move-result-object v3

    invoke-virtual {v3, v1, v2, v0}, Lcom/android/keyguard/sec/AdaptiveEventManager;->setAdaptiveEvent(Ljava/lang/String;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V

    .line 2346
    return-void
.end method

.method protected handleUpdateAdaptiveEvent(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    .line 2330
    const-string v3, "requestClass"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2331
    .local v1, "requestClass":Ljava/lang/String;
    const-string v3, "smallView"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/widget/RemoteViews;

    .line 2332
    .local v2, "smallView":Landroid/widget/RemoteViews;
    const-string v3, "bigView"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/widget/RemoteViews;

    .line 2333
    .local v0, "bigView":Landroid/widget/RemoteViews;
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/sec/AdaptiveEventManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/AdaptiveEventManager;

    move-result-object v3

    invoke-virtual {v3, v1, v2, v0}, Lcom/android/keyguard/sec/AdaptiveEventManager;->updateAdaptiveEvent(Ljava/lang/String;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V

    .line 2334
    return-void
.end method

.method public isDismissable()Z
    .locals 1

    .prologue
    .line 2234
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardDonePending:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isSecure()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInputRestricted()Z
    .locals 1

    .prologue
    .line 1339
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mNeedToReshowWhenReenabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceProvisioned()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isLockedOrMissing(Lcom/android/internal/telephony/IccCardConstants$State;)Z
    .locals 6
    .param p1, "state"    # Lcom/android/internal/telephony/IccCardConstants$State;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1453
    const-string v3, "keyguard.no_require_sim"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_3

    move v0, v1

    .line 1454
    .local v0, "requireSim":Z
    :goto_0
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isCTCModel()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1455
    const-string v3, "KeyguardViewMediator"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "lockedOrMissing() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/android/keyguard/sec/MultiSimUtils;->getPINPUKRequest()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",state :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",requireSim :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1456
    invoke-static {}, Lcom/android/keyguard/sec/MultiSimUtils;->getPINPUKRequest()Z

    move-result v3

    if-nez v3, :cond_1

    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq p1, v3, :cond_0

    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne p1, v3, :cond_2

    :cond_0
    if-eqz v0, :cond_2

    :cond_1
    move v2, v1

    .line 1461
    :cond_2
    :goto_1
    return v2

    .end local v0    # "requireSim":Z
    :cond_3
    move v0, v2

    .line 1453
    goto :goto_0

    .line 1461
    .restart local v0    # "requireSim":Z
    :cond_4
    invoke-virtual {p1}, Lcom/android/internal/telephony/IccCardConstants$State;->isPinLocked()Z

    move-result v3

    if-nez v3, :cond_6

    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq p1, v3, :cond_5

    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne p1, v3, :cond_2

    :cond_5
    if-eqz v0, :cond_2

    :cond_6
    move v2, v1

    goto :goto_1
.end method

.method public isOccluded()Z
    .locals 1

    .prologue
    .line 1280
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mOccluded:Z

    return v0
.end method

.method public isSecure()Z
    .locals 1

    .prologue
    .line 1548
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSwipeLockShowingBeforeTimeout:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 1276
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    return v0
.end method

.method public isShowingAndNotOccluded()Z
    .locals 1

    .prologue
    .line 1287
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mOccluded:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public keyguardDone(ZZ)V
    .locals 6
    .param p1, "authenticated"    # Z
    .param p2, "wakeup"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1797
    const-string v3, "KeyguardViewMediator"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "keyguardDone("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1798
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isCTCModel()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isMultiSIMDevice()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1799
    invoke-static {}, Lcom/android/keyguard/sec/MultiSimUtils;->getPINPUKRequest()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1800
    invoke-static {v2}, Lcom/android/keyguard/sec/MultiSimUtils;->setPINPUKRequest(Z)V

    .line 1801
    invoke-static {v2}, Lcom/android/keyguard/sec/MultiSimUtils;->setPINPUKRequestMode(I)V

    .line 1804
    :cond_0
    const v3, 0x11170

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/EventLog;->writeEvent(II)I

    .line 1805
    monitor-enter p0

    .line 1806
    const/4 v3, 0x0

    :try_start_0
    iput-boolean v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardDonePending:Z

    .line 1807
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1808
    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x9

    if-eqz p1, :cond_1

    move v3, v1

    :goto_0
    if-eqz p2, :cond_2

    :goto_1
    invoke-virtual {v4, v5, v3, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 1809
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1810
    return-void

    .line 1807
    .end local v0    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_1
    move v3, v2

    .line 1808
    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method public onActivityDrawn()V
    .locals 2

    .prologue
    .line 2270
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2271
    return-void
.end method

.method public onBootCompleted()V
    .locals 1

    .prologue
    .line 2243
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dispatchBootCompleted()V

    .line 2244
    monitor-enter p0

    .line 2245
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mBootCompleted:Z

    .line 2246
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mBootSendUserPresent:Z

    if-eqz v0, :cond_0

    .line 2247
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->sendUserPresentBroadcast()V

    .line 2249
    :cond_0
    monitor-exit p0

    .line 2250
    return-void

    .line 2249
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onDreamingStarted()V
    .locals 1

    .prologue
    .line 1135
    monitor-enter p0

    .line 1136
    :try_start_0
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mScreenOn:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1138
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->doKeyguardLaterLocked(I)V

    .line 1141
    :cond_0
    monitor-exit p0

    .line 1142
    return-void

    .line 1141
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onDreamingStopped()V
    .locals 1

    .prologue
    .line 1148
    monitor-enter p0

    .line 1149
    :try_start_0
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mScreenOn:Z

    if-eqz v0, :cond_0

    .line 1150
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->cancelDoKeyguardLaterLocked()V

    .line 1152
    :cond_0
    monitor-exit p0

    .line 1153
    return-void

    .line 1152
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onScreenTurnedOff(I)V
    .locals 9
    .param p1, "why"    # I

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 888
    monitor-enter p0

    .line 890
    const/4 v4, 0x0

    :try_start_0
    iput-boolean v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mScreenOn:Z

    .line 891
    const-string v4, "KeyguardViewMediator"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onScreenTurnedOff("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardDonePending:Z

    .line 894
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHideAnimationRun:Z

    .line 896
    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->getInstanceIfExists(Landroid/content/Context;)Lcom/android/keyguard/sec/KeyguardEffectViewController;

    move-result-object v1

    .line 897
    .local v1, "effectView":Lcom/android/keyguard/sec/KeyguardEffectViewController;
    if-eqz v1, :cond_0

    .line 898
    invoke-virtual {v1}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->changeWallpaperByScreenOff()V

    .line 905
    :cond_0
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->useIndependentLockTimeout()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 909
    .local v2, "lockImmediately":Z
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->notifyScreenOffLocked()V

    .line 911
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mExitSecureCallback:Lcom/android/internal/policy/IKeyguardExitCallback;

    if-eqz v3, :cond_5

    .line 912
    const-string v3, "KeyguardViewMediator"

    const-string v4, "pending exit secure callback cancelled"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 914
    :try_start_1
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mExitSecureCallback:Lcom/android/internal/policy/IKeyguardExitCallback;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lcom/android/internal/policy/IKeyguardExitCallback;->onKeyguardExitResult(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 918
    :goto_1
    const/4 v3, 0x0

    :try_start_2
    iput-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mExitSecureCallback:Lcom/android/internal/policy/IKeyguardExitCallback;

    .line 919
    iget-boolean v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mExternallyEnabled:Z

    if-nez v3, :cond_2

    .line 920
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->hideLocked()V

    .line 941
    :cond_2
    :goto_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 942
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dispatchScreenTurndOff(I)V

    .line 943
    return-void

    .line 905
    .end local v2    # "lockImmediately":Z
    :cond_3
    :try_start_3
    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->getPowerButtonInstantlyLocks()Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v4

    if-nez v4, :cond_1

    :cond_4
    move v2, v3

    goto :goto_0

    .line 915
    .restart local v2    # "lockImmediately":Z
    :catch_0
    move-exception v0

    .line 916
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "KeyguardViewMediator"

    const-string v4, "Failed to call onKeyguardExitResult(false)"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 941
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "effectView":Lcom/android/keyguard/sec/KeyguardEffectViewController;
    .end local v2    # "lockImmediately":Z
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .line 922
    .restart local v1    # "effectView":Lcom/android/keyguard/sec/KeyguardEffectViewController;
    .restart local v2    # "lockImmediately":Z
    :cond_5
    :try_start_4
    iget-boolean v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    if-eqz v3, :cond_6

    sget-boolean v3, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSwipeLockShowingBeforeTimeout:Z

    if-nez v3, :cond_6

    .line 923
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->resetStateLocked()V

    goto :goto_2

    .line 924
    :cond_6
    if-eq p1, v8, :cond_7

    if-ne p1, v7, :cond_9

    if-nez v2, :cond_9

    .line 926
    :cond_7
    sget-boolean v3, Lcom/android/systemui/keyguard/KeyguardViewMediator;->sIsVzwDevice:Z

    if-eqz v3, :cond_8

    if-ne p1, v8, :cond_8

    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getPhoneState()I

    move-result v3

    if-ne v3, v7, :cond_8

    .line 929
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mScreenOffByProxSensor:Z

    goto :goto_2

    .line 932
    :cond_8
    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->doKeyguardLaterLocked(I)V

    goto :goto_2

    .line 935
    :cond_9
    const/4 v3, 0x4

    if-ne p1, v3, :cond_a

    .line 937
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mScreenOffByProxSensor:Z

    goto :goto_2

    .line 939
    :cond_a
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->doKeyguardLocked(Landroid/os/Bundle;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2
.end method

.method public onScreenTurnedOn(Lcom/android/internal/policy/IKeyguardShowCallback;)V
    .locals 3
    .param p1, "callback"    # Lcom/android/internal/policy/IKeyguardShowCallback;

    .prologue
    .line 1103
    monitor-enter p0

    .line 1105
    :try_start_0
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSystemReady:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isSmartUnlockEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1106
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->requestBluetoothRSSI()V

    .line 1109
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mScreenOn:Z

    .line 1110
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mScreenOffByProxSensor:Z

    .line 1111
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->cancelDoKeyguardLaterLocked()V

    .line 1112
    const-string v0, "KeyguardViewMediator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onScreenTurnedOn, seq = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDelayedShowingSequence:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1113
    if-eqz p1, :cond_1

    .line 1114
    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->notifyScreenOnLocked(Lcom/android/internal/policy/IKeyguardShowCallback;)V

    .line 1116
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1117
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dispatchScreenTurnedOn()V

    .line 1118
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->maybeSendUserPresentBroadcast()V

    .line 1119
    return-void

    .line 1116
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onSystemReady()V
    .locals 4

    .prologue
    .line 840
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    const-string v2, "search"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/SearchManager;

    iput-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSearchManager:Landroid/app/SearchManager;

    .line 841
    monitor-enter p0

    .line 842
    :try_start_0
    const-string v1, "KeyguardViewMediator"

    const-string v2, "onSystemReady"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isCTCModel()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isMultiSIMDevice()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 845
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "SIM_MANAGE_DONE"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 847
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSystemReady:Z

    .line 848
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 859
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->usingBiometricWeak()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isBiometricWeakInstalled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 861
    const-string v1, "KeyguardViewMediator"

    const-string v2, "suppressing biometric unlock during boot"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setAlternateUnlockEnabled(Z)V

    .line 872
    :goto_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 873
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "fromOnSystemReady"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 874
    invoke-direct {p0, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->doKeyguardLocked(Landroid/os/Bundle;)V

    .line 876
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 879
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->maybeSendUserPresentBroadcast()V

    .line 880
    return-void

    .line 864
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setAlternateUnlockEnabled(Z)V

    goto :goto_0

    .line 876
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public registerStatusBar(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;Lcom/android/systemui/statusbar/phone/ScrimController;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;
    .locals 1
    .param p1, "phoneStatusBar"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "statusBarWindowManager"    # Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;
    .param p4, "scrimController"    # Lcom/android/systemui/statusbar/phone/ScrimController;

    .prologue
    .line 2255
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->registerStatusBar(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;Lcom/android/systemui/statusbar/phone/ScrimController;)V

    .line 2258
    iput-object p3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    .line 2260
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    return-object v0
.end method

.method public removeAdaptiveEvent(Ljava/lang/String;)V
    .locals 4
    .param p1, "requestClass"    # Ljava/lang/String;

    .prologue
    .line 2310
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2311
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "requestClass"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2312
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x15

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 2313
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2314
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2315
    return-void
.end method

.method public requestBluetoothRSSI()V
    .locals 3

    .prologue
    .line 2466
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mWearabledevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_0

    .line 2467
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mWearabledevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->readRawRssi()Z

    .line 2468
    const-string v0, "KeyguardViewMediator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestBluetoothRSSI mWearabledevice : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mWearabledevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2470
    :cond_0
    return-void
.end method

.method public setAdaptiveEvent(Ljava/lang/String;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V
    .locals 4
    .param p1, "requestClass"    # Ljava/lang/String;
    .param p2, "smallView"    # Landroid/widget/RemoteViews;
    .param p3, "bigView"    # Landroid/widget/RemoteViews;

    .prologue
    .line 2299
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2300
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "requestClass"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2301
    const-string v2, "smallView"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2302
    const-string v2, "bigView"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2303
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x14

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 2304
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2305
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2306
    return-void
.end method

.method public setBendedPendingIntent(Landroid/app/PendingIntent;Landroid/content/Intent;)V
    .locals 4
    .param p1, "p"    # Landroid/app/PendingIntent;
    .param p2, "fillInIntent"    # Landroid/content/Intent;

    .prologue
    .line 2591
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2592
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "PI"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2593
    const-string v2, "FI"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2596
    iget-boolean v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mOccluded:Z

    if-eqz v2, :cond_1

    .line 2597
    invoke-virtual {v0}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    iput-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mBendedBundle:Landroid/os/Bundle;

    .line 2605
    :cond_0
    :goto_0
    return-void

    .line 2598
    :cond_1
    iget-boolean v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    if-eqz v2, :cond_0

    .line 2599
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mBendedBundle:Landroid/os/Bundle;

    .line 2600
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x19

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 2601
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2602
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public setCurrentUser(I)V
    .locals 1
    .param p1, "newUserId"    # I

    .prologue
    .line 1559
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->setCurrentUser(I)V

    .line 1560
    return-void
.end method

.method public setKeyguardEnabled(Z)V
    .locals 6
    .param p1, "enabled"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1161
    monitor-enter p0

    .line 1162
    :try_start_0
    const-string v3, "KeyguardViewMediator"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setKeyguardEnabled("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1165
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "vr_keyguard_control"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_1

    .line 1167
    .local v1, "hmtConnected":Z
    :goto_0
    if-eqz v1, :cond_2

    .line 1181
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mExternallyEnabled:Z

    .line 1183
    if-nez p1, :cond_7

    iget-boolean v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    if-eqz v2, :cond_7

    .line 1184
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mExitSecureCallback:Lcom/android/internal/policy/IKeyguardExitCallback;

    if-eqz v2, :cond_5

    .line 1185
    const-string v2, "KeyguardViewMediator"

    const-string v3, "in process of verifyUnlock request, ignoring"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1188
    monitor-exit p0

    .line 1232
    :goto_1
    return-void

    .end local v1    # "hmtConnected":Z
    :cond_1
    move v1, v2

    .line 1165
    goto :goto_0

    .line 1171
    .restart local v1    # "hmtConnected":Z
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1174
    :cond_4
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mExternallyEnabled:Z

    .line 1175
    monitor-exit p0

    goto :goto_1

    .line 1231
    .end local v1    # "hmtConnected":Z
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1192
    .restart local v1    # "hmtConnected":Z
    :cond_5
    :try_start_1
    const-string v2, "KeyguardViewMediator"

    const-string v3, "remembering to reshow, hiding keyguard, disabling status bar expansion"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1194
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mNeedToReshowWhenReenabled:Z

    .line 1195
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->hideLocked()V

    .line 1231
    :cond_6
    :goto_2
    monitor-exit p0

    goto :goto_1

    .line 1196
    :cond_7
    if-eqz p1, :cond_6

    iget-boolean v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mNeedToReshowWhenReenabled:Z

    if-eqz v2, :cond_6

    .line 1198
    const-string v2, "KeyguardViewMediator"

    const-string v3, "previously hidden, reshowing, reenabling status bar expansion"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1200
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mNeedToReshowWhenReenabled:Z

    .line 1202
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mExitSecureCallback:Lcom/android/internal/policy/IKeyguardExitCallback;

    if-eqz v2, :cond_8

    .line 1203
    const-string v2, "KeyguardViewMediator"

    const-string v3, "onKeyguardExitResult(false), resetting"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1205
    :try_start_2
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mExitSecureCallback:Lcom/android/internal/policy/IKeyguardExitCallback;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/android/internal/policy/IKeyguardExitCallback;->onKeyguardExitResult(Z)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1209
    :goto_3
    const/4 v2, 0x0

    :try_start_3
    iput-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mExitSecureCallback:Lcom/android/internal/policy/IKeyguardExitCallback;

    .line 1210
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->resetStateLocked()V

    goto :goto_2

    .line 1206
    :catch_0
    move-exception v0

    .line 1207
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "KeyguardViewMediator"

    const-string v3, "Failed to call onKeyguardExitResult(false)"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 1212
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_8
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSuppressNextUnLockSound:Z

    .line 1213
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->showLocked(Landroid/os/Bundle;)V

    .line 1218
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mWaitingUntilKeyguardVisible:Z

    .line 1219
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xa

    const-wide/16 v4, 0x7d0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1220
    const-string v2, "KeyguardViewMediator"

    const-string v3, "waiting until mWaitingUntilKeyguardVisible is false"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1221
    :goto_4
    iget-boolean v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mWaitingUntilKeyguardVisible:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v2, :cond_9

    .line 1223
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_4

    .line 1224
    :catch_1
    move-exception v0

    .line 1225
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    goto :goto_4

    .line 1228
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_9
    const-string v2, "KeyguardViewMediator"

    const-string v3, "done waiting for mWaitingUntilKeyguardVisible"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2
.end method

.method public setOccluded(Z)V
    .locals 7
    .param p1, "isOccluded"    # Z

    .prologue
    const/16 v6, 0xc

    const/4 v3, 0x0

    .line 1294
    const-string v2, "KeyguardViewMediator"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setOccluded "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1295
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 1296
    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v4, v6, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 1297
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1300
    iget-boolean v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    if-eqz v2, :cond_0

    if-nez p1, :cond_0

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mBendedBundle:Landroid/os/Bundle;

    if-eqz v2, :cond_0

    .line 1301
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x19

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1302
    .local v1, "msg2":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mBendedBundle:Landroid/os/Bundle;

    invoke-virtual {v2}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1303
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1304
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mBendedBundle:Landroid/os/Bundle;

    .line 1307
    .end local v1    # "msg2":Landroid/os/Message;
    :cond_0
    return-void

    .end local v0    # "msg":Landroid/os/Message;
    :cond_1
    move v2, v3

    .line 1296
    goto :goto_0
.end method

.method public start()V
    .locals 1

    .prologue
    .line 832
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->setup()V

    .line 833
    const-class v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {p0, v0, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->putComponent(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 834
    return-void
.end method

.method public startKeyguardExitAnimation(JJ)V
    .locals 9
    .param p1, "startTime"    # J
    .param p3, "fadeoutDuration"    # J

    .prologue
    .line 2264
    iget-object v7, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/16 v8, 0x12

    new-instance v1, Lcom/android/systemui/keyguard/KeyguardViewMediator$StartKeyguardExitAnimParams;

    const/4 v6, 0x0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/keyguard/KeyguardViewMediator$StartKeyguardExitAnimParams;-><init>(JJLcom/android/systemui/keyguard/KeyguardViewMediator$1;)V

    invoke-virtual {v7, v8, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2266
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2267
    return-void
.end method

.method public updateAdaptiveEvent(Ljava/lang/String;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V
    .locals 5
    .param p1, "requestClass"    # Ljava/lang/String;
    .param p2, "smallView"    # Landroid/widget/RemoteViews;
    .param p3, "bigView"    # Landroid/widget/RemoteViews;

    .prologue
    .line 2319
    const-string v2, "KeyguardViewMediator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateAdaptiveEvent() : requestClass= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , smallView= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2320
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2321
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "requestClass"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2322
    const-string v2, "smallView"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2323
    const-string v2, "bigView"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2324
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x16

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 2325
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2326
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2327
    return-void
.end method

.method public userActivity()V
    .locals 4

    .prologue
    .line 694
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPM:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 695
    return-void
.end method

.method public verifyUnlock(Lcom/android/internal/policy/IKeyguardExitCallback;)V
    .locals 3
    .param p1, "callback"    # Lcom/android/internal/policy/IKeyguardExitCallback;

    .prologue
    .line 1238
    monitor-enter p0

    .line 1239
    :try_start_0
    const-string v1, "KeyguardViewMediator"

    const-string v2, "verifyUnlock"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1240
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceProvisioned()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1242
    const-string v1, "KeyguardViewMediator"

    const-string v2, "ignoring because device isn\'t provisioned"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1244
    const/4 v1, 0x0

    :try_start_1
    invoke-interface {p1, v1}, Lcom/android/internal/policy/IKeyguardExitCallback;->onKeyguardExitResult(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1269
    :goto_0
    :try_start_2
    monitor-exit p0

    .line 1270
    return-void

    .line 1245
    :catch_0
    move-exception v0

    .line 1246
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "KeyguardViewMediator"

    const-string v2, "Failed to call onKeyguardExitResult(false)"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1269
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 1248
    :cond_0
    :try_start_3
    iget-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mExternallyEnabled:Z

    if-eqz v1, :cond_1

    .line 1252
    const-string v1, "KeyguardViewMediator"

    const-string v2, "verifyUnlock called when not externally disabled"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1254
    const/4 v1, 0x0

    :try_start_4
    invoke-interface {p1, v1}, Lcom/android/internal/policy/IKeyguardExitCallback;->onKeyguardExitResult(Z)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 1255
    :catch_1
    move-exception v0

    .line 1256
    .restart local v0    # "e":Landroid/os/RemoteException;
    :try_start_5
    const-string v1, "KeyguardViewMediator"

    const-string v2, "Failed to call onKeyguardExitResult(false)"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1258
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mExitSecureCallback:Lcom/android/internal/policy/IKeyguardExitCallback;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v1, :cond_2

    .line 1261
    const/4 v1, 0x0

    :try_start_6
    invoke-interface {p1, v1}, Lcom/android/internal/policy/IKeyguardExitCallback;->onKeyguardExitResult(Z)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    .line 1262
    :catch_2
    move-exception v0

    .line 1263
    .restart local v0    # "e":Landroid/os/RemoteException;
    :try_start_7
    const-string v1, "KeyguardViewMediator"

    const-string v2, "Failed to call onKeyguardExitResult(false)"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1266
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mExitSecureCallback:Lcom/android/internal/policy/IKeyguardExitCallback;

    .line 1267
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->verifyUnlockLocked()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_0
.end method
