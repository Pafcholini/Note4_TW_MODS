.class public Lcom/android/keyguard/sec/KeyguardSPassUnlockView;
.super Landroid/widget/LinearLayout;
.source "KeyguardSPassUnlockView.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;
.implements Lcom/android/keyguard/BiometricSensorUnlock;
.implements Lcom/android/keyguard/KeyguardSecurityView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/sec/KeyguardSPassUnlockView$AccountAnalyzer;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final DEBUG_ANIMATION:Z = false

.field private static final OVERLAY_PREF_KEY:Ljava/lang/String; = "KeyguardSPassHelpOverlayGuide"

.field private static final POPUP_PREF_KEY:Ljava/lang/String; = "KeyguardSPassPopupGuideInt"

.field private static final TAG:Ljava/lang/String; = "KeyguardSPassUnlock"

.field private static final VIEW_TAG:Ljava/lang/String; = "KeyguardSPassView"

.field private static mAnimationBottomMarginAttributionEnabled:I

.field private static mAnimationBottomMarginNormal:I

.field private static mAnimationView:Landroid/widget/ImageView;

.field public static mEnableFallback:Z

.field private static mErrorAnimation:Landroid/graphics/drawable/AnimationDrawable;

.field private static mSPassEcaButtonTop:I

.field private static mStatusImage:Landroid/widget/ImageView;

.field private static mStatusText:Landroid/widget/TextView;


# instance fields
.field private final FAILED_STATUS:I

.field private final FINGER_PRINT_SERVICE_STARTED_ACTION:Ljava/lang/String;

.field private final IDLE_ANIM_STATUS:I

.field private final IDLE_STATUS:I

.field private final MSG_ADJUST_ANIMATION_VIEW_ATTRIBUTION:I

.field private final MSG_ATTRIBUTION_ENABLE:I

.field private final MSG_CANCEL:I

.field private final MSG_IDENTIFY:I

.field private final MSG_POKE_WAKELOCK:I

.field private final MSG_READY:I

.field private final MSG_REPORT_FAILED_ATTEMPT:I

.field private final MSG_RESET_ANIMATION:I

.field private final MSG_UNLOCK:I

.field private final PASSED_STATUS:I

.field private final SCANNING_STATUS:I

.field private final SCREEN_TIMEOUT:I

.field private final SUCCEED_STATUS:I

.field private final WAITING_STATUS:I

.field private mAccountButton:Landroid/widget/Button;

.field private mAffordanceAnim:Landroid/view/animation/Animation;

.field private mAffordanceAnimListner:Landroid/view/animation/Animation$AnimationListener;

.field private mAnimationBottomMargin:F

.field private mAnimationContainer:Landroid/widget/FrameLayout;

.field private mAttributionView:Landroid/view/View;

.field private mAttributionViewEnableHandlerId:I

.field private mBottomAreaNormal:Landroid/view/View;

.field private mBouncerFrame:Landroid/graphics/drawable/Drawable;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mBroadcastRegistered:Z

.field private mCancelButton:Landroid/widget/Button;

.field private mContext:Landroid/content/Context;

.field private mCountdownTimer:Landroid/os/CountDownTimer;

.field private mCurrentOrientation:I

.field private mDisplay:Landroid/view/Display;

.field private mEcaView:Landroid/view/View;

.field private mExpiredTime:J

.field private mFadeOutAnim:Landroid/view/animation/Animation;

.field private mFadeOutAnimListner:Landroid/view/animation/Animation$AnimationListener;

.field private mFingerprintClient:Lcom/samsung/android/fingerprint/IFingerprintClient;

.field private mFingerprintViewHeight:F

.field private mFm:Lcom/samsung/android/fingerprint/FingerprintManager;

.field private mHandler:Landroid/os/Handler;

.field private mImageQuality:I

.field private mIsPermLocked:Z

.field private mIsRegisteredClient:Z

.field private mIsReverseDevice:Z

.field private volatile mIsRunning:Z

.field private mIsTProject:Z

.field private mIsTalkbackModeOn:Z

.field private mIsVerificationFailed:Z

.field private mKeyguardMessageBottomArea:Lcom/android/keyguard/KeyguardMessageArea;

.field private mKeyguardScreenCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mOrientationEventListener:Landroid/view/OrientationEventListener;

.field private mOrientationHandler:Landroid/os/Handler;

.field private mPopupDismissCallback:Lcom/android/keyguard/sec/SecPopupManager$PopupDismissCallback;

.field private mRootLayout:Landroid/widget/FrameLayout;

.field private mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

.field private mStandbyAnim:Landroid/view/animation/Animation;

.field private mState:Z

.field private mTTS:Landroid/speech/tts/TextToSpeech;

.field private mToken:Landroid/os/IBinder;

.field private mTotalFailedSPassAttempts:I

.field mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private remainText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 190
    sput v0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mAnimationBottomMarginAttributionEnabled:I

    .line 191
    sput v0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mAnimationBottomMarginNormal:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 258
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 259
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 262
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 130
    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mAttributionView:Landroid/view/View;

    .line 131
    iput v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mAttributionViewEnableHandlerId:I

    .line 141
    iput v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mTotalFailedSPassAttempts:I

    .line 142
    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 143
    iput-boolean v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mIsPermLocked:Z

    .line 148
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mCurrentOrientation:I

    .line 159
    const/16 v1, 0x458

    iput v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->MSG_UNLOCK:I

    .line 160
    const/16 v1, 0x459

    iput v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->MSG_CANCEL:I

    .line 161
    const/16 v1, 0x45a

    iput v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->MSG_REPORT_FAILED_ATTEMPT:I

    .line 162
    const/16 v1, 0x45b

    iput v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->MSG_POKE_WAKELOCK:I

    .line 163
    const/16 v1, 0x45c

    iput v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->MSG_READY:I

    .line 164
    const/16 v1, 0x45d

    iput v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->MSG_IDENTIFY:I

    .line 165
    const/16 v1, 0x45e

    iput v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->MSG_ATTRIBUTION_ENABLE:I

    .line 166
    const/16 v1, 0x45f

    iput v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->MSG_RESET_ANIMATION:I

    .line 167
    const/16 v1, 0x460

    iput v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->MSG_ADJUST_ANIMATION_VIEW_ATTRIBUTION:I

    .line 169
    iput v3, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->IDLE_STATUS:I

    .line 170
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->SCANNING_STATUS:I

    .line 171
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->FAILED_STATUS:I

    .line 172
    const/4 v1, 0x4

    iput v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->PASSED_STATUS:I

    .line 173
    const/4 v1, 0x5

    iput v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->WAITING_STATUS:I

    .line 174
    const/4 v1, 0x6

    iput v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->SUCCEED_STATUS:I

    .line 175
    const/4 v1, 0x7

    iput v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->IDLE_ANIM_STATUS:I

    .line 182
    const/16 v1, 0x7530

    iput v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->SCREEN_TIMEOUT:I

    .line 183
    iput-boolean v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mIsVerificationFailed:Z

    .line 185
    iput-boolean v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mIsTProject:Z

    .line 186
    iput-boolean v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mIsReverseDevice:Z

    .line 187
    iput-boolean v3, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mState:Z

    .line 195
    new-instance v1, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$1;

    invoke-direct {v1, p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$1;-><init>(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)V

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mFingerprintClient:Lcom/samsung/android/fingerprint/IFingerprintClient;

    .line 206
    new-instance v1, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$2;

    invoke-direct {v1, p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$2;-><init>(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)V

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mAffordanceAnimListner:Landroid/view/animation/Animation$AnimationListener;

    .line 226
    new-instance v1, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$3;

    invoke-direct {v1, p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$3;-><init>(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)V

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mFadeOutAnimListner:Landroid/view/animation/Animation$AnimationListener;

    .line 243
    new-instance v1, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$4;

    invoke-direct {v1, p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$4;-><init>(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)V

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mPopupDismissCallback:Lcom/android/keyguard/sec/SecPopupManager$PopupDismissCallback;

    .line 787
    const-string v1, "com.samsung.android.fingerprint.action.SERVICE_STARTED"

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->FINGER_PRINT_SERVICE_STARTED_ACTION:Ljava/lang/String;

    .line 791
    new-instance v1, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$6;

    invoke-direct {v1, p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$6;-><init>(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)V

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1041
    new-instance v1, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$7;

    invoke-direct {v1, p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$7;-><init>(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)V

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mOrientationHandler:Landroid/os/Handler;

    .line 1272
    new-instance v1, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$10;

    invoke-direct {v1, p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$10;-><init>(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)V

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 263
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mContext:Landroid/content/Context;

    .line 264
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 265
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mHandler:Landroid/os/Handler;

    .line 266
    new-instance v1, Landroid/speech/tts/TextToSpeech;

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p0}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mTTS:Landroid/speech/tts/TextToSpeech;

    .line 268
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "enabled_accessibility_services"

    const/4 v3, -0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 270
    .local v0, "accesibilityService":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 271
    const-string v1, "(?i).*talkback.*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mIsTalkbackModeOn:Z

    .line 273
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 97
    sget-object v0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mAnimationView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    .prologue
    .line 97
    iget v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mCurrentOrientation:I

    return v0
.end method

.method static synthetic access$1100(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)Lcom/android/keyguard/sec/SecPopupManager$PopupDismissCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mPopupDismissCallback:Lcom/android/keyguard/sec/SecPopupManager$PopupDismissCallback;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$1500()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 97
    sget-object v0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mStatusText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->remainText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardSPassUnlockView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->remainText:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mState:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardSPassUnlockView;
    .param p1, "x1"    # I

    .prologue
    .line 97
    iput p1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mTotalFailedSPassAttempts:I

    return p1
.end method

.method static synthetic access$1900(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)Landroid/os/CountDownTimer;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mCountdownTimer:Landroid/os/CountDownTimer;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardSPassUnlockView;
    .param p1, "x1"    # Landroid/os/CountDownTimer;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mCountdownTimer:Landroid/os/CountDownTimer;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)Landroid/view/animation/Animation;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mStandbyAnim:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->maybeStartBiometricUnlock()V

    return-void
.end method

.method static synthetic access$2102(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardSPassUnlockView;
    .param p1, "x1"    # Z

    .prologue
    .line 97
    iput-boolean p1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mIsPermLocked:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardSPassUnlockView;
    .param p1, "x1"    # I

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->startAnimation(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mEcaView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->updateOrientation()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->updateAnimationView()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)Lcom/android/keyguard/KeyguardSecurityCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mKeyguardScreenCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->isDeviceDisabledForMaxFailedAttempt()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->disableDevicePermanently()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mIsTProject:Z

    return v0
.end method

.method private adjustMagazineCardLayout()V
    .locals 2

    .prologue
    .line 1037
    const-string v0, "KeyguardSPassView"

    const-string v1, "magazine card is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1039
    return-void
.end method

.method private createStandbyAnimation()V
    .locals 2

    .prologue
    .line 1572
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/keyguard/R$anim;->keyguard_spass_standby_animation:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mStandbyAnim:Landroid/view/animation/Animation;

    .line 1573
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/keyguard/R$anim;->keyguard_spass_affordance_animation:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mAffordanceAnim:Landroid/view/animation/Animation;

    .line 1574
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mAffordanceAnim:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/interpolator/SineEaseInOut;

    invoke-direct {v1}, Landroid/view/animation/interpolator/SineEaseInOut;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1575
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/keyguard/R$anim;->keyguard_spass_fadeout_animation:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mFadeOutAnim:Landroid/view/animation/Animation;

    .line 1576
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mFadeOutAnim:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/interpolator/SineEaseInOut;

    invoke-direct {v1}, Landroid/view/animation/interpolator/SineEaseInOut;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1577
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mFadeOutAnim:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mFadeOutAnimListner:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1578
    return-void
.end method

.method private disableDevicePermanently()V
    .locals 2

    .prologue
    .line 1436
    const-string v0, "KeyguardSPassUnlock"

    const-string v1, "disableDevicePermanently start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1437
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mCancelButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 1438
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mCancelButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1440
    :cond_0
    sget-object v0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mStatusText:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 1441
    sget-object v0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mStatusText:Landroid/widget/TextView;

    sget v1, Lcom/android/keyguard/R$string;->device_disabled:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1442
    :cond_1
    return-void
.end method

.method private initializeSPassUnlockView()V
    .locals 2

    .prologue
    .line 1191
    const-string v0, "KeyguardSPassView"

    const-string v1, "initializeSPassUnlockView()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1193
    sget v0, Lcom/android/keyguard/R$id;->kg_spass_status:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sput-object v0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mStatusText:Landroid/widget/TextView;

    .line 1194
    sget v0, Lcom/android/keyguard/R$id;->kg_spass_status_image:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sput-object v0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mStatusImage:Landroid/widget/ImageView;

    .line 1195
    sget v0, Lcom/android/keyguard/R$id;->kg_spass_animation:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sput-object v0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mAnimationView:Landroid/widget/ImageView;

    .line 1198
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$dimen;->kg_spass_unlock_icon_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mFingerprintViewHeight:F

    .line 1199
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$dimen;->kg_spass_unlock_animation_margin_bottom:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mAnimationBottomMargin:F

    .line 1200
    sget-object v0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mStatusText:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1203
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->isDeviceDisabledForMaxFailedAttempt()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1204
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->disableDevicePermanently()V

    .line 1205
    sget v0, Lcom/android/keyguard/R$id;->kg_spass_animation_container:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mAnimationContainer:Landroid/widget/FrameLayout;

    .line 1209
    :cond_0
    sget v0, Lcom/android/keyguard/R$id;->forgot_password_button:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mAccountButton:Landroid/widget/Button;

    .line 1210
    sget v0, Lcom/android/keyguard/R$id;->kg_alternative_password:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mCancelButton:Landroid/widget/Button;

    .line 1212
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mAccountButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 1213
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mAccountButton:Landroid/widget/Button;

    sget v1, Lcom/android/keyguard/R$string;->kg_forgot_spass_button_text:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 1214
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mAccountButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$8;

    invoke-direct {v1, p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$8;-><init>(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1222
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mCancelButton:Landroid/widget/Button;

    if-eqz v0, :cond_2

    .line 1223
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mCancelButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$9;

    invoke-direct {v1, p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$9;-><init>(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1236
    :cond_2
    return-void
.end method

.method private isDeviceDisabledForMaxFailedAttempt()Z
    .locals 7

    .prologue
    .line 1416
    const/4 v2, 0x0

    .line 1417
    .local v2, "lDeviceDisableForMaxFailedAttempt":Z
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "enterprise_policy"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 1420
    .local v0, "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    if-eqz v0, :cond_0

    .line 1421
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getPasswordPolicy()Landroid/app/enterprise/PasswordPolicy;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/enterprise/PasswordPolicy;->getMaximumFailedPasswordsForDeviceDisable()I

    move-result v3

    .line 1422
    .local v3, "lMaxNumFailedAttemptForDisable":I
    const-string v4, "KeyguardSPassUnlock"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "max failed attempt for device disable :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1424
    if-lez v3, :cond_0

    .line 1425
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getCurrentFailedPasswordAttempts()I

    move-result v1

    .line 1426
    .local v1, "lCurNumFailedAttempts":I
    const-string v4, "KeyguardSPassUnlock"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "current failed attempt for device  :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1427
    if-lt v1, v3, :cond_1

    const/4 v2, 0x1

    .line 1431
    .end local v1    # "lCurNumFailedAttempts":I
    .end local v3    # "lMaxNumFailedAttemptForDisable":I
    :cond_0
    :goto_0
    const-string v4, "KeyguardSPassUnlock"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isDeviceDisabledForMaxFailedAttempt return :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1432
    return v2

    .line 1427
    .restart local v1    # "lCurNumFailedAttempts":I
    .restart local v3    # "lMaxNumFailedAttemptForDisable":I
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private maybeEnableFallback(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1342
    new-instance v0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$AccountAnalyzer;

    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$AccountAnalyzer;-><init>(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;Landroid/accounts/AccountManager;Lcom/android/keyguard/sec/KeyguardSPassUnlockView$1;)V

    .line 1343
    .local v0, "accountAnalyzer":Lcom/android/keyguard/sec/KeyguardSPassUnlockView$AccountAnalyzer;
    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$AccountAnalyzer;->start()V

    .line 1344
    return-void
.end method

.method private maybeStartBiometricUnlock()V
    .locals 8

    .prologue
    .line 1244
    iget-object v5, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline()J

    move-result-wide v0

    .line 1245
    .local v0, "deadline":J
    const-wide/16 v6, 0x0

    cmp-long v5, v0, v6

    if-eqz v5, :cond_0

    .line 1246
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->stop()Z

    .line 1270
    :goto_0
    return-void

    .line 1249
    :cond_0
    const-string v5, "KeyguardSPassUnlock"

    const-string v6, "maybeStartBiometricUnlock()"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1250
    iget-object v5, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    .line 1251
    .local v3, "monitor":Lcom/android/keyguard/KeyguardUpdateMonitor;
    iget-object v5, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mContext:Landroid/content/Context;

    const-string v6, "power"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    .line 1255
    .local v4, "powerManager":Landroid/os/PowerManager;
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->isDeviceDisabledForMaxFailedAttempt()Z

    move-result v2

    .line 1256
    .local v2, "lDeviceDisableForMaxFailedAttempt":Z
    const/4 v5, 0x1

    if-ne v5, v2, :cond_1

    .line 1257
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->disableDevicePermanently()V

    goto :goto_0

    .line 1265
    :cond_1
    invoke-virtual {v4}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v5

    if-nez v5, :cond_2

    .line 1266
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->stop()Z

    goto :goto_0

    .line 1269
    :cond_2
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->start()Z

    goto :goto_0
.end method

.method private pokeWakelock()V
    .locals 3

    .prologue
    .line 688
    const-string v1, "KeyguardSPassUnlock"

    const-string v2, "pokeWakelock()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x45b

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 690
    .local v0, "message":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 691
    return-void
.end method

.method private registerBroadcastReceiver()V
    .locals 3

    .prologue
    .line 801
    iget-boolean v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mBroadcastRegistered:Z

    if-nez v1, :cond_0

    .line 802
    const-string v1, "KeyguardSPassUnlock"

    const-string v2, "registerBroadcastReceiver"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 804
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.samsung.android.fingerprint.action.SERVICE_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 805
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 806
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mBroadcastRegistered:Z

    .line 808
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method private registerClient()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 660
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mContext:Landroid/content/Context;

    invoke-static {v3, v1}, Lcom/samsung/android/fingerprint/FingerprintManager;->getInstance(Landroid/content/Context;I)Lcom/samsung/android/fingerprint/FingerprintManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mFm:Lcom/samsung/android/fingerprint/FingerprintManager;

    .line 661
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mFm:Lcom/samsung/android/fingerprint/FingerprintManager;

    if-nez v3, :cond_0

    .line 662
    const-string v1, "KeyguardSPassUnlock"

    const-string v3, "registerClient() : FingerPrintManager is not possilbe"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    :goto_0
    return v2

    .line 666
    :cond_0
    new-instance v0, Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;

    const-string v3, "system"

    invoke-direct {v0, v3}, Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;-><init>(Ljava/lang/String;)V

    .line 667
    .local v0, "builder":Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;
    if-eqz v0, :cond_2

    .line 668
    invoke-virtual {v0, v1}, Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;->demandExtraEvent(Z)Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;

    .line 669
    invoke-virtual {v0, v1}, Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;->useManualTimeout(Z)Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;

    .line 670
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mFm:Lcom/samsung/android/fingerprint/FingerprintManager;

    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mFingerprintClient:Lcom/samsung/android/fingerprint/IFingerprintClient;

    invoke-virtual {v0}, Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;->build()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/fingerprint/FingerprintManager;->registerClient(Lcom/samsung/android/fingerprint/IFingerprintClient;Landroid/os/Bundle;)Landroid/os/IBinder;

    move-result-object v3

    iput-object v3, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mToken:Landroid/os/IBinder;

    .line 671
    const-string v3, "KeyguardSPassUnlock"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "registerClient() mToken = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mToken:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mToken:Landroid/os/IBinder;

    if-eqz v3, :cond_1

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    .line 674
    :cond_2
    const-string v1, "KeyguardSPassUnlock"

    const-string v3, "registerClient() : FingerprintClientSpecBuilder is not possible"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private reportFailedAttempt()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x1

    .line 824
    iget-object v7, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v5

    .line 825
    .local v5, "monitor":Lcom/android/keyguard/KeyguardUpdateMonitor;
    invoke-virtual {v5, v13}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setAlternateUnlockEnabled(Z)V

    .line 826
    iget-object v7, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mKeyguardScreenCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v7, v13}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportUnlockAttempt(Z)V

    .line 827
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->updateSPassButtonArea()V

    .line 830
    iget-object v7, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v7}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v7

    invoke-virtual {v5, v7, v13}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts(IZ)I

    move-result v3

    .line 832
    .local v3, "failedAttempts":I
    iget-object v7, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mContext:Landroid/content/Context;

    const-string v8, "enterprise_policy"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 835
    .local v2, "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    if-eqz v2, :cond_0

    .line 836
    invoke-virtual {v2}, Landroid/app/enterprise/EnterpriseDeviceManager;->getPasswordPolicy()Landroid/app/enterprise/PasswordPolicy;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/enterprise/PasswordPolicy;->getMaximumFailedPasswordsForDeviceDisable()I

    move-result v4

    .line 837
    .local v4, "mDeviceDisableFailedAttempts":I
    const-string v7, "KeyguardSPassUnlock"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "max failed attempt for device disable :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    if-lez v4, :cond_0

    if-lt v3, v4, :cond_0

    .line 840
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->stop()Z

    .line 841
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->cleanUp()V

    .line 846
    .end local v4    # "mDeviceDisableFailedAttempts":I
    :cond_0
    rsub-int/lit8 v6, v3, 0x5

    .line 847
    .local v6, "remaining":I
    const-string v7, "KeyguardSPassUnlock"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "reportFailedAttempt( attempts ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " , remaining = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " )"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    sget-boolean v7, Lcom/android/keyguard/KeyguardSecurityContainer;->mIsAutoWipe:Z

    if-eqz v7, :cond_1

    .line 849
    if-ne v6, v12, :cond_4

    .line 850
    iget-object v7, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    iget-object v8, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mContext:Landroid/content/Context;

    sget v9, Lcom/android/keyguard/R$string;->kg_1_attempt_remaining:I

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8, v12}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;Z)V

    .line 859
    :cond_1
    :goto_0
    if-eqz v3, :cond_5

    rem-int/lit8 v7, v3, 0x5

    if-nez v7, :cond_5

    .line 860
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->stop()Z

    .line 861
    sget-boolean v7, Lcom/android/keyguard/KeyguardSecurityContainer;->mIsAutoWipe:Z

    if-eqz v7, :cond_2

    if-eqz v6, :cond_3

    .line 862
    :cond_2
    iget-object v7, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v7}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline()J

    move-result-wide v0

    .line 863
    .local v0, "deadline":J
    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->handleAttemptLockout(J)V

    .line 868
    .end local v0    # "deadline":J
    :cond_3
    :goto_1
    return-void

    .line 852
    :cond_4
    const/4 v7, 0x5

    if-gt v6, v7, :cond_1

    if-le v6, v12, :cond_1

    .line 854
    iget-object v7, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    iget-object v8, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mContext:Landroid/content/Context;

    sget v9, Lcom/android/keyguard/R$string;->kg_n_attempts_remaining:I

    new-array v10, v12, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v13

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8, v12}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;Z)V

    goto :goto_0

    .line 866
    :cond_5
    invoke-direct {p0, v12}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->setIdleStatus(Z)V

    goto :goto_1
.end method

.method private resetAnimation()V
    .locals 5

    .prologue
    .line 1558
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    .line 1560
    .local v1, "monitor":Lcom/android/keyguard/KeyguardUpdateMonitor;
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts(IZ)I

    move-result v0

    .line 1562
    .local v0, "failedAttempts":I
    sget-object v2, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mStatusText:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mStatusImage:Landroid/widget/ImageView;

    if-eqz v2, :cond_1

    if-eqz v0, :cond_0

    rem-int/lit8 v2, v0, 0x5

    if-eqz v2, :cond_1

    .line 1563
    :cond_0
    sget-object v2, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mStatusText:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1564
    sget-object v2, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mStatusImage:Landroid/widget/ImageView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1565
    sget-object v2, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mErrorAnimation:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v2, :cond_1

    .line 1566
    sget-object v2, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mErrorAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 1569
    :cond_1
    return-void
.end method

.method private setErrorCaseText(ILjava/lang/String;)V
    .locals 6
    .param p1, "quality"    # I
    .param p2, "errorMessage"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0x45f

    const/4 v4, 0x0

    .line 763
    const-string v1, "KeyguardSPassUnlock"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setErrorCaseText, quality = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/fingerprint/FingerprintManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/fingerprint/FingerprintManager;

    .line 765
    if-nez p2, :cond_1

    .line 766
    sget-object v1, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mStatusText:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 785
    :cond_0
    :goto_0
    return-void

    .line 768
    :cond_1
    sget-object v1, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mStatusText:Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 769
    iget-boolean v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mIsTalkbackModeOn:Z

    if-eqz v1, :cond_2

    .line 770
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mTTS:Landroid/speech/tts/TextToSpeech;

    sget-object v2, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mStatusText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v4, v3}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 772
    :cond_2
    sget-object v1, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mStatusImage:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 773
    sget-object v1, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mStatusImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 774
    sget-object v1, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mStatusImage:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mContext:Landroid/content/Context;

    invoke-static {p1, v2}, Lcom/samsung/android/fingerprint/FingerprintManager;->getImageQualityAnimation(ILandroid/content/Context;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 775
    sget-object v1, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mStatusImage:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    sput-object v1, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mErrorAnimation:Landroid/graphics/drawable/AnimationDrawable;

    .line 776
    sget-object v1, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mErrorAnimation:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v1, :cond_3

    .line 777
    sget-object v1, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mErrorAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 780
    :cond_3
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 781
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 782
    .local v0, "message":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method private setIdleStatus(Z)V
    .locals 4
    .param p1, "failed"    # Z

    .prologue
    .line 724
    if-eqz p1, :cond_0

    .line 725
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->startIdentify()V

    .line 730
    :goto_0
    return-void

    .line 727
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x45d

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 728
    .local v0, "message":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method private startAnimation(I)V
    .locals 2
    .param p1, "status"    # I

    .prologue
    .line 871
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->stopAnimation()V

    .line 873
    packed-switch p1, :pswitch_data_0

    .line 899
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 876
    :pswitch_1
    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mIsReverseDevice:Z

    if-nez v0, :cond_0

    .line 879
    sget-object v0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mAnimationView:Landroid/widget/ImageView;

    sget v1, Lcom/android/keyguard/R$drawable;->btn_scroll_down:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 880
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mAffordanceAnim:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mAffordanceAnimListner:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 881
    sget-object v0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mAnimationView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mAffordanceAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 886
    :pswitch_2
    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mIsReverseDevice:Z

    if-nez v0, :cond_0

    .line 887
    sget-object v0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mAnimationView:Landroid/widget/ImageView;

    sget v1, Lcom/android/keyguard/R$drawable;->btn_scroll_down:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 888
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mAffordanceAnim:Landroid/view/animation/Animation;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 889
    sget-object v0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mAnimationView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mFadeOutAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 894
    :pswitch_3
    sget-object v0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mAnimationView:Landroid/widget/ImageView;

    sget v1, Lcom/android/keyguard/R$drawable;->btn_scroll_down:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 873
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private startFailedAnimation(Ljava/lang/String;)V
    .locals 4
    .param p1, "errorMessage"    # Ljava/lang/String;

    .prologue
    .line 711
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->stopIdentify()V

    .line 713
    sget-object v1, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mStatusText:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 714
    iget v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mImageQuality:I

    invoke-direct {p0, v1, p1}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->setErrorCaseText(ILjava/lang/String;)V

    .line 717
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x45c

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 718
    .local v0, "message":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x195

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 719
    return-void
.end method

.method private startIdentify()V
    .locals 5

    .prologue
    .line 385
    iget-boolean v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mIsRegisteredClient:Z

    if-eqz v2, :cond_0

    .line 386
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mFm:Lcom/samsung/android/fingerprint/FingerprintManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mFm:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-virtual {v2}, Lcom/samsung/android/fingerprint/FingerprintManager;->isSensorReady()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mToken:Landroid/os/IBinder;

    if-eqz v2, :cond_0

    .line 387
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 388
    .local v0, "currentUserId":I
    const-string v2, "KeyguardSPassUnlock"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startIdentify currentUserId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mFm:Lcom/samsung/android/fingerprint/FingerprintManager;

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mToken:Landroid/os/IBinder;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->identifyForMultiUser(Landroid/os/IBinder;ILjava/lang/String;)I

    move-result v1

    .line 391
    .local v1, "result":I
    if-nez v1, :cond_1

    .line 392
    const-string v2, "KeyguardSPassUnlock"

    const-string v3, "identify OK"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    .end local v0    # "currentUserId":I
    .end local v1    # "result":I
    :cond_0
    :goto_0
    return-void

    .line 395
    .restart local v0    # "currentUserId":I
    .restart local v1    # "result":I
    :cond_1
    const-string v2, "KeyguardSPassUnlock"

    const-string v3, "identify request failed."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private startScanningAnimation()V
    .locals 2

    .prologue
    .line 696
    sget-object v0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mStatusText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 697
    sget-object v0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mStatusText:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 700
    :cond_0
    sget-object v0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mStatusImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 701
    sget-object v0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mStatusImage:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 703
    :cond_1
    sget-object v0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mAnimationView:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 704
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->startAnimation(I)V

    .line 706
    :cond_2
    return-void
.end method

.method private startSucceedAnimation()V
    .locals 4

    .prologue
    const/16 v3, 0x458

    .line 735
    sget-object v1, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mAnimationView:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mIsTProject:Z

    if-nez v1, :cond_0

    .line 736
    const/4 v1, 0x6

    invoke-direct {p0, v1}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->startAnimation(I)V

    .line 738
    :cond_0
    sget-object v1, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mStatusText:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 739
    iget-boolean v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mIsTProject:Z

    if-eqz v1, :cond_3

    .line 740
    sget-object v1, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mStatusText:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 746
    :cond_1
    :goto_0
    sget-object v1, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mStatusImage:Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    .line 747
    sget-object v1, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mStatusImage:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 748
    sget-object v1, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mErrorAnimation:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v1, :cond_2

    .line 749
    sget-object v1, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mErrorAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 753
    :cond_2
    iget-boolean v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mIsTProject:Z

    if-eqz v1, :cond_4

    .line 754
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 755
    .local v0, "message":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x50

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 760
    :goto_1
    return-void

    .line 742
    .end local v0    # "message":Landroid/os/Message;
    :cond_3
    sget-object v1, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mStatusText:Landroid/widget/TextView;

    sget v2, Lcom/android/keyguard/R$string;->kg_spass_passed:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 757
    :cond_4
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 758
    .restart local v0    # "message":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1
.end method

.method private stopAnimation()V
    .locals 2

    .prologue
    .line 902
    sget-object v0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mAnimationView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 903
    sget-object v0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mAnimationView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 904
    sget-object v0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mAnimationView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 906
    :cond_0
    return-void
.end method

.method private unregisterBroadcastReceiver()V
    .locals 2

    .prologue
    .line 811
    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mBroadcastRegistered:Z

    if-eqz v0, :cond_0

    .line 812
    const-string v0, "KeyguardSPassUnlock"

    const-string v1, "unregisterBroadcastReceiver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 814
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mBroadcastRegistered:Z

    .line 816
    :cond_0
    return-void
.end method

.method private updateAnimationView()V
    .locals 12

    .prologue
    .line 909
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 917
    .local v4, "time":J
    sget-object v7, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mAnimationView:Landroid/widget/ImageView;

    if-nez v7, :cond_0

    .line 918
    const-string v7, "KeyguardSPassView"

    const-string v8, "SPassAnimationView is null"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 987
    :goto_0
    return-void

    .line 922
    :cond_0
    const/16 v3, 0x51

    .line 923
    .local v3, "statusContainerGravity":I
    const/16 v0, 0x51

    .line 924
    .local v0, "animationViewGravity":I
    const/4 v6, 0x0

    .line 925
    .local v6, "topMargin":F
    const/4 v1, 0x0

    .line 926
    .local v1, "bottomMargin":F
    const/4 v2, 0x0

    .line 928
    .local v2, "rotateDegree":F
    iget v7, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mCurrentOrientation:I

    packed-switch v7, :pswitch_data_0

    .line 956
    const/4 v2, 0x0

    .line 957
    const/16 v3, 0x51

    .line 958
    const/16 v0, 0x51

    .line 959
    const/4 v6, 0x0

    .line 960
    const/4 v1, 0x0

    .line 984
    :goto_1
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->adjustMagazineCardLayout()V

    .line 986
    const-string v7, "KeyguardSPassView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateAnimationView() time spend : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v4

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 930
    :pswitch_0
    const/4 v2, 0x0

    .line 931
    const/16 v3, 0x51

    .line 932
    const/16 v0, 0x51

    .line 933
    const/4 v6, 0x0

    .line 934
    const/4 v1, 0x0

    .line 935
    goto :goto_1

    .line 937
    :pswitch_1
    const/high16 v2, 0x43870000    # 270.0f

    .line 938
    const/4 v3, 0x1

    .line 939
    const/16 v0, 0x15

    .line 940
    iget v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mAnimationBottomMargin:F

    .line 941
    goto :goto_1

    .line 943
    :pswitch_2
    const/high16 v2, 0x43340000    # 180.0f

    .line 944
    const/16 v3, 0x31

    .line 945
    const/16 v0, 0x31

    .line 946
    iget v6, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mFingerprintViewHeight:F

    .line 947
    const/4 v1, 0x0

    .line 948
    goto :goto_1

    .line 950
    :pswitch_3
    const/high16 v2, 0x42b40000    # 90.0f

    .line 951
    const/4 v3, 0x1

    .line 952
    const/16 v0, 0x13

    .line 953
    iget v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mAnimationBottomMargin:F

    .line 954
    goto :goto_1

    .line 928
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private updateOrientation()V
    .locals 4

    .prologue
    .line 995
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mDisplay:Landroid/view/Display;

    if-eqz v1, :cond_0

    .line 996
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 997
    .local v0, "ori":I
    iget v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mCurrentOrientation:I

    if-eq v0, v1, :cond_0

    .line 998
    const-string v1, "KeyguardSPassUnlock"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "change orientation from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mCurrentOrientation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 999
    iput v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mCurrentOrientation:I

    .line 1000
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mOrientationHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1003
    .end local v0    # "ori":I
    :cond_0
    return-void
.end method


# virtual methods
.method public adjustAniamtionViewLayout()V
    .locals 2

    .prologue
    .line 1542
    sget-object v1, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mAnimationView:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mContext:Landroid/content/Context;

    if-nez v1, :cond_1

    .line 1555
    :cond_0
    :goto_0
    return-void

    .line 1545
    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/KeyguardEffectViewController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->shouldShowAttributionInfoView()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/KeyguardEffectViewController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->isJustLockLiveEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1547
    :cond_2
    sget-object v1, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mAnimationView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 1548
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    sget v1, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mAnimationBottomMarginAttributionEnabled:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 1549
    sget-object v1, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mAnimationView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 1551
    .end local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_3
    sget-object v1, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mAnimationView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 1552
    .restart local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    sget v1, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mAnimationBottomMarginNormal:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 1553
    sget-object v1, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mAnimationView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public cleanUp()V
    .locals 3

    .prologue
    const/16 v2, 0x458

    .line 436
    const-string v0, "KeyguardSPassUnlock"

    const-string v1, "cleanUp()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    sget-object v0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mAnimationView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 438
    monitor-enter p0

    .line 439
    :try_start_0
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->stopAnimation()V

    .line 440
    const/4 v0, 0x0

    sput-object v0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mAnimationView:Landroid/widget/ImageView;

    .line 441
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 443
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 444
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 446
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mTTS:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_2

    .line 447
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mTTS:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->stop()I

    .line 448
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mTTS:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    .line 450
    :cond_2
    return-void

    .line 441
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getCallback()Lcom/android/keyguard/KeyguardSecurityCallback;
    .locals 1

    .prologue
    .line 1182
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mKeyguardScreenCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method public getQuality()I
    .locals 1

    .prologue
    .line 456
    const v0, 0x61000

    return v0
.end method

.method public handleAttemptLockout(J)V
    .locals 9
    .param p1, "elapsedRealtimeDeadline"    # J

    .prologue
    const/4 v1, 0x0

    .line 1473
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 1475
    .local v6, "elapsedRealtime":J
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mIsPermLocked:Z

    .line 1476
    sget-object v0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mAnimationView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 1477
    sget-object v0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mAnimationView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1478
    sget-object v0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mAnimationView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 1481
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_1

    .line 1482
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mCountdownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 1483
    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 1485
    :cond_1
    new-instance v0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$11;

    sub-long v2, p1, v6

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$11;-><init>(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;JJ)V

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$11;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 1518
    return-void
.end method

.method handleCancel()V
    .locals 2

    .prologue
    .line 628
    const-string v0, "KeyguardSPassUnlock"

    const-string v1, "handleCancel()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setAlternateUnlockEnabled(Z)V

    .line 632
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mKeyguardScreenCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Biometric:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-interface {v0, v1}, Lcom/android/keyguard/KeyguardSecurityCallback;->showBackupSecurity(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    .line 633
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->stop()Z

    .line 634
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mKeyguardScreenCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    .line 635
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 11
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x0

    const/16 v10, 0x45e

    const/4 v5, 0x1

    .line 466
    const/4 v3, 0x0

    .line 467
    .local v3, "speed":I
    const/4 v0, 0x0

    .line 469
    .local v0, "errorMessage":Ljava/lang/String;
    iget v6, p1, Landroid/os/Message;->what:I

    sparse-switch v6, :sswitch_data_0

    .line 606
    const-string v5, "KeyguardSPassUnlock"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unhandled message = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    :goto_0
    return v4

    .line 471
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->handleUnlock()V

    :cond_0
    :goto_1
    move v4, v5

    .line 610
    goto :goto_0

    .line 474
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->handleCancel()V

    goto :goto_1

    .line 477
    :sswitch_2
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->handleReportFailedAttempt()V

    goto :goto_1

    .line 480
    :sswitch_3
    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v4}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->handlePokeWakelock(I)V

    goto :goto_1

    .line 484
    :sswitch_4
    const-string v6, "KeyguardSPassUnlock"

    const-string v7, "handleMessage : EVENT_IDENTIFY_STARTED"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    iput v4, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mImageQuality:I

    .line 487
    iget-wide v6, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mExpiredTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-lez v6, :cond_1

    .line 488
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->pokeWakelock()V

    .line 491
    :cond_1
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->startScanningAnimation()V

    .line 493
    iget-object v6, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mAttributionView:Landroid/view/View;

    if-eqz v6, :cond_0

    .line 494
    iget-object v6, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 495
    iget-object v6, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mAttributionView:Landroid/view/View;

    invoke-virtual {v6, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 496
    const-string v4, "KeyguardSPassUnlock"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mAttributionView disable : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mAttributionViewEnableHandlerId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 501
    :sswitch_5
    const-string v4, "KeyguardSPassUnlock"

    const-string v6, "handleMessage : EVENT_FINGER_REMOVED"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mAttributionView:Landroid/view/View;

    if-eqz v4, :cond_0

    .line 504
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 505
    iget v4, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mAttributionViewEnableHandlerId:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mAttributionViewEnableHandlerId:I

    .line 506
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 507
    .local v2, "message":Landroid/os/Message;
    iget v4, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mAttributionViewEnableHandlerId:I

    iput v4, v2, Landroid/os/Message;->arg1:I

    .line 508
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 514
    .end local v2    # "message":Landroid/os/Message;
    :sswitch_6
    const-string v4, "KeyguardSPassUnlock"

    const-string v6, "handleMessage : EVENT_IDENTIFY_READY"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    sget-object v4, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mAnimationView:Landroid/widget/ImageView;

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mIsPermLocked:Z

    if-nez v4, :cond_0

    .line 516
    invoke-direct {p0, v5}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->startAnimation(I)V

    goto/16 :goto_1

    .line 522
    :sswitch_7
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/samsung/android/fingerprint/FingerprintEvent;

    .line 523
    .local v1, "event":Lcom/samsung/android/fingerprint/FingerprintEvent;
    iget v4, v1, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventResult:I

    if-nez v4, :cond_3

    .line 524
    const-string v4, "KeyguardSPassUnlock"

    const-string v6, "handleMessage : RESULT_SUCCESS"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->startSucceedAnimation()V

    .line 546
    :cond_2
    :goto_2
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mAttributionView:Landroid/view/View;

    if-eqz v4, :cond_0

    .line 547
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 548
    iget v4, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mAttributionViewEnableHandlerId:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mAttributionViewEnableHandlerId:I

    .line 549
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 550
    .restart local v2    # "message":Landroid/os/Message;
    iget v4, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mAttributionViewEnableHandlerId:I

    iput v4, v2, Landroid/os/Message;->arg1:I

    .line 551
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    .line 528
    .end local v2    # "message":Landroid/os/Message;
    :cond_3
    iget v4, v1, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventResult:I

    const/4 v6, -0x1

    if-ne v4, v6, :cond_2

    .line 529
    const-string v4, "KeyguardSPassUnlock"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleMessage : RESULT_FAILED eventStatus = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v1, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    iget v4, v1, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    const/4 v6, 0x4

    if-ne v4, v6, :cond_4

    .line 532
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->startIdentify()V

    goto :goto_2

    .line 533
    :cond_4
    iget v4, v1, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    const/16 v6, 0x8

    if-eq v4, v6, :cond_2

    .line 534
    iget v4, v1, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    const/16 v6, 0xb

    if-ne v4, v6, :cond_6

    .line 536
    iput-boolean v5, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mIsVerificationFailed:Z

    .line 541
    :cond_5
    :goto_3
    invoke-virtual {v1}, Lcom/samsung/android/fingerprint/FingerprintEvent;->getImageQualityFeedback()Ljava/lang/String;

    move-result-object v0

    .line 542
    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->startFailedAnimation(Ljava/lang/String;)V

    goto :goto_2

    .line 537
    :cond_6
    iget v4, v1, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    const/16 v6, 0xc

    if-ne v4, v6, :cond_5

    .line 538
    invoke-virtual {v1}, Lcom/samsung/android/fingerprint/FingerprintEvent;->getImageQuality()I

    move-result v4

    iput v4, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mImageQuality:I

    .line 539
    const-string v4, "KeyguardSPassUnlock"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "quality = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mImageQuality:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 556
    .end local v1    # "event":Lcom/samsung/android/fingerprint/FingerprintEvent;
    :sswitch_8
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/samsung/android/fingerprint/FingerprintEvent;

    .line 558
    .restart local v1    # "event":Lcom/samsung/android/fingerprint/FingerprintEvent;
    const-string v4, "KeyguardSPassUnlock"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleMessage : EVENT_IDENTIFY_STATUS eventStatus = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v1, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    invoke-virtual {v1}, Lcom/samsung/android/fingerprint/FingerprintEvent;->getImageQuality()I

    move-result v4

    iput v4, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mImageQuality:I

    .line 561
    const-string v4, "KeyguardSPassUnlock"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "quality = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mImageQuality:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    iget v4, v1, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    const/16 v6, 0x14

    if-ne v4, v6, :cond_0

    .line 564
    invoke-virtual {v1}, Lcom/samsung/android/fingerprint/FingerprintEvent;->getImageQualityFeedback()Ljava/lang/String;

    move-result-object v0

    .line 565
    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->startFailedAnimation(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 571
    .end local v1    # "event":Lcom/samsung/android/fingerprint/FingerprintEvent;
    :sswitch_9
    const-string v4, "KeyguardSPassUnlock"

    const-string v6, "handleMessage : EVENT_FINGER_SWIPE_SPEED"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/samsung/android/fingerprint/FingerprintEvent;

    .line 573
    .restart local v1    # "event":Lcom/samsung/android/fingerprint/FingerprintEvent;
    invoke-virtual {v1}, Lcom/samsung/android/fingerprint/FingerprintEvent;->getSwipeSpeed()I

    move-result v3

    .line 574
    const-string v4, "KeyguardSPassUnlock"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "speed = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 578
    .end local v1    # "event":Lcom/samsung/android/fingerprint/FingerprintEvent;
    :sswitch_a
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->startIdentify()V

    goto/16 :goto_1

    .line 582
    :sswitch_b
    iget-boolean v6, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mIsVerificationFailed:Z

    if-eqz v6, :cond_7

    .line 583
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->reportFailedAttempt()V

    .line 584
    iput-boolean v4, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mIsVerificationFailed:Z

    goto/16 :goto_1

    .line 586
    :cond_7
    invoke-direct {p0, v5}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->setIdleStatus(Z)V

    goto/16 :goto_1

    .line 591
    :sswitch_c
    iget v4, p1, Landroid/os/Message;->arg1:I

    iget v6, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mAttributionViewEnableHandlerId:I

    if-ne v4, v6, :cond_0

    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mAttributionView:Landroid/view/View;

    if-eqz v4, :cond_0

    .line 592
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mAttributionView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 593
    const-string v4, "KeyguardSPassUnlock"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mAttributionView enable : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mAttributionViewEnableHandlerId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 598
    :sswitch_d
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->resetAnimation()V

    goto/16 :goto_1

    .line 602
    :sswitch_e
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->adjustAniamtionViewLayout()V

    goto/16 :goto_1

    .line 469
    :sswitch_data_0
    .sparse-switch
        0xb -> :sswitch_6
        0xc -> :sswitch_4
        0xd -> :sswitch_7
        0xe -> :sswitch_8
        0x3f3 -> :sswitch_5
        0x3f5 -> :sswitch_9
        0x458 -> :sswitch_0
        0x459 -> :sswitch_1
        0x45a -> :sswitch_2
        0x45b -> :sswitch_3
        0x45c -> :sswitch_b
        0x45d -> :sswitch_a
        0x45e -> :sswitch_c
        0x45f -> :sswitch_d
        0x460 -> :sswitch_e
    .end sparse-switch
.end method

.method handlePokeWakelock(I)V
    .locals 3
    .param p1, "millis"    # I

    .prologue
    .line 653
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 654
    .local v0, "powerManager":Landroid/os/PowerManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 655
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mKeyguardScreenCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v1}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    .line 657
    :cond_0
    return-void
.end method

.method handleReportFailedAttempt()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 641
    const-string v0, "KeyguardSPassUnlock"

    const-string v1, "handleReportFailedAttempt()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setAlternateUnlockEnabled(Z)V

    .line 645
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mKeyguardScreenCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0, v2}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportUnlockAttempt(Z)V

    .line 646
    return-void
.end method

.method handleUnlock()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 617
    const-string v0, "KeyguardSPassUnlock"

    const-string v1, "handleUnlock()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->stop()Z

    .line 620
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mKeyguardScreenCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0, v2}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportUnlockAttempt(Z)V

    .line 621
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mKeyguardScreenCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0, v2}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    .line 622
    return-void
.end method

.method public hideBouncer(I)V
    .locals 3
    .param p1, "duration"    # I

    .prologue
    .line 1336
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mEcaView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mBouncerFrame:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1, v2, p1}, Lcom/android/keyguard/KeyguardSecurityViewHelper;->hideBouncer(Lcom/android/keyguard/SecurityMessageDisplay;Landroid/view/View;Landroid/graphics/drawable/Drawable;I)V

    .line 1337
    return-void
.end method

.method public initializeView(Landroid/view/View;)V
    .locals 2
    .param p1, "biometricUnlockView"    # Landroid/view/View;

    .prologue
    .line 326
    const-string v0, "KeyguardSPassView"

    const-string v1, "initializeView()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    return-void
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 333
    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mIsRunning:Z

    return v0
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    .line 1177
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 1098
    const-string v0, "KeyguardSPassView"

    const-string v1, "onAttachedToWindow()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1099
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 1100
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 1115
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->updateAttributionViewState()V

    .line 1116
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 1049
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->updateOrientation()V

    .line 1050
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 1120
    const-string v0, "KeyguardSPassView"

    const-string v1, "onDetachedFromWindow()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1121
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 1123
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 1124
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mCountdownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 1125
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 1128
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->stop()Z

    .line 1129
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->cleanUp()V

    .line 1131
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 1146
    return-void
.end method

.method protected onFinishInflate()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 277
    const-string v2, "KeyguardSPassUnlock"

    const-string v3, "onFinishInflate"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 280
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mState:Z

    .line 281
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->initializeSPassUnlockView()V

    .line 282
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->maybeEnableFallback(Landroid/content/Context;)V

    .line 284
    new-instance v2, Lcom/android/keyguard/KeyguardMessageArea$Helper;

    invoke-direct {v2, p0}, Lcom/android/keyguard/KeyguardMessageArea$Helper;-><init>(Landroid/view/View;)V

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    .line 285
    sget v2, Lcom/android/keyguard/R$id;->spass_eca_container:I

    invoke-virtual {p0, v2}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mEcaView:Landroid/view/View;

    .line 286
    sget v2, Lcom/android/keyguard/R$id;->kg_spass_animation:I

    invoke-virtual {p0, v2}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 287
    .local v0, "bouncerFrameView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 288
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mBouncerFrame:Landroid/graphics/drawable/Drawable;

    .line 289
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mBouncerFrame:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mBouncerFrame:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 292
    :cond_0
    sget v2, Lcom/android/keyguard/R$id;->sec_keyguard_bottom_area_normal:I

    invoke-virtual {p0, v2}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mBottomAreaNormal:Landroid/view/View;

    .line 293
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mBottomAreaNormal:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 294
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mBottomAreaNormal:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 298
    :cond_1
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->isDeviceDisabledForMaxFailedAttempt()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 299
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->disableDevicePermanently()V

    .line 302
    :cond_2
    new-instance v2, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$5;

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mContext:Landroid/content/Context;

    const/4 v4, 0x2

    invoke-direct {v2, p0, v3, v4}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$5;-><init>(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    .line 308
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mContext:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 309
    .local v1, "winMng":Landroid/view/WindowManager;
    if-eqz v1, :cond_3

    .line 310
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mDisplay:Landroid/view/Display;

    .line 313
    :cond_3
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isTProject()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mIsTProject:Z

    .line 315
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->adjustMagazineCardLayout()V

    .line 317
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$dimen;->kg_spass_unlock_animation_margin_bottom_attribution:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mAnimationBottomMarginAttributionEnabled:I

    .line 318
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$dimen;->kg_spass_unlock_animation_margin_bottom_normal:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mAnimationBottomMarginNormal:I

    .line 320
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->updateAttributionViewState()V

    .line 322
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->createStandbyAnimation()V

    .line 323
    return-void
.end method

.method public onInit(I)V
    .locals 0
    .param p1, "status"    # I

    .prologue
    .line 820
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 1187
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 1188
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 1150
    const-string v0, "KeyguardSPassView"

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1151
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mState:Z

    .line 1152
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->stop()Z

    .line 1154
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 1155
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mCountdownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 1156
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 1158
    :cond_0
    return-void
.end method

.method public onResume(I)V
    .locals 3
    .param p1, "reason"    # I

    .prologue
    .line 1162
    const-string v0, "KeyguardSPassView"

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1163
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mState:Z

    .line 1164
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts(IZ)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mTotalFailedSPassAttempts:I

    .line 1165
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isPermanentlyLocked()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mIsPermLocked:Z

    .line 1167
    sget-object v0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mAnimationView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 1168
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->startAnimation(I)V

    .line 1171
    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->maybeStartBiometricUnlock()V

    .line 1172
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->reset()V

    .line 1173
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 1397
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onWindowFocusChanged(Z)V

    .line 1398
    const-string v0, "KeyguardSPassUnlock"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWindowFocusChanged(): hasWindowFocus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1400
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 1401
    const-string v0, "KeyguardSPassUnlock"

    const-string v1, "onWindowFocusChanged - get focus"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1402
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->maybeStartBiometricUnlock()V

    .line 1403
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->reset()V

    .line 1412
    :cond_0
    :goto_0
    return-void

    .line 1405
    :cond_1
    invoke-static {}, Lcom/android/keyguard/sec/SecPopupManager;->isShowingPopupDialog()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1409
    const-string v0, "KeyguardSPassUnlock"

    const-string v1, "onWindowFocusChanged - loosing focus"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1410
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->stop()Z

    goto :goto_0
.end method

.method public reset()V
    .locals 7

    .prologue
    .line 1064
    const-string v4, "KeyguardSPassUnlock"

    const-string v5, "reset()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1065
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "input_method"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodManager;

    .line 1066
    .local v3, "mImm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v3, :cond_0

    invoke-virtual {v3, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1067
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1071
    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->isDeviceDisabledForMaxFailedAttempt()Z

    move-result v2

    .line 1072
    .local v2, "lDeviceDisableForMaxFailedAttempt":Z
    if-nez v2, :cond_3

    .line 1073
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mCancelButton:Landroid/widget/Button;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1075
    const-string v4, "KeyguardSPassUnlock"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "failed SPass Attempts : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mTotalFailedSPassAttempts:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1076
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->updateSPassButtonArea()V

    .line 1077
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline()J

    move-result-wide v0

    .line 1078
    .local v0, "deadline":J
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-eqz v4, :cond_2

    .line 1079
    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->handleAttemptLockout(J)V

    .line 1093
    .end local v0    # "deadline":J
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->updateOrientation()V

    .line 1094
    return-void

    .line 1082
    .restart local v0    # "deadline":J
    :cond_2
    sget-object v4, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mAnimationView:Landroid/widget/ImageView;

    if-eqz v4, :cond_1

    .line 1083
    const/4 v4, 0x5

    invoke-direct {p0, v4}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->startAnimation(I)V

    goto :goto_0

    .line 1089
    .end local v0    # "deadline":J
    :cond_3
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->disableDevicePermanently()V

    goto :goto_0
.end method

.method public resetSpass()V
    .locals 0

    .prologue
    .line 1468
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->maybeStartBiometricUnlock()V

    .line 1469
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->reset()V

    .line 1470
    return-void
.end method

.method public setAttributionInfoView(Landroid/view/View;)V
    .locals 0
    .param p1, "attributionView"    # Landroid/view/View;

    .prologue
    .line 1537
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mAttributionView:Landroid/view/View;

    .line 1538
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->updateAttributionViewState()V

    .line 1539
    return-void
.end method

.method public setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/keyguard/KeyguardSecurityCallback;

    .prologue
    .line 1054
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mKeyguardScreenCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 1055
    return-void
.end method

.method public setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 0
    .param p1, "utils"    # Lcom/android/internal/widget/LockPatternUtils;

    .prologue
    .line 1059
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 1060
    return-void
.end method

.method public showBouncer(I)V
    .locals 3
    .param p1, "duration"    # I

    .prologue
    .line 1329
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mEcaView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mBouncerFrame:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1, v2, p1}, Lcom/android/keyguard/KeyguardSecurityViewHelper;->showBouncer(Lcom/android/keyguard/SecurityMessageDisplay;Landroid/view/View;Landroid/graphics/drawable/Drawable;I)V

    .line 1331
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->startAnimation(I)V

    .line 1332
    return-void
.end method

.method public showUsabilityHint()V
    .locals 0

    .prologue
    .line 1325
    return-void
.end method

.method public start()Z
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 349
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 381
    :goto_0
    return v2

    .line 353
    :cond_0
    const-string v4, "KeyguardSPassUnlock"

    const-string v5, "start()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 357
    .local v1, "intent":Landroid/content/Intent;
    const-string v4, "com.samsung.android.fingerprint.service"

    const-string v5, "com.samsung.android.fingerprint.service.FingerprintServiceStarter"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 359
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 364
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x7530

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mExpiredTime:J

    .line 366
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->registerClient()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mIsRegisteredClient:Z

    .line 367
    iput-boolean v3, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mIsRunning:Z

    .line 369
    iget-boolean v4, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mIsRegisteredClient:Z

    if-eqz v4, :cond_1

    .line 371
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->unregisterBroadcastReceiver()V

    .line 372
    invoke-direct {p0, v2}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->setIdleStatus(Z)V

    .line 374
    sget-object v2, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mStatusText:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move v2, v3

    .line 376
    goto :goto_0

    .line 360
    :catch_0
    move-exception v0

    .line 361
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "KeyguardSPassUnlock"

    const-string v5, "Failed to call FingerprintServiceStarter"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 379
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->registerBroadcastReceiver()V

    goto :goto_0
.end method

.method public startAppearAnimation()V
    .locals 0

    .prologue
    .line 1588
    return-void
.end method

.method public startDisappearAnimation(Ljava/lang/Runnable;)Z
    .locals 1
    .param p1, "finishRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 1593
    const/4 v0, 0x0

    return v0
.end method

.method public stop()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 405
    const-string v0, "KeyguardSPassUnlock"

    const-string v1, "stop()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 408
    sget-object v0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mStatusText:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 409
    sget-object v0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mStatusImage:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 410
    sget-object v0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mErrorAnimation:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    .line 411
    sget-object v0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mErrorAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 414
    :cond_0
    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mIsRegisteredClient:Z

    if-eqz v0, :cond_1

    .line 415
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->unregisterClient()V

    .line 416
    iput-boolean v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mIsRegisteredClient:Z

    .line 418
    :cond_1
    sget-object v0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mAnimationView:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 419
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->stopAnimation()V

    .line 422
    :cond_2
    iput-boolean v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mIsRunning:Z

    .line 423
    const/4 v0, 0x1

    return v0
.end method

.method public stopAndShowBackup()V
    .locals 2

    .prologue
    .line 340
    const-string v0, "KeyguardSPassUnlock"

    const-string v1, "stopAndShowBackup()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x459

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 342
    return-void
.end method

.method public stopIdentify()V
    .locals 2

    .prologue
    .line 427
    const-string v0, "KeyguardSPassUnlock"

    const-string v1, "stopIdentify()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mFm:Lcom/samsung/android/fingerprint/FingerprintManager;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Lcom/samsung/android/fingerprint/FingerprintManager;->cancel(Landroid/os/IBinder;)Z

    .line 430
    return-void
.end method

.method public unregisterClient()V
    .locals 3

    .prologue
    .line 680
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mFm:Lcom/samsung/android/fingerprint/FingerprintManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mToken:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    .line 681
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mFm:Lcom/samsung/android/fingerprint/FingerprintManager;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Lcom/samsung/android/fingerprint/FingerprintManager;->unregisterClient(Landroid/os/IBinder;)Z

    .line 682
    const-string v0, "KeyguardSPassUnlock"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregisterClient() mToken = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mToken:Landroid/os/IBinder;

    .line 685
    :cond_0
    return-void
.end method

.method public updateAttributionViewState()V
    .locals 2

    .prologue
    .line 1580
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1581
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x460

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1583
    :cond_0
    return-void
.end method

.method public updateSPassButtonArea()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 1446
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v3

    invoke-virtual {v2, v3, v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts(IZ)I

    move-result v2

    iput v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mTotalFailedSPassAttempts:I

    .line 1447
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mAccountButton:Landroid/widget/Button;

    if-nez v2, :cond_1

    .line 1448
    const-string v2, "KeyguardSPassUnlock"

    const-string v3, "account button is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1465
    :cond_0
    :goto_0
    return-void

    .line 1451
    :cond_1
    sget-boolean v2, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mEnableFallback:Z

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mTotalFailedSPassAttempts:I

    const/4 v3, 0x5

    if-lt v2, v3, :cond_3

    .line 1453
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mAccountButton:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 1454
    sget v2, Lcom/android/keyguard/R$id;->emergency_button_area_spass:I

    invoke-virtual {p0, v2}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 1455
    .local v1, "view":Landroid/widget/LinearLayout;
    if-eqz v1, :cond_2

    .line 1456
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 1457
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v2, -0x1

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1458
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1460
    .end local v0    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_2
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mCancelButton:Landroid/widget/Button;

    if-eqz v2, :cond_0

    .line 1461
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v2, v4, v4, v4, v4}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1463
    .end local v1    # "view":Landroid/widget/LinearLayout;
    :cond_3
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mAccountButton:Landroid/widget/Button;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method
