.class public Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
.super Lcom/android/systemui/statusbar/BaseStatusBar;
.source "PhoneStatusBar.java"

# interfaces
.implements Lcom/android/systemui/DemoMode;
.implements Lcom/android/systemui/statusbar/DragDownHelper$DragDownCallback;
.implements Lcom/android/systemui/statusbar/phone/ActivityStarter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/PhoneStatusBar$PmsBrightnessEnableObserver;,
        Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EasyModeEnableObserver;,
        Lcom/android/systemui/statusbar/phone/PhoneStatusBar$BrightnessEnableObserver;,
        Lcom/android/systemui/statusbar/phone/PhoneStatusBar$BatteryTextObserver;,
        Lcom/android/systemui/statusbar/phone/PhoneStatusBar$CocktailTickerEnableObserver;,
        Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost;,
        Lcom/android/systemui/statusbar/phone/PhoneStatusBar$ShadeUpdates;,
        Lcom/android/systemui/statusbar/phone/PhoneStatusBar$FastColorDrawable;,
        Lcom/android/systemui/statusbar/phone/PhoneStatusBar$MyTicker;,
        Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;,
        Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EmergencyModeObserver;
    }
.end annotation


# static fields
.field public static final ACTION_STATUSBAR_START:Ljava/lang/String; = "com.android.internal.policy.statusbar.START"

.field public static final ALPHA_IN:Landroid/view/animation/Interpolator;

.field public static final ALPHA_OUT:Landroid/view/animation/Interpolator;

.field private static final AUTOHIDE_TIMEOUT_MS:J = 0xbb8L

.field public static final CHATTY:Z

.field private static final CLOSE_PANEL_WHEN_EMPTIED:Z = true

.field private static final COCKTAIL_TICKERS_ENABLED:Ljava/lang/String; = "cocktail_bar_tickers_enabled"

.field private static final DB_BRIGHTNESS_ENABLE:Ljava/lang/String; = "notification_panel_brightness_adjustment"

.field public static final DB_DISPLAY_BATTERY_PERCENTAGE:Ljava/lang/String; = "display_battery_percentage"

.field public static final DEBUG:Z

.field public static final DEBUG_GESTURES:Z = false

.field public static final DEBUG_MEDIA:Z = false

.field public static final DEBUG_MEDIA_FAKE_ARTWORK:Z = false

.field public static final DEBUG_WINDOW_STATE:Z = false

.field public static final DUMPTRUCK:Z = true

.field private static final EASY_MODE_ENABLE:Ljava/lang/String; = "easy_mode_switch"

.field public static final FADE_KEYGUARD_DURATION:I = 0x12c

.field public static final FADE_KEYGUARD_START_DELAY:I = 0x64

.field private static final HIDE_ICONS_BELOW_SCORE:I = -0xa

.field private static final HINT_RESET_DELAY_MS:I = 0x4b0

.field private static final KNOX1URI:Ljava/lang/String; = "content://com.sec.knox.provider2/KnoxCustomManagerService1"

.field private static final KNOX2URI:Ljava/lang/String; = "content://com.sec.knox.provider2/KnoxCustomManagerService2"

.field private static final KNOX_MODE_USER_ID:I = 0x64

.field private static final LOCK_TO_APP_GESTURE_TOLERENCE:I = 0xc8

.field private static final LOW_BATTERY_THRESHOLD:I = 0x5

.field private static final MSG_CLOSE_PANELS:I = 0x3e9

.field private static final MSG_HIDE_DETAILVIEW_PANEL:I = 0x3ec

.field private static final MSG_OPEN_NOTIFICATION_PANEL:I = 0x3e8

.field private static final MSG_OPEN_SETTINGS_PANEL:I = 0x3ea

.field private static final MSG_SET_DETAILVIEW_PANEL:I = 0x3ed

.field private static final MSG_SHOW_DETAILVIEW_PANEL:I = 0x3eb

.field private static final NOTIFICATION_PRIORITY_MULTIPLIER:I = 0xa

.field private static final PMS_DB_BRIGHTNESS_ENABLE:Ljava/lang/String; = "pms_notification_panel_brightness_adjustment"

.field private static final Q_CONNECT_ENABLE:Ljava/lang/String; = "com.sec.android.sconnect.service.ENABLED"

.field public static final SHOW_LOCKSCREEN_MEDIA_ARTWORK:Z = true

.field public static final SPEW:Z = false

.field private static final STATUS_OR_NAV_TRANSIENT:I = 0xc000000

.field static final TAG:Ljava/lang/String; = "PhoneStatusBar"

.field private static final TIMEOUT:I = 0xfa0

.field static final TW_TAG:Ljava/lang/String; = "STATUSBAR-PhoneStatusBar"

.field private static final VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

.field private static final VISIBILITY_REPORT_MIN_DELAY_MS:I = 0x1f4

.field private static final VISIBLE_LOCATIONS:I = 0x1d

.field public static mDataTypeBrand:Ljava/lang/String;

.field private static mDiagnosticLogs:Z


# instance fields
.field private final EDM_FALSE:I

.field private final EDM_NULL:I

.field private final EDM_TRUE:I

.field final FLIP_DURATION:I

.field final FLIP_DURATION_IN:I

.field final FLIP_DURATION_OUT:I

.field private lp:Landroid/view/WindowManager$LayoutParams;

.field mAbsPos:[I

.field final mAccelerateInterpolator:Landroid/animation/TimeInterpolator;

.field mAccessibilityController:Lcom/android/systemui/statusbar/policy/AccessibilityController;

.field private mActivityStarter:Lcom/android/systemui/statusbar/phone/ActivityStarter;

.field private final mAnimateCollapsePanels:Ljava/lang/Runnable;

.field public mAppCoverCovered:Z

.field mAttCarrierLabel:Landroid/widget/TextView;

.field private final mAutohide:Ljava/lang/Runnable;

.field private mAutohideSuspended:Z

.field private mBackdrop:Lcom/android/systemui/statusbar/BackDropView;

.field private mBackdropBack:Landroid/widget/ImageView;

.field private mBackdropFront:Landroid/widget/ImageView;

.field private mBackdropInterpolator:Landroid/view/animation/Interpolator;

.field mBasicSettingsButton:Landroid/widget/ImageView;

.field mBasicSettingsButtonAnim:Landroid/animation/Animator;

.field private mBasicSettingsButtonListener:Landroid/view/View$OnClickListener;

.field mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

.field private mBatteryLevel:I

.field private mBatteryText:Landroid/widget/TextView;

.field private mBatteryTextObserver:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$BatteryTextObserver;

.field mBluetoothController:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

.field private mBrightnessController:Lcom/android/systemui/settings/BrightnessController;

.field private mBrightnessEnableObserver:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$BrightnessEnableObserver;

.field private mBrightnessEnablebyBattery:Z

.field private mBrightnessEnablebyDisableFlag:Z

.field private mBrightnessEnablebyLongLifeMode:Z

.field private mBrightnessEnablebySettings:Z

.field private mBrightnessHeight:I

.field mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCarrierLabel:Landroid/widget/TextView;

.field private mCarrierLabelHeight:I

.field private mCarrierLabelLayout:Landroid/view/View;

.field private mCarrierLabelVisible:Z

.field mCastController:Lcom/android/systemui/statusbar/policy/CastControllerImpl;

.field private final mCheckBarModes:Ljava/lang/Runnable;

.field private mClearAll:Landroid/widget/TextView;

.field mClearButtonAnim:Landroid/animation/Animator;

.field private mCocktailTickerEnableObserver:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$CocktailTickerEnableObserver;

.field private mCocktailTickerEnablebySettings:Z

.field mCoverLauncher:Lcom/android/systemui/cover/SViewCoverLauncher;

.field public mCoverState:Lcom/samsung/android/cover/CoverState;

.field mCurrentDisplaySize:Landroid/graphics/Point;

.field private final mCurrentlyVisibleNotifications:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mDecelerateInterpolator:Landroid/animation/TimeInterpolator;

.field private mDemoMode:Z

.field private mDemoModeAllowed:Z

.field private mDemoStatusIcons:Lcom/android/systemui/statusbar/phone/DemoStatusIcons;

.field mDisabled:I

.field private mDisabledUnmodified:I

.field mDisplay:Landroid/view/Display;

.field mDisplayMetrics:Landroid/util/DisplayMetrics;

.field mDoNotDisturb:Lcom/android/systemui/statusbar/DoNotDisturb;

.field private mDozeServiceHost:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost;

.field private mDozing:Z

.field private mDraggedDownRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

.field private mDrawCount:I

.field private mEasyModeActivated:Z

.field private mEasyModeEnableObserver:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EasyModeEnableObserver;

.field private mEasyModeEnablebySettings:Z

.field mEdgeBorder:I

.field mEditButtonAnim:Landroid/animation/Animator;

.field private mEmergencyModeActivated:Z

.field private mEmergencyeModeObserver:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EmergencyModeObserver;

.field mExpandSettingsButton:Landroid/widget/ImageView;

.field private mExpandSettingsButtonListener:Landroid/view/View$OnClickListener;

.field mExpandedContents:Landroid/view/View;

.field mExpandedVisible:Z

.field mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

.field mFlipSettingsView:Landroid/view/View;

.field mFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field private final mGestureRec:Lcom/android/systemui/statusbar/GestureRecorder;

.field mHSView:Landroid/widget/HorizontalScrollView;

.field mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

.field private final mHeadsUpObserver:Landroid/database/ContentObserver;

.field private mHideBackdropFront:Ljava/lang/Runnable;

.field mHomeActionListener:Landroid/view/View$OnTouchListener;

.field private mHomeCitySettingsDialog:Landroid/app/AlertDialog;

.field mHotspotController:Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;

.field mIconHPadding:I

.field mIconPolicy:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

.field mIconSize:I

.field private mInteractingWindows:I

.field private mIsInQSDetailviewMode:Z

.field private mIsInQSEditMode:Z

.field public mIsShutingdown:Z

.field private mKeyguardBatteryText:Landroid/widget/TextView;

.field private mKeyguardBouncerContainer:Landroid/view/ViewGroup;

.field private mKeyguardEffectController:Lcom/android/keyguard/sec/KeyguardEffectViewController;

.field private mKeyguardFadingAway:Z

.field private mKeyguardFadingAwayDelay:J

.field private mKeyguardFadingAwayDuration:J

.field mKeyguardMaxNotificationCount:I

.field mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

.field mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

.field mKeyguardStatusView:Landroid/view/View;

.field mKeyguardUserSwitcher:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

.field private mKeyguardViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

.field private mLastLockToAppLongPress:J

.field private mLastVisibilityReportUptimeMs:J

.field private mLaunchTransitionEndRunnable:Ljava/lang/Runnable;

.field private mLaunchTransitionFadingAway:Z

.field mLeaveOpenOnKeyguardHide:Z

.field private mLinearInterpolator:Landroid/view/animation/Interpolator;

.field private mLinearOutSlowIn:Landroid/view/animation/Interpolator;

.field mLocale:Ljava/util/Locale;

.field mLocationController:Lcom/android/systemui/statusbar/policy/LocationControllerImpl;

.field private mLongPressBackRecentsListener:Landroid/view/View$OnLongClickListener;

.field private mMDMOverlayContainer:Landroid/widget/FrameLayout;

.field mMSimNetworkController:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

.field private mMdmOverlayView:Landroid/view/View;

.field private mMediaController:Landroid/media/session/MediaController;

.field private mMediaListener:Landroid/media/session/MediaController$Callback;

.field private mMediaListenerRegisted:Z

.field private mMediaMetadata:Landroid/media/MediaMetadata;

.field private mMediaNotificationKey:Ljava/lang/String;

.field private mMediaSessionManager:Landroid/media/session/MediaSessionManager;

.field mMoreIcon:Landroid/view/View;

.field private mMultiWindowMode:Z

.field mNaturalBarHeight:I

.field private mNavigationBarMode:I

.field private mNavigationBarWindowState:I

.field private mNavigationIconHints:I

.field mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

.field mNextAlarmController:Lcom/android/systemui/statusbar/policy/NextAlarmController;

.field mNotificationButton:Landroid/widget/ImageView;

.field mNotificationButtonAnim:Landroid/animation/Animator;

.field private mNotificationButtonListener:Landroid/view/View$OnClickListener;

.field mNotificationIconArea:Landroid/view/View;

.field mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

.field private final mNotificationLocationsChangedListener:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnChildLocationsChangedListener;

.field mNotificationPanelDebugText:Landroid/widget/TextView;

.field mNotificationPanelGravity:I

.field mNotificationPanelMarginBottomPx:I

.field mNotificationPanelMinHeightFrac:F

.field private final mOnChildLocationsChangedListener:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnChildLocationsChangedListener;

.field mOperatorLogoIcon:Landroid/view/View;

.field mOrientation:I

.field private final mOverflowClickListener:Landroid/view/View$OnClickListener;

.field mPixelFormat:I

.field private mPmsBrightnessEnableObserver:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$PmsBrightnessEnableObserver;

.field private mPmsBrightnessEnablebySettings:Z

.field mPositionTmp:[I

.field mPostCollapseRunnables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mPreviousSealedMode:Z

.field protected mPreviousState:I

.field private mQConnectButtonListener:Landroid/view/View$OnClickListener;

.field private mQConnectHeight:I

.field private mQSDetailviewPanel:Landroid/view/View;

.field private mQSDetailviewType:I

.field private mQSEditBackButton:Landroid/view/View;

.field private mQSEditButton:Landroid/view/View;

.field private mQSEditPanel:Lcom/android/systemui/qs/QSEditPanel;

.field private mQSPanel:Lcom/android/systemui/qs/QSPanel;

.field private mQSpanelHeight:I

.field private mQconnectEnable:Z

.field private mQsBrightnessController:Lcom/android/systemui/settings/BrightnessController;

.field mQsBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

.field private mQsBrightnessView:Landroid/view/View;

.field private mQsQConnectView:Landroid/view/View;

.field mQueueLock:Ljava/lang/Object;

.field private mQuickSettingContainer:Landroid/widget/FrameLayout;

.field public mReasonSweep:Z

.field private mRecentsClickListener:Landroid/view/View$OnClickListener;

.field mRotationLockController:Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;

.field private mSFinderButtonListener:Landroid/view/View$OnClickListener;

.field public mSViewCoverCovered:Z

.field private mScreenOn:Ljava/lang/Boolean;

.field private mScreenOnComingFromTouch:Z

.field private mScreenOnFromKeyguard:Z

.field private mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

.field private mScrimSrcModeEnabled:Z

.field mScrollViewAnim:Landroid/animation/Animator;

.field mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

.field mSettingButtonHolder:Landroid/view/View;

.field mSettingDivider:Landroid/widget/ImageView;

.field mSettingsButtonAnim:Landroid/animation/Animator;

.field mSettingsEditButton:Landroid/widget/ImageView;

.field private mSettingsEditButtonListener:Landroid/view/View$OnClickListener;

.field private final mShadeUpdates:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$ShadeUpdates;

.field private mShowCarrierInPanel:Z

.field private mShowSearchHoldoff:I

.field private mShowSearchPanel:Ljava/lang/Runnable;

.field mSignalBatteryIcons:Landroid/widget/LinearLayout;

.field private mSrcOverXferMode:Landroid/graphics/PorterDuffXfermode;

.field private mSrcXferMode:Landroid/graphics/PorterDuffXfermode;

.field mStartTracing:Ljava/lang/Runnable;

.field mStatusBarContents:Landroid/widget/LinearLayout;

.field private mStatusBarHeaderHeight:I

.field private mStatusBarMode:I

.field mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

.field mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

.field private mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

.field private mStatusBarWindowState:I

.field mStatusIcons:Landroid/widget/LinearLayout;

.field mStatusIconsKeyguard:Landroid/widget/LinearLayout;

.field mStopTracing:Ljava/lang/Runnable;

.field private mSubsLabel:Landroid/widget/TextView;

.field mSystemIconArea:Landroid/widget/LinearLayout;

.field mSystemIcons:Landroid/widget/LinearLayout;

.field mSystemUiVisibility:I

.field private mTicker:Lcom/android/systemui/statusbar/phone/Ticker;

.field private mTickerEnabled:Z

.field private mTickerView:Landroid/view/View;

.field private mTicking:Z

.field mTickingDoneListener:Landroid/view/animation/Animation$AnimationListener;

.field mTracking:Z

.field mTrackingPosition:I

.field mTrackingViewAttached:Z

.field private mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

.field mUserInfoController:Lcom/android/systemui/statusbar/policy/UserInfoController;

.field private mUserSetup:Z

.field private mUserSetupObserver:Landroid/database/ContentObserver;

.field mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

.field mVelocityTracker:Landroid/view/VelocityTracker;

.field private final mVisibilityReporter:Ljava/lang/Runnable;

.field private mVisible:Z

.field mVolumeComponent:Lcom/android/systemui/volume/VolumeComponent;

.field mVowifiController:Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;

.field private mWaitingForKeyguardExit:Z

.field mZenModeController:Lcom/android/systemui/statusbar/policy/ZenModeController;

.field private makeInvisible:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 267
    sget-boolean v0, Lcom/android/systemui/statusbar/BaseStatusBar;->DEBUG:Z

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->DEBUG:Z

    .line 277
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->DEBUG:Z

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->CHATTY:Z

    .line 311
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    .line 569
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ecccccd    # 0.4f

    invoke-direct {v0, v1, v2, v3, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->ALPHA_IN:Landroid/view/animation/Interpolator;

    .line 570
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f4ccccd    # 0.8f

    invoke-direct {v0, v2, v2, v1, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    .line 7263
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDiagnosticLogs:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v1, 0x2

    const/4 v5, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 263
    invoke-direct {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;-><init>()V

    .line 320
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQconnectEnable:Z

    .line 350
    iput v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNaturalBarHeight:I

    .line 351
    iput v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIconSize:I

    .line 352
    iput v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIconHPadding:I

    .line 354
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurrentDisplaySize:Landroid/graphics/Point;

    .line 358
    iput v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindowState:I

    .line 365
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQueueLock:Ljava/lang/Object;

    .line 409
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTrackingViewAttached:Z

    .line 432
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabelVisible:Z

    .line 437
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mShowCarrierInPanel:Z

    .line 440
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPositionTmp:[I

    .line 443
    iput v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarWindowState:I

    .line 459
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAbsPos:[I

    .line 460
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPostCollapseRunnables:Ljava/util/ArrayList;

    .line 463
    iput v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisabled:I

    .line 466
    iput v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    .line 468
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 471
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPreviousSealedMode:Z

    .line 475
    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mGestureRec:Lcom/android/systemui/statusbar/GestureRecorder;

    .line 479
    iput v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationIconHints:I

    .line 492
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUserSetup:Z

    .line 493
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$1;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUserSetupObserver:Landroid/database/ContentObserver;

    .line 513
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$2;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$2;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpObserver:Landroid/database/ContentObserver;

    .line 552
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$3;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAutohide:Ljava/lang/Runnable;

    .line 567
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLinearInterpolator:Landroid/view/animation/Interpolator;

    .line 568
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBackdropInterpolator:Landroid/view/animation/Interpolator;

    .line 574
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSrcXferMode:Landroid/graphics/PorterDuffXfermode;

    .line 575
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSrcOverXferMode:Landroid/graphics/PorterDuffXfermode;

    .line 581
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMediaListenerRegisted:Z

    .line 582
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMediaListener:Landroid/media/session/MediaController$Callback;

    .line 603
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$5;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mOnChildLocationsChangedListener:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnChildLocationsChangedListener;

    .line 615
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSViewCoverCovered:Z

    .line 616
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAppCoverCovered:Z

    .line 618
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsShutingdown:Z

    .line 622
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurrentlyVisibleNotifications:Landroid/util/ArraySet;

    .line 625
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$ShadeUpdates;

    invoke-direct {v0, p0, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$ShadeUpdates;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Lcom/android/systemui/statusbar/phone/PhoneStatusBar$1;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mShadeUpdates:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$ShadeUpdates;

    .line 637
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$6;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$6;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationLocationsChangedListener:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnChildLocationsChangedListener;

    .line 659
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$7;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$7;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mVisibilityReporter:Ljava/lang/Runnable;

    .line 705
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$8;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$8;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mOverflowClickListener:Landroid/view/View$OnClickListener;

    .line 739
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPmsBrightnessEnablebySettings:Z

    .line 740
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mEasyModeEnablebySettings:Z

    .line 741
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBrightnessEnablebyBattery:Z

    .line 742
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBrightnessEnablebyDisableFlag:Z

    .line 743
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBrightnessEnablebyLongLifeMode:Z

    .line 744
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mEasyModeActivated:Z

    .line 750
    iput v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBatteryLevel:I

    .line 764
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsInQSEditMode:Z

    .line 769
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsInQSDetailviewMode:Z

    .line 770
    iput v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSDetailviewType:I

    .line 776
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCocktailTickerEnablebySettings:Z

    .line 778
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$9;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$9;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->makeInvisible:Ljava/lang/Runnable;

    .line 1599
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EmergencyModeObserver;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EmergencyModeObserver;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mEmergencyeModeObserver:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EmergencyModeObserver;

    .line 1600
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mEmergencyModeActivated:Z

    .line 1872
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$22;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$22;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRecentsClickListener:Landroid/view/View$OnClickListener;

    .line 1880
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$23;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$23;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLongPressBackRecentsListener:Landroid/view/View$OnLongClickListener;

    .line 1889
    iput v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mShowSearchHoldoff:I

    .line 1890
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$24;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$24;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mShowSearchPanel:Ljava/lang/Runnable;

    .line 1897
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$25;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$25;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHomeActionListener:Landroid/view/View$OnTouchListener;

    .line 2865
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHideBackdropFront:Ljava/lang/Runnable;

    .line 3394
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$30;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$30;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    .line 3435
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$31;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$31;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAnimateCollapsePanels:Ljava/lang/Runnable;

    .line 3538
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAccelerateInterpolator:Landroid/animation/TimeInterpolator;

    .line 3539
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDecelerateInterpolator:Landroid/animation/TimeInterpolator;

    .line 3540
    const/16 v0, 0x7d

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->FLIP_DURATION_OUT:I

    .line 3541
    const/16 v0, 0xe1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->FLIP_DURATION_IN:I

    .line 3542
    const/16 v0, 0x15e

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->FLIP_DURATION:I

    .line 3955
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$34;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$34;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCheckBarModes:Ljava/lang/Runnable;

    .line 4191
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$35;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$35;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTickingDoneListener:Landroid/view/animation/Animation$AnimationListener;

    .line 4461
    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCoverLauncher:Lcom/android/systemui/cover/SViewCoverLauncher;

    .line 4569
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$40;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$40;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 4704
    iput v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mOrientation:I

    .line 4706
    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLocale:Ljava/util/Locale;

    .line 5013
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$42;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$42;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStartTracing:Ljava/lang/Runnable;

    .line 5023
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$43;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$43;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStopTracing:Ljava/lang/Runnable;

    .line 6502
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$46;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$46;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandSettingsButtonListener:Landroid/view/View$OnClickListener;

    .line 6524
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$47;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$47;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationButtonListener:Landroid/view/View$OnClickListener;

    .line 6530
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$48;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$48;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBasicSettingsButtonListener:Landroid/view/View$OnClickListener;

    .line 6551
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$49;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$49;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsEditButtonListener:Landroid/view/View$OnClickListener;

    .line 6567
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$50;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$50;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSFinderButtonListener:Landroid/view/View$OnClickListener;

    .line 6595
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$51;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$51;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQConnectButtonListener:Landroid/view/View$OnClickListener;

    .line 6672
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$BatteryTextObserver;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$BatteryTextObserver;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBatteryTextObserver:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$BatteryTextObserver;

    .line 6816
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMultiWindowMode:Z

    .line 7030
    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHomeCitySettingsDialog:Landroid/app/AlertDialog;

    .line 7163
    iput v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->EDM_NULL:I

    .line 7164
    iput v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->EDM_FALSE:I

    .line 7165
    iput v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->EDM_TRUE:I

    .line 7206
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mReasonSweep:Z

    return-void
.end method

.method private SetQsDetailviewLayout(Landroid/view/View;)V
    .locals 3
    .param p1, "content"    # Landroid/view/View;

    .prologue
    .line 6931
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSDetailviewPanel:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 6932
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSDetailviewPanel:Landroid/view/View;

    const v2, 0x7f0e01d3

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 6933
    .local v0, "contentArea":Landroid/widget/LinearLayout;
    if-eqz v0, :cond_1

    .line 6934
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 6935
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 6937
    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 6940
    .end local v0    # "contentArea":Landroid/widget/LinearLayout;
    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 263
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurrentUserId:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 263
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUserSetup:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .param p1, "x1"    # Z

    .prologue
    .line 263
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setHeadsUpVisibility(Z)V

    return-void
.end method

.method static synthetic access$10000(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/NotificationData;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .param p1, "x1"    # Z

    .prologue
    .line 263
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUserSetup:Z

    return p1
.end method

.method static synthetic access$10200(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 263
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDozing:Z

    return v0
.end method

.method static synthetic access$10202(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .param p1, "x1"    # Z

    .prologue
    .line 263
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDozing:Z

    return p1
.end method

.method static synthetic access$10300(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 263
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateDozingState()V

    return-void
.end method

.method static synthetic access$10400(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/phone/ScrimController;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    return-object v0
.end method

.method static synthetic access$10800()Z
    .locals 1

    .prologue
    .line 263
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDiagnosticLogs:Z

    return v0
.end method

.method static synthetic access$10900(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 263
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->sendLogs(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    return-object v0
.end method

.method static synthetic access$11000(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # [Ljava/lang/String;

    .prologue
    .line 263
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$11100(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 263
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mEasyModeActivated:Z

    return v0
.end method

.method static synthetic access$11102(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .param p1, "x1"    # Z

    .prologue
    .line 263
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mEasyModeActivated:Z

    return p1
.end method

.method static synthetic access$11200(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 263
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    return v0
.end method

.method static synthetic access$11300(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 263
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCocktailTickerEnablebySettings:Z

    return v0
.end method

.method static synthetic access$11302(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .param p1, "x1"    # Z

    .prologue
    .line 263
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCocktailTickerEnablebySettings:Z

    return p1
.end method

.method static synthetic access$11400(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 263
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurrentUserId:I

    return v0
.end method

.method static synthetic access$11500(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 263
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurrentUserId:I

    return v0
.end method

.method static synthetic access$11600(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 263
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBrightnessEnablebySettings:Z

    return v0
.end method

.method static synthetic access$11602(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .param p1, "x1"    # Z

    .prologue
    .line 263
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBrightnessEnablebySettings:Z

    return p1
.end method

.method static synthetic access$11700(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 263
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurrentUserId:I

    return v0
.end method

.method static synthetic access$11800(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 263
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mEasyModeEnablebySettings:Z

    return v0
.end method

.method static synthetic access$11802(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .param p1, "x1"    # Z

    .prologue
    .line 263
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mEasyModeEnablebySettings:Z

    return p1
.end method

.method static synthetic access$11900(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 263
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurrentUserId:I

    return v0
.end method

.method static synthetic access$1200(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 263
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->removeHeadsUpView()V

    return-void
.end method

.method static synthetic access$12000(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 263
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurrentUserId:I

    return v0
.end method

.method static synthetic access$12100(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 263
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPmsBrightnessEnablebySettings:Z

    return v0
.end method

.method static synthetic access$12102(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .param p1, "x1"    # Z

    .prologue
    .line 263
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPmsBrightnessEnablebySettings:Z

    return p1
.end method

.method static synthetic access$12200(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 263
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurrentUserId:I

    return v0
.end method

.method static synthetic access$1300(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 263
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->addHeadsUpView()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .param p1, "x1"    # I

    .prologue
    .line 263
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->notifyUiVisibilityChanged(I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 263
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMediaListenerRegisted:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Landroid/media/MediaMetadata;)Landroid/media/MediaMetadata;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .param p1, "x1"    # Landroid/media/MediaMetadata;

    .prologue
    .line 263
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMediaMetadata:Landroid/media/MediaMetadata;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mVisibilityReporter:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/BaseStatusBar$H;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 263
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUseHeadsUp:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 263
    iget-wide v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLastVisibilityReportUptimeMs:J

    return-wide v0
.end method

.method static synthetic access$2002(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .param p1, "x1"    # J

    .prologue
    .line 263
    iput-wide p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLastVisibilityReportUptimeMs:J

    return-wide p1
.end method

.method static synthetic access$2100(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/BaseStatusBar$H;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/NotificationData;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/util/ArraySet;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurrentlyVisibleNotifications:Landroid/util/ArraySet;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .param p1, "x1"    # Ljava/util/Collection;
    .param p2, "x2"    # Ljava/util/Collection;

    .prologue
    .line 263
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->logNotificationVisibilityChanges(Ljava/util/Collection;Ljava/util/Collection;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Landroid/view/MotionEvent;

    .prologue
    .line 263
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->checkUserAutohide(Landroid/view/View;Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/SearchPanelView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSearchPanelView:Lcom/android/systemui/SearchPanelView;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/SearchPanelView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSearchPanelView:Lcom/android/systemui/SearchPanelView;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 263
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->clearAllNotifications()V

    return-void
.end method

.method static synthetic access$302(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .param p1, "x1"    # Z

    .prologue
    .line 263
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUseHeadsUp:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/NotificationData;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/NotificationData;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCheckBarModes:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/BaseStatusBar$H;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 263
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapseQsEditPanel()V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/qs/QSPanel;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 263
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateExpandQsEditPanel()V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 263
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurrentUserId:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 263
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisableNotificationAlerts:Z

    return v0
.end method

.method static synthetic access$4000(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 263
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mEmergencyModeActivated:Z

    return v0
.end method

.method static synthetic access$4002(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .param p1, "x1"    # Z

    .prologue
    .line 263
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mEmergencyModeActivated:Z

    return p1
.end method

.method static synthetic access$4100(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQuickSettingContainer:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 263
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateQSpanelHeight()V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 263
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    return v0
.end method

.method static synthetic access$4402(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .param p1, "x1"    # Z

    .prologue
    .line 263
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBrightnessEnablebyLongLifeMode:Z

    return p1
.end method

.method static synthetic access$4500(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 263
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setBrightnessControllerVisivility()V

    return-void
.end method

.method static synthetic access$4600(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 263
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->showHideQConnectLayout()V

    return-void
.end method

.method static synthetic access$4700(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 263
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurrentUserId:I

    return v0
.end method

.method static synthetic access$4800(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/internal/statusbar/IStatusBarService;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .param p1, "x1"    # Z

    .prologue
    .line 263
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpTicker:Z

    return p1
.end method

.method static synthetic access$5100(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 263
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDrawCount:I

    return v0
.end method

.method static synthetic access$5108(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 263
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDrawCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDrawCount:I

    return v0
.end method

.method static synthetic access$5200(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 263
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->awakenDreams()V

    return-void
.end method

.method static synthetic access$5300(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 263
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->handleLongPressBackRecents(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$5400(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mShowSearchPanel:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$5500(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/BaseStatusBar$H;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    return-object v0
.end method

.method static synthetic access$5600(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 263
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mShowSearchHoldoff:I

    return v0
.end method

.method static synthetic access$5700(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/BaseStatusBar$H;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    return-object v0
.end method

.method static synthetic access$5800(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/BaseStatusBar$H;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    return-object v0
.end method

.method static synthetic access$5900(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 263
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateNotificationShade()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 263
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUseHeadsUp:Z

    return v0
.end method

.method static synthetic access$6000(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBackdropFront:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$6200(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    return-object v0
.end method

.method static synthetic access$6300(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    return-object v0
.end method

.method static synthetic access$6400(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 263
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->escalateHeadsUp()V

    return-void
.end method

.method static synthetic access$6500(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 263
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->expandQsDetailviewPanel()V

    return-void
.end method

.method static synthetic access$6600(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 263
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->collapseQsDetailviewPanel()V

    return-void
.end method

.method static synthetic access$6700(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 263
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->SetQsDetailviewLayout(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$6800(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 263
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->checkBarModes()V

    return-void
.end method

.method static synthetic access$6900(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 263
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTickerEnabled:Z

    return v0
.end method

.method static synthetic access$6902(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .param p1, "x1"    # Z

    .prologue
    .line 263
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTickerEnabled:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 263
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUseHeadsUp:Z

    return v0
.end method

.method static synthetic access$7002(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .param p1, "x1"    # Z

    .prologue
    .line 263
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTicking:Z

    return p1
.end method

.method static synthetic access$7100(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTickerView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$7200(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/view/animation/Animation$AnimationListener;

    .prologue
    .line 263
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->loadAnim(ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7300(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 263
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    return v0
.end method

.method static synthetic access$7400(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    return-object v0
.end method

.method static synthetic access$7500(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    return-object v0
.end method

.method static synthetic access$7600(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/keyguard/ViewMediatorCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    return-object v0
.end method

.method static synthetic access$7700(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    return-object v0
.end method

.method static synthetic access$7800(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 263
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisabledUnmodified:I

    return v0
.end method

.method static synthetic access$7902(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .param p1, "x1"    # Ljava/lang/Boolean;

    .prologue
    .line 263
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScreenOn:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 263
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUseHeadsUp:Z

    return v0
.end method

.method static synthetic access$8000(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .param p1, "x1"    # Z

    .prologue
    .line 263
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->notifyNavigationBarScreenOn(Z)V

    return-void
.end method

.method static synthetic access$8100(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .param p1, "x1"    # Z

    .prologue
    .line 263
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->notifyHeadsUpScreenOn(Z)V

    return-void
.end method

.method static synthetic access$8200(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 263
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->finishBarAnimations()V

    return-void
.end method

.method static synthetic access$8300(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 263
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->stopNotificationLogging()V

    return-void
.end method

.method static synthetic access$8400(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 263
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->resetUserExpandedStates()V

    return-void
.end method

.method static synthetic access$8500(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 263
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->repositionNavigationBar()V

    return-void
.end method

.method static synthetic access$8600(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 263
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->startNotificationLoggingIfScreenOnAndVisible()V

    return-void
.end method

.method static synthetic access$8702(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .param p1, "x1"    # Z

    .prologue
    .line 263
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQconnectEnable:Z

    return p1
.end method

.method static synthetic access$8800(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 263
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBatteryLevel:I

    return v0
.end method

.method static synthetic access$8802(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .param p1, "x1"    # I

    .prologue
    .line 263
    iput p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBatteryLevel:I

    return p1
.end method

.method static synthetic access$8900(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBatteryText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 263
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUseHeadsUp:Z

    return v0
.end method

.method static synthetic access$9000(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardBatteryText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$9102(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .param p1, "x1"    # Z

    .prologue
    .line 263
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBrightnessEnablebyBattery:Z

    return p1
.end method

.method static synthetic access$9200(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 263
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isMSim()Z

    move-result v0

    return v0
.end method

.method static synthetic access$9300(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 263
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getNumberOfActiveSim()I

    move-result v0

    return v0
.end method

.method static synthetic access$9400(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 263
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->showHideMultiSIMLayout()V

    return-void
.end method

.method static synthetic access$9500(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    return-object v0
.end method

.method static synthetic access$9600(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/BaseStatusBar$H;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    return-object v0
.end method

.method static synthetic access$9700(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Landroid/content/Intent;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .param p1, "x1"    # Landroid/content/Intent;
    .param p2, "x2"    # Z

    .prologue
    .line 263
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->handleStartSettingsActivity(Landroid/content/Intent;Z)V

    return-void
.end method

.method static synthetic access$9802(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .param p1, "x1"    # Z

    .prologue
    .line 263
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLaunchTransitionFadingAway:Z

    return p1
.end method

.method static synthetic access$9900(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLaunchTransitionEndRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$9902(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 263
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLaunchTransitionEndRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method private addHeadsUpView()V
    .locals 6

    .prologue
    .line 2024
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0c02ef

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 2026
    .local v2, "headsUpHeight":I
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    const/16 v3, 0x7de

    const v4, 0x820328

    const/4 v5, -0x3

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 2036
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x1000000

    or-int/2addr v1, v3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2037
    const/16 v1, 0x30

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 2038
    const-string v1, "Heads Up"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 2039
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 2040
    const v1, 0x7f100036

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 2042
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    invoke-interface {v1, v3, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2043
    return-void
.end method

.method private addNavigationBar()V
    .locals 3

    .prologue
    .line 1942
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "PhoneStatusBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addNavigationBar: about to add "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1943
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-nez v0, :cond_2

    .line 1961
    :cond_1
    :goto_0
    return-void

    .line 1945
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->prepareNavigationBarView()V

    .line 1950
    :try_start_0
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsNavigationBarHidden:Z

    if-nez v0, :cond_1

    .line 1951
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getNavigationBarLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1954
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private addStatusBarWindow()V
    .locals 3

    .prologue
    .line 4374
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->makeStatusBarView()Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    .line 4375
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    .line 4376
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getStatusBarHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->add(Landroid/view/View;I)V

    .line 4379
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsStatusBarHidden:Z

    if-eqz v0, :cond_0

    .line 4380
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->setVisibility(I)V

    .line 4383
    :cond_0
    return-void
.end method

.method private adjustDisableFlags(I)I
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 3019
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLaunchTransitionFadingAway:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedVisible:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBouncerShowing:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mWaitingForKeyguardExit:Z

    if-eqz v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    if-eqz v0, :cond_1

    .line 3022
    const/high16 v0, 0x20000

    or-int/2addr p1, v0

    .line 3023
    const/high16 v0, 0x100000

    or-int/2addr p1, v0

    .line 3028
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSViewCoverCovered:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAppCoverCovered:Z

    if-eqz v0, :cond_3

    .line 3029
    :cond_2
    const/high16 p1, 0x10000

    .line 3030
    const-string v0, "PhoneStatusBar"

    const-string v1, "adjustDisableFlags()-Cover"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3034
    :cond_3
    return p1
.end method

.method private animateCollapseQsEditPanel()V
    .locals 0

    .prologue
    .line 6861
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateExpandNotificationsPanel()V

    .line 6882
    return-void
.end method

.method private animateExpandQsEditPanel()V
    .locals 0

    .prologue
    .line 6840
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateExpandSettingsPanel()V

    .line 6858
    return-void
.end method

.method private animateStatusBarHide(Landroid/view/View;Z)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "animate"    # Z

    .prologue
    const/4 v1, 0x0

    .line 3229
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 3230
    if-nez p2, :cond_0

    .line 3231
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 3232
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 3246
    :goto_0
    return-void

    .line 3235
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xa0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$29;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$29;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    goto :goto_0
.end method

.method private animateStatusBarShow(Landroid/view/View;Z)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "animate"    # Z

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 3252
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 3253
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 3254
    if-nez p2, :cond_1

    .line 3255
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 3277
    :cond_0
    :goto_0
    return-void

    .line 3258
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x140

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->ALPHA_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 3270
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardFadingAway:Z

    if-eqz v0, :cond_0

    .line 3271
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardFadingAwayDuration:J

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLinearOutSlowIn:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardFadingAwayDelay:J

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0
.end method

.method private areLightsOn()Z
    .locals 1

    .prologue
    .line 4013
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private awakenDreams()V
    .locals 1

    .prologue
    .line 1918
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDreamManager:Landroid/service/dreams/IDreamManager;

    if-eqz v0, :cond_0

    .line 1920
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDreamManager:Landroid/service/dreams/IDreamManager;

    invoke-interface {v0}, Landroid/service/dreams/IDreamManager;->awaken()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1925
    :cond_0
    :goto_0
    return-void

    .line 1921
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private barMode(III)I
    .locals 1
    .param p1, "vis"    # I
    .param p2, "transientFlag"    # I
    .param p3, "translucentFlag"    # I

    .prologue
    .line 3917
    and-int v0, p1, p2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const v0, 0x8000

    and-int/2addr v0, p1

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    :cond_1
    and-int v0, p1, p3

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_3

    const/4 v0, 0x3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private cancelAutohide()V
    .locals 2

    .prologue
    .line 3989
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAutohideSuspended:Z

    .line 3990
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAutohide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3991
    return-void
.end method

.method private checkBarMode(IILcom/android/systemui/statusbar/phone/BarTransitions;)V
    .locals 3
    .param p1, "mode"    # I
    .param p2, "windowState"    # I
    .param p3, "transitions"    # Lcom/android/systemui/statusbar/phone/BarTransitions;

    .prologue
    .line 3934
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/BatteryController;->isPowerSave()Z

    move-result v1

    .line 3935
    .local v1, "powerSave":Z
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScreenOn:Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScreenOn:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_0
    const/4 v2, 0x2

    if-eq p2, v2, :cond_3

    if-nez v1, :cond_3

    const/4 v0, 0x1

    .line 3938
    .local v0, "anim":Z
    :goto_0
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMultiWindowMode:Z

    if-eqz v2, :cond_1

    .line 3939
    const/4 p1, 0x6

    .line 3942
    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getBarState()I

    move-result v2

    if-nez v2, :cond_2

    .line 3943
    const/4 p1, 0x5

    .line 3945
    :cond_2
    invoke-virtual {p3, p1, v0}, Lcom/android/systemui/statusbar/phone/BarTransitions;->transitionTo(IZ)V

    .line 3946
    return-void

    .line 3935
    .end local v0    # "anim":Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkBarModes()V
    .locals 3

    .prologue
    .line 3925
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDemoMode:Z

    if-eqz v0, :cond_1

    .line 3931
    :cond_0
    :goto_0
    return-void

    .line 3926
    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarMode:I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindowState:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getBarTransitions()Lcom/android/systemui/statusbar/phone/BarTransitions;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->checkBarMode(IILcom/android/systemui/statusbar/phone/BarTransitions;)V

    .line 3927
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz v0, :cond_0

    .line 3928
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarMode:I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarWindowState:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBarTransitions()Lcom/android/systemui/statusbar/phone/BarTransitions;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->checkBarMode(IILcom/android/systemui/statusbar/phone/BarTransitions;)V

    goto :goto_0
.end method

.method private checkHomeCitySettingsDialog(Z)V
    .locals 6
    .param p1, "show"    # Z

    .prologue
    .line 7033
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/sec/KeyguardProperties;->shouldShowPopupForDualClock(Landroid/content/Context;)Z

    move-result v0

    .line 7034
    .local v0, "available":Z
    const-string v3, "PhoneStatusBar"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HomeCitySettingsDialog available = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", show = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7035
    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    .line 7036
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHomeCitySettingsDialog:Landroid/app/AlertDialog;

    if-eqz v3, :cond_0

    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mUseCHNFontType:Z

    if-eqz v3, :cond_1

    .line 7039
    :cond_0
    const/4 v2, 0x5

    .line 7041
    .local v2, "theme":I
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 7042
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    const v3, 0x7f0d0190

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 7043
    const v3, 0x7f0d0191

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 7044
    const v3, 0x1040013

    new-instance v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$55;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$55;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 7055
    const v3, 0x1040009

    new-instance v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$56;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$56;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 7063
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHomeCitySettingsDialog:Landroid/app/AlertDialog;

    .line 7064
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHomeCitySettingsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d9

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    .line 7068
    .end local v1    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v2    # "theme":I
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHomeCitySettingsDialog:Landroid/app/AlertDialog;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHomeCitySettingsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v3

    if-nez v3, :cond_2

    .line 7069
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHomeCitySettingsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 7076
    :cond_2
    :goto_0
    return-void

    .line 7072
    :cond_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHomeCitySettingsDialog:Landroid/app/AlertDialog;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHomeCitySettingsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 7073
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHomeCitySettingsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->dismiss()V

    goto :goto_0
.end method

.method private checkUserAutohide(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    .line 3999
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    const/high16 v1, 0xc000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    .line 4003
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->userAutohide()V

    .line 4005
    :cond_0
    return-void
.end method

.method private clearAllNotifications()V
    .locals 8

    .prologue
    const/16 v7, 0x8

    .line 1671
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v3

    .line 1672
    .local v3, "numChildren":I
    const/4 v2, 0x0

    .line 1673
    .local v2, "isRemoved":Z
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1674
    .local v4, "viewsToHide":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_2

    .line 1675
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v5, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1677
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_1

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v5, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1678
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_0

    .line 1679
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1680
    const/4 v2, 0x1

    .line 1684
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-ne v5, v7, :cond_1

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardIconOverflowContainer:Lcom/android/systemui/statusbar/NotificationOverflowContainer;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/NotificationOverflowContainer;->getVisibility()I

    move-result v5

    if-nez v5, :cond_1

    .line 1686
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v5, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->removeView(Landroid/view/View;)V

    .line 1687
    const/4 v2, 0x1

    .line 1674
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1693
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    if-nez v2, :cond_3

    .line 1694
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapsePanels(I)V

    .line 1721
    :goto_1
    return-void

    .line 1700
    :cond_3
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardIconOverflowContainer:Lcom/android/systemui/statusbar/NotificationOverflowContainer;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/NotificationOverflowContainer;->getVisibility()I

    move-result v5

    if-nez v5, :cond_4

    .line 1702
    :try_start_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    iget v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurrentUserId:I

    invoke-interface {v5, v6}, Lcom/android/internal/statusbar/IStatusBarService;->onClearAllNotifications(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1704
    :goto_2
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardIconOverflowContainer:Lcom/android/systemui/statusbar/NotificationOverflowContainer;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/NotificationOverflowContainer;->getIconsView()Lcom/android/systemui/statusbar/NotificationOverflowIconsView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/NotificationOverflowIconsView;->removeAllViews()V

    .line 1705
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardIconOverflowContainer:Lcom/android/systemui/statusbar/NotificationOverflowContainer;

    invoke-virtual {v5, v7}, Lcom/android/systemui/statusbar/NotificationOverflowContainer;->setVisibility(I)V

    .line 1719
    :goto_3
    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->performDismissAllAnimations(Ljava/util/ArrayList;)V

    goto :goto_1

    .line 1709
    :cond_4
    new-instance v5, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$19;

    invoke-direct {v5, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$19;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->addPostCollapseAction(Ljava/lang/Runnable;)V

    goto :goto_3

    .line 1703
    :catch_0
    move-exception v5

    goto :goto_2
.end method

.method private collapseQsDetailviewPanel()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 6977
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsInQSDetailviewMode:Z

    .line 6978
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateExpandNotificationsPanel()V

    .line 6979
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSEditButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 7001
    return-void
.end method

.method private computeBarMode(IILcom/android/systemui/statusbar/phone/BarTransitions;II)I
    .locals 3
    .param p1, "oldVis"    # I
    .param p2, "newVis"    # I
    .param p3, "transitions"    # Lcom/android/systemui/statusbar/phone/BarTransitions;
    .param p4, "transientFlag"    # I
    .param p5, "translucentFlag"    # I

    .prologue
    .line 3901
    invoke-direct {p0, p1, p4, p5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->barMode(III)I

    move-result v1

    .line 3902
    .local v1, "oldMode":I
    invoke-direct {p0, p2, p4, p5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->barMode(III)I

    move-result v0

    .line 3905
    .local v0, "newMode":I
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSViewCoverCovered:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAppCoverCovered:Z

    if-eqz v2, :cond_1

    .line 3906
    :cond_0
    const/4 v0, 0x4

    .line 3910
    :cond_1
    if-ne v1, v0, :cond_2

    .line 3911
    const/4 v0, -0x1

    .line 3913
    .end local v0    # "newMode":I
    :cond_2
    return v0
.end method

.method private dispatchDemoCommandToView(Ljava/lang/String;Landroid/os/Bundle;I)V
    .locals 2
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "id"    # I

    .prologue
    .line 5221
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    if-nez v1, :cond_1

    .line 5226
    :cond_0
    :goto_0
    return-void

    .line 5222
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v1, p3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 5223
    .local v0, "v":Landroid/view/View;
    instance-of v1, v0, Lcom/android/systemui/DemoMode;

    if-eqz v1, :cond_0

    .line 5224
    check-cast v0, Lcom/android/systemui/DemoMode;

    .end local v0    # "v":Landroid/view/View;
    invoke-interface {v0, p1, p2}, Lcom/android/systemui/DemoMode;->dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private static dumpBarTransitions(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/systemui/statusbar/phone/BarTransitions;)V
    .locals 1
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "var"    # Ljava/lang/String;
    .param p2, "transitions"    # Lcom/android/systemui/statusbar/phone/BarTransitions;

    .prologue
    .line 4364
    const-string v0, "  "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, ".BarTransitions.mMode="

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4365
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/BarTransitions;->getMode()I

    move-result v0

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/BarTransitions;->modeToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4366
    return-void
.end method

.method private escalateHeadsUp()V
    .locals 4

    .prologue
    .line 3379
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 3380
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v2

    iget-object v1, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 3381
    .local v1, "sbn":Landroid/service/notification/StatusBarNotification;
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->release()V

    .line 3382
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    .line 3383
    .local v0, "notification":Landroid/app/Notification;
    iget-object v2, v0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    if-eqz v2, :cond_1

    .line 3384
    sget-boolean v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 3385
    const-string v2, "PhoneStatusBar"

    const-string v3, "converting a heads up to fullScreen"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3387
    :cond_0
    :try_start_0
    iget-object v2, v0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3392
    .end local v0    # "notification":Landroid/app/Notification;
    .end local v1    # "sbn":Landroid/service/notification/StatusBarNotification;
    :cond_1
    :goto_0
    return-void

    .line 3388
    .restart local v0    # "notification":Landroid/app/Notification;
    .restart local v1    # "sbn":Landroid/service/notification/StatusBarNotification;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private expandQsDetailviewPanel()V
    .locals 2

    .prologue
    .line 6954
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsInQSDetailviewMode:Z

    .line 6955
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSEditButton:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6956
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateExpandSettingsPanel()V

    .line 6974
    return-void
.end method

.method private finishBarAnimations()V
    .locals 1

    .prologue
    .line 3949
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getBarTransitions()Lcom/android/systemui/statusbar/phone/BarTransitions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/BarTransitions;->finishAnimations()V

    .line 3950
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz v0, :cond_0

    .line 3951
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBarTransitions()Lcom/android/systemui/statusbar/phone/BarTransitions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/BarTransitions;->finishAnimations()V

    .line 3953
    :cond_0
    return-void
.end method

.method private getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "edmUri"    # Ljava/lang/String;
    .param p3, "projectionArgs"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 7168
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 7169
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, p3

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 7170
    .local v6, "cr":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 7172
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 7173
    invoke-interface {v6, p3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 7174
    const/4 v0, 0x1

    .line 7180
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 7183
    :goto_0
    return v0

    .line 7176
    :cond_0
    const/4 v0, 0x0

    .line 7180
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 7178
    :catch_0
    move-exception v0

    .line 7180
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 7183
    :cond_1
    const/4 v0, -0x1

    goto :goto_0

    .line 7180
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "edmUri"    # Ljava/lang/String;
    .param p3, "projectionArgs"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 7186
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 7187
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, p3

    move-object v4, p4

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 7188
    .local v6, "cr":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 7190
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 7191
    invoke-interface {v6, p3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 7192
    const/4 v0, 0x1

    .line 7198
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 7201
    :goto_0
    return v0

    .line 7194
    :cond_0
    const/4 v0, 0x0

    .line 7198
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 7196
    :catch_0
    move-exception v0

    .line 7198
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 7201
    :cond_1
    const/4 v0, -0x1

    goto :goto_0

    .line 7198
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private getKnoxValueBoolean(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .param p1, "sUri"    # Ljava/lang/String;
    .param p2, "sSelection"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 7124
    const/4 v7, 0x0

    .line 7125
    .local v7, "result":Z
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 7126
    .local v1, "uri":Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, p2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 7127
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 7129
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 7130
    invoke-interface {v6, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 7131
    const/4 v7, 0x1

    .line 7134
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v8, v7

    .line 7138
    .end local v7    # "result":Z
    .local v8, "result":I
    :goto_0
    return v8

    .line 7134
    .end local v8    # "result":I
    .restart local v7    # "result":Z
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v8, v7

    .line 7135
    .restart local v8    # "result":I
    goto :goto_0

    .end local v8    # "result":I
    :cond_1
    move v8, v7

    .line 7138
    .restart local v8    # "result":I
    goto :goto_0
.end method

.method private getKnoxValueInteger(Ljava/lang/String;Ljava/lang/String;)I
    .locals 9
    .param p1, "sUri"    # Ljava/lang/String;
    .param p2, "sSelection"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 7142
    const/4 v7, 0x0

    .line 7143
    .local v7, "result":I
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 7144
    .local v1, "uri":Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, p2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 7145
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 7147
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 7148
    invoke-interface {v6, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 7150
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v8, v7

    .line 7154
    .end local v7    # "result":I
    .local v8, "result":I
    :goto_0
    return v8

    .line 7150
    .end local v8    # "result":I
    .restart local v7    # "result":I
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v8, v7

    .line 7151
    .end local v7    # "result":I
    .restart local v8    # "result":I
    goto :goto_0

    .end local v8    # "result":I
    .restart local v7    # "result":I
    :cond_0
    move v8, v7

    .line 7154
    .end local v7    # "result":I
    .restart local v8    # "result":I
    goto :goto_0
.end method

.method private getNavigationBarLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 6

    .prologue
    const/4 v1, -0x1

    .line 1982
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7e3

    const v4, 0x840068

    const/4 v5, -0x3

    move v2, v1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 1993
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1994
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x1000000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1997
    :cond_0
    const-string v1, "NavigationBar"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 1998
    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1999
    return-object v0
.end method

.method private getNotificationMask(Ljava/lang/String;)I
    .locals 6
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 7228
    const/4 v1, 0x3

    .line 7231
    .local v1, "maskValue":I
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    const-string v4, "com.android.settings"

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v2

    .line 7232
    .local v2, "myContext":Landroid/content/Context;
    const-string v3, "notification_manager_settings"

    const/4 v4, 0x4

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 7233
    .local v0, "mPrefs":Landroid/content/SharedPreferences;
    const/4 v3, 0x3

    invoke-interface {v0, p1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 7237
    .end local v0    # "mPrefs":Landroid/content/SharedPreferences;
    .end local v2    # "myContext":Landroid/content/Context;
    :goto_0
    return v1

    .line 7234
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private getStatusBarLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 6

    .prologue
    .line 2004
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getStatusBarHeight()I

    move-result v2

    .line 2005
    .local v2, "mBarHeight":I
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    const/16 v3, 0x7d0

    const v4, -0x7f7bffb8

    const/4 v5, -0x3

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 2015
    .local v0, "mLp":Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x1000000

    or-int/2addr v1, v3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2016
    const/16 v1, 0x30

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 2017
    const/16 v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 2018
    const-string v1, "StatusBar"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 2019
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 2020
    return-object v0
.end method

.method private handleLongPressBackRecents(Landroid/view/View;)V
    .locals 15
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const v14, 0x7f0e01b8

    .line 5871
    const/4 v6, 0x0

    .line 5872
    .local v6, "sendBackLongPress":Z
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    .line 5873
    .local v2, "activityManager":Landroid/app/IActivityManager;
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v7}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v4

    .line 5874
    .local v4, "isAccessiblityEnabled":Z
    invoke-interface {v2}, Landroid/app/IActivityManager;->isInLockTaskMode()Z

    move-result v7

    if-eqz v7, :cond_4

    if-nez v4, :cond_4

    .line 5875
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 5878
    .local v8, "time":J
    iget-wide v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLastLockToAppLongPress:J

    sub-long v10, v8, v10

    const-wide/16 v12, 0xc8

    cmp-long v7, v10, v12

    if-gez v7, :cond_3

    .line 5879
    invoke-interface {v2}, Landroid/app/IActivityManager;->stopLockTaskModeOnCurrent()V

    .line 5886
    :cond_0
    :goto_0
    iput-wide v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLastLockToAppLongPress:J

    .line 5897
    .end local v8    # "time":J
    :cond_1
    :goto_1
    if-eqz v6, :cond_2

    .line 5898
    move-object/from16 v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyButtonView;

    move-object v5, v0

    .line 5899
    .local v5, "keyButtonView":Lcom/android/systemui/statusbar/policy/KeyButtonView;
    const/4 v7, 0x0

    const/16 v10, 0x80

    invoke-virtual {v5, v7, v10}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->sendEvent(II)V

    .line 5900
    const/4 v7, 0x2

    invoke-virtual {v5, v7}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->sendAccessibilityEvent(I)V

    .line 5905
    .end local v2    # "activityManager":Landroid/app/IActivityManager;
    .end local v4    # "isAccessiblityEnabled":Z
    .end local v5    # "keyButtonView":Lcom/android/systemui/statusbar/policy/KeyButtonView;
    :cond_2
    :goto_2
    return-void

    .line 5880
    .restart local v2    # "activityManager":Landroid/app/IActivityManager;
    .restart local v4    # "isAccessiblityEnabled":Z
    .restart local v8    # "time":J
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v7

    if-ne v7, v14, :cond_0

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRecentsButton()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->isPressed()Z

    move-result v7

    if-nez v7, :cond_0

    .line 5884
    const/4 v6, 0x1

    goto :goto_0

    .line 5889
    .end local v8    # "time":J
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v7

    if-ne v7, v14, :cond_5

    .line 5890
    const/4 v6, 0x1

    goto :goto_1

    .line 5891
    :cond_5
    if-eqz v4, :cond_1

    invoke-interface {v2}, Landroid/app/IActivityManager;->isInLockTaskMode()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 5894
    invoke-interface {v2}, Landroid/app/IActivityManager;->stopLockTaskModeOnCurrent()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 5902
    .end local v2    # "activityManager":Landroid/app/IActivityManager;
    .end local v4    # "isAccessiblityEnabled":Z
    :catch_0
    move-exception v3

    .line 5903
    .local v3, "e":Landroid/os/RemoteException;
    const-string v7, "PhoneStatusBar"

    const-string v10, "Unable to reach activity manager"

    invoke-static {v7, v10, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method private handleStartSettingsActivity(Landroid/content/Intent;Z)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "onlyProvisioned"    # Z

    .prologue
    .line 5055
    new-instance v1, Landroid/content/Intent;

    const-string v2, "DismissClipboardDialogFromPhoneStatusBar"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5056
    .local v1, "dismissIntent":Landroid/content/Intent;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5057
    .local v0, "closeDialogsIntent":Landroid/content/Intent;
    const-string v2, "PhoneStatusBar"

    const-string v3, "Send intent for dismiss clipboard dialog inside phonestatusbar() !"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5058
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 5059
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 5060
    const/4 v2, 0x1

    invoke-virtual {p0, p1, p2, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->startActivityDismissingKeyguard(Landroid/content/Intent;ZZ)V

    .line 5061
    return-void
.end method

.method private hunStateToString(Lcom/android/systemui/statusbar/NotificationData$Entry;)Ljava/lang/String;
    .locals 1
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .prologue
    .line 4358
    if-nez p1, :cond_0

    const-string v0, "null"

    .line 4360
    :goto_0
    return-object v0

    .line 4359
    :cond_0
    iget-object v0, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    if-nez v0, :cond_1

    const-string v0, "corrupt"

    goto :goto_0

    .line 4360
    :cond_1
    iget-object v0, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private instantCollapseNotificationPanel()V
    .locals 1

    .prologue
    .line 5645
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->instantCollapse()V

    .line 5652
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->makeExpandedInvisible()V

    .line 5654
    return-void
.end method

.method private instantExpandNotificationsPanel()V
    .locals 1

    .prologue
    .line 5638
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->panelRevealedByUser:Z

    .line 5639
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->makeExpandedVisible(Z)V

    .line 5640
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->instantExpand()V

    .line 5641
    return-void
.end method

.method private isShowNotificationIndicator(Ljava/lang/String;)Z
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 7220
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getNotificationMask(Ljava/lang/String;)I

    move-result v0

    .line 7221
    .local v0, "mask":I
    and-int/lit8 v1, v0, 0x1

    if-nez v1, :cond_0

    .line 7222
    const/4 v1, 0x0

    .line 7224
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isShowNotificationPanel(Ljava/lang/String;)Z
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 7211
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getNotificationMask(Ljava/lang/String;)I

    move-result v0

    .line 7212
    .local v0, "mask":I
    and-int/lit8 v1, v0, 0x2

    if-nez v1, :cond_0

    .line 7213
    const/4 v1, 0x0

    .line 7215
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private loadAnim(ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;
    .locals 2
    .param p1, "id"    # I
    .param p2, "listener"    # Landroid/view/animation/Animation$AnimationListener;

    .prologue
    .line 4202
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 4203
    .local v0, "anim":Landroid/view/animation/Animation;
    if-eqz p2, :cond_0

    .line 4204
    invoke-virtual {v0, p2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 4206
    :cond_0
    return-object v0
.end method

.method private logNotificationVisibilityChanges(Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4987
    .local p1, "newlyVisible":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .local p2, "noLongerVisible":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4997
    :goto_0
    return-void

    .line 4990
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 4991
    .local v0, "newlyVisibleAr":[Ljava/lang/String;
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {p2, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 4993
    .local v1, "noLongerVisibleAr":[Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v2, v0, v1}, Lcom/android/internal/statusbar/IStatusBarService;->onNotificationVisibilityChanged([Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4994
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private notifyNavigationBarScreenOn(Z)V
    .locals 1
    .param p1, "screenOn"    # Z

    .prologue
    .line 1977
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-nez v0, :cond_0

    .line 1979
    :goto_0
    return-void

    .line 1978
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->notifyScreenOn(Z)V

    goto :goto_0
.end method

.method private notifyUiVisibilityChanged(I)V
    .locals 1
    .param p1, "vis"    # I

    .prologue
    .line 4047
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mWindowManagerService:Landroid/view/IWindowManager;

    invoke-interface {v0, p1}, Landroid/view/IWindowManager;->statusBarVisibilityChanged(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4050
    :goto_0
    return-void

    .line 4048
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private packageHasVisibilityOverride(Ljava/lang/String;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 2499
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NotificationData;->getVisibilityOverride(Ljava/lang/String;)I

    move-result v0

    const/16 v1, -0x3e8

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private performDismissAllAnimations(Ljava/util/ArrayList;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1724
    .local p1, "hideAnimatedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    new-instance v6, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$20;

    invoke-direct {v6, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$20;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    .line 1738
    .local v6, "animationFinishAction":Ljava/lang/Runnable;
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setDismissAllInProgress(Z)V

    .line 1742
    const/16 v10, 0xa

    .line 1743
    .local v10, "rowDelayDecrement":I
    const/16 v7, 0x8c

    .line 1744
    .local v7, "currentDelay":I
    const/4 v3, 0x0

    .line 1745
    .local v3, "totalDelay":I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 1746
    .local v9, "numItems":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v9, :cond_1

    .line 1747
    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 1748
    .local v1, "view":Landroid/view/View;
    const/4 v2, 0x0

    .line 1749
    .local v2, "endRunnable":Ljava/lang/Runnable;
    add-int/lit8 v0, v9, -0x1

    if-ne v8, v0, :cond_0

    .line 1750
    move-object v2, v6

    .line 1752
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    const-wide/16 v4, 0x104

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->dismissViewAnimated(Landroid/view/View;Ljava/lang/Runnable;IJ)V

    .line 1753
    const/16 v0, 0x32

    sub-int v4, v7, v10

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1754
    add-int/2addr v3, v7

    .line 1746
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 1756
    .end local v1    # "view":Landroid/view/View;
    .end local v2    # "endRunnable":Ljava/lang/Runnable;
    :cond_1
    return-void
.end method

.method private prepareNavigationBarView()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1928
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->reorient()V

    .line 1930
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRecentsButton()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRecentsClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1931
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRecentsButton()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRecentsPreloadOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1932
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRecentsButton()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setLongClickable(Z)V

    .line 1933
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRecentsButton()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLongPressBackRecentsListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1934
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBackButton()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setLongClickable(Z)V

    .line 1935
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBackButton()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLongPressBackRecentsListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1936
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getHomeButton()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHomeActionListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1937
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateSearchPanel()V

    .line 1938
    return-void
.end method

.method private refreshAllIconsForLayout(Landroid/widget/LinearLayout;)V
    .locals 4
    .param p1, "ll"    # Landroid/widget/LinearLayout;

    .prologue
    .line 2056
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    .line 2057
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "n":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 2058
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2059
    .local v0, "child":Landroid/view/View;
    instance-of v3, v0, Lcom/android/systemui/statusbar/StatusBarIconView;

    if-eqz v3, :cond_0

    .line 2060
    check-cast v0, Lcom/android/systemui/statusbar/StatusBarIconView;

    .end local v0    # "child":Landroid/view/View;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->updateDrawable()V

    .line 2057
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2063
    :cond_1
    return-void
.end method

.method private removeHeadsUpView()V
    .locals 2

    .prologue
    .line 2046
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 2047
    return-void
.end method

.method private removeQsDetailviewLayout()V
    .locals 3

    .prologue
    .line 6943
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSDetailviewPanel:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 6944
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSDetailviewPanel:Landroid/view/View;

    const v2, 0x7f0e01d3

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 6945
    .local v0, "contentArea":Landroid/widget/LinearLayout;
    if-eqz v0, :cond_0

    .line 6946
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 6947
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 6951
    .end local v0    # "contentArea":Landroid/widget/LinearLayout;
    :cond_0
    return-void
.end method

.method private removeQsDetailviewPanel()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 7004
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsInQSDetailviewMode:Z

    .line 7005
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSDetailviewPanel:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 7006
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSDetailviewPanel:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 7008
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSEditButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 7027
    return-void
.end method

.method private repositionNavigationBar()V
    .locals 3

    .prologue
    .line 1964
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1974
    :cond_0
    :goto_0
    return-void

    .line 1966
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->prepareNavigationBarView()V

    .line 1969
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsNavigationBarHidden:Z

    if-nez v0, :cond_0

    .line 1970
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getNavigationBarLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private resetBatteryPercentageObserver()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 6760
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBatteryTextObserver:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$BatteryTextObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 6761
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBatteryTextObserver:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$BatteryTextObserver;

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$BatteryTextObserver;->onChange(Z)V

    .line 6762
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "display_battery_percentage"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBatteryTextObserver:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$BatteryTextObserver;

    iget v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurrentUserId:I

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 6765
    return-void
.end method

.method private resetBrightnessEnableObserver()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 6747
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBrightnessEnableObserver:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$BrightnessEnableObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 6748
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBrightnessEnableObserver:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$BrightnessEnableObserver;

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$BrightnessEnableObserver;->onChange(Z)V

    .line 6749
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "notification_panel_brightness_adjustment"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBrightnessEnableObserver:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$BrightnessEnableObserver;

    iget v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurrentUserId:I

    invoke-virtual {v0, v1, v5, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 6752
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPmsBrightnessEnableObserver:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$PmsBrightnessEnableObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 6753
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPmsBrightnessEnableObserver:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$PmsBrightnessEnableObserver;

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$PmsBrightnessEnableObserver;->onChange(Z)V

    .line 6754
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "pms_notification_panel_brightness_adjustment"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPmsBrightnessEnableObserver:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$PmsBrightnessEnableObserver;

    iget v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurrentUserId:I

    invoke-virtual {v0, v1, v5, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 6757
    return-void
.end method

.method private resetEasyModeObserver()V
    .locals 5

    .prologue
    .line 6768
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mEasyModeEnableObserver:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EasyModeEnableObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 6769
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mEasyModeEnableObserver:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EasyModeEnableObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EasyModeEnableObserver;->onChange(Z)V

    .line 6770
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "easy_mode_switch"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mEasyModeEnableObserver:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EasyModeEnableObserver;

    iget v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurrentUserId:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 6773
    return-void
.end method

.method private resetUserExpandedStates()V
    .locals 5

    .prologue
    .line 4672
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v0

    .line 4673
    .local v0, "activeNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/NotificationData$Entry;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 4674
    .local v3, "notificationCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 4675
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 4676
    .local v1, "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    iget-object v4, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v4, :cond_0

    .line 4677
    iget-object v4, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->resetUserExpansion()V

    .line 4674
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4680
    .end local v1    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    :cond_1
    return-void
.end method

.method private resetUserSetupObserver()V
    .locals 5

    .prologue
    .line 4845
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUserSetupObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 4846
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUserSetupObserver:Landroid/database/ContentObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 4847
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "user_setup_complete"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUserSetupObserver:Landroid/database/ContentObserver;

    iget v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurrentUserId:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 4851
    return-void
.end method

.method private resumeSuspendedAutohide()V
    .locals 4

    .prologue
    .line 3976
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAutohideSuspended:Z

    if-eqz v0, :cond_0

    .line 3977
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->scheduleAutohide()V

    .line 3978
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCheckBarModes:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3980
    :cond_0
    return-void
.end method

.method private runPostCollapseRunnables()V
    .locals 4

    .prologue
    .line 3489
    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPostCollapseRunnables:Ljava/util/ArrayList;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3491
    .local v1, "mCurrentPostRunnables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Runnable;>;"
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPostCollapseRunnables:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 3493
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 3494
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 3495
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 3494
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3497
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 3498
    return-void
.end method

.method private sameSessions(Landroid/media/session/MediaController;Landroid/media/session/MediaController;)Z
    .locals 1
    .param p1, "a"    # Landroid/media/session/MediaController;
    .param p2, "b"    # Landroid/media/session/MediaController;

    .prologue
    .line 2857
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    .line 2859
    :goto_0
    return v0

    .line 2858
    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 2859
    :cond_1
    invoke-virtual {p1, p2}, Landroid/media/session/MediaController;->controlsSameSession(Landroid/media/session/MediaController;)Z

    move-result v0

    goto :goto_0
.end method

.method static final saturate(F)F
    .locals 3
    .param p0, "a"    # F

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    .line 4386
    cmpg-float v2, p0, v0

    if-gez v2, :cond_1

    move p0, v0

    .end local p0    # "a":F
    :cond_0
    :goto_0
    return p0

    .restart local p0    # "a":F
    :cond_1
    cmpl-float v0, p0, v1

    if-lez v0, :cond_0

    move p0, v1

    goto :goto_0
.end method

.method private scheduleAutohide()V
    .locals 4

    .prologue
    .line 3994
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->cancelAutohide()V

    .line 3995
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAutohide:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3996
    return-void
.end method

.method private sendLogs(Ljava/lang/String;)V
    .locals 4
    .param p1, "feature"    # Ljava/lang/String;

    .prologue
    .line 7265
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 7266
    .local v0, "contentValues":Landroid/content/ContentValues;
    const-string v2, "app_id"

    const-string v3, "com.android.systemui.statusbar.policy.quicksetting"

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 7267
    const-string v2, "SETTINGSBUTTON"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7268
    const-string v2, "feature"

    const-string v3, "QP01"

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 7277
    :cond_0
    :goto_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 7278
    .local v1, "i":Landroid/content/Intent;
    const-string v2, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 7279
    const-string v2, "data"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 7280
    const-string v2, "com.samsung.android.providers.context"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 7281
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 7282
    return-void

    .line 7269
    .end local v1    # "i":Landroid/content/Intent;
    :cond_1
    const-string v2, "EDITBUTTON"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 7270
    const-string v2, "feature"

    const-string v3, "QP02"

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 7271
    :cond_2
    const-string v2, "SFINDERBUTTON"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 7272
    const-string v2, "feature"

    const-string v3, "QP03"

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 7273
    :cond_3
    const-string v2, "QUICKCONNECTBUTTON"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7274
    const-string v2, "feature"

    const-string v3, "QP04"

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setBrightnessControllerVisivility()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 6294
    const-string v1, "STATUSBAR-PhoneStatusBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " mBrightnessEnablebySettings = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBrightnessEnablebySettings:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mBrightnessEnablebyBattery = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBrightnessEnablebyBattery:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mBrightnessEnablebyDisableFlag = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBrightnessEnablebyDisableFlag:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mPmsBrightnessEnablebySettings = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPmsBrightnessEnablebySettings:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6299
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mToggleSliderView:Lcom/android/systemui/statusbar/ToggleSliderView;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQsBrightnessView:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 6300
    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBrightnessEnablebySettings:Z

    if-eqz v1, :cond_6

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBrightnessEnablebyBattery:Z

    if-eqz v1, :cond_6

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBrightnessEnablebyDisableFlag:Z

    if-eqz v1, :cond_6

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBrightnessEnablebyLongLifeMode:Z

    if-eqz v1, :cond_6

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPmsBrightnessEnablebySettings:Z

    if-eqz v1, :cond_6

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsInQSEditMode:Z

    if-nez v1, :cond_6

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsInQSDetailviewMode:Z

    if-nez v1, :cond_6

    .line 6303
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSingleLine:Z

    if-eqz v1, :cond_4

    .line 6304
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    if-nez v1, :cond_3

    .line 6305
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQsBrightnessView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQsBrightnessView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 6307
    :cond_1
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateToggleSlider(Z)V

    .line 6359
    :cond_2
    :goto_0
    return-void

    .line 6309
    :cond_3
    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateToggleSlider(Z)V

    .line 6310
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQsBrightnessView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 6311
    .local v0, "marginParams":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSpanelHeight:I

    invoke-virtual {v0, v4, v1, v4, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 6312
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQsBrightnessView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 6313
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQsBrightnessView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 6317
    .end local v0    # "marginParams":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_4
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    if-nez v1, :cond_5

    .line 6318
    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateToggleSlider(Z)V

    .line 6319
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQsBrightnessView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQsBrightnessView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 6321
    :cond_5
    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateToggleSlider(Z)V

    .line 6322
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQsBrightnessView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 6340
    :cond_6
    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateToggleSlider(Z)V

    .line 6341
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQsBrightnessView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQsBrightnessView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private setControllerUsers()V
    .locals 2

    .prologue
    .line 4839
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mZenModeController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    if-eqz v0, :cond_0

    .line 4840
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mZenModeController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurrentUserId:I

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/ZenModeController;->setUserId(I)V

    .line 4842
    :cond_0
    return-void
.end method

.method private setHeadsUpVisibility(Z)V
    .locals 5
    .param p1, "vis"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 4855
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v3, "PhoneStatusBar"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_1

    const-string v0, "showing"

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " heads up window"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4856
    :cond_0
    const v3, 0x8ca1

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/Object;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->getKey()Ljava/lang/String;

    move-result-object v0

    :goto_1
    aput-object v0, v4, v2

    if-eqz p1, :cond_3

    move v0, v1

    :goto_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v1

    invoke-static {v3, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 4859
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    if-eqz p1, :cond_4

    :goto_3
    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->setVisibility(I)V

    .line 4860
    return-void

    .line 4855
    :cond_1
    const-string v0, "hiding"

    goto :goto_0

    .line 4856
    :cond_2
    const-string v0, ""

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_2

    .line 4859
    :cond_4
    const/16 v2, 0x8

    goto :goto_3
.end method

.method private setNavigationIconHints(I)V
    .locals 1
    .param p1, "hints"    # I

    .prologue
    .line 3750
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationIconHints:I

    if-ne p1, v0, :cond_0

    .line 3758
    :goto_0
    return-void

    .line 3752
    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationIconHints:I

    .line 3754
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz v0, :cond_1

    .line 3755
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setNavigationIconHints(I)V

    .line 3757
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->checkBarModes()V

    goto :goto_0
.end method

.method private setStatusBarOn(Z)V
    .locals 3
    .param p1, "on"    # Z

    .prologue
    .line 4030
    const-string v0, "PhoneStatusBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setStatusBarOn("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4032
    if-eqz p1, :cond_0

    .line 4033
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->setVisibility(I)V

    .line 4042
    :goto_0
    return-void

    .line 4036
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4039
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private showBouncer()V
    .locals 2

    .prologue
    .line 5622
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 5623
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mWaitingForKeyguardExit:Z

    .line 5624
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->dismiss()V

    .line 5626
    :cond_1
    return-void
.end method

.method private showBouncerDismissIfInsecure()V
    .locals 2

    .prologue
    .line 5629
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 5630
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mWaitingForKeyguardExit:Z

    .line 5631
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->dismissIfInsecure()V

    .line 5633
    :cond_1
    return-void
.end method

.method private showHideMultiSIMLayout()V
    .locals 1

    .prologue
    .line 6437
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->showHideMultiSIMLayout(Z)V

    .line 6438
    return-void
.end method

.method private showHideMultiSIMLayout(Z)V
    .locals 6
    .param p1, "visible"    # Z

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 6441
    const-string v1, "PhoneStatusBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showHideMultiSIMLayout:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6442
    if-nez p1, :cond_0

    .line 6443
    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateMultiSIMLayout(Z)V

    .line 6499
    :goto_0
    return-void

    .line 6445
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getNumberOfActiveSim()I

    move-result v1

    if-ne v1, v5, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getReadySimCount()I

    move-result v1

    if-ne v1, v5, :cond_2

    .line 6446
    const-string v1, "PhoneStatusBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showHideMultiSIMLayout:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getNumberOfActiveSim()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6447
    const/4 v0, 0x0

    .line 6452
    .local v0, "hide":Z
    const-string v1, "STATUSBAR-PhoneStatusBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showHideMultiSIMLayout getNumberOfActiveSim : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getNumberOfActiveSim()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6461
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSingleLine:Z

    if-eqz v1, :cond_1

    .line 6462
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateMultiSIMLayout(Z)V

    goto :goto_0

    .line 6464
    :cond_1
    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateMultiSIMLayout(Z)V

    goto :goto_0

    .line 6496
    .end local v0    # "hide":Z
    :cond_2
    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateMultiSIMLayout(Z)V

    goto :goto_0
.end method

.method private showHideQConnectLayout()V
    .locals 14

    .prologue
    const/16 v13, 0x64

    const/4 v6, 0x1

    const/16 v12, 0x8

    const v11, 0x7f0e01f1

    const/4 v7, 0x0

    .line 6362
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mShowSFinderQConnectView:Z

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQconnectSfinderView:Lcom/android/systemui/statusbar/QconnectSfinderView;

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQsQConnectView:Landroid/view/View;

    if-eqz v8, :cond_5

    .line 6363
    :cond_0
    const/4 v1, 0x0

    .line 6364
    .local v1, "hide":Z
    const-string v8, "quickconnect"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/android/quickconnect/IQuickConnectManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/quickconnect/IQuickConnectManager;

    move-result-object v8

    if-eqz v8, :cond_6

    move v4, v6

    .line 6366
    .local v4, "qconnectServiceEnabled":Z
    :goto_0
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v8}, Landroid/app/enterprise/kioskmode/KioskMode;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/enterprise/kioskmode/KioskMode;->isKioskModeEnabled()Z

    move-result v2

    .line 6367
    .local v2, "isKioskEnabled":Z
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 6369
    .local v0, "currentUserId":I
    const-string v8, "STATUSBAR-PhoneStatusBar"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "showHideQConnectLayout userID : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " emMode:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mEmergencyModeActivated:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mQconnectEnable:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQconnectEnable:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " QconnectService:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6372
    if-nez v2, :cond_2

    if-ge v0, v13, :cond_1

    if-nez v0, :cond_2

    :cond_1
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mEmergencyModeActivated:Z

    if-nez v8, :cond_2

    if-ge v0, v13, :cond_2

    sget-boolean v8, Lcom/android/systemui/statusbar/Feature;->mShowSFinderQConnectQSB:Z

    if-nez v8, :cond_2

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsInQSEditMode:Z

    if-nez v8, :cond_2

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsInQSDetailviewMode:Z

    if-eqz v8, :cond_3

    .line 6375
    :cond_2
    const/4 v1, 0x1

    .line 6378
    :cond_3
    if-nez v1, :cond_b

    .line 6380
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSingleLine:Z

    if-eqz v8, :cond_9

    .line 6381
    iget v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    if-nez v8, :cond_7

    .line 6382
    invoke-direct {p0, v6}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateQconnectSfinder(Z)V

    .line 6383
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQsQConnectView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-nez v8, :cond_4

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQsQConnectView:Landroid/view/View;

    invoke-virtual {v8, v12}, Landroid/view/View;->setVisibility(I)V

    .line 6423
    :cond_4
    :goto_1
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    invoke-virtual {v8, v11}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-nez v8, :cond_5

    .line 6424
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQconnectEnable:Z

    if-eqz v8, :cond_c

    if-eqz v4, :cond_c

    .line 6425
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    invoke-virtual {v7, v11}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/view/View;->setEnabled(Z)V

    .line 6426
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    invoke-virtual {v6, v11}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v6, v7}, Landroid/view/View;->setAlpha(F)V

    .line 6433
    .end local v0    # "currentUserId":I
    .end local v1    # "hide":Z
    .end local v2    # "isKioskEnabled":Z
    .end local v4    # "qconnectServiceEnabled":Z
    :cond_5
    :goto_2
    return-void

    .restart local v1    # "hide":Z
    :cond_6
    move v4, v7

    .line 6364
    goto/16 :goto_0

    .line 6385
    .restart local v0    # "currentUserId":I
    .restart local v2    # "isKioskEnabled":Z
    .restart local v4    # "qconnectServiceEnabled":Z
    :cond_7
    invoke-direct {p0, v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateQconnectSfinder(Z)V

    .line 6386
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQsQConnectView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 6387
    .local v3, "marginParams":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSpanelHeight:I

    .line 6388
    .local v5, "topMargin":I
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQsBrightnessView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-nez v8, :cond_8

    .line 6389
    iget v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBrightnessHeight:I

    add-int/2addr v5, v8

    .line 6391
    :cond_8
    invoke-virtual {v3, v7, v5, v7, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 6392
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQsQConnectView:Landroid/view/View;

    invoke-virtual {v8, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 6393
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQsQConnectView:Landroid/view/View;

    invoke-virtual {v8, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 6396
    .end local v3    # "marginParams":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v5    # "topMargin":I
    :cond_9
    iget v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    if-nez v8, :cond_a

    .line 6397
    invoke-direct {p0, v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateQconnectSfinder(Z)V

    .line 6398
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQsQConnectView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-nez v8, :cond_4

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQsQConnectView:Landroid/view/View;

    invoke-virtual {v8, v12}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 6400
    :cond_a
    invoke-direct {p0, v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateQconnectSfinder(Z)V

    .line 6401
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQsQConnectView:Landroid/view/View;

    invoke-virtual {v8, v12}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 6416
    :cond_b
    invoke-direct {p0, v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateQconnectSfinder(Z)V

    .line 6417
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQsQConnectView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-nez v8, :cond_4

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQsQConnectView:Landroid/view/View;

    invoke-virtual {v8, v12}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 6428
    :cond_c
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    invoke-virtual {v6, v11}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/view/View;->setEnabled(Z)V

    .line 6429
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    invoke-virtual {v6, v11}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const v7, 0x3e99999a    # 0.3f

    invoke-virtual {v6, v7}, Landroid/view/View;->setAlpha(F)V

    goto :goto_2
.end method

.method private startGlyphRasterizeHack()V
    .locals 2

    .prologue
    .line 1762
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$21;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$21;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1780
    return-void
.end method

.method private startKeyguard()V
    .locals 4

    .prologue
    .line 1791
    const-class v1, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 1793
    .local v0, "keyguardViewMediator":Lcom/android/systemui/keyguard/KeyguardViewMediator;
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardBouncerContainer:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->registerStatusBar(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;Lcom/android/systemui/statusbar/phone/ScrimController;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 1795
    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->getViewMediatorCallback()Lcom/android/keyguard/ViewMediatorCallback;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    .line 1796
    return-void
.end method

.method private startNotificationLoggingIfScreenOnAndVisible()V
    .locals 2

    .prologue
    .line 4973
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mVisible:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScreenOn:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4974
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationLocationsChangedListener:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnChildLocationsChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setChildLocationsChangedListener(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnChildLocationsChangedListener;)V

    .line 4981
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationLocationsChangedListener:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnChildLocationsChangedListener;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnChildLocationsChangedListener;->onChildLocationsChanged(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)V

    .line 4983
    :cond_0
    return-void
.end method

.method private stopNotificationLogging()V
    .locals 2

    .prologue
    .line 4963
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurrentlyVisibleNotifications:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4964
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurrentlyVisibleNotifications:Landroid/util/ArraySet;

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->logNotificationVisibilityChanges(Ljava/util/Collection;Ljava/util/Collection;)V

    .line 4966
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurrentlyVisibleNotifications:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 4968
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mVisibilityReporter:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4969
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setChildLocationsChangedListener(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnChildLocationsChangedListener;)V

    .line 4970
    return-void
.end method

.method private suspendAutohide()V
    .locals 2

    .prologue
    .line 3983
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAutohide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3984
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCheckBarModes:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3985
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    const/high16 v1, 0xc000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAutohideSuspended:Z

    .line 3986
    return-void

    .line 3985
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateClockSize()V
    .locals 3

    .prologue
    .line 4897
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    if-nez v1, :cond_1

    .line 4902
    :cond_0
    :goto_0
    return-void

    .line 4898
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v2, 0x7f0e00f5

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 4899
    .local v0, "clock":Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 4900
    const v1, 0x7f0c028f

    invoke-static {v0, v1}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;I)V

    goto :goto_0
.end method

.method private updateCoverWindow()V
    .locals 2

    .prologue
    .line 4526
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    new-instance v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$39;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$39;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 4566
    return-void
.end method

.method private updateDozingState()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 5528
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    if-eq v0, v3, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isDozing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5542
    :goto_0
    return-void

    .line 5531
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDozing:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setDozing(Z)V

    .line 5532
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDozing:Z

    if-eqz v0, :cond_1

    .line 5535
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, v3, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setDark(ZZ)V

    .line 5541
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDozing:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ScrimController;->setDozing(Z)V

    goto :goto_0

    .line 5539
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, v2, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setDark(ZZ)V

    goto :goto_1
.end method

.method private updateKeyguardState(ZZ)V
    .locals 8
    .param p1, "goingToFullShade"    # Z
    .param p2, "fromShadeLocked"    # Z

    .prologue
    const/16 v6, 0x8

    const/4 v7, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 5389
    const-string v1, "PhoneStatusBar"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateKeyguardState :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5390
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardFadingAway:Z

    invoke-virtual {v1, v4, v5, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setBarState(IZZ)V

    .line 5392
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    if-ne v1, v3, :cond_c

    .line 5394
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardBouncerContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 5395
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardStatusView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 5398
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->resetViews()V

    .line 5399
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardUserSwitcher:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

    invoke-virtual {v1, v3, p2}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->setKeyguard(ZZ)V

    .line 5400
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateLockscreenNotificationSetting()V

    .line 5404
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/app/enterprise/lso/LockscreenOverlay;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/lso/LockscreenOverlay;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/enterprise/lso/LockscreenOverlay;->isConfigured()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 5405
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMDMOverlayContainer:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_9

    .line 5406
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMdmOverlayView:Landroid/view/View;

    if-nez v1, :cond_8

    .line 5407
    new-instance v1, Lcom/sec/widget/lso/LockscreenOverlayView;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Lcom/sec/widget/lso/LockscreenOverlayView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMdmOverlayView:Landroid/view/View;

    .line 5409
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMDMOverlayContainer:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMdmOverlayView:Landroid/view/View;

    const/4 v5, -0x1

    const/4 v6, -0x1

    invoke-virtual {v1, v4, v5, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    .line 5414
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMDMOverlayContainer:Landroid/widget/FrameLayout;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5451
    :cond_0
    :goto_1
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    if-eq v1, v3, :cond_1

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    if-ne v1, v7, :cond_10

    .line 5453
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQsBrightnessController:Lcom/android/systemui/settings/BrightnessController;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBrightnessController:Lcom/android/systemui/settings/BrightnessController;

    if-eqz v1, :cond_2

    .line 5454
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQsBrightnessController:Lcom/android/systemui/settings/BrightnessController;

    invoke-virtual {v1}, Lcom/android/systemui/settings/BrightnessController;->registerCallbacks()V

    .line 5455
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBrightnessController:Lcom/android/systemui/settings/BrightnessController;

    invoke-virtual {v1}, Lcom/android/systemui/settings/BrightnessController;->unregisterCallbacks()V

    .line 5458
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    if-eqz v1, :cond_3

    .line 5459
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateQsPanelOnKeyguard(Z)V

    .line 5461
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardEffectController:Lcom/android/keyguard/sec/KeyguardEffectViewController;

    invoke-virtual {v1, v3}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->setKeyguardShowing(Z)V

    .line 5462
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/phone/ScrimController;->setKeyguardShowing(Z)V

    .line 5463
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQuickSettingContainer:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0202af

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 5464
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQuickSettingContainer:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c03ad

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setElevation(F)V

    .line 5479
    :goto_2
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    if-ne v1, v7, :cond_12

    .line 5480
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/phone/ScrimController;->setLockShadeShowing(Z)V

    .line 5487
    :goto_3
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPreviousState:I

    if-ne v1, v3, :cond_13

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    if-ne v1, v7, :cond_13

    .line 5488
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->onKeyguardPause()V

    .line 5493
    :cond_4
    :goto_4
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateDozingState()V

    .line 5494
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updatePublicMode()V

    .line 5495
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateStackScrollerState(Z)V

    .line 5496
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateNotifications()V

    .line 5497
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->checkBarModes()V

    .line 5498
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateCarrierLabelVisibility(Z)V

    .line 5499
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateMediaMetaData(Z)V

    .line 5500
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isSecure()Z

    move-result v5

    invoke-virtual {v1, v4, v5}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->notifyKeyguardState(ZZ)V

    .line 5504
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isOccluded()Z

    move-result v1

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isSecure()Z

    move-result v1

    if-eqz v1, :cond_14

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    if-eq v1, v7, :cond_14

    move v1, v3

    :goto_5
    invoke-virtual {v4, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->disableTouchEvent(Z)V

    .line 5512
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isSecure()Z

    move-result v4

    if-eqz v4, :cond_5

    iget v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    if-nez v4, :cond_6

    :cond_5
    move v2, v3

    :cond_6
    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsExpansionEnabled(Z)V

    .line 5517
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/cocktailbar/CocktailBarFeatures;->isSupportCocktail(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 5518
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/cocktailbar/CocktailBarManager;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 5519
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/cocktailbar/CocktailBarManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->notifyKeyguardState(Z)V

    .line 5523
    :cond_7
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    iput v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPreviousState:I

    .line 5524
    const-string v1, "PhoneStatusBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateKeyguardPreviousState :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPreviousState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5525
    return-void

    .line 5411
    :cond_8
    :try_start_1
    const-string v1, "PhoneStatusBar"

    const-string v4, "mMdmOverlayView is not null!!"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5412
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMdmOverlayView:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 5426
    :catch_0
    move-exception v0

    .line 5429
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 5430
    const-string v1, "PhoneStatusBar"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Lockscren Overlay creation fails: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 5416
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_9
    :try_start_2
    const-string v1, "PhoneStatusBar"

    const-string v4, "mMDMOverlayContainer is null"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 5418
    :cond_a
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMDMOverlayContainer:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_0

    .line 5419
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMdmOverlayView:Landroid/view/View;

    if-eqz v1, :cond_b

    .line 5420
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMDMOverlayContainer:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMdmOverlayView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 5421
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMdmOverlayView:Landroid/view/View;

    .line 5423
    :cond_b
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMDMOverlayContainer:Landroid/widget/FrameLayout;

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    .line 5434
    :cond_c
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->enableClockAndClear()V

    .line 5436
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardBouncerContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 5437
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardStatusView:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 5440
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardUserSwitcher:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

    if-nez p1, :cond_d

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    if-eq v1, v7, :cond_d

    if-eqz p2, :cond_f

    :cond_d
    move v1, v3

    :goto_6
    invoke-virtual {v4, v2, v1}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->setKeyguard(ZZ)V

    .line 5443
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMDMOverlayContainer:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_0

    .line 5444
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMdmOverlayView:Landroid/view/View;

    if-eqz v1, :cond_e

    .line 5445
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMDMOverlayContainer:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMdmOverlayView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 5446
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMdmOverlayView:Landroid/view/View;

    .line 5448
    :cond_e
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMDMOverlayContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto/16 :goto_1

    :cond_f
    move v1, v2

    .line 5440
    goto :goto_6

    .line 5467
    :cond_10
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQsBrightnessController:Lcom/android/systemui/settings/BrightnessController;

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBrightnessController:Lcom/android/systemui/settings/BrightnessController;

    if-eqz v1, :cond_11

    .line 5468
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQsBrightnessController:Lcom/android/systemui/settings/BrightnessController;

    invoke-virtual {v1}, Lcom/android/systemui/settings/BrightnessController;->unregisterCallbacks()V

    .line 5469
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBrightnessController:Lcom/android/systemui/settings/BrightnessController;

    invoke-virtual {v1}, Lcom/android/systemui/settings/BrightnessController;->registerCallbacks()V

    .line 5471
    :cond_11
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardEffectController:Lcom/android/keyguard/sec/KeyguardEffectViewController;

    invoke-virtual {v1, v2}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->setKeyguardShowing(Z)V

    .line 5472
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/ScrimController;->setKeyguardShowing(Z)V

    .line 5473
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQuickSettingContainer:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020291

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 5474
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQuickSettingContainer:Landroid/widget/FrameLayout;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setElevation(F)V

    goto/16 :goto_2

    .line 5482
    :cond_12
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/ScrimController;->setLockShadeShowing(Z)V

    goto/16 :goto_3

    .line 5489
    :cond_13
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPreviousState:I

    if-ne v1, v7, :cond_4

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    if-ne v1, v3, :cond_4

    .line 5490
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->onKeyguardResume()V

    goto/16 :goto_4

    :cond_14
    move v1, v2

    .line 5504
    goto/16 :goto_5
.end method

.method private updateMultiSIMLayout(Z)V
    .locals 3
    .param p1, "visible"    # Z

    .prologue
    const/4 v0, 0x1

    .line 2522
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    if-eq v2, v0, :cond_0

    if-eqz p1, :cond_0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateMultiSIMLayout(Z)V

    .line 2524
    return-void

    .line 2522
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateNotificationIcons()V
    .locals 17

    .prologue
    .line 2567
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIconSize:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIconHPadding:I

    mul-int/lit8 v15, v15, 0x2

    add-int/2addr v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNaturalBarHeight:I

    invoke-direct {v9, v14, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 2570
    .local v9, "params":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v14}, Lcom/android/systemui/statusbar/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v2

    .line 2571
    .local v2, "activeNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/NotificationData$Entry;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2572
    .local v1, "N":I
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2575
    .local v12, "toShow":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/StatusBarIconView;>;"
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v1, :cond_3

    .line 2576
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 2582
    .local v6, "ent":Lcom/android/systemui/statusbar/NotificationData$Entry;
    iget-object v14, v6, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v14}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v14

    iget v14, v14, Landroid/app/Notification;->commonValue:I

    const v15, 0x10101010

    if-ne v14, v15, :cond_1

    .line 2575
    :cond_0
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 2586
    :cond_1
    iget-object v14, v6, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v14}, Landroid/service/notification/StatusBarNotification;->getScore()I

    move-result v14

    const/16 v15, -0xa

    if-ge v14, v15, :cond_2

    iget-object v14, v6, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-static {v14}, Lcom/android/systemui/statusbar/NotificationData;->showNotificationEvenIfUnprovisioned(Landroid/service/notification/StatusBarNotification;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 2590
    :cond_2
    iget-object v14, v6, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2593
    .end local v6    # "ent":Lcom/android/systemui/statusbar/NotificationData$Entry;
    :cond_3
    sget-boolean v14, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->DEBUG:Z

    if-eqz v14, :cond_4

    .line 2594
    const-string v14, "PhoneStatusBar"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "refreshing icons: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " notifications, mNotificationIcons="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2598
    :cond_4
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 2599
    .local v10, "toRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v8, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

    invoke-virtual {v14}, Lcom/android/systemui/statusbar/phone/IconMerger;->getChildCount()I

    move-result v14

    if-ge v8, v14, :cond_6

    .line 2600
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

    invoke-virtual {v14, v8}, Lcom/android/systemui/statusbar/phone/IconMerger;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2601
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_5

    .line 2602
    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2599
    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 2606
    .end local v4    # "child":Landroid/view/View;
    :cond_6
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 2607
    .local v11, "toRemoveCount":I
    const/4 v8, 0x0

    :goto_3
    if-ge v8, v11, :cond_7

    .line 2608
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/View;

    invoke-virtual {v15, v14}, Lcom/android/systemui/statusbar/phone/IconMerger;->removeView(Landroid/view/View;)V

    .line 2607
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 2611
    :cond_7
    const/4 v8, 0x0

    :goto_4
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v8, v14, :cond_9

    .line 2612
    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/View;

    .line 2613
    .local v13, "v":Landroid/view/View;
    invoke-virtual {v13}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v14

    if-nez v14, :cond_8

    .line 2614
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

    invoke-virtual {v14, v13, v8, v9}, Lcom/android/systemui/statusbar/phone/IconMerger;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 2611
    :cond_8
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 2619
    .end local v13    # "v":Landroid/view/View;
    :cond_9
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

    invoke-virtual {v14}, Lcom/android/systemui/statusbar/phone/IconMerger;->getChildCount()I

    move-result v5

    .line 2620
    .local v5, "childCount":I
    const/4 v8, 0x0

    :goto_5
    if-ge v8, v5, :cond_b

    .line 2621
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

    invoke-virtual {v14, v8}, Lcom/android/systemui/statusbar/phone/IconMerger;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2622
    .local v3, "actual":Landroid/view/View;
    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 2623
    .local v7, "expected":Lcom/android/systemui/statusbar/StatusBarIconView;
    if-ne v3, v7, :cond_a

    .line 2620
    :goto_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 2626
    :cond_a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

    invoke-virtual {v14, v7}, Lcom/android/systemui/statusbar/phone/IconMerger;->removeView(Landroid/view/View;)V

    .line 2627
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

    invoke-virtual {v14, v7, v8}, Lcom/android/systemui/statusbar/phone/IconMerger;->addView(Landroid/view/View;I)V

    goto :goto_6

    .line 2629
    .end local v3    # "actual":Landroid/view/View;
    .end local v7    # "expected":Lcom/android/systemui/statusbar/StatusBarIconView;
    :cond_b
    return-void
.end method

.method private updateNotificationShade()V
    .locals 30

    .prologue
    .line 2308
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v28, v0

    if-nez v28, :cond_1

    .line 2496
    :cond_0
    :goto_0
    return-void

    .line 2311
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isCollapsing()Z

    move-result v28

    if-eqz v28, :cond_2

    .line 2312
    new-instance v28, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$26;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$26;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->addPostCollapseAction(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 2320
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSingleLine:Z

    move/from16 v28, v0

    if-eqz v28, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsInQSEditMode:Z

    move/from16 v28, v0

    if-nez v28, :cond_0

    .line 2321
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/systemui/statusbar/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v3

    .line 2323
    .local v3, "activeNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/NotificationData$Entry;>;"
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 2324
    .local v17, "toShow":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 2325
    .local v19, "toShowMiniCon":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 2326
    .local v20, "toShowMiniConCMAS":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 2327
    .local v21, "toShowMiniConContextAware":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 2328
    .local v22, "toShowMiniConKnoxMode":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 2329
    .local v23, "toShowMiniConToolbox":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 2330
    .local v24, "toShowNotification":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    .line 2332
    .local v25, "toShowOnGoing":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 2334
    .local v18, "toShowEventNotification":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2335
    .local v2, "N":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    if-ge v7, v2, :cond_16

    .line 2336
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 2343
    .local v5, "ent":Lcom/android/systemui/statusbar/NotificationData$Entry;
    iget-object v0, v5, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v28

    move-object/from16 v0, v28

    iget v0, v0, Landroid/app/Notification;->commonValue:I

    move/from16 v28, v0

    const v29, -0x7f7f7f80

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_3

    .line 2344
    const-string v28, "PhoneStatusBar"

    const-string v29, "Icon Only"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2335
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 2349
    :cond_3
    iget-object v0, v5, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v28

    move-object/from16 v0, v28

    iget v0, v0, Landroid/app/Notification;->visibility:I

    move/from16 v27, v0

    .line 2352
    .local v27, "vis":I
    iget-object v0, v5, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v28

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->userAllowsPrivateNotificationsInPublic(I)Z

    move-result v28

    if-nez v28, :cond_7

    const/4 v6, 0x1

    .line 2354
    .local v6, "hideSensitive":Z
    :goto_3
    if-nez v27, :cond_8

    const/4 v13, 0x1

    .line 2355
    .local v13, "sensitiveNote":Z
    :goto_4
    iget-object v0, v5, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->packageHasVisibilityOverride(Ljava/lang/String;)Z

    move-result v14

    .line 2356
    .local v14, "sensitivePackage":Z
    if-eqz v13, :cond_4

    if-nez v6, :cond_5

    :cond_4
    if-eqz v14, :cond_9

    :cond_5
    const/4 v12, 0x1

    .line 2357
    .local v12, "sensitive":Z
    :goto_5
    if-eqz v12, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isLockscreenPublicMode()Z

    move-result v28

    if-eqz v28, :cond_a

    const/4 v15, 0x1

    .line 2361
    .local v15, "showingPublic":Z
    :goto_6
    iget v0, v5, Lcom/android/systemui/statusbar/NotificationData$Entry;->sanitizing:I

    move/from16 v28, v0

    and-int/lit8 v28, v28, 0x8

    if-eqz v28, :cond_b

    const/4 v11, 0x1

    .line 2362
    .local v11, "sanitize":Z
    :goto_7
    if-eqz v11, :cond_c

    .line 2363
    iget-object v0, v5, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v28, v0

    const/16 v29, 0x1

    invoke-virtual/range {v28 .. v29}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setSensitive(Z)V

    .line 2364
    iget-object v0, v5, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v28, v0

    const/16 v29, 0x1

    invoke-virtual/range {v28 .. v29}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->enableKnoxView(Z)V

    .line 2369
    :goto_8
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isMediaNotification(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z

    move-result v28

    if-eqz v28, :cond_d

    .line 2370
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateMediaNotificationsForKnox(Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    .line 2376
    :goto_9
    iget-boolean v0, v5, Lcom/android/systemui/statusbar/NotificationData$Entry;->autoRedacted:Z

    move/from16 v28, v0

    if-eqz v28, :cond_6

    iget-boolean v0, v5, Lcom/android/systemui/statusbar/NotificationData$Entry;->legacy:Z

    move/from16 v28, v0

    if-eqz v28, :cond_6

    .line 2379
    if-eqz v15, :cond_e

    .line 2380
    iget-object v0, v5, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setShowingLegacyBackground(Z)V

    .line 2386
    :cond_6
    :goto_a
    iget-object v0, v5, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/service/notification/StatusBarNotification;->isMiniCon()Z

    move-result v28

    if-eqz v28, :cond_13

    .line 2387
    iget-object v0, v5, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v28

    move-object/from16 v0, v28

    iget v0, v0, Landroid/app/Notification;->twQuickPanelEvent:I

    move/from16 v28, v0

    const/16 v29, 0x10

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_f

    .line 2388
    iget-object v0, v5, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v28, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 2352
    .end local v6    # "hideSensitive":Z
    .end local v11    # "sanitize":Z
    .end local v12    # "sensitive":Z
    .end local v13    # "sensitiveNote":Z
    .end local v14    # "sensitivePackage":Z
    .end local v15    # "showingPublic":Z
    :cond_7
    const/4 v6, 0x0

    goto/16 :goto_3

    .line 2354
    .restart local v6    # "hideSensitive":Z
    :cond_8
    const/4 v13, 0x0

    goto/16 :goto_4

    .line 2356
    .restart local v13    # "sensitiveNote":Z
    .restart local v14    # "sensitivePackage":Z
    :cond_9
    const/4 v12, 0x0

    goto :goto_5

    .line 2357
    .restart local v12    # "sensitive":Z
    :cond_a
    const/4 v15, 0x0

    goto :goto_6

    .line 2361
    .restart local v15    # "showingPublic":Z
    :cond_b
    const/4 v11, 0x0

    goto :goto_7

    .line 2366
    .restart local v11    # "sanitize":Z
    :cond_c
    iget-object v0, v5, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v12}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setSensitive(Z)V

    .line 2367
    iget-object v0, v5, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->enableKnoxView(Z)V

    goto :goto_8

    .line 2372
    :cond_d
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateLegacyBackgroundForKnox(Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    goto :goto_9

    .line 2382
    :cond_e
    iget-object v0, v5, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v28, v0

    const/16 v29, 0x1

    invoke-virtual/range {v28 .. v29}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setShowingLegacyBackground(Z)V

    goto :goto_a

    .line 2389
    :cond_f
    iget-object v0, v5, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v28

    move-object/from16 v0, v28

    iget v0, v0, Landroid/app/Notification;->twQuickPanelEvent:I

    move/from16 v28, v0

    const/16 v29, 0x80

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_10

    .line 2390
    iget-object v0, v5, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v28, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 2391
    :cond_10
    iget-object v0, v5, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v28

    move-object/from16 v0, v28

    iget v0, v0, Landroid/app/Notification;->twQuickPanelEvent:I

    move/from16 v28, v0

    const/16 v29, 0x104

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_11

    .line 2392
    iget-object v0, v5, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v28, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 2393
    :cond_11
    iget-object v0, v5, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v28

    move-object/from16 v0, v28

    iget v0, v0, Landroid/app/Notification;->twQuickPanelEvent:I

    move/from16 v28, v0

    const/16 v29, 0x200

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_12

    .line 2394
    iget-object v0, v5, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v28, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 2396
    :cond_12
    iget-object v0, v5, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v28, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 2399
    :cond_13
    sget-boolean v28, Lcom/android/systemui/statusbar/Feature;->mUseEventNotification:Z

    if-eqz v28, :cond_14

    .line 2400
    const-string v28, "com.sec.android.app.eventnotification"

    iget-object v0, v5, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_14

    .line 2401
    const-string v28, "PhoneStatusBar"

    const-string v29, "updateNotificationShade add toShowEventNotification"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2402
    iget-object v0, v5, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v28, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 2406
    :cond_14
    iget-object v0, v5, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/service/notification/StatusBarNotification;->isOngoing()Z

    move-result v28

    if-eqz v28, :cond_15

    .line 2407
    iget-object v0, v5, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v28, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 2409
    :cond_15
    iget-object v0, v5, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v28, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 2413
    .end local v5    # "ent":Lcom/android/systemui/statusbar/NotificationData$Entry;
    .end local v6    # "hideSensitive":Z
    .end local v11    # "sanitize":Z
    .end local v12    # "sensitive":Z
    .end local v13    # "sensitiveNote":Z
    .end local v14    # "sensitivePackage":Z
    .end local v15    # "showingPublic":Z
    .end local v27    # "vis":I
    :cond_16
    const/4 v7, 0x0

    :goto_b
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v28

    move/from16 v0, v28

    if-ge v7, v0, :cond_17

    .line 2414
    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    move-object/from16 v0, v17

    move-object/from16 v1, v28

    invoke-virtual {v0, v7, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2413
    add-int/lit8 v7, v7, 0x1

    goto :goto_b

    .line 2416
    :cond_17
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v28

    add-int/lit8 v7, v28, -0x1

    :goto_c
    if-ltz v7, :cond_18

    .line 2417
    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    move-object/from16 v0, v17

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2416
    add-int/lit8 v7, v7, -0x1

    goto :goto_c

    .line 2419
    :cond_18
    const/4 v7, 0x0

    :goto_d
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v28

    move/from16 v0, v28

    if-ge v7, v0, :cond_19

    .line 2420
    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    move-object/from16 v0, v17

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2419
    add-int/lit8 v7, v7, 0x1

    goto :goto_d

    .line 2422
    :cond_19
    const/4 v7, 0x0

    :goto_e
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v28

    move/from16 v0, v28

    if-ge v7, v0, :cond_1a

    .line 2423
    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    move-object/from16 v0, v17

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2422
    add-int/lit8 v7, v7, 0x1

    goto :goto_e

    .line 2425
    :cond_1a
    const/4 v7, 0x0

    :goto_f
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v28

    move/from16 v0, v28

    if-ge v7, v0, :cond_1b

    .line 2426
    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    move-object/from16 v0, v17

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2425
    add-int/lit8 v7, v7, 0x1

    goto :goto_f

    .line 2428
    :cond_1b
    sget-boolean v28, Lcom/android/systemui/statusbar/Feature;->mUseEventNotification:Z

    if-eqz v28, :cond_1c

    .line 2429
    const/4 v7, 0x0

    :goto_10
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v28

    move/from16 v0, v28

    if-ge v7, v0, :cond_1c

    .line 2430
    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    move-object/from16 v0, v17

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2429
    add-int/lit8 v7, v7, 0x1

    goto :goto_10

    .line 2433
    :cond_1c
    const/4 v7, 0x0

    :goto_11
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v28

    move/from16 v0, v28

    if-ge v7, v0, :cond_1d

    .line 2434
    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    move-object/from16 v0, v17

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2433
    add-int/lit8 v7, v7, 0x1

    goto :goto_11

    .line 2436
    :cond_1d
    const/4 v7, 0x0

    :goto_12
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v28

    move/from16 v0, v28

    if-ge v7, v0, :cond_1e

    .line 2437
    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    move-object/from16 v0, v17

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2436
    add-int/lit8 v7, v7, 0x1

    goto :goto_12

    .line 2440
    :cond_1e
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 2441
    .local v16, "toRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v7, 0x0

    :goto_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v28

    move/from16 v0, v28

    if-ge v7, v0, :cond_20

    .line 2442
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v7}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2443
    .local v4, "child":Landroid/view/View;
    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_1f

    instance-of v0, v4, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move/from16 v28, v0

    if-eqz v28, :cond_1f

    .line 2444
    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2441
    :cond_1f
    add-int/lit8 v7, v7, 0x1

    goto :goto_13

    .line 2448
    .end local v4    # "child":Landroid/view/View;
    :cond_20
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_14
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_21

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    .line 2449
    .local v10, "remove":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v10}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->removeView(Landroid/view/View;)V

    goto :goto_14

    .line 2451
    .end local v10    # "remove":Landroid/view/View;
    :cond_21
    const/4 v7, 0x0

    :goto_15
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v28

    move/from16 v0, v28

    if-ge v7, v0, :cond_23

    .line 2452
    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/view/View;

    .line 2453
    .local v26, "v":Landroid/view/View;
    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v28

    if-nez v28, :cond_22

    .line 2454
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->addView(Landroid/view/View;)V

    .line 2451
    :cond_22
    add-int/lit8 v7, v7, 0x1

    goto :goto_15

    .line 2461
    .end local v26    # "v":Landroid/view/View;
    :cond_23
    const/4 v9, 0x0

    .line 2462
    .local v9, "j":I
    const/4 v7, 0x0

    :goto_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v28

    move/from16 v0, v28

    if-ge v7, v0, :cond_26

    .line 2463
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v7}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2464
    .restart local v4    # "child":Landroid/view/View;
    instance-of v0, v4, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move/from16 v28, v0

    if-nez v28, :cond_24

    .line 2462
    :goto_17
    add-int/lit8 v7, v7, 0x1

    goto :goto_16

    .line 2469
    :cond_24
    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    move-object/from16 v0, v28

    if-ne v4, v0, :cond_25

    .line 2471
    add-int/lit8 v9, v9, 0x1

    .line 2472
    goto :goto_17

    .line 2477
    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v29, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/view/View;

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-virtual {v0, v1, v7}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->changeViewPosition(Landroid/view/View;I)V

    .line 2478
    add-int/lit8 v9, v9, 0x1

    goto :goto_17

    .line 2481
    .end local v4    # "child":Landroid/view/View;
    :cond_26
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/systemui/statusbar/NotificationData;->hasActiveClearableNotifications()Z

    move-result v28

    if-eqz v28, :cond_29

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSingleLine:Z

    move/from16 v28, v0

    if-eqz v28, :cond_29

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    move/from16 v28, v0

    if-eqz v28, :cond_27

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mShowLockscreenNotifications:Z

    move/from16 v28, v0

    if-eqz v28, :cond_29

    :cond_27
    const/16 v28, 0x1

    :goto_18
    move-object/from16 v0, v29

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateClearAll(Z)V

    .line 2483
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateRowStates()V

    .line 2492
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v29, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isDeviceProvisioned()Z

    move-result v28

    if-eqz v28, :cond_2a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->isSimpleUserSwitcher()Z

    move-result v28

    if-eqz v28, :cond_28

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUserSetup:Z

    move/from16 v28, v0

    if-eqz v28, :cond_2a

    :cond_28
    const/16 v28, 0x1

    :goto_19
    move-object/from16 v0, v29

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsExpansionEnabled(Z)V

    .line 2494
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mShadeUpdates:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$ShadeUpdates;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$ShadeUpdates;->check()V

    goto/16 :goto_0

    .line 2481
    :cond_29
    const/16 v28, 0x0

    goto :goto_18

    .line 2492
    :cond_2a
    const/16 v28, 0x0

    goto :goto_19
.end method

.method private updatePublicMode()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 5374
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isOccluded()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setLockscreenPublicMode(Z)V

    .line 5383
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isOccluded()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setLockscreenKnoxMode(Z)V

    .line 5386
    return-void

    :cond_0
    move v0, v2

    .line 5374
    goto :goto_0

    :cond_1
    move v1, v2

    .line 5383
    goto :goto_1
.end method

.method private updateQSpanel(Z)V
    .locals 4
    .param p1, "singleline"    # Z

    .prologue
    .line 6208
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    if-eqz v1, :cond_0

    .line 6209
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v1, p1}, Lcom/android/systemui/qs/QSPanel;->setSingleLine(Z)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSpanelHeight:I

    .line 6210
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSingleLine:Z

    .line 6211
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setBrightnessControllerVisivility()V

    .line 6212
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->showHideQConnectLayout()V

    .line 6214
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isMSim()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getNumberOfActiveSim()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 6215
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->showHideMultiSIMLayout()V

    .line 6220
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateQSpanelHeight()V

    .line 6221
    if-eqz p1, :cond_3

    .line 6222
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQuickSettingContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0069

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 6223
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateNotificationShade()V

    .line 6231
    :cond_2
    return-void

    .line 6225
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQuickSettingContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0202af

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 6226
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 6227
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 6226
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private updateQSpanelHeight()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 6282
    const/4 v0, 0x0

    .line 6283
    .local v0, "height":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mEmergencyModeActivated:Z

    if-nez v1, :cond_5

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSpanelHeight:I

    :goto_0
    add-int/2addr v0, v1

    .line 6284
    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mEmergencyModeActivated:Z

    if-nez v1, :cond_2

    .line 6285
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQsBrightnessView:Landroid/view/View;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQsBrightnessView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBrightnessHeight:I

    add-int/2addr v0, v1

    .line 6286
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQsQConnectView:Landroid/view/View;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQsQConnectView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQConnectHeight:I

    add-int/2addr v0, v1

    .line 6288
    :cond_2
    const-string v1, "PhoneStatusBar"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateQSpanelHeight: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSpanelHeight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " height:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6289
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSingleLine:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setPeekHeight(I)V

    .line 6290
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    const/4 v3, 0x0

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSingleLine:Z

    if-nez v4, :cond_4

    const/4 v2, 0x1

    :cond_4
    invoke-virtual {v1, v3, v2, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->flingSettings(FZI)V

    .line 6291
    return-void

    :cond_5
    move v1, v2

    .line 6283
    goto :goto_0
.end method

.method private updateQconnectSfinder(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 2516
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateQconnectSfinderView(Z)V

    .line 2518
    return-void

    .line 2516
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateShowSearchHoldoff()V
    .locals 2

    .prologue
    .line 2303
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mShowSearchHoldoff:I

    .line 2305
    return-void
.end method

.method private updateSpeedbump()V
    .locals 8

    .prologue
    .line 2528
    const/4 v5, -0x1

    .line 2529
    .local v5, "speedbumpIndex":I
    const/4 v2, 0x0

    .line 2530
    .local v2, "currentIndex":I
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v1

    .line 2531
    .local v1, "activeNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/NotificationData$Entry;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2532
    .local v0, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_0

    .line 2533
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 2534
    .local v3, "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    iget-object v6, v3, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_1

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    iget-object v7, v3, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/android/systemui/statusbar/NotificationData;->isAmbient(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2536
    move v5, v2

    .line 2541
    .end local v3    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    :cond_0
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v6, v5}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateSpeedBumpIndex(I)V

    .line 2542
    return-void

    .line 2539
    .restart local v3    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 2532
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method private updateToggleSlider(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 2511
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateToggleSliderView(Z)V

    .line 2513
    return-void

    .line 2511
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private userAutohide()V
    .locals 4

    .prologue
    .line 4008
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->cancelAutohide()V

    .line 4009
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAutohide:Ljava/lang/Runnable;

    const-wide/16 v2, 0x15e

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4010
    return-void
.end method

.method public static viewInfo(Landroid/view/View;)Ljava/lang/String;
    .locals 2
    .param p0, "v"    # Landroid/view/View;

    .prologue
    .line 4210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addIcon(Ljava/lang/String;IILcom/android/internal/statusbar/StatusBarIcon;)V
    .locals 6
    .param p1, "slot"    # Ljava/lang/String;
    .param p2, "index"    # I
    .param p3, "viewIndex"    # I
    .param p4, "icon"    # Lcom/android/internal/statusbar/StatusBarIcon;

    .prologue
    const/4 v5, 0x0

    .line 2066
    const-string v2, "PhoneStatusBar"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addIcon slot="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " index="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " viewIndex="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " icon="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2068
    new-instance v1, Lcom/android/systemui/statusbar/StatusBarIconView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p1, v5}, Lcom/android/systemui/statusbar/StatusBarIconView;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/app/Notification;)V

    .line 2069
    .local v1, "view":Lcom/android/systemui/statusbar/StatusBarIconView;
    invoke-virtual {v1, p4}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    .line 2070
    const/4 v0, 0x0

    .line 2071
    .local v0, "iconWidth":I
    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-eqz v2, :cond_0

    .line 2072
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIconSize:I

    .line 2076
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusIcons:Landroid/widget/LinearLayout;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    iget v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIconSize:I

    invoke-direct {v3, v0, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v1, p3, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 2078
    new-instance v1, Lcom/android/systemui/statusbar/StatusBarIconView;

    .end local v1    # "view":Lcom/android/systemui/statusbar/StatusBarIconView;
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p1, v5}, Lcom/android/systemui/statusbar/StatusBarIconView;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/app/Notification;)V

    .line 2079
    .restart local v1    # "view":Lcom/android/systemui/statusbar/StatusBarIconView;
    invoke-virtual {v1, p4}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    .line 2080
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusIconsKeyguard:Landroid/widget/LinearLayout;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    iget v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIconSize:I

    invoke-direct {v3, v0, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v1, p3, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 2082
    return-void

    .line 2074
    :cond_0
    const/4 v0, -0x2

    goto :goto_0
.end method

.method public addNotification(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 8
    .param p1, "notification"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "ranking"    # Landroid/service/notification/NotificationListenerService$RankingMap;

    .prologue
    const/4 v7, 0x1

    .line 2106
    sget-boolean v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "PhoneStatusBar"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addNotification key="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2107
    :cond_0
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUseHeadsUp:Z

    if-eqz v4, :cond_3

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->shouldInterrupt(Landroid/service/notification/StatusBarNotification;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2108
    sget-boolean v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->DEBUG:Z

    if-eqz v4, :cond_1

    const-string v4, "PhoneStatusBar"

    const-string v5, "launching notification in heads up mode"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2109
    :cond_1
    new-instance v1, Lcom/android/systemui/statusbar/NotificationData$Entry;

    const/4 v4, 0x0

    invoke-direct {v1, p1, v4}, Lcom/android/systemui/statusbar/NotificationData$Entry;-><init>(Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/StatusBarIconView;)V

    .line 2110
    .local v1, "interruptionCandidate":Lcom/android/systemui/statusbar/NotificationData$Entry;
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->getHolder()Landroid/view/ViewGroup;

    move-result-object v0

    .line 2111
    .local v0, "holder":Landroid/view/ViewGroup;
    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->inflateViewsForHeadsUp(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/ViewGroup;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2113
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    invoke-virtual {v4, v1}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->showNotification(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z

    .line 2174
    .end local v0    # "holder":Landroid/view/ViewGroup;
    .end local v1    # "interruptionCandidate":Lcom/android/systemui/statusbar/NotificationData$Entry;
    :cond_2
    :goto_0
    return-void

    .line 2120
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->createNotificationViews(Landroid/service/notification/StatusBarNotification;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v2

    .line 2121
    .local v2, "shadeEntry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    if-eqz v2, :cond_2

    .line 2125
    const/4 v3, 0x1

    .line 2126
    .local v3, "tickTriggered":Z
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    iget-object v4, v4, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    if-eqz v4, :cond_7

    .line 2129
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->awakenDreams()V

    .line 2132
    sget-boolean v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->DEBUG:Z

    if-eqz v4, :cond_4

    const-string v4, "PhoneStatusBar"

    const-string v5, "Notification has fullScreenIntent; sending fullScreenIntent"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2134
    :cond_4
    :try_start_0
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    iget-object v4, v4, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    invoke-virtual {v4}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2154
    :cond_5
    :goto_1
    invoke-virtual {p0, v2, p2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->addNotificationViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    .line 2157
    if-nez v3, :cond_6

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v4

    if-nez v4, :cond_6

    .line 2158
    invoke-virtual {p0, p1, v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->tick(Landroid/service/notification/StatusBarNotification;Z)V

    .line 2163
    :cond_6
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setAreThereNotifications()V

    .line 2164
    const/16 v4, -0x2710

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateExpandedViewPos(I)V

    .line 2168
    sget-boolean v4, Lcom/android/systemui/statusbar/Feature;->mPLMNIconDisplay:Z

    if-eqz v4, :cond_2

    .line 2169
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/IconMerger;->getChildCount()I

    move-result v4

    if-lez v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAttCarrierLabel:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_2

    .line 2170
    const/4 v4, 0x0

    const v5, 0x10a0074

    invoke-virtual {p0, v4, v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setCarrierLabelVisibility(ZI)V

    goto :goto_0

    .line 2141
    :cond_7
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v4

    if-nez v4, :cond_5

    .line 2145
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v4

    invoke-static {v4}, Lcom/android/systemui/statusbar/BaseStatusBar;->isPersona(I)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getCurrentUserId()I

    move-result v4

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v5

    if-eq v4, v5, :cond_8

    .line 2147
    const/4 v3, 0x0

    goto :goto_1

    .line 2150
    :cond_8
    invoke-virtual {p0, p1, v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->tick(Landroid/service/notification/StatusBarNotification;Z)V

    goto :goto_1

    .line 2135
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method public addPostCollapseAction(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 5271
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPostCollapseRunnables:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5272
    return-void
.end method

.method public animateCollapsePanels()V
    .locals 1

    .prologue
    .line 3432
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapsePanels(I)V

    .line 3433
    return-void
.end method

.method public animateCollapsePanels(I)V
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 3447
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapsePanels(IZ)V

    .line 3448
    return-void
.end method

.method public animateCollapsePanels(IZ)V
    .locals 7
    .param p1, "flags"    # I
    .param p2, "force"    # Z

    .prologue
    const/16 v6, 0x403

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v3, 0x3fc

    .line 3451
    if-nez p2, :cond_2

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    if-eq v0, v5, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 3453
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->runPostCollapseRunnables()V

    .line 3485
    :cond_1
    :goto_0
    return-void

    .line 3457
    :cond_2
    const-string v0, "PhoneStatusBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "animateCollapse(): mExpandedVisible="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedVisible:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " flags="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3462
    and-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_3

    .line 3463
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 3464
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    .line 3465
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->sendEmptyMessage(I)Z

    .line 3469
    :cond_3
    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_4

    .line 3470
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v0, v6}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    .line 3471
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v0, v6}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->sendEmptyMessage(I)Z

    .line 3474
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    if-eqz v0, :cond_1

    .line 3476
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->setStatusBarFocusable(Z)V

    .line 3478
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->cancelExpandHelper()V

    .line 3479
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isTracking()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3480
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->collapseAllPanels(Z)V

    goto :goto_0

    .line 3482
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->collapseAllPanels(Z)V

    goto :goto_0
.end method

.method public animateCollapseQuickSettings()V
    .locals 2

    .prologue
    .line 3599
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    if-nez v0, :cond_0

    .line 3600
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->collapseAllPanels(Z)V

    .line 3602
    :cond_0
    return-void
.end method

.method public animateExpandNotificationsPanel()V
    .locals 1

    .prologue
    .line 3550
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsStatusBarHidden:Z

    if-eqz v0, :cond_1

    .line 3567
    :cond_0
    :goto_0
    return-void

    .line 3555
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->panelsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3559
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->expand()V

    .line 3562
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->flipToNotifications()V

    goto :goto_0
.end method

.method public animateExpandSettingsPanel()V
    .locals 2

    .prologue
    .line 3573
    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->getOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CTC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isQsExpanded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3574
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisabled:I

    const v1, -0x10001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisabled:I

    .line 3577
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->panelsEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3596
    :cond_1
    :goto_0
    return-void

    .line 3582
    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUserSetup:Z

    if-eqz v0, :cond_1

    .line 3586
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->expand()V

    .line 3587
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->flipToSettings()V

    goto :goto_0
.end method

.method public applyEDMPolicy()V
    .locals 6

    .prologue
    .line 5181
    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isStatusBarHidden()Z

    move-result v2

    .line 5182
    .local v2, "isStatusBarHidden":Z
    sget-boolean v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsStatusBarHidden:Z

    if-eq v3, v2, :cond_1

    .line 5183
    sput-boolean v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsStatusBarHidden:Z

    .line 5185
    sget-boolean v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsStatusBarHidden:Z

    if-eqz v3, :cond_3

    .line 5186
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedVisible:Z

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 5187
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapsePanels()V

    .line 5188
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->makeExpandedInvisible()V

    .line 5190
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->makeInvisible:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5191
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->setVisibility(I)V

    .line 5193
    const-string v3, "PhoneStatusBar"

    const-string v4, "Removed status bar view"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5205
    .end local v2    # "isStatusBarHidden":Z
    :cond_1
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isNavigationBarHidden()Z

    move-result v1

    .line 5206
    .local v1, "isNavigationBarHidden":Z
    sget-boolean v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsNavigationBarHidden:Z

    if-eq v3, v1, :cond_2

    .line 5207
    sput-boolean v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsNavigationBarHidden:Z

    .line 5209
    sget-boolean v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsNavigationBarHidden:Z

    if-eqz v3, :cond_4

    .line 5210
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mWindowManager:Landroid/view/WindowManager;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-interface {v3, v4}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 5218
    .end local v1    # "isNavigationBarHidden":Z
    :cond_2
    :goto_1
    return-void

    .line 5195
    .restart local v2    # "isStatusBarHidden":Z
    :cond_3
    :try_start_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->setVisibility(I)V

    .line 5197
    const-string v3, "PhoneStatusBar"

    const-string v4, "Added status bar view"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 5200
    .end local v2    # "isStatusBarHidden":Z
    :catch_0
    move-exception v0

    .line 5201
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "PhoneStatusBar"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed Applying policy"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5212
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "isNavigationBarHidden":Z
    :cond_4
    :try_start_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mWindowManager:Landroid/view/WindowManager;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getNavigationBarLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 5215
    .end local v1    # "isNavigationBarHidden":Z
    :catch_1
    move-exception v0

    .line 5216
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v3, "PhoneStatusBar"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed Applying policy"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public buzzBeepBlinked()V
    .locals 1

    .prologue
    .line 3782
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost;

    if-eqz v0, :cond_0

    .line 3783
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost;->fireBuzzBeepBlinked()V

    .line 3785
    :cond_0
    return-void
.end method

.method public calculateGoingToFullShadeDelay()J
    .locals 4

    .prologue
    .line 5345
    iget-wide v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardFadingAwayDelay:J

    iget-wide v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardFadingAwayDuration:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public createAndAddWindows()V
    .locals 0

    .prologue
    .line 4370
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->addStatusBarWindow()V

    .line 4371
    return-void
.end method

.method protected createHandler()Lcom/android/systemui/statusbar/BaseStatusBar$H;
    .locals 2

    .prologue
    .line 3281
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Lcom/android/systemui/statusbar/phone/PhoneStatusBar$1;)V

    return-object v0
.end method

.method public destroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 5099
    invoke-super {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->destroy()V

    .line 5100
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    if-eqz v0, :cond_0

    .line 5101
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 5102
    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    .line 5104
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz v0, :cond_1

    .line 5105
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 5106
    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    .line 5108
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 5109
    return-void
.end method

.method public disable(IZ)V
    .locals 9
    .param p1, "state"    # I
    .param p2, "animate"    # Z

    .prologue
    .line 3041
    iput p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisabledUnmodified:I

    .line 3042
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->adjustDisableFlags(I)I

    move-result p1

    .line 3043
    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisabled:I

    .line 3045
    .local v2, "old":I
    const-string v4, "content://com.sec.knox.provider2/KnoxCustomManagerService1"

    const-string v5, "getSealedState"

    invoke-direct {p0, v4, v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getKnoxValueBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 3046
    const-string v4, "PhoneStatusBar"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "KnoxCustom: state: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3047
    const-string v4, "content://com.sec.knox.provider2/KnoxCustomManagerService1"

    const-string v5, "getSealedStatusBarMode"

    invoke-direct {p0, v4, v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getKnoxValueInteger(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_f

    .line 3049
    const-string v4, "PhoneStatusBar"

    const-string v5, "KnoxCustom: DISABLE_VISIBILITY"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3050
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    if-eqz v4, :cond_0

    .line 3051
    const-string v4, "PhoneStatusBar"

    const-string v5, "KnoxCustom: calling setStatusBarOn(false)"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3052
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setStatusBarOn(Z)V

    .line 3077
    :cond_0
    :goto_0
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPreviousSealedMode:Z

    .line 3098
    :cond_1
    :goto_1
    xor-int v0, p1, v2

    .line 3099
    .local v0, "diff":I
    iput p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisabled:I

    .line 3101
    sget-boolean v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->DEBUG:Z

    if-eqz v4, :cond_2

    .line 3102
    const-string v4, "PhoneStatusBar"

    const-string v5, "disable: 0x%08x -> 0x%08x (diff: 0x%08x)"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3106
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 3107
    .local v1, "flagdbg":Ljava/lang/StringBuilder;
    const-string v4, "disable: < "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3108
    const/high16 v4, 0x10000

    and-int/2addr v4, p1

    if-eqz v4, :cond_14

    const-string v4, "EXPAND"

    :goto_2
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3109
    const/high16 v4, 0x10000

    and-int/2addr v4, v0

    if-eqz v4, :cond_15

    const-string v4, "* "

    :goto_3
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3110
    const/high16 v4, 0x20000

    and-int/2addr v4, p1

    if-eqz v4, :cond_16

    const-string v4, "ICONS"

    :goto_4
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3111
    const/high16 v4, 0x20000

    and-int/2addr v4, v0

    if-eqz v4, :cond_17

    const-string v4, "* "

    :goto_5
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3112
    const/high16 v4, 0x40000

    and-int/2addr v4, p1

    if-eqz v4, :cond_18

    const-string v4, "ALERTS"

    :goto_6
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3113
    const/high16 v4, 0x40000

    and-int/2addr v4, v0

    if-eqz v4, :cond_19

    const-string v4, "* "

    :goto_7
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3114
    const/high16 v4, 0x100000

    and-int/2addr v4, p1

    if-eqz v4, :cond_1a

    const-string v4, "SYSTEM_INFO"

    :goto_8
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3115
    const/high16 v4, 0x100000

    and-int/2addr v4, v0

    if-eqz v4, :cond_1b

    const-string v4, "* "

    :goto_9
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3116
    const/high16 v4, 0x400000

    and-int/2addr v4, p1

    if-eqz v4, :cond_1c

    const-string v4, "BACK"

    :goto_a
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3117
    const/high16 v4, 0x400000

    and-int/2addr v4, v0

    if-eqz v4, :cond_1d

    const-string v4, "* "

    :goto_b
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3118
    const/high16 v4, 0x200000

    and-int/2addr v4, p1

    if-eqz v4, :cond_1e

    const-string v4, "HOME"

    :goto_c
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3119
    const/high16 v4, 0x200000

    and-int/2addr v4, v0

    if-eqz v4, :cond_1f

    const-string v4, "* "

    :goto_d
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3120
    const/high16 v4, 0x1000000

    and-int/2addr v4, p1

    if-eqz v4, :cond_20

    const-string v4, "RECENT"

    :goto_e
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3121
    const/high16 v4, 0x1000000

    and-int/2addr v4, v0

    if-eqz v4, :cond_21

    const-string v4, "* "

    :goto_f
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3122
    const/high16 v4, 0x800000

    and-int/2addr v4, p1

    if-eqz v4, :cond_22

    const-string v4, "CLOCK"

    :goto_10
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3123
    const/high16 v4, 0x800000

    and-int/2addr v4, v0

    if-eqz v4, :cond_23

    const-string v4, "* "

    :goto_11
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3124
    const/high16 v4, 0x2000000

    and-int/2addr v4, p1

    if-eqz v4, :cond_24

    const-string v4, "SEARCH"

    :goto_12
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3125
    const/high16 v4, 0x2000000

    and-int/2addr v4, v0

    if-eqz v4, :cond_25

    const-string v4, "* "

    :goto_13
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3126
    const-string v4, ">"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3127
    const-string v4, "PhoneStatusBar"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3129
    const/high16 v4, 0x100000

    and-int/2addr v4, v0

    if-nez v4, :cond_3

    const-string v4, "content://com.sec.knox.provider2/KnoxCustomManagerService1"

    const-string v5, "getSealedState"

    invoke-direct {p0, v4, v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getKnoxValueBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 3134
    :cond_3
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemIconArea:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 3136
    const/high16 v4, 0x100000

    and-int/2addr v4, p1

    if-nez v4, :cond_26

    const/4 v3, 0x1

    .line 3137
    .local v3, "show":Z
    :goto_14
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusIcons:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_27

    const/4 v4, 0x0

    :goto_15
    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3138
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSignalBatteryIcons:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_28

    const/4 v4, 0x0

    :goto_16
    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3142
    const-string v4, "content://com.sec.knox.provider2/KnoxCustomManagerService1"

    const-string v5, "getSealedState"

    invoke-direct {p0, v4, v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getKnoxValueBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 3144
    const/high16 v4, 0x100000

    and-int/2addr v4, p1

    if-eqz v4, :cond_29

    .line 3148
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemIconArea:Landroid/widget/LinearLayout;

    const/4 v5, 0x0

    invoke-direct {p0, v4, v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateStatusBarHide(Landroid/view/View;Z)V

    .line 3160
    .end local v3    # "show":Z
    :cond_4
    :goto_17
    const/high16 v4, 0x800000

    and-int/2addr v4, v0

    if-nez v4, :cond_5

    const-string v4, "content://com.sec.knox.provider2/KnoxCustomManagerService1"

    const-string v5, "getSealedState"

    invoke-direct {p0, v4, v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getKnoxValueBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 3165
    :cond_5
    const/high16 v4, 0x800000

    and-int/2addr v4, p1

    if-nez v4, :cond_2a

    const/4 v3, 0x1

    .line 3166
    .restart local v3    # "show":Z
    :goto_18
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->showClock(Z)V

    .line 3168
    .end local v3    # "show":Z
    :cond_6
    const/high16 v4, 0x10000

    and-int/2addr v4, v0

    if-eqz v4, :cond_7

    .line 3169
    const/high16 v4, 0x10000

    and-int/2addr v4, p1

    if-eqz v4, :cond_7

    .line 3170
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapsePanels()V

    .line 3174
    :cond_7
    const/high16 v4, 0x3600000

    and-int/2addr v4, v0

    if-eqz v4, :cond_9

    .line 3179
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v4, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setDisabledFlags(I)V

    .line 3181
    :cond_8
    const/high16 v4, 0x1000000

    and-int/2addr v4, p1

    if-eqz v4, :cond_9

    .line 3183
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    const/16 v5, 0x3fc

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    .line 3184
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    const/16 v5, 0x3fc

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->sendEmptyMessage(I)Z

    .line 3188
    :cond_9
    const/high16 v4, 0x20000

    and-int/2addr v4, v0

    if-nez v4, :cond_a

    const-string v4, "content://com.sec.knox.provider2/KnoxCustomManagerService1"

    const-string v5, "getSealedState"

    invoke-direct {p0, v4, v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getKnoxValueBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 3194
    :cond_a
    const/high16 v4, 0x20000

    and-int/2addr v4, p1

    if-eqz v4, :cond_2b

    .line 3195
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTicking:Z

    if-eqz v4, :cond_b

    .line 3196
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->haltTicker()V

    .line 3201
    :cond_b
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationIconArea:Landroid/view/View;

    const/4 v5, 0x0

    invoke-direct {p0, v4, v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateStatusBarHide(Landroid/view/View;Z)V

    .line 3212
    :cond_c
    :goto_19
    const/high16 v4, 0x40000

    and-int/2addr v4, v0

    if-eqz v4, :cond_d

    .line 3213
    const/high16 v4, 0x40000

    and-int/2addr v4, p1

    if-eqz v4, :cond_2c

    const/4 v4, 0x1

    :goto_1a
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisableNotificationAlerts:Z

    .line 3215
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpObserver:Landroid/database/ContentObserver;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 3218
    :cond_d
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDoNotDisturb:Lcom/android/systemui/statusbar/DoNotDisturb;

    if-eqz v4, :cond_e

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDoNotDisturb:Lcom/android/systemui/statusbar/DoNotDisturb;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/DoNotDisturb;->isDisableAlert()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 3219
    const/high16 v4, 0x40000

    or-int/2addr p1, v4

    .line 3220
    const-string v4, "PhoneStatusBar"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Disable : updateDisableFlags : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3221
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDoNotDisturb:Lcom/android/systemui/statusbar/DoNotDisturb;

    const/high16 v5, 0x40000

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/DoNotDisturb;->updateDisableFlags(I)V

    .line 3223
    :cond_e
    return-void

    .line 3055
    .end local v0    # "diff":I
    .end local v1    # "flagdbg":Ljava/lang/StringBuilder;
    :cond_f
    const-string v4, "PhoneStatusBar"

    const-string v5, "KnoxCustom: SEALED_MODE_VISIBILITY"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3056
    const-string v4, "PhoneStatusBar"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mStatusBarView = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3057
    const-string v4, "PhoneStatusBar"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "clock = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "content://com.sec.knox.provider2/KnoxCustomManagerService1"

    const-string v7, "getSealedStatusBarClockState"

    invoke-direct {p0, v6, v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getKnoxValueBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3058
    const-string v4, "PhoneStatusBar"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "icons = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "content://com.sec.knox.provider2/KnoxCustomManagerService1"

    const-string v7, "getSealedStatusBarIconsState"

    invoke-direct {p0, v6, v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getKnoxValueBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3059
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    if-eqz v4, :cond_0

    .line 3060
    const-string v4, "PhoneStatusBar"

    const-string v5, "KnoxCustom: calling setStatusBarOn(true)"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3061
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setStatusBarOn(Z)V

    .line 3063
    const-string v4, "content://com.sec.knox.provider2/KnoxCustomManagerService1"

    const-string v5, "getSealedStatusBarClockState"

    invoke-direct {p0, v4, v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getKnoxValueBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_10

    .line 3064
    const-string v4, "PhoneStatusBar"

    const-string v5, "KnoxCustom: setting StatusBarManager.DISABLE_CLOCK"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3065
    const/high16 v4, 0x800000

    or-int/2addr p1, v4

    .line 3067
    :cond_10
    const-string v4, "content://com.sec.knox.provider2/KnoxCustomManagerService1"

    const-string v5, "getSealedStatusBarIconsState"

    invoke-direct {p0, v4, v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getKnoxValueBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_11

    .line 3068
    const-string v4, "PhoneStatusBar"

    const-string v5, "KnoxCustom: setting StatusBarManager.DISABLE_SYSTEM_INFO"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3069
    const/high16 v4, 0x100000

    or-int/2addr p1, v4

    .line 3071
    :cond_11
    const/high16 v4, 0x10000

    or-int/2addr p1, v4

    .line 3072
    const/high16 v4, 0x20000

    or-int/2addr p1, v4

    .line 3073
    const/high16 v4, 0x1000000

    or-int/2addr p1, v4

    goto/16 :goto_0

    .line 3079
    :cond_12
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPreviousSealedMode:Z

    if-eqz v4, :cond_1

    .line 3080
    const-string v4, "PhoneStatusBar"

    const-string v5, "KnoxCustom: ENABLE_VISIBILITY"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3081
    const-string v4, "PhoneStatusBar"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mStatusBarView = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3082
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    if-eqz v4, :cond_13

    .line 3083
    const-string v4, "PhoneStatusBar"

    const-string v5, "KnoxCustom: calling setStatusBarOn(true)"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3084
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setStatusBarOn(Z)V

    .line 3085
    iget v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    or-int/lit8 v4, v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {p0, v4, v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setSystemUiVisibility(II)V

    .line 3086
    const v4, -0x800001

    and-int/2addr p1, v4

    .line 3087
    const v4, -0x100001

    and-int/2addr p1, v4

    .line 3088
    const v4, -0x10001

    and-int/2addr p1, v4

    .line 3089
    const v4, -0x20001

    and-int/2addr p1, v4

    .line 3090
    const v4, -0x200001

    and-int/2addr p1, v4

    .line 3091
    const v4, -0x1000001

    and-int/2addr p1, v4

    .line 3092
    const v4, -0x400001

    and-int/2addr p1, v4

    .line 3094
    :cond_13
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPreviousSealedMode:Z

    goto/16 :goto_1

    .line 3108
    .restart local v0    # "diff":I
    .restart local v1    # "flagdbg":Ljava/lang/StringBuilder;
    :cond_14
    const-string v4, "expand"

    goto/16 :goto_2

    .line 3109
    :cond_15
    const-string v4, " "

    goto/16 :goto_3

    .line 3110
    :cond_16
    const-string v4, "icons"

    goto/16 :goto_4

    .line 3111
    :cond_17
    const-string v4, " "

    goto/16 :goto_5

    .line 3112
    :cond_18
    const-string v4, "alerts"

    goto/16 :goto_6

    .line 3113
    :cond_19
    const-string v4, " "

    goto/16 :goto_7

    .line 3114
    :cond_1a
    const-string v4, "system_info"

    goto/16 :goto_8

    .line 3115
    :cond_1b
    const-string v4, " "

    goto/16 :goto_9

    .line 3116
    :cond_1c
    const-string v4, "back"

    goto/16 :goto_a

    .line 3117
    :cond_1d
    const-string v4, " "

    goto/16 :goto_b

    .line 3118
    :cond_1e
    const-string v4, "home"

    goto/16 :goto_c

    .line 3119
    :cond_1f
    const-string v4, " "

    goto/16 :goto_d

    .line 3120
    :cond_20
    const-string v4, "recent"

    goto/16 :goto_e

    .line 3121
    :cond_21
    const-string v4, " "

    goto/16 :goto_f

    .line 3122
    :cond_22
    const-string v4, "clock"

    goto/16 :goto_10

    .line 3123
    :cond_23
    const-string v4, " "

    goto/16 :goto_11

    .line 3124
    :cond_24
    const-string v4, "search"

    goto/16 :goto_12

    .line 3125
    :cond_25
    const-string v4, " "

    goto/16 :goto_13

    .line 3136
    :cond_26
    const/4 v3, 0x0

    goto/16 :goto_14

    .line 3137
    .restart local v3    # "show":Z
    :cond_27
    const/4 v4, 0x4

    goto/16 :goto_15

    .line 3138
    :cond_28
    const/4 v4, 0x4

    goto/16 :goto_16

    .line 3154
    :cond_29
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemIconArea:Landroid/widget/LinearLayout;

    const/4 v5, 0x0

    invoke-direct {p0, v4, v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateStatusBarShow(Landroid/view/View;Z)V

    goto/16 :goto_17

    .line 3165
    .end local v3    # "show":Z
    :cond_2a
    const/4 v3, 0x0

    goto/16 :goto_18

    .line 3207
    :cond_2b
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationIconArea:Landroid/view/View;

    const/4 v5, 0x0

    invoke-direct {p0, v4, v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateStatusBarShow(Landroid/view/View;Z)V

    goto/16 :goto_19

    .line 3213
    :cond_2c
    const/4 v4, 0x0

    goto/16 :goto_1a
.end method

.method protected dismissKeyguardThenExecute(Lcom/android/keyguard/KeyguardHostView$OnDismissAction;ZZ)V
    .locals 2
    .param p1, "action"    # Lcom/android/keyguard/KeyguardHostView$OnDismissAction;
    .param p2, "afterKeyguardGone"    # Z
    .param p3, "dismissIfInsecure"    # Z

    .prologue
    .line 4685
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4686
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->isMethodInsecure()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isLaunchTransitionRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    .line 4688
    invoke-interface {p1}, Lcom/android/keyguard/KeyguardHostView$OnDismissAction;->onDismiss()Z

    .line 4689
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    new-instance v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$41;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$41;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setLaunchTransitionEndRunnable(Ljava/lang/Runnable;)V

    .line 4701
    :goto_0
    return-void

    .line 4696
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->dismissWithAction(Lcom/android/keyguard/KeyguardHostView$OnDismissAction;ZZ)V

    goto :goto_0

    .line 4699
    :cond_1
    invoke-interface {p1}, Lcom/android/keyguard/KeyguardHostView$OnDismissAction;->onDismiss()Z

    goto :goto_0
.end method

.method public dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 10
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 5117
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDemoModeAllowed:Z

    if-nez v7, :cond_0

    .line 5118
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "sysui_demo_allowed"

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_2

    const/4 v7, 0x1

    :goto_0
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDemoModeAllowed:Z

    .line 5121
    :cond_0
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDemoModeAllowed:Z

    if-nez v7, :cond_3

    .line 5174
    :cond_1
    :goto_1
    return-void

    .line 5118
    :cond_2
    const/4 v7, 0x0

    goto :goto_0

    .line 5122
    :cond_3
    const-string v7, "enter"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    .line 5123
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDemoMode:Z

    .line 5131
    :cond_4
    :goto_2
    const-string v7, "enter"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    const-string v7, "exit"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_14

    :cond_5
    const/4 v3, 0x1

    .line 5132
    .local v3, "modeChange":Z
    :goto_3
    if-nez v3, :cond_6

    const-string v7, "clock"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 5133
    :cond_6
    const v7, 0x7f0e00f5

    invoke-direct {p0, p1, p2, v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->dispatchDemoCommandToView(Ljava/lang/String;Landroid/os/Bundle;I)V

    .line 5135
    :cond_7
    if-nez v3, :cond_8

    const-string v7, "battery"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 5136
    :cond_8
    const v7, 0x7f0e01ac

    invoke-direct {p0, p1, p2, v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->dispatchDemoCommandToView(Ljava/lang/String;Landroid/os/Bundle;I)V

    .line 5138
    :cond_9
    if-nez v3, :cond_a

    const-string v7, "status"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 5139
    :cond_a
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDemoStatusIcons:Lcom/android/systemui/statusbar/phone/DemoStatusIcons;

    if-nez v7, :cond_b

    .line 5140
    new-instance v7, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusIcons:Landroid/widget/LinearLayout;

    iget v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIconSize:I

    invoke-direct {v7, v8, v9}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;-><init>(Landroid/widget/LinearLayout;I)V

    iput-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDemoStatusIcons:Lcom/android/systemui/statusbar/phone/DemoStatusIcons;

    .line 5142
    :cond_b
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDemoStatusIcons:Lcom/android/systemui/statusbar/phone/DemoStatusIcons;

    invoke-virtual {v7, p1, p2}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 5144
    :cond_c
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    if-eqz v7, :cond_e

    if-nez v3, :cond_d

    const-string v7, "network"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 5145
    :cond_d
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-virtual {v7, p1, p2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 5147
    :cond_e
    if-nez v3, :cond_f

    const-string v7, "notifications"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 5148
    :cond_f
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    if-nez v7, :cond_15

    const/4 v4, 0x0

    .line 5150
    .local v4, "notifications":Landroid/view/View;
    :goto_4
    if-eqz v4, :cond_10

    .line 5151
    const-string v7, "visible"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 5152
    .local v6, "visible":Ljava/lang/String;
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDemoMode:Z

    if-eqz v7, :cond_16

    const-string v7, "false"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_16

    const/4 v5, 0x4

    .line 5153
    .local v5, "vis":I
    :goto_5
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 5156
    .end local v4    # "notifications":Landroid/view/View;
    .end local v5    # "vis":I
    .end local v6    # "visible":Ljava/lang/String;
    :cond_10
    const-string v7, "bars"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 5157
    const-string v7, "mode"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5158
    .local v2, "mode":Ljava/lang/String;
    const-string v7, "opaque"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_17

    const/4 v1, 0x0

    .line 5164
    .local v1, "barMode":I
    :goto_6
    const/4 v7, -0x1

    if-eq v1, v7, :cond_1

    .line 5165
    const/4 v0, 0x1

    .line 5166
    .local v0, "animate":Z
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    if-eqz v7, :cond_11

    .line 5167
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getBarTransitions()Lcom/android/systemui/statusbar/phone/BarTransitions;

    move-result-object v7

    invoke-virtual {v7, v1, v0}, Lcom/android/systemui/statusbar/phone/BarTransitions;->transitionTo(IZ)V

    .line 5169
    :cond_11
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz v7, :cond_1

    .line 5170
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBarTransitions()Lcom/android/systemui/statusbar/phone/BarTransitions;

    move-result-object v7

    invoke-virtual {v7, v1, v0}, Lcom/android/systemui/statusbar/phone/BarTransitions;->transitionTo(IZ)V

    goto/16 :goto_1

    .line 5124
    .end local v0    # "animate":Z
    .end local v1    # "barMode":I
    .end local v2    # "mode":Ljava/lang/String;
    .end local v3    # "modeChange":Z
    :cond_12
    const-string v7, "exit"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_13

    .line 5125
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDemoMode:Z

    .line 5126
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->checkBarModes()V

    goto/16 :goto_2

    .line 5127
    :cond_13
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDemoMode:Z

    if-nez v7, :cond_4

    .line 5129
    const-string v7, "enter"

    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, v7, v8}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_2

    .line 5131
    :cond_14
    const/4 v3, 0x0

    goto/16 :goto_3

    .line 5148
    .restart local v3    # "modeChange":Z
    :cond_15
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v8, 0x7f0e018b

    invoke-virtual {v7, v8}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    goto :goto_4

    .line 5152
    .restart local v4    # "notifications":Landroid/view/View;
    .restart local v6    # "visible":Ljava/lang/String;
    :cond_16
    const/4 v5, 0x0

    goto :goto_5

    .line 5158
    .end local v4    # "notifications":Landroid/view/View;
    .end local v6    # "visible":Ljava/lang/String;
    .restart local v2    # "mode":Ljava/lang/String;
    :cond_17
    const-string v7, "translucent"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_18

    const/4 v1, 0x2

    goto :goto_6

    :cond_18
    const-string v7, "semi-transparent"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_19

    const/4 v1, 0x1

    goto :goto_6

    :cond_19
    const-string v7, "transparent"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1a

    const/4 v1, 0x4

    goto :goto_6

    :cond_1a
    const-string v7, "warning"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1b

    const/4 v1, 0x5

    goto :goto_6

    :cond_1b
    const/4 v1, -0x1

    goto :goto_6
.end method

.method public displayNotificationFromHeadsUp(Landroid/service/notification/StatusBarNotification;)V
    .locals 2
    .param p1, "notification"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 2177
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->createNotificationViews(Landroid/service/notification/StatusBarNotification;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v0

    .line 2178
    .local v0, "shadeEntry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    if-nez v0, :cond_0

    .line 2187
    :goto_0
    return-void

    .line 2181
    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationData$Entry;->setInterruption()V

    .line 2183
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->addNotificationViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    .line 2185
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setAreThereNotifications()V

    .line 2186
    const/16 v1, -0x2710

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateExpandedViewPos(I)V

    goto :goto_0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 4215
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQueueLock:Ljava/lang/Object;

    monitor-enter v4

    .line 4216
    :try_start_0
    const-string v3, "Current Status Bar state:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4217
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mExpandedVisible="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedVisible:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", mTrackingPosition="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTrackingPosition:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4219
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mTickerEnabled="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTickerEnabled:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4220
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTickerEnabled:Z

    if-eqz v3, :cond_0

    .line 4221
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mTicking="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTicking:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4222
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mTickerView: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTickerView:Landroid/view/View;

    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4224
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mTracking="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTracking:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4225
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mDisplayMetrics="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4226
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mStackScroller: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4227
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mStackScroller: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " scroll "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getScrollX()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getScrollY()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4230
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4232
    const-string v3, "  mInteractingWindows="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mInteractingWindows:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 4233
    const-string v3, "  mStatusBarWindowState="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4234
    iget v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindowState:I

    invoke-static {v3}, Landroid/app/StatusBarManager;->windowStateToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4235
    const-string v3, "  mStatusBarMode="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4236
    iget v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarMode:I

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/BarTransitions;->modeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4237
    const-string v3, "  mDozing="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDozing:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 4238
    const-string v3, "  mZenMode="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4239
    iget v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mZenMode:I

    invoke-static {v3}, Landroid/provider/Settings$Global;->zenModeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4240
    const-string v3, "  mUseHeadsUp="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4241
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUseHeadsUp:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 4242
    const-string v3, "  interrupting package: "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4243
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->hunStateToString(Lcom/android/systemui/statusbar/NotificationData$Entry;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4244
    const-string v3, "mStatusBarView"

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getBarTransitions()Lcom/android/systemui/statusbar/phone/BarTransitions;

    move-result-object v4

    invoke-static {p2, v3, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->dumpBarTransitions(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/systemui/statusbar/phone/BarTransitions;)V

    .line 4245
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz v3, :cond_1

    .line 4246
    const-string v3, "  mNavigationBarWindowState="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4247
    iget v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarWindowState:I

    invoke-static {v3}, Landroid/app/StatusBarManager;->windowStateToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4248
    const-string v3, "  mNavigationBarMode="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4249
    iget v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarMode:I

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/BarTransitions;->modeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4250
    const-string v3, "mNavigationBarView"

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBarTransitions()Lcom/android/systemui/statusbar/phone/BarTransitions;

    move-result-object v4

    invoke-static {p2, v3, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->dumpBarTransitions(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/systemui/statusbar/phone/BarTransitions;)V

    .line 4253
    :cond_1
    const-string v3, "  mNavigationBarView="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4254
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-nez v3, :cond_5

    .line 4255
    const-string v3, "null"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4260
    :goto_0
    const-string v3, "  mMediaSessionManager="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4261
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4262
    const-string v3, "  mMediaNotificationKey="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4263
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMediaNotificationKey:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4264
    const-string v3, "  mMediaController="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4265
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 4266
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMediaController:Landroid/media/session/MediaController;

    if-eqz v3, :cond_2

    .line 4267
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " state="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v4}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4269
    :cond_2
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 4270
    const-string v3, "  mMediaMetadata="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4271
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMediaMetadata:Landroid/media/MediaMetadata;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 4272
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMediaMetadata:Landroid/media/MediaMetadata;

    if-eqz v3, :cond_3

    .line 4273
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " title="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMediaMetadata:Landroid/media/MediaMetadata;

    const-string v5, "android.media.metadata.TITLE"

    invoke-virtual {v4, v5}, Landroid/media/MediaMetadata;->getText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4275
    :cond_3
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 4277
    const-string v3, "  Panels: "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4278
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    if-eqz v3, :cond_4

    .line 4279
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    mNotificationPanel="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " params="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup$LayoutParams;->debug(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4281
    const-string v3, "      "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4282
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v3, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 4285
    :cond_4
    invoke-static {p2}, Lcom/android/systemui/doze/DozeLog;->dump(Ljava/io/PrintWriter;)V

    .line 4288
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    monitor-enter v4

    .line 4289
    :try_start_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    const-string v5, "  "

    invoke-virtual {v3, p2, v5}, Lcom/android/systemui/statusbar/NotificationData;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 4290
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 4292
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusIcons:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 4293
    .local v0, "N":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  system icons: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4294
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_6

    .line 4295
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusIcons:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 4296
    .local v2, "ic":Lcom/android/systemui/statusbar/StatusBarIconView;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] icon="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4294
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 4230
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "ic":Lcom/android/systemui/statusbar/StatusBarIconView;
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 4257
    :cond_5
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v3, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4290
    :catchall_1
    move-exception v3

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v3

    .line 4319
    .restart local v0    # "N":I
    .restart local v1    # "i":I
    :cond_6
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isMSim()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 4320
    const/4 v1, 0x0

    :goto_2
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v3

    if-ge v1, v3, :cond_9

    .line 4321
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMSimNetworkController:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    if-eqz v3, :cond_7

    .line 4322
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMSimNetworkController:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    invoke-virtual {v3, p1, p2, p3, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;I)V

    .line 4320
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 4326
    :cond_8
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    if-eqz v3, :cond_9

    .line 4327
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-virtual {v3, p1, p2, p3}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 4330
    :cond_9
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBluetoothController:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    if-eqz v3, :cond_a

    .line 4331
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBluetoothController:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    invoke-virtual {v3, p1, p2, p3}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 4333
    :cond_a
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCastController:Lcom/android/systemui/statusbar/policy/CastControllerImpl;

    if-eqz v3, :cond_b

    .line 4334
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCastController:Lcom/android/systemui/statusbar/policy/CastControllerImpl;

    invoke-virtual {v3, p1, p2, p3}, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 4336
    :cond_b
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    if-eqz v3, :cond_c

    .line 4337
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-virtual {v3, p1, p2, p3}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 4339
    :cond_c
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    if-eqz v3, :cond_d

    .line 4340
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-virtual {v3, p1, p2, p3}, Lcom/android/systemui/statusbar/policy/BatteryController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 4342
    :cond_d
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNextAlarmController:Lcom/android/systemui/statusbar/policy/NextAlarmController;

    if-eqz v3, :cond_e

    .line 4343
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNextAlarmController:Lcom/android/systemui/statusbar/policy/NextAlarmController;

    invoke-virtual {v3, p1, p2, p3}, Lcom/android/systemui/statusbar/policy/NextAlarmController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 4345
    :cond_e
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    if-eqz v3, :cond_f

    .line 4346
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    invoke-virtual {v3, p1, p2, p3}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 4350
    :cond_f
    const-string v3, "Q.P.: "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4351
    const-string v3, "  mShowLockscreenNotifications="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4352
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mShowLockscreenNotifications:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Z)V

    .line 4353
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 4355
    return-void
.end method

.method public enableSignals(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 7242
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    if-nez v1, :cond_1

    .line 7252
    :cond_0
    :goto_0
    return-void

    .line 7243
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v2, 0x7f0e039b

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/SignalClusterView;

    .line 7245
    .local v0, "signalCluster":Lcom/android/systemui/statusbar/SignalClusterView;
    if-eqz v0, :cond_0

    .line 7246
    if-eqz p1, :cond_2

    .line 7247
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/SignalClusterView;->setVisibility(I)V

    goto :goto_0

    .line 7249
    :cond_2
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/SignalClusterView;->setVisibility(I)V

    goto :goto_0
.end method

.method public fadeKeyguardAfterLaunchTransition(Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "beforeFading"    # Ljava/lang/Runnable;
    .param p2, "endRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 5288
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLaunchTransitionEndRunnable:Ljava/lang/Runnable;

    .line 5289
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$45;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$45;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Ljava/lang/Runnable;)V

    .line 5315
    .local v0, "hideRunnable":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isLaunchTransitionRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5316
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setLaunchTransitionEndRunnable(Ljava/lang/Runnable;)V

    .line 5320
    :goto_0
    return-void

    .line 5318
    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method public findAndUpdateMediaNotifications()V
    .locals 21

    .prologue
    .line 2737
    const/4 v10, 0x0

    .line 2739
    .local v10, "metaDataChanged":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    move-object/from16 v18, v0

    monitor-enter v18

    .line 2740
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/systemui/statusbar/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v5

    .line 2741
    .local v5, "activeNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/NotificationData$Entry;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 2742
    .local v3, "N":I
    const/4 v9, 0x0

    .line 2743
    .local v9, "mediaNotification":Lcom/android/systemui/statusbar/NotificationData$Entry;
    const/4 v6, 0x0

    .line 2744
    .local v6, "controller":Landroid/media/session/MediaController;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v3, :cond_1

    .line 2745
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 2746
    .local v7, "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isMediaNotification(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 2747
    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    move-object/from16 v17, v0

    const-string v19, "android.mediaSession"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v16

    check-cast v16, Landroid/media/session/MediaSession$Token;

    .line 2749
    .local v16, "token":Landroid/media/session/MediaSession$Token;
    if-eqz v16, :cond_0

    .line 2750
    new-instance v6, Landroid/media/session/MediaController;

    .end local v6    # "controller":Landroid/media/session/MediaController;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-direct {v6, v0, v1}, Landroid/media/session/MediaController;-><init>(Landroid/content/Context;Landroid/media/session/MediaSession$Token;)V

    .line 2751
    .restart local v6    # "controller":Landroid/media/session/MediaController;
    if-eqz v6, :cond_0

    .line 2753
    move-object v9, v7

    .line 2744
    .end local v16    # "token":Landroid/media/session/MediaSession$Token;
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 2759
    .end local v7    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    :cond_1
    if-nez v9, :cond_5

    .line 2764
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    move-object/from16 v17, v0

    if-eqz v17, :cond_5

    .line 2765
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    move-object/from16 v17, v0

    const/16 v19, 0x0

    const/16 v20, -0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/media/session/MediaSessionManager;->getActiveSessionsForUser(Landroid/content/ComponentName;I)Ljava/util/List;

    move-result-object v14

    .line 2773
    .local v14, "sessions":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaController;>;"
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v17

    add-int/lit8 v13, v17, -0x1

    .local v13, "pos":I
    :goto_1
    if-ltz v13, :cond_5

    .line 2774
    invoke-interface {v14, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/session/MediaController;

    .line 2777
    .local v4, "aController":Landroid/media/session/MediaController;
    if-nez v4, :cond_3

    .line 2773
    :cond_2
    :goto_2
    :sswitch_0
    add-int/lit8 v13, v13, -0x1

    goto :goto_1

    .line 2778
    :cond_3
    invoke-virtual {v4}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v15

    .line 2779
    .local v15, "state":Landroid/media/session/PlaybackState;
    if-eqz v15, :cond_2

    .line 2780
    invoke-virtual {v15}, Landroid/media/session/PlaybackState;->getState()I

    move-result v17

    sparse-switch v17, :sswitch_data_0

    .line 2786
    invoke-virtual {v4}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v12

    .line 2788
    .local v12, "pkg":Ljava/lang/String;
    const/4 v8, 0x0

    :goto_3
    if-ge v8, v3, :cond_2

    .line 2789
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 2790
    .restart local v7    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 2795
    move-object v6, v4

    .line 2796
    move-object v9, v7

    .line 2797
    goto :goto_2

    .line 2788
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 2805
    .end local v4    # "aController":Landroid/media/session/MediaController;
    .end local v7    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    .end local v12    # "pkg":Ljava/lang/String;
    .end local v13    # "pos":I
    .end local v14    # "sessions":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaController;>;"
    .end local v15    # "state":Landroid/media/session/PlaybackState;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMediaController:Landroid/media/session/MediaController;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v6}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->sameSessions(Landroid/media/session/MediaController;Landroid/media/session/MediaController;)Z

    move-result v17

    if-nez v17, :cond_9

    .line 2808
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMediaController:Landroid/media/session/MediaController;

    move-object/from16 v17, v0

    if-eqz v17, :cond_6

    .line 2810
    const-string v17, "PhoneStatusBar"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "DEBUG_MEDIA: Disconnecting from old controller: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMediaController:Landroid/media/session/MediaController;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2812
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMediaController:Landroid/media/session/MediaController;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMediaListener:Landroid/media/session/MediaController$Callback;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V

    .line 2813
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMediaListenerRegisted:Z

    .line 2815
    :cond_6
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMediaController:Landroid/media/session/MediaController;

    .line 2817
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMediaController:Landroid/media/session/MediaController;

    move-object/from16 v17, v0

    if-eqz v17, :cond_b

    .line 2818
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMediaController:Landroid/media/session/MediaController;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMediaListener:Landroid/media/session/MediaController$Callback;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/media/session/MediaController;->registerCallback(Landroid/media/session/MediaController$Callback;)V

    .line 2819
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMediaListenerRegisted:Z

    .line 2820
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMediaController:Landroid/media/session/MediaController;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/media/session/MediaController;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMediaMetadata:Landroid/media/MediaMetadata;

    .line 2826
    if-nez v9, :cond_a

    const/4 v11, 0x0

    .line 2830
    .local v11, "notificationKey":Ljava/lang/String;
    :goto_4
    if-eqz v11, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMediaNotificationKey:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_8

    .line 2836
    :cond_7
    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMediaNotificationKey:Ljava/lang/String;

    .line 2843
    .end local v11    # "notificationKey":Ljava/lang/String;
    :cond_8
    :goto_5
    const/4 v10, 0x1

    .line 2851
    :cond_9
    monitor-exit v18
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2853
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateMediaMetaData(Z)V

    .line 2854
    return-void

    .line 2826
    :cond_a
    :try_start_1
    iget-object v0, v9, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v11

    goto :goto_4

    .line 2839
    :cond_b
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMediaMetadata:Landroid/media/MediaMetadata;

    .line 2840
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMediaNotificationKey:Ljava/lang/String;

    goto :goto_5

    .line 2851
    .end local v3    # "N":I
    .end local v5    # "activeNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/NotificationData$Entry;>;"
    .end local v6    # "controller":Landroid/media/session/MediaController;
    .end local v8    # "i":I
    .end local v9    # "mediaNotification":Lcom/android/systemui/statusbar/NotificationData$Entry;
    :catchall_0
    move-exception v17

    monitor-exit v18
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v17

    .line 2780
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x7 -> :sswitch_0
    .end sparse-switch
.end method

.method public finishKeyguardFadingAway()V
    .locals 1

    .prologue
    .line 5370
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardFadingAway:Z

    .line 5371
    return-void
.end method

.method public flipToNotifications()V
    .locals 10

    .prologue
    const/4 v7, 0x0

    const-wide/16 v8, 0x15e

    const/16 v6, 0x8

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 6157
    const-string v0, "PhoneStatusBar"

    const-string v1, "flipToNotifications"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6158
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsButtonAnim:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsButtonAnim:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 6159
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationButtonAnim:Landroid/animation/Animator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationButtonAnim:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 6160
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mEditButtonAnim:Landroid/animation/Animator;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mEditButtonAnim:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 6161
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBasicSettingsButtonAnim:Landroid/animation/Animator;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBasicSettingsButtonAnim:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 6163
    :cond_3
    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateQSpanel(Z)V

    .line 6164
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setAreThereNotifications()V

    .line 6165
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-nez v0, :cond_6

    .line 6166
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSDetailviewPanel:Landroid/view/View;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSDetailviewPanel:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_5

    .line 6167
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSDetailviewPanel:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 6205
    :cond_4
    :goto_0
    return-void

    .line 6168
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSEditPanel:Lcom/android/systemui/qs/QSEditPanel;

    if-eqz v0, :cond_4

    .line 6169
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSEditPanel:Lcom/android/systemui/qs/QSEditPanel;

    invoke-virtual {v0, v6}, Lcom/android/systemui/qs/QSEditPanel;->setVisibility(I)V

    .line 6170
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSEditBackButton:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 6174
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_7

    .line 6175
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationButton:Landroid/widget/ImageView;

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v2, v5, [F

    aput v7, v2, v4

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationButton:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v1, v6}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setVisibilityWhenDone(Landroid/animation/Animator;Landroid/view/View;I)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->start(Landroid/animation/Animator;)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationButtonAnim:Landroid/animation/Animator;

    .line 6182
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandSettingsButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_8

    .line 6183
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandSettingsButton:Landroid/widget/ImageView;

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v2, v5, [F

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v2, v4

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandSettingsButton:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v1, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setVisibilityWhenDone(Landroid/animation/Animator;Landroid/view/View;I)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->start(Landroid/animation/Animator;)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsButtonAnim:Landroid/animation/Animator;

    .line 6190
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsEditButton:Landroid/widget/ImageView;

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v2, v5, [F

    aput v7, v2, v4

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsEditButton:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v1, v6}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setVisibilityWhenDone(Landroid/animation/Animator;Landroid/view/View;I)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->start(Landroid/animation/Animator;)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mEditButtonAnim:Landroid/animation/Animator;

    .line 6196
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBasicSettingsButton:Landroid/widget/ImageView;

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v2, v5, [F

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v2, v4

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBasicSettingsButton:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v1, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setVisibilityWhenDone(Landroid/animation/Animator;Landroid/view/View;I)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->start(Landroid/animation/Animator;)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBasicSettingsButtonAnim:Landroid/animation/Animator;

    .line 6202
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.systemui.statusbar.EXPANDED_NOTI"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 6203
    const-string v0, "PhoneStatusBar"

    const-string v1, "flipToNotifications in EXPAND_NOTI_ACTION"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public flipToSettings()V
    .locals 9

    .prologue
    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const-wide/16 v6, 0x15e

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 6097
    const-string v0, "PhoneStatusBar"

    const-string v1, "flipToSettings"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6099
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUserSetup:Z

    if-nez v0, :cond_1

    .line 6154
    :cond_0
    :goto_0
    return-void

    .line 6101
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsButtonAnim:Landroid/animation/Animator;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsButtonAnim:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 6102
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationButtonAnim:Landroid/animation/Animator;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationButtonAnim:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 6103
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mEditButtonAnim:Landroid/animation/Animator;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mEditButtonAnim:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 6104
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBasicSettingsButtonAnim:Landroid/animation/Animator;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBasicSettingsButtonAnim:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 6106
    :cond_5
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateQSpanel(Z)V

    .line 6108
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-nez v0, :cond_7

    .line 6109
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSDetailviewPanel:Landroid/view/View;

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsInQSDetailviewMode:Z

    if-eqz v0, :cond_6

    .line 6110
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSDetailviewPanel:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 6111
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSDetailviewPanel:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    goto :goto_0

    .line 6112
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSEditPanel:Lcom/android/systemui/qs/QSEditPanel;

    if-eqz v0, :cond_0

    .line 6113
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSEditPanel:Lcom/android/systemui/qs/QSEditPanel;

    invoke-virtual {v0, v3}, Lcom/android/systemui/qs/QSEditPanel;->setVisibility(I)V

    .line 6114
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSEditBackButton:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 6115
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSEditPanel:Lcom/android/systemui/qs/QSEditPanel;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSEditPanel;->bringToFront()V

    .line 6116
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSEditBackButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    goto :goto_0

    .line 6121
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandSettingsButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_8

    .line 6122
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandSettingsButton:Landroid/widget/ImageView;

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v2, v4, [F

    aput v5, v2, v3

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandSettingsButton:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setVisibilityWhenDone(Landroid/animation/Animator;Landroid/view/View;I)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->start(Landroid/animation/Animator;)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsButtonAnim:Landroid/animation/Animator;

    .line 6129
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_9

    .line 6130
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationButton:Landroid/widget/ImageView;

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v2, v4, [F

    aput v8, v2, v3

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationButton:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v1, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setVisibilityWhenDone(Landroid/animation/Animator;Landroid/view/View;I)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->start(Landroid/animation/Animator;)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationButtonAnim:Landroid/animation/Animator;

    .line 6137
    :cond_9
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBasicSettingsButton:Landroid/widget/ImageView;

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v2, v4, [F

    aput v5, v2, v3

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBasicSettingsButton:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setVisibilityWhenDone(Landroid/animation/Animator;Landroid/view/View;I)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->start(Landroid/animation/Animator;)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBasicSettingsButtonAnim:Landroid/animation/Animator;

    .line 6143
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsEditButton:Landroid/widget/ImageView;

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v2, v4, [F

    aput v8, v2, v3

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsEditButton:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v1, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setVisibilityWhenDone(Landroid/animation/Animator;Landroid/view/View;I)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->start(Landroid/animation/Animator;)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mEditButtonAnim:Landroid/animation/Animator;

    .line 6150
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.systemui.statusbar.EXPANDED_SETTING"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 6151
    const-string v0, "PhoneStatusBar"

    const-string v1, "flipToSettings in EXPAND_SETTING_ACTION"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6153
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateCarrierLabelView()V

    goto/16 :goto_0
.end method

.method public getBarState()I
    .locals 1

    .prologue
    .line 5232
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    return v0
.end method

.method public getCurrentMediaNotificationKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3321
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMediaNotificationKey:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentUserHandle()Landroid/os/UserHandle;
    .locals 2

    .prologue
    .line 2101
    new-instance v0, Landroid/os/UserHandle;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurrentUserId:I

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    return-object v0
.end method

.method public getGestureRecorder()Lcom/android/systemui/statusbar/GestureRecorder;
    .locals 1

    .prologue
    .line 3746
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mGestureRec:Lcom/android/systemui/statusbar/GestureRecorder;

    return-object v0
.end method

.method public getKeyguardFadingAwayDelay()J
    .locals 2

    .prologue
    .line 5822
    iget-wide v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardFadingAwayDelay:J

    return-wide v0
.end method

.method public getKeyguardFadingAwayDuration()J
    .locals 2

    .prologue
    .line 5826
    iget-wide v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardFadingAwayDuration:J

    return-wide v0
.end method

.method protected getMaxKeyguardNotifications()I
    .locals 1

    .prologue
    .line 5720
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardMaxNotificationCount:I

    return v0
.end method

.method public getNavigationBarView()Lcom/android/systemui/statusbar/phone/NavigationBarView;
    .locals 1

    .prologue
    .line 5724
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    return-object v0
.end method

.method public getQuickSettingsOverlayParent()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 5818
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    return-object v0
.end method

.method public getScrimController()Lcom/android/systemui/statusbar/phone/ScrimController;
    .locals 1

    .prologue
    .line 3290
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    return-object v0
.end method

.method protected getSearchLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/WindowManager$LayoutParams;
    .locals 7
    .param p1, "layoutParams"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    const/4 v1, -0x1

    .line 1809
    const/4 v6, 0x0

    .line 1810
    .local v6, "opaque":Z
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7e8

    const v4, 0x820100

    if-eqz v6, :cond_1

    move v5, v1

    :goto_0
    move v2, v1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 1818
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1819
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x1000000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1821
    :cond_0
    const v1, 0x800053

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1822
    const-string v1, "SearchPanel"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 1823
    const/16 v1, 0x31

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 1825
    return-object v0

    .line 1810
    .end local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_1
    const/4 v5, -0x3

    goto :goto_0
.end method

.method public getStatusBarHeight()I
    .locals 2

    .prologue
    .line 1864
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNaturalBarHeight:I

    if-gez v1, :cond_0

    .line 1865
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1866
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x1050010

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNaturalBarHeight:I

    .line 1869
    .end local v0    # "res":Landroid/content/res/Resources;
    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNaturalBarHeight:I

    return v1
.end method

.method protected getStatusBarView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1800
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    return-object v0
.end method

.method public getStatusBarWindow()Lcom/android/systemui/statusbar/phone/StatusBarWindowView;
    .locals 1

    .prologue
    .line 1804
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    return-object v0
.end method

.method public getSystemIconArea()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 5834
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemIconArea:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getSystemIcons()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 5830
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemIcons:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public goToKeyguard()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 5807
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 5808
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->onGoToKeyguard()V

    .line 5809
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setBarState(I)V

    .line 5810
    const/4 v0, 0x0

    invoke-direct {p0, v0, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateKeyguardState(ZZ)V

    .line 5812
    :cond_0
    return-void
.end method

.method public goToLockedShade(Landroid/view/View;)V
    .locals 8
    .param p1, "expandView"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 5771
    const/4 v1, 0x0

    .line 5772
    .local v1, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    instance-of v2, p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v2, :cond_0

    move-object v1, p1

    .line 5773
    check-cast v1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 5782
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isPublicShowing()Z

    move-result v2

    if-nez v2, :cond_3

    move v2, v3

    :goto_0
    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setUserExpanded(Z)V

    .line 5785
    :cond_0
    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurrentUserId:I

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->userAllowsPrivateNotificationsInPublic(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mShowLockscreenNotifications:Z

    if-nez v2, :cond_4

    :cond_1
    move v0, v3

    .line 5792
    .local v0, "fullShadeNeedsBouncer":Z
    :goto_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    const-wide/16 v6, 0x0

    invoke-virtual {v2, v6, v7}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->animateToFullShade(J)V

    .line 5793
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setBarState(I)V

    .line 5794
    invoke-direct {p0, v4, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateKeyguardState(ZZ)V

    .line 5795
    if-eqz v1, :cond_2

    .line 5796
    invoke-virtual {v1, v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setUserLocked(Z)V

    .line 5798
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateCarrierLabelView()V

    .line 5800
    return-void

    .end local v0    # "fullShadeNeedsBouncer":Z
    :cond_3
    move v2, v4

    .line 5782
    goto :goto_0

    :cond_4
    move v0, v4

    .line 5785
    goto :goto_1
.end method

.method protected haltTicker()V
    .locals 1

    .prologue
    .line 5033
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTickerEnabled:Z

    if-eqz v0, :cond_0

    .line 5034
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTicker:Lcom/android/systemui/statusbar/phone/Ticker;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/Ticker;->halt()V

    .line 5036
    :cond_0
    return-void
.end method

.method public hasActiveNotifications()Z
    .locals 1

    .prologue
    .line 5945
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hideBouncerFrame()Z
    .locals 1

    .prologue
    .line 6777
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->onBackPressed()Z

    move-result v0

    return v0
.end method

.method public hideKeyguard()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 5326
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLeaveOpenOnKeyguardHide:Z

    .line 5327
    .local v0, "staying":Z
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setBarState(I)V

    .line 5328
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLeaveOpenOnKeyguardHide:Z

    if-eqz v1, :cond_1

    .line 5329
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLeaveOpenOnKeyguardHide:Z

    .line 5330
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->calculateGoingToFullShadeDelay()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->animateToFullShade(J)V

    .line 5331
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDraggedDownRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v1, :cond_0

    .line 5332
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDraggedDownRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v1, v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setUserLocked(Z)V

    .line 5333
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDraggedDownRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 5338
    :cond_0
    :goto_0
    invoke-direct {p0, v0, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateKeyguardState(ZZ)V

    .line 5340
    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->checkHomeCitySettingsDialog(Z)V

    .line 5341
    return v0

    .line 5336
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->instantCollapseNotificationPanel()V

    goto :goto_0
.end method

.method public hideQsDetailviewPanel()V
    .locals 2

    .prologue
    const/16 v1, 0x3ec

    .line 6924
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6925
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    .line 6927
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->sendEmptyMessage(I)Z

    .line 6928
    return-void
.end method

.method protected hideRecents(ZZ)V
    .locals 1
    .param p1, "triggeredFromAltTab"    # Z
    .param p2, "triggeredFromHomeKey"    # Z

    .prologue
    .line 5920
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    .line 5921
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->notifyUiVisibilityChanged(I)V

    .line 5922
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/BaseStatusBar;->hideRecents(ZZ)V

    .line 5923
    return-void
.end method

.method public hideSearchPanel()V
    .locals 3

    .prologue
    .line 1854
    invoke-super {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->hideSearchPanel()V

    .line 1855
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz v1, :cond_0

    .line 1856
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    .line 1858
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x20

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1859
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1861
    .end local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    return-void
.end method

.method public interceptMediaKey(Landroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 5568
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->interceptMediaKey(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public interceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 3719
    sget-boolean v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->CHATTY:Z

    if-eqz v3, :cond_0

    .line 3720
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-eq v3, v7, :cond_0

    .line 3721
    const-string v3, "PhoneStatusBar"

    const-string v4, "panel: %s at (%f, %f) mDisabled=0x%08x"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    invoke-static {v6}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v7

    iget v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisabled:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3732
    :cond_0
    iget v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindowState:I

    if-nez v3, :cond_2

    .line 3733
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-eq v3, v2, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-ne v3, v8, :cond_3

    :cond_1
    move v0, v2

    .line 3736
    .local v0, "upOrCancel":Z
    :goto_0
    if-eqz v0, :cond_4

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedVisible:Z

    if-nez v3, :cond_4

    .line 3737
    invoke-virtual {p0, v2, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setInteracting(IZ)V

    .line 3742
    .end local v0    # "upOrCancel":Z
    :cond_2
    :goto_1
    return v1

    :cond_3
    move v0, v1

    .line 3733
    goto :goto_0

    .line 3739
    .restart local v0    # "upOrCancel":Z
    :cond_4
    invoke-virtual {p0, v2, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setInteracting(IZ)V

    goto :goto_1
.end method

.method public interpolator(Landroid/animation/TimeInterpolator;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0
    .param p1, "ti"    # Landroid/animation/TimeInterpolator;
    .param p2, "a"    # Landroid/animation/Animator;

    .prologue
    .line 3524
    invoke-virtual {p2, p1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 3525
    return-object p2
.end method

.method public isCollapsing()Z
    .locals 1

    .prologue
    .line 5267
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isCollapsing()Z

    move-result v0

    return v0
.end method

.method public isCoverViewShowing()Z
    .locals 1

    .prologue
    .line 4504
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSViewCoverCovered:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAppCoverCovered:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDozing()Z
    .locals 1

    .prologue
    .line 3316
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDozing:Z

    return v0
.end method

.method public isEmergencyModeActivated()Z
    .locals 1

    .prologue
    .line 1603
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mEmergencyModeActivated:Z

    return v0
.end method

.method public isFalsingThresholdNeeded()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 3310
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getBarState()I

    move-result v4

    if-ne v4, v2, :cond_1

    move v1, v2

    .line 3311
    .local v1, "onKeyguard":Z
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->isMethodInsecure()Z

    move-result v0

    .line 3312
    .local v0, "isMethodInsecure":Z
    if-eqz v1, :cond_2

    if-nez v0, :cond_0

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDozing:Z

    if-nez v4, :cond_0

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScreenOnComingFromTouch:Z

    if-eqz v4, :cond_2

    :cond_0
    :goto_1
    return v2

    .end local v0    # "isMethodInsecure":Z
    .end local v1    # "onKeyguard":Z
    :cond_1
    move v1, v3

    .line 3310
    goto :goto_0

    .restart local v0    # "isMethodInsecure":Z
    .restart local v1    # "onKeyguard":Z
    :cond_2
    move v2, v3

    .line 3312
    goto :goto_1
.end method

.method public isGoingToNotificationShade()Z
    .locals 1

    .prologue
    .line 3298
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLeaveOpenOnKeyguardHide:Z

    return v0
.end method

.method public isInLaunchTransition()Z
    .locals 1

    .prologue
    .line 5275
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isLaunchTransitionRunning()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isLaunchTransitionFinished()Z

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

.method public isKeyguardFadingAway()Z
    .locals 1

    .prologue
    .line 5363
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardFadingAway:Z

    return v0
.end method

.method public isQsExpanded()Z
    .locals 1

    .prologue
    .line 3302
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isQsExpanded()Z

    move-result v0

    return v0
.end method

.method public isScreenOnComingFromTouch()Z
    .locals 1

    .prologue
    .line 3306
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScreenOnComingFromTouch:Z

    return v0
.end method

.method public isScrimSrcModeEnabled()Z
    .locals 1

    .prologue
    .line 3325
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrimSrcModeEnabled:Z

    return v0
.end method

.method public isSecure()Z
    .locals 1

    .prologue
    .line 7257
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isSecure()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected loadDimens()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 4904
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 4906
    .local v2, "res":Landroid/content/res/Resources;
    const v3, 0x1050010

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNaturalBarHeight:I

    .line 4909
    const v3, 0x1050014

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 4911
    .local v1, "newIconSize":I
    const v3, 0x7f0c0296

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 4914
    .local v0, "newIconHPadding":I
    iget v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIconHPadding:I

    if-ne v0, v3, :cond_0

    iget v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIconSize:I

    if-eq v1, v3, :cond_1

    .line 4916
    :cond_0
    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIconHPadding:I

    .line 4917
    iput v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIconSize:I

    .line 4921
    :cond_1
    const v3, 0x7f0c0276

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mEdgeBorder:I

    .line 4923
    const v3, 0x7f0f0041

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanelGravity:I

    .line 4924
    iget v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanelGravity:I

    if-gtz v3, :cond_2

    .line 4925
    const v3, 0x800033

    iput v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanelGravity:I

    .line 4928
    :cond_2
    const v3, 0x7f0c02a7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabelHeight:I

    .line 4929
    const v3, 0x7f0c02a1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarHeaderHeight:I

    .line 4931
    const v3, 0x7f0c02a9

    invoke-virtual {v2, v3, v4, v4}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanelMinHeightFrac:F

    .line 4932
    iget v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanelMinHeightFrac:F

    cmpg-float v3, v3, v5

    if-ltz v3, :cond_3

    iget v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanelMinHeightFrac:F

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_4

    .line 4933
    :cond_3
    iput v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanelMinHeightFrac:F

    .line 4936
    :cond_4
    const v3, 0x7f0f001c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpNotificationDecay:I

    .line 4937
    const v3, 0x7f0c0290

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRowMinHeight:I

    .line 4938
    const v3, 0x7f0c0291

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRowMaxHeight:I

    .line 4940
    const v3, 0x7f0f0030

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardMaxNotificationCount:I

    .line 4942
    const/4 v3, 0x2

    iput v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardMaxNotificationCount:I

    .line 4944
    sget-boolean v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->DEBUG:Z

    if-eqz v3, :cond_5

    const-string v3, "PhoneStatusBar"

    const-string v4, "updateResources"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4945
    :cond_5
    return-void
.end method

.method makeExpandedInvisible()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/high16 v6, 0x3f800000    # 1.0f

    const/16 v5, 0x8

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3605
    const-string v0, "PhoneStatusBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "makeExpandedInvisible: mExpandedVisible="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedVisible:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mExpandedVisible="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedVisible:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3608
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedVisible:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    if-nez v0, :cond_1

    .line 3705
    :cond_0
    :goto_0
    return-void

    .line 3611
    :cond_1
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-nez v0, :cond_2

    .line 3612
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->removeQsEditPanel()V

    .line 3614
    :cond_2
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-nez v0, :cond_3

    .line 3615
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->removeQsDetailviewPanel()V

    .line 3618
    :cond_3
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    if-eq v0, v7, :cond_4

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    if-ne v0, v4, :cond_7

    .line 3622
    :cond_4
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    if-ne v0, v7, :cond_6

    .line 3623
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isSecure()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3624
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->instantExpand()V

    .line 3625
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->goToKeyguard()V

    .line 3626
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->dismissIfInsecure()V

    goto :goto_0

    .line 3628
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->dismissIfInsecure()V

    goto :goto_0

    .line 3632
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->instantExpand()V

    .line 3633
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->goToKeyguard()V

    goto :goto_0

    .line 3639
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->collapseAllPanels(Z)V

    .line 3642
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrollViewAnim:Landroid/animation/Animator;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrollViewAnim:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 3643
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mClearButtonAnim:Landroid/animation/Animator;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mClearButtonAnim:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 3645
    :cond_9
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setVisibility(I)V

    .line 3646
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setVisibility(I)V

    .line 3649
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    if-eqz v0, :cond_a

    .line 3650
    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateQSpanel(Z)V

    .line 3651
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHSView:Landroid/widget/HorizontalScrollView;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHSView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0, v3, v3}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    .line 3654
    :cond_a
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsButtonAnim:Landroid/animation/Animator;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsButtonAnim:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 3655
    :cond_b
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationButtonAnim:Landroid/animation/Animator;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationButtonAnim:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 3656
    :cond_c
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mEditButtonAnim:Landroid/animation/Animator;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mEditButtonAnim:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 3657
    :cond_d
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBasicSettingsButtonAnim:Landroid/animation/Animator;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBasicSettingsButtonAnim:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 3659
    :cond_e
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandSettingsButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_f

    .line 3660
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandSettingsButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 3661
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandSettingsButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3663
    :cond_f
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBasicSettingsButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_10

    .line 3664
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBasicSettingsButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 3665
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBasicSettingsButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3668
    :cond_10
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_11

    .line 3669
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3671
    :cond_11
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsEditButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_12

    .line 3672
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsEditButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3676
    :cond_12
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mPLMNIconDisplay:Z

    if-eqz v0, :cond_13

    .line 3677
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/IconMerger;->getChildCount()I

    move-result v0

    if-nez v0, :cond_13

    .line 3678
    const/high16 v0, 0x10a0000

    invoke-virtual {p0, v4, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setCarrierLabelVisibility(ZI)V

    .line 3684
    :cond_13
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->closeQs()V

    .line 3686
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedVisible:Z

    .line 3687
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz v0, :cond_14

    .line 3688
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setSlippery(Z)V

    .line 3689
    :cond_14
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->visibilityChanged(Z)V

    .line 3692
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->setStatusBarExpanded(Z)V

    .line 3693
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->setFocusable(Z)V

    .line 3696
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->dismissPopups()V

    .line 3698
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->runPostCollapseRunnables()V

    .line 3699
    invoke-virtual {p0, v4, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setInteracting(IZ)V

    .line 3702
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisabledUnmodified:I

    invoke-virtual {p0, v0, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->disable(IZ)V

    goto/16 :goto_0
.end method

.method makeExpandedVisible(Z)V
    .locals 5
    .param p1, "force"    # Z

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 3407
    const-string v2, "PhoneStatusBar"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "makeExpandedVisible:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedVisible:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3408
    if-nez p1, :cond_1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedVisible:Z

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->panelsEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 3429
    :cond_0
    :goto_0
    return-void

    .line 3412
    :cond_1
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedVisible:Z

    .line 3413
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz v2, :cond_2

    .line 3414
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setSlippery(Z)V

    .line 3416
    :cond_2
    const/16 v2, -0x2710

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateExpandedViewPos(I)V

    .line 3420
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->setStatusBarExpanded(Z)V

    .line 3421
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->setFocusable(Z)V

    .line 3423
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->visibilityChanged(Z)V

    .line 3424
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mWaitingForKeyguardExit:Z

    .line 3425
    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisabledUnmodified:I

    if-nez p1, :cond_3

    move v0, v1

    :cond_3
    invoke-virtual {p0, v2, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->disable(IZ)V

    .line 3426
    invoke-virtual {p0, v1, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setInteracting(IZ)V

    .line 3428
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateCarrierLabelVisibility(Z)V

    goto :goto_0
.end method

.method protected makeStatusBarView()Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;
    .locals 45

    .prologue
    .line 844
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    .line 847
    .local v18, "context":Landroid/content/Context;
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v3

    const-string v4, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    sput-boolean v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDiagnosticLogs:Z

    .line 851
    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v33

    .line 853
    .local v33, "res":Landroid/content/res/Resources;
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateDisplaySize()V

    .line 854
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateResources()V

    .line 856
    const v3, 0x1050014

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIconSize:I

    .line 858
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isMSim()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 859
    const v3, 0x7f040050

    const/4 v4, 0x0

    move-object/from16 v0, v18

    invoke-static {v0, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    .line 865
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    move-object/from16 v0, p0

    iput-object v0, v3, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .line 866
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    new-instance v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$10;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$10;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 878
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isMSim()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 879
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v4, 0x7f0e0187

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    .line 884
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->setBar(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    .line 887
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isMSim()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 888
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v4, 0x7f0e01a4

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Lcom/android/systemui/statusbar/phone/PanelHolder;

    .line 892
    .local v21, "holder":Lcom/android/systemui/statusbar/phone/PanelHolder;
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->setPanelHolder(Lcom/android/systemui/statusbar/phone/PanelHolder;)V

    .line 894
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v4, 0x7f0e0193

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .line 896
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setStatusBar(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    .line 899
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v4, 0x7f0e0194

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardBouncerContainer:Landroid/view/ViewGroup;

    .line 900
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/KeyguardEffectViewController;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardEffectController:Lcom/android/keyguard/sec/KeyguardEffectViewController;

    .line 901
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardEffectController:Lcom/android/keyguard/sec/KeyguardEffectViewController;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v5, 0x7f0e019f

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v6, 0x7f0e01a5

    invoke-virtual {v5, v6}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->setEffectLayout(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    .line 907
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v4, 0x7f0e039a

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMDMOverlayContainer:Landroid/widget/FrameLayout;

    .line 910
    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v3

    if-nez v3, :cond_0

    .line 911
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 912
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    new-instance v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$FastColorDrawable;

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a002c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-direct {v4, v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$FastColorDrawable;-><init>(I)V

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 916
    :cond_0
    const v3, 0x7f04000b

    const/4 v4, 0x0

    move-object/from16 v0, v18

    invoke-static {v0, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    .line 918
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->setVisibility(I)V

    .line 919
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->setBar(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    .line 927
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateShowSearchHoldoff()V

    .line 930
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mWindowManagerService:Landroid/view/IWindowManager;

    invoke-interface {v3}, Landroid/view/IWindowManager;->hasNavigationBar()Z

    move-result v38

    .line 931
    .local v38, "showNav":Z
    sget-boolean v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->DEBUG:Z

    if-eqz v3, :cond_1

    const-string v3, "PhoneStatusBar"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "hasNavigationBar="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v38

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 932
    :cond_1
    if-eqz v38, :cond_2

    .line 933
    const v3, 0x7f040053

    const/4 v4, 0x0

    move-object/from16 v0, v18

    invoke-static {v0, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    .line 936
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisabled:I

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setDisabledFlags(I)V

    .line 937
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setBar(Lcom/android/systemui/statusbar/BaseStatusBar;)V

    .line 938
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    new-instance v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$11;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$11;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setOnVerticalChangedListener(Lcom/android/systemui/statusbar/phone/NavigationBarView$OnVerticalChangedListener;)V

    .line 948
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    new-instance v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$12;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$12;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 960
    .end local v38    # "showNav":Z
    :cond_2
    :goto_3
    const/4 v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPixelFormat:I

    .line 962
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v4, 0x7f0e0190

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemIconArea:Landroid/widget/LinearLayout;

    .line 963
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v4, 0x7f0e01a7

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemIcons:Landroid/widget/LinearLayout;

    .line 964
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v4, 0x7f0e01a8

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusIcons:Landroid/widget/LinearLayout;

    .line 965
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v4, 0x7f0e018c

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationIconArea:Landroid/view/View;

    .line 966
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v4, 0x7f0e018f

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/phone/IconMerger;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

    .line 967
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v4, 0x7f0e018e

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMoreIcon:Landroid/view/View;

    .line 968
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMoreIcon:Landroid/view/View;

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/IconMerger;->setOverflowIndicator(Landroid/view/View;)V

    .line 969
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v4, 0x7f0e018a

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarContents:Landroid/widget/LinearLayout;

    .line 972
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v4, 0x7f0e01a9

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSignalBatteryIcons:Landroid/widget/LinearLayout;

    .line 975
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v4, 0x7f0e0199

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    .line 977
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v4, 0x7f0e0197

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ScrollView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrollView:Landroid/widget/ScrollView;

    .line 979
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getNotificationLongClicker()Lcom/android/systemui/SwipeHelper$LongPressListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setLongPressListener(Lcom/android/systemui/SwipeHelper$LongPressListener;)V

    .line 980
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setPhoneStatusBar(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    .line 982
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0400b4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/NotificationOverflowContainer;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardIconOverflowContainer:Lcom/android/systemui/statusbar/NotificationOverflowContainer;

    .line 985
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardIconOverflowContainer:Lcom/android/systemui/statusbar/NotificationOverflowContainer;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/NotificationOverflowContainer;->setOnActivatedListener(Lcom/android/systemui/statusbar/ActivatableNotificationView$OnActivatedListener;)V

    .line 986
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardIconOverflowContainer:Lcom/android/systemui/statusbar/NotificationOverflowContainer;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mOverflowClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/NotificationOverflowContainer;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 987
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardIconOverflowContainer:Lcom/android/systemui/statusbar/NotificationOverflowContainer;

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->addView(Landroid/view/View;)V

    .line 989
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0400b6

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v42

    check-cast v42, Lcom/android/systemui/statusbar/SpeedBumpView;

    .line 995
    .local v42, "speedBump":Lcom/android/systemui/statusbar/SpeedBumpView;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0400b3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/DismissView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDismissView:Lcom/android/systemui/statusbar/DismissView;

    .line 997
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDismissView:Lcom/android/systemui/statusbar/DismissView;

    new-instance v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$13;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$13;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/DismissView;->setOnButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 1003
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDismissView:Lcom/android/systemui/statusbar/DismissView;

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setDismissView(Lcom/android/systemui/statusbar/DismissView;)V

    .line 1006
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f040057

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/ToggleSliderView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mToggleSliderView:Lcom/android/systemui/statusbar/ToggleSliderView;

    .line 1008
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f040056

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/QconnectSfinderView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQconnectSfinderView:Lcom/android/systemui/statusbar/QconnectSfinderView;

    .line 1012
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v4, 0x7f0e0077

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mClearAll:Landroid/widget/TextView;

    .line 1013
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mClearAll:Landroid/widget/TextView;

    new-instance v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$14;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$14;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1035
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mToggleSliderView:Lcom/android/systemui/statusbar/ToggleSliderView;

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setToggleSliderView(Lcom/android/systemui/statusbar/ToggleSliderView;)V

    .line 1036
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQconnectSfinderView:Lcom/android/systemui/statusbar/QconnectSfinderView;

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setQconnectSfinderView(Lcom/android/systemui/statusbar/QconnectSfinderView;)V

    .line 1039
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isMSim()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1040
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f040052

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/MultiSIMView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDualSimLayout:Lcom/android/systemui/statusbar/MultiSIMView;

    .line 1041
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDualSimLayout:Lcom/android/systemui/statusbar/MultiSIMView;

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setMultiSIMLayout(Lcom/android/systemui/statusbar/MultiSIMView;)V

    .line 1045
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedContents:Landroid/view/View;

    .line 1047
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v4, 0x7f0e019c

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/BackDropView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBackdrop:Lcom/android/systemui/statusbar/BackDropView;

    .line 1048
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBackdrop:Lcom/android/systemui/statusbar/BackDropView;

    const v4, 0x7f0e019e

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/BackDropView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBackdropFront:Landroid/widget/ImageView;

    .line 1049
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBackdrop:Lcom/android/systemui/statusbar/BackDropView;

    const v4, 0x7f0e019d

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/BackDropView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBackdropBack:Landroid/widget/ImageView;

    .line 1051
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v4, 0x7f0e01a0

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v35

    check-cast v35, Lcom/android/systemui/statusbar/ScrimView;

    .line 1052
    .local v35, "scrimBehind":Lcom/android/systemui/statusbar/ScrimView;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v4, 0x7f0e01a6

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v36

    check-cast v36, Lcom/android/systemui/statusbar/ScrimView;

    .line 1053
    .local v36, "scrimInFront":Lcom/android/systemui/statusbar/ScrimView;
    new-instance v3, Lcom/android/systemui/statusbar/phone/ScrimController;

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrimSrcModeEnabled:Z

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-direct {v3, v0, v1, v4}, Lcom/android/systemui/statusbar/phone/ScrimController;-><init>(Lcom/android/systemui/statusbar/ScrimView;Lcom/android/systemui/statusbar/ScrimView;Z)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    .line 1055
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v5, 0x7f0e019f

    invoke-virtual {v3, v5}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/keyguard/sec/EffectBehindView;

    invoke-virtual {v4, v3}, Lcom/android/systemui/statusbar/phone/ScrimController;->setEffectBehindView(Lcom/android/keyguard/sec/EffectBehindView;)V

    .line 1056
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->setScrimController(Lcom/android/systemui/statusbar/phone/ScrimController;)V

    .line 1058
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v4, 0x7f0e035c

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    .line 1059
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->setActivityStarter(Lcom/android/systemui/statusbar/phone/ActivityStarter;)V

    .line 1060
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->setBar(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    .line 1061
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v4, 0x7f0e0115

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    .line 1062
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    const v4, 0x7f0e01a8

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusIconsKeyguard:Landroid/widget/LinearLayout;

    .line 1063
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v4, 0x7f0e011c

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardStatusView:Landroid/view/View;

    .line 1074
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "cocktail_bar_tickers_enabled"

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurrentUserId:I

    invoke-static {v3, v4, v5, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_a

    const/4 v3, 0x1

    :goto_4
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCocktailTickerEnablebySettings:Z

    .line 1077
    const v3, 0x7f0b002a

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/systemui/statusbar/Feature;->hasCocktailBar(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_4

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCocktailTickerEnablebySettings:Z

    if-nez v3, :cond_b

    :cond_4
    const/4 v3, 0x1

    :goto_5
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTickerEnabled:Z

    .line 1079
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v4, 0x7f0e0191

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v43

    check-cast v43, Landroid/view/ViewStub;

    .line 1080
    .local v43, "tickerStub":Landroid/view/ViewStub;
    if-eqz v43, :cond_5

    .line 1081
    invoke-virtual/range {v43 .. v43}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTickerView:Landroid/view/View;

    .line 1082
    new-instance v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$MyTicker;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v3, v0, v1, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$MyTicker;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Landroid/content/Context;Landroid/view/View;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTicker:Lcom/android/systemui/statusbar/phone/Ticker;

    .line 1084
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v4, 0x7f0e038b

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v44

    check-cast v44, Lcom/android/systemui/statusbar/phone/TickerView;

    .line 1085
    .local v44, "tickerView":Lcom/android/systemui/statusbar/phone/TickerView;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTicker:Lcom/android/systemui/statusbar/phone/Ticker;

    move-object/from16 v0, v44

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/TickerView;->mTicker:Lcom/android/systemui/statusbar/phone/Ticker;

    .line 1086
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getTickerPaddingValues()V

    .line 1089
    .end local v44    # "tickerView":Lcom/android/systemui/statusbar/phone/TickerView;
    :cond_5
    const v3, 0x7f0c0276

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mEdgeBorder:I

    .line 1092
    new-instance v3, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLocationController:Lcom/android/systemui/statusbar/policy/LocationControllerImpl;

    .line 1093
    new-instance v3, Lcom/android/systemui/statusbar/policy/BatteryController;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/systemui/statusbar/policy/BatteryController;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    .line 1094
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    new-instance v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$15;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$15;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/policy/BatteryController;->addStateChangedCallback(Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;)V

    .line 1107
    new-instance v3, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHotspotController:Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;

    .line 1108
    new-instance v3, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBluetoothController:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    .line 1109
    new-instance v3, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    .line 1110
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b001d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1111
    new-instance v3, Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRotationLockController:Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;

    .line 1113
    :cond_6
    new-instance v3, Lcom/android/systemui/statusbar/policy/UserInfoController;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/systemui/statusbar/policy/UserInfoController;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUserInfoController:Lcom/android/systemui/statusbar/policy/UserInfoController;

    .line 1114
    const-class v3, Lcom/android/systemui/volume/VolumeComponent;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/volume/VolumeComponent;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mVolumeComponent:Lcom/android/systemui/volume/VolumeComponent;

    .line 1115
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mVolumeComponent:Lcom/android/systemui/volume/VolumeComponent;

    invoke-interface {v3}, Lcom/android/systemui/volume/VolumeComponent;->getZenController()Lcom/android/systemui/statusbar/policy/ZenModeController;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mZenModeController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    .line 1116
    new-instance v3, Lcom/android/systemui/statusbar/policy/CastControllerImpl;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/systemui/statusbar/policy/CastControllerImpl;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCastController:Lcom/android/systemui/statusbar/policy/CastControllerImpl;

    .line 1118
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isMSim()Z

    move-result v3

    if-eqz v3, :cond_23

    .line 1119
    new-instance v3, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMSimNetworkController:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    .line 1120
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v4, 0x7f0e01aa

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Lcom/android/systemui/statusbar/MSimSignalClusterView;

    .line 1122
    .local v28, "mSimSignalCluster":Lcom/android/systemui/statusbar/MSimSignalClusterView;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    const v4, 0x7f0e01aa

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v29

    check-cast v29, Lcom/android/systemui/statusbar/MSimSignalClusterView;

    .line 1126
    .local v29, "mSimsignalClusterKeyguard":Lcom/android/systemui/statusbar/MSimSignalClusterView;
    const/16 v22, 0x0

    .local v22, "i":I
    :goto_6
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v3

    move/from16 v0, v22

    if-ge v0, v3, :cond_c

    .line 1127
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMSimNetworkController:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    move-object/from16 v0, v28

    move/from16 v1, v22

    invoke-virtual {v3, v0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->addSignalCluster(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;I)V

    .line 1128
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMSimNetworkController:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    move-object/from16 v0, v29

    move/from16 v1, v22

    invoke-virtual {v3, v0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->addSignalCluster(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;I)V

    .line 1126
    add-int/lit8 v22, v22, 0x1

    goto :goto_6

    .line 862
    .end local v21    # "holder":Lcom/android/systemui/statusbar/phone/PanelHolder;
    .end local v22    # "i":I
    .end local v28    # "mSimSignalCluster":Lcom/android/systemui/statusbar/MSimSignalClusterView;
    .end local v29    # "mSimsignalClusterKeyguard":Lcom/android/systemui/statusbar/MSimSignalClusterView;
    .end local v35    # "scrimBehind":Lcom/android/systemui/statusbar/ScrimView;
    .end local v36    # "scrimInFront":Lcom/android/systemui/statusbar/ScrimView;
    .end local v42    # "speedBump":Lcom/android/systemui/statusbar/SpeedBumpView;
    .end local v43    # "tickerStub":Landroid/view/ViewStub;
    :cond_7
    const v3, 0x7f0400bd

    const/4 v4, 0x0

    move-object/from16 v0, v18

    invoke-static {v0, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    goto/16 :goto_0

    .line 882
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v4, 0x7f0e0359

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    goto/16 :goto_1

    .line 890
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v4, 0x7f0e0399

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Lcom/android/systemui/statusbar/phone/PanelHolder;

    .restart local v21    # "holder":Lcom/android/systemui/statusbar/phone/PanelHolder;
    goto/16 :goto_2

    .line 1074
    .restart local v35    # "scrimBehind":Lcom/android/systemui/statusbar/ScrimView;
    .restart local v36    # "scrimInFront":Lcom/android/systemui/statusbar/ScrimView;
    .restart local v42    # "speedBump":Lcom/android/systemui/statusbar/SpeedBumpView;
    :cond_a
    const/4 v3, 0x0

    goto/16 :goto_4

    .line 1077
    :cond_b
    const/4 v3, 0x0

    goto/16 :goto_5

    .line 1132
    .restart local v22    # "i":I
    .restart local v28    # "mSimSignalCluster":Lcom/android/systemui/statusbar/MSimSignalClusterView;
    .restart local v29    # "mSimsignalClusterKeyguard":Lcom/android/systemui/statusbar/MSimSignalClusterView;
    .restart local v43    # "tickerStub":Landroid/view/ViewStub;
    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->setSecurityController(Lcom/android/systemui/statusbar/policy/SecurityController;)V

    .line 1133
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMSimNetworkController:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->setNetworkController(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;)V

    .line 1134
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->setSecurityController(Lcom/android/systemui/statusbar/policy/SecurityController;)V

    .line 1135
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMSimNetworkController:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->setNetworkController(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;)V

    .line 1138
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMSimNetworkController:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->addEmergencyLabelView(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;)V

    .line 1139
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v4, 0x7f0e0076

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabel:Landroid/widget/TextView;

    .line 1140
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v4, 0x7f0e0398

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSubsLabel:Landroid/widget/TextView;

    .line 1141
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabel:Landroid/widget/TextView;

    if-eqz v3, :cond_21

    const/4 v3, 0x1

    :goto_7
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mShowCarrierInPanel:Z

    .line 1143
    const-string v3, "PhoneStatusBar"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "carrierlabel="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabel:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " show="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mShowCarrierInPanel:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "operator label="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSubsLabel:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1145
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mShowCarrierInPanel:Z

    if-eqz v3, :cond_d

    .line 1146
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabel:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1150
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMSimNetworkController:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->hasMobileDataFeature()Z

    move-result v3

    if-eqz v3, :cond_22

    .line 1151
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMSimNetworkController:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabel:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->addMobileLabelView(Landroid/widget/TextView;)V

    .line 1169
    :goto_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabel:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mClearAll:Landroid/widget/TextView;

    invoke-virtual {v3, v4, v5}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setCarrierView(Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 1231
    .end local v22    # "i":I
    .end local v28    # "mSimSignalCluster":Lcom/android/systemui/statusbar/MSimSignalClusterView;
    .end local v29    # "mSimsignalClusterKeyguard":Lcom/android/systemui/statusbar/MSimSignalClusterView;
    :cond_d
    :goto_9
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    .line 1236
    new-instance v3, Lcom/android/systemui/statusbar/policy/AccessibilityController;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/systemui/statusbar/policy/AccessibilityController;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAccessibilityController:Lcom/android/systemui/statusbar/policy/AccessibilityController;

    .line 1238
    new-instance v3, Lcom/android/systemui/statusbar/policy/NextAlarmController;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/systemui/statusbar/policy/NextAlarmController;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNextAlarmController:Lcom/android/systemui/statusbar/policy/NextAlarmController;

    .line 1239
    new-instance v3, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-direct {v3}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    .line 1240
    new-instance v3, Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-direct {v3, v4, v5}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/KeyguardMonitor;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    .line 1242
    new-instance v2, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v5, 0x7f0e0130

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewStub;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-direct/range {v2 .. v7}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;-><init>(Landroid/content/Context;Landroid/view/ViewStub;Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;Lcom/android/systemui/statusbar/phone/NotificationPanelView;Lcom/android/systemui/statusbar/policy/UserSwitcherController;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardUserSwitcher:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

    .line 1247
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setAreThereNotifications()V

    .line 1251
    new-instance v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$BrightnessEnableObserver;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$BrightnessEnableObserver;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBrightnessEnableObserver:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$BrightnessEnableObserver;

    .line 1252
    new-instance v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$PmsBrightnessEnableObserver;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$PmsBrightnessEnableObserver;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPmsBrightnessEnableObserver:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$PmsBrightnessEnableObserver;

    .line 1253
    new-instance v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EasyModeEnableObserver;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EasyModeEnableObserver;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mEasyModeEnableObserver:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EasyModeEnableObserver;

    .line 1254
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "notification_panel_brightness_adjustment"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_27

    const/4 v3, 0x1

    :goto_a
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBrightnessEnablebySettings:Z

    .line 1257
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "pms_notification_panel_brightness_adjustment"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1258
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "pms_notification_panel_brightness_adjustment"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_28

    const/4 v3, 0x1

    :goto_b
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPmsBrightnessEnablebySettings:Z

    .line 1260
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "notification_panel_brightness_adjustment"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBrightnessEnableObserver:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$BrightnessEnableObserver;

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1262
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "pms_notification_panel_brightness_adjustment"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPmsBrightnessEnableObserver:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$PmsBrightnessEnableObserver;

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1264
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "easy_mode_switch"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mEasyModeEnableObserver:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EasyModeEnableObserver;

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1266
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mEasyModeEnableObserver:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EasyModeEnableObserver;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EasyModeEnableObserver;->onChange(Z)V

    .line 1269
    new-instance v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$CocktailTickerEnableObserver;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$CocktailTickerEnableObserver;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCocktailTickerEnableObserver:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$CocktailTickerEnableObserver;

    .line 1270
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "cocktail_bar_tickers_enabled"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCocktailTickerEnableObserver:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$CocktailTickerEnableObserver;

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1274
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v4, 0x7f0e01d9

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQuickSettingContainer:Landroid/widget/FrameLayout;

    .line 1275
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQuickSettingContainer:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020291

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1276
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v4, 0x7f0e01db

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/qs/QSPanel;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    .line 1278
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    const v4, 0x7f0e036c

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSEditBackButton:Landroid/view/View;

    .line 1279
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSEditBackButton:Landroid/view/View;

    new-instance v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$16;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$16;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1284
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-nez v3, :cond_2a

    .line 1285
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSEditPanel:Lcom/android/systemui/qs/QSEditPanel;

    if-nez v3, :cond_e

    .line 1286
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/view/LayoutInflater;

    .line 1287
    .local v24, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f040062

    const/4 v4, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/FrameLayout;

    .line 1288
    .local v17, "container":Landroid/widget/FrameLayout;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQuickSettingContainer:Landroid/widget/FrameLayout;

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1289
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v4, 0x7f0e01d7

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/qs/QSEditPanel;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSEditPanel:Lcom/android/systemui/qs/QSEditPanel;

    .line 1292
    .end local v17    # "container":Landroid/widget/FrameLayout;
    .end local v24    # "inflater":Landroid/view/LayoutInflater;
    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSEditPanel:Lcom/android/systemui/qs/QSEditPanel;

    if-eqz v3, :cond_f

    .line 1294
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isMSim()Z

    move-result v3

    if-eqz v3, :cond_29

    .line 1295
    new-instance v2, Lcom/android/systemui/statusbar/phone/QSTileHost;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBluetoothController:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLocationController:Lcom/android/systemui/statusbar/policy/LocationControllerImpl;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRotationLockController:Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMSimNetworkController:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mZenModeController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHotspotController:Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCastController:Lcom/android/systemui/statusbar/policy/CastControllerImpl;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    move-object/from16 v4, p0

    invoke-direct/range {v2 .. v15}, Lcom/android/systemui/statusbar/phone/QSTileHost;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Lcom/android/systemui/statusbar/policy/BluetoothController;Lcom/android/systemui/statusbar/policy/LocationController;Lcom/android/systemui/statusbar/policy/RotationLockController;Lcom/android/systemui/statusbar/policy/NetworkController;Lcom/android/systemui/statusbar/policy/ZenModeController;Lcom/android/systemui/statusbar/policy/HotspotController;Lcom/android/systemui/statusbar/policy/CastController;Lcom/android/systemui/statusbar/policy/FlashlightController;Lcom/android/systemui/statusbar/policy/UserSwitcherController;Lcom/android/systemui/statusbar/policy/KeyguardMonitor;Lcom/android/systemui/statusbar/policy/SecurityController;)V

    .line 1309
    .local v2, "qsh":Lcom/android/systemui/statusbar/phone/QSTileHost;
    :goto_c
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/QSTileHost;->setEditMode(Z)V

    .line 1310
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSEditPanel:Lcom/android/systemui/qs/QSEditPanel;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/QSTileHost;->getTiles()Ljava/util/Collection;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/systemui/qs/QSEditPanel;->setTiles(Ljava/util/Collection;)V

    .line 1311
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/QSTileHost;->setEditMode(Z)V

    .line 1317
    .end local v2    # "qsh":Lcom/android/systemui/statusbar/phone/QSTileHost;
    :cond_f
    :goto_d
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-nez v3, :cond_10

    .line 1318
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSDetailviewPanel:Landroid/view/View;

    if-nez v3, :cond_10

    .line 1319
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/view/LayoutInflater;

    .line 1320
    .restart local v24    # "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f040060

    const/4 v4, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/FrameLayout;

    .line 1321
    .restart local v17    # "container":Landroid/widget/FrameLayout;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQuickSettingContainer:Landroid/widget/FrameLayout;

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1322
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v4, 0x7f0e01d1

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSDetailviewPanel:Landroid/view/View;

    .line 1326
    .end local v17    # "container":Landroid/widget/FrameLayout;
    .end local v24    # "inflater":Landroid/view/LayoutInflater;
    :cond_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    if-eqz v3, :cond_16

    .line 1328
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isMSim()Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 1329
    new-instance v2, Lcom/android/systemui/statusbar/phone/QSTileHost;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBluetoothController:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLocationController:Lcom/android/systemui/statusbar/policy/LocationControllerImpl;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRotationLockController:Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMSimNetworkController:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mZenModeController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHotspotController:Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCastController:Lcom/android/systemui/statusbar/policy/CastControllerImpl;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    move-object/from16 v4, p0

    invoke-direct/range {v2 .. v15}, Lcom/android/systemui/statusbar/phone/QSTileHost;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Lcom/android/systemui/statusbar/policy/BluetoothController;Lcom/android/systemui/statusbar/policy/LocationController;Lcom/android/systemui/statusbar/policy/RotationLockController;Lcom/android/systemui/statusbar/policy/NetworkController;Lcom/android/systemui/statusbar/policy/ZenModeController;Lcom/android/systemui/statusbar/policy/HotspotController;Lcom/android/systemui/statusbar/policy/CastController;Lcom/android/systemui/statusbar/policy/FlashlightController;Lcom/android/systemui/statusbar/policy/UserSwitcherController;Lcom/android/systemui/statusbar/policy/KeyguardMonitor;Lcom/android/systemui/statusbar/policy/SecurityController;)V

    .line 1343
    .restart local v2    # "qsh":Lcom/android/systemui/statusbar/phone/QSTileHost;
    :goto_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v3, v2}, Lcom/android/systemui/qs/QSPanel;->setHost(Lcom/android/systemui/statusbar/phone/QSTileHost;)V

    .line 1344
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/QSTileHost;->getTiles()Ljava/util/Collection;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/systemui/qs/QSPanel;->setTiles(Ljava/util/Collection;)V

    .line 1346
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->setQSPanel(Lcom/android/systemui/qs/QSPanel;)V

    .line 1347
    new-instance v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$17;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$17;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Lcom/android/systemui/statusbar/phone/QSTileHost;)V

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/QSTileHost;->setCallback(Lcom/android/systemui/qs/QSTile$Host$Callback;)V

    .line 1357
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/systemui/qs/QSPanel;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 1358
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/systemui/qs/QSPanel;->setSingleLine(Z)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSpanelHeight:I

    .line 1359
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v4, 0x7f0e01da

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/HorizontalScrollView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHSView:Landroid/widget/HorizontalScrollView;

    .line 1360
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHSView:Landroid/widget/HorizontalScrollView;

    if-eqz v3, :cond_11

    .line 1361
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHSView:Landroid/widget/HorizontalScrollView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/HorizontalScrollView;->setLayoutDirection(I)V

    .line 1363
    :cond_11
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSingleLine:Z

    .line 1364
    new-instance v5, Lcom/android/systemui/settings/BrightnessController;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mToggleSliderView:Lcom/android/systemui/statusbar/ToggleSliderView;

    const v4, 0x7f0e038d

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/ToggleSliderView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mToggleSliderView:Lcom/android/systemui/statusbar/ToggleSliderView;

    const v7, 0x7f0e01cc

    invoke-virtual {v4, v7}, Lcom/android/systemui/statusbar/ToggleSliderView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/settings/ToggleSlider;

    invoke-direct {v5, v6, v3, v4}, Lcom/android/systemui/settings/BrightnessController;-><init>(Landroid/content/Context;Landroid/widget/ImageView;Lcom/android/systemui/settings/ToggleSlider;)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBrightnessController:Lcom/android/systemui/settings/BrightnessController;

    .line 1367
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBrightnessController:Lcom/android/systemui/settings/BrightnessController;

    invoke-virtual {v3}, Lcom/android/systemui/settings/BrightnessController;->registerCallbacks()V

    .line 1371
    new-instance v3, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    invoke-direct {v3, v4}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarWindowView;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    .line 1372
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mToggleSliderView:Lcom/android/systemui/statusbar/ToggleSliderView;

    const v4, 0x7f0e01cc

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/ToggleSliderView;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Lcom/android/systemui/settings/ToggleSlider;

    .line 1373
    .local v16, "brightnessSlider":Lcom/android/systemui/settings/ToggleSlider;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->getMirror()Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0e01cc

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Lcom/android/systemui/settings/ToggleSlider;

    .line 1374
    .local v30, "mirror":Lcom/android/systemui/settings/ToggleSlider;
    move-object/from16 v0, v16

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/systemui/settings/ToggleSlider;->setMirror(Lcom/android/systemui/settings/ToggleSlider;)V

    .line 1375
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lcom/android/systemui/settings/ToggleSlider;->setMirrorController(Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;)V

    .line 1378
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mShowSFinderQConnectView:Z

    if-eqz v3, :cond_12

    .line 1379
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQconnectSfinderView:Lcom/android/systemui/statusbar/QconnectSfinderView;

    if-eqz v3, :cond_12

    .line 1380
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQconnectSfinderView:Lcom/android/systemui/statusbar/QconnectSfinderView;

    const v4, 0x7f0e01ed

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/QconnectSfinderView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSFinderButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1382
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQconnectSfinderView:Lcom/android/systemui/statusbar/QconnectSfinderView;

    const v4, 0x7f0e01ee

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/QconnectSfinderView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQConnectButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1384
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQconnectSfinderView:Lcom/android/systemui/statusbar/QconnectSfinderView;

    const v4, 0x7f0e01ee

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/QconnectSfinderView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    const v5, 0x7f0d0330

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1397
    :cond_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQuickSettingContainer:Landroid/widget/FrameLayout;

    const v4, 0x7f0e01cb

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQsBrightnessView:Landroid/view/View;

    .line 1398
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v4, 0x7f0e01ec

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQsQConnectView:Landroid/view/View;

    .line 1399
    new-instance v5, Lcom/android/systemui/settings/BrightnessController;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQsBrightnessView:Landroid/view/View;

    const v4, 0x7f0e038d

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQsBrightnessView:Landroid/view/View;

    const v7, 0x7f0e01cc

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/settings/ToggleSlider;

    invoke-direct {v5, v6, v3, v4}, Lcom/android/systemui/settings/BrightnessController;-><init>(Landroid/content/Context;Landroid/widget/ImageView;Lcom/android/systemui/settings/ToggleSlider;)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQsBrightnessController:Lcom/android/systemui/settings/BrightnessController;

    .line 1402
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQsBrightnessController:Lcom/android/systemui/settings/BrightnessController;

    invoke-virtual {v3}, Lcom/android/systemui/settings/BrightnessController;->registerCallbacks()V

    .line 1403
    const v3, 0x7f0c034c

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBrightnessHeight:I

    .line 1406
    new-instance v3, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    invoke-direct {v3, v4}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarWindowView;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQsBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    .line 1407
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQsBrightnessView:Landroid/view/View;

    const v4, 0x7f0e01cc

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Lcom/android/systemui/settings/ToggleSlider;

    .line 1408
    .local v26, "keyguardbrightnessSlider":Lcom/android/systemui/settings/ToggleSlider;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQsBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->getMirror()Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0e01cc

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Lcom/android/systemui/settings/ToggleSlider;

    .line 1409
    .local v27, "keyguardmirror":Lcom/android/systemui/settings/ToggleSlider;
    invoke-virtual/range {v26 .. v27}, Lcom/android/systemui/settings/ToggleSlider;->setMirror(Lcom/android/systemui/settings/ToggleSlider;)V

    .line 1410
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQsBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Lcom/android/systemui/settings/ToggleSlider;->setMirrorController(Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;)V

    .line 1413
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mShowSFinderQConnectView:Z

    if-eqz v3, :cond_15

    .line 1414
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQsQConnectView:Landroid/view/View;

    if-eqz v3, :cond_14

    .line 1415
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQsQConnectView:Landroid/view/View;

    const v4, 0x7f0e01ed

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSFinderButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1417
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQsQConnectView:Landroid/view/View;

    const v4, 0x7f0e01ee

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQConnectButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1419
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQsQConnectView:Landroid/view/View;

    const v4, 0x7f0e01ee

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    const v5, 0x7f0d0330

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1426
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQsQConnectView:Landroid/view/View;

    const v4, 0x7f0e01ef

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v19, v3, v4

    .line 1427
    .local v19, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v19, :cond_13

    .line 1428
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a006c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 1429
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQsQConnectView:Landroid/view/View;

    const v4, 0x7f0e01ef

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v3, v0, v4, v5, v6}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1431
    :cond_13
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQsQConnectView:Landroid/view/View;

    const v4, 0x7f0e01f1

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v19, v3, v4

    .line 1432
    if-eqz v19, :cond_14

    .line 1433
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a006c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 1434
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQsQConnectView:Landroid/view/View;

    const v4, 0x7f0e01f1

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v3, v0, v4, v5, v6}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1438
    .end local v19    # "d":Landroid/graphics/drawable/Drawable;
    :cond_14
    const v3, 0x7f0c0370

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQConnectHeight:I

    .line 1440
    :cond_15
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setBrightnessControllerVisivility()V

    .line 1441
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->showHideQConnectLayout()V

    .line 1442
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateQSpanelHeight()V

    .line 1446
    .end local v2    # "qsh":Lcom/android/systemui/statusbar/phone/QSTileHost;
    .end local v16    # "brightnessSlider":Lcom/android/systemui/settings/ToggleSlider;
    .end local v26    # "keyguardbrightnessSlider":Lcom/android/systemui/settings/ToggleSlider;
    .end local v27    # "keyguardmirror":Lcom/android/systemui/settings/ToggleSlider;
    .end local v30    # "mirror":Lcom/android/systemui/settings/ToggleSlider;
    :cond_16
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mPLMNIconDisplay:Z

    if-eqz v3, :cond_17

    .line 1447
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v4, 0x7f0e018d

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAttCarrierLabel:Landroid/widget/TextView;

    .line 1448
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAttCarrierLabel:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->addATTMobileLabelView(Landroid/widget/TextView;)V

    .line 1449
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->showPlmnString()V

    .line 1454
    :cond_17
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUserInfoController:Lcom/android/systemui/statusbar/policy/UserInfoController;

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->setUserInfoController(Lcom/android/systemui/statusbar/policy/UserInfoController;)V

    .line 1455
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUserInfoController:Lcom/android/systemui/statusbar/policy/UserInfoController;

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->setUserInfoController(Lcom/android/systemui/statusbar/policy/UserInfoController;)V

    .line 1456
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUserInfoController:Lcom/android/systemui/statusbar/policy/UserInfoController;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/UserInfoController;->reloadUserInfo()V

    .line 1458
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->setBatteryController(Lcom/android/systemui/statusbar/policy/BatteryController;)V

    .line 1459
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v4, 0x7f0e01ac

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/BatteryMeterView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-virtual {v3, v4}, Lcom/android/systemui/BatteryMeterView;->setBatteryController(Lcom/android/systemui/statusbar/policy/BatteryController;)V

    .line 1461
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->setBatteryController(Lcom/android/systemui/statusbar/policy/BatteryController;)V

    .line 1462
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNextAlarmController:Lcom/android/systemui/statusbar/policy/NextAlarmController;

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->setNextAlarmController(Lcom/android/systemui/statusbar/policy/NextAlarmController;)V

    .line 1465
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mShowOperatorLogoIcon:Z

    if-eqz v3, :cond_19

    .line 1466
    const v3, 0x7f0c028e

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v31

    .line 1467
    .local v31, "outerBounds":I
    const v3, 0x7f0c0294

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v23

    .line 1468
    .local v23, "imageBounds":I
    move/from16 v0, v23

    int-to-float v3, v0

    move/from16 v0, v31

    int-to-float v4, v0

    div-float v34, v3, v4

    .line 1471
    .local v34, "scale":F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v4, 0x7f0e035a

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mOperatorLogoIcon:Landroid/view/View;

    .line 1473
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Framework_ReplaceDataTypeIconAsOpBrand"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDataTypeBrand:Ljava/lang/String;

    .line 1474
    const-string v3, "ORANGE"

    sget-object v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDataTypeBrand:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 1475
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v4, 0x7f0e035b

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mOperatorLogoIcon:Landroid/view/View;

    .line 1479
    :cond_18
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mOperatorLogoIcon:Landroid/view/View;

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/IconMerger;->setOperatorLogoIndicator(Landroid/view/View;)V

    .line 1480
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mOperatorLogoIcon:Landroid/view/View;

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->addOperatorLogoIconView(Landroid/view/View;)V

    .line 1481
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMoreIcon:Landroid/view/View;

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->addMoreIconView(Landroid/view/View;)V

    .line 1485
    .end local v23    # "imageBounds":I
    .end local v31    # "outerBounds":I
    .end local v34    # "scale":F
    :cond_19
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    const-string v4, "power"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Landroid/os/PowerManager;

    .line 1486
    .local v32, "pm":Landroid/os/PowerManager;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    new-instance v6, Landroid/content/Intent;

    invoke-virtual/range {v32 .. v32}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v3

    if-eqz v3, :cond_2c

    const-string v3, "android.intent.action.SCREEN_ON"

    :goto_f
    invoke-direct {v6, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5, v6}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 1490
    new-instance v20, Landroid/content/IntentFilter;

    invoke-direct/range {v20 .. v20}, Landroid/content/IntentFilter;-><init>()V

    .line 1491
    .local v20, "filter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1492
    const-string v3, "android.intent.action.SCREEN_OFF"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1493
    const-string v3, "android.intent.action.SCREEN_ON"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1494
    const-string v3, "android.intent.action.BATTERY_CHANGED"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1495
    const-string v3, "android.intent.action.ACTION_SHUTDOWN"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1499
    const-string v3, "com.android.systemui.demo"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1500
    const-string v3, "android.intent.action.SIM_STATE_CHANGED"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1501
    const-string v3, "android.settings.SIMCARD_MGT_ACTIVATED"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1502
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1505
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->resetUserSetupObserver()V

    .line 1507
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->startGlyphRasterizeHack()V

    .line 1510
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v4, 0x7f0e0360

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBasicSettingsButton:Landroid/widget/ImageView;

    .line 1511
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-nez v3, :cond_1a

    .line 1512
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBasicSettingsButton:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1513
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v4, 0x7f0e0361

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBasicSettingsButton:Landroid/widget/ImageView;

    .line 1514
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBasicSettingsButton:Landroid/widget/ImageView;

    const v4, 0x7f02010d

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1517
    :cond_1a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBasicSettingsButton:Landroid/widget/ImageView;

    if-eqz v3, :cond_1b

    .line 1518
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBasicSettingsButton:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBasicSettingsButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1519
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBasicSettingsButton:Landroid/widget/ImageView;

    const v4, 0x7f0d024a

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1522
    :cond_1b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v4, 0x7f0e0363

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsEditButton:Landroid/widget/ImageView;

    .line 1523
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsEditButton:Landroid/widget/ImageView;

    if-eqz v3, :cond_1c

    .line 1524
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsEditButton:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsEditButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1525
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsEditButton:Landroid/widget/ImageView;

    const v4, 0x7f0d041b

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1528
    :cond_1c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v4, 0x7f0e0365

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingButtonHolder:Landroid/view/View;

    .line 1529
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v4, 0x7f0e01f0

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingDivider:Landroid/widget/ImageView;

    .line 1531
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-eqz v3, :cond_1d

    .line 1532
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v4, 0x7f0e0361

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandSettingsButton:Landroid/widget/ImageView;

    .line 1533
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandSettingsButton:Landroid/widget/ImageView;

    if-eqz v3, :cond_1d

    .line 1534
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandSettingsButton:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandSettingsButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1535
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandSettingsButton:Landroid/widget/ImageView;

    const v4, 0x7f0d0258

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1536
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandSettingsButton:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1541
    :cond_1d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v4, 0x7f0e0364

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationButton:Landroid/widget/ImageView;

    .line 1542
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationButton:Landroid/widget/ImageView;

    if-eqz v3, :cond_1e

    .line 1543
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationButton:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1544
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationButton:Landroid/widget/ImageView;

    const v4, 0x7f0d024b

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1552
    :cond_1e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v4, 0x7f0e035f

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSEditButton:Landroid/view/View;

    .line 1553
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-nez v3, :cond_1f

    .line 1554
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBasicSettingsButton:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1555
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsEditButton:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1556
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-nez v3, :cond_1f

    .line 1557
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSEditButton:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1558
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSEditButton:Landroid/view/View;

    new-instance v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$18;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$18;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1567
    :cond_1f
    const-string v3, "quickconnect"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/quickconnect/IQuickConnectManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/quickconnect/IQuickConnectManager;

    move-result-object v3

    if-eqz v3, :cond_20

    .line 1568
    const-string v3, "STATUSBAR-PhoneStatusBar"

    const-string v4, "mQconnectEnable is true"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1569
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQconnectEnable:Z

    .line 1573
    :cond_20
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v4, 0x7f0e01ab

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBatteryText:Landroid/widget/TextView;

    .line 1574
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    const v4, 0x7f0e01ab

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardBatteryText:Landroid/widget/TextView;

    .line 1575
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "display_battery_percentage"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBatteryTextObserver:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$BatteryTextObserver;

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1577
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "display_battery_percentage"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2d

    const/16 v37, 0x1

    .line 1579
    .local v37, "showBatteryText":Z
    :goto_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBatteryText:Landroid/widget/TextView;

    if-eqz v37, :cond_2e

    const/4 v3, 0x0

    :goto_11
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1580
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardBatteryText:Landroid/widget/TextView;

    if-eqz v37, :cond_2f

    const/4 v3, 0x0

    :goto_12
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1588
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "emergency_mode"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mEmergencyeModeObserver:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EmergencyModeObserver;

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1590
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mEmergencyeModeObserver:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EmergencyModeObserver;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EmergencyModeObserver;->onChange(Z)V

    .line 1594
    new-instance v3, Lcom/android/systemui/statusbar/DoNotDisturb;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/systemui/statusbar/DoNotDisturb;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDoNotDisturb:Lcom/android/systemui/statusbar/DoNotDisturb;

    .line 1596
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    return-object v3

    .line 1141
    .end local v20    # "filter":Landroid/content/IntentFilter;
    .end local v32    # "pm":Landroid/os/PowerManager;
    .end local v37    # "showBatteryText":Z
    .restart local v22    # "i":I
    .restart local v28    # "mSimSignalCluster":Lcom/android/systemui/statusbar/MSimSignalClusterView;
    .restart local v29    # "mSimsignalClusterKeyguard":Lcom/android/systemui/statusbar/MSimSignalClusterView;
    :cond_21
    const/4 v3, 0x0

    goto/16 :goto_7

    .line 1153
    :cond_22
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMSimNetworkController:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabel:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->addCombinedLabelView(Landroid/widget/TextView;)V

    goto/16 :goto_8

    .line 1172
    .end local v22    # "i":I
    .end local v28    # "mSimSignalCluster":Lcom/android/systemui/statusbar/MSimSignalClusterView;
    .end local v29    # "mSimsignalClusterKeyguard":Lcom/android/systemui/statusbar/MSimSignalClusterView;
    :cond_23
    new-instance v3, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    .line 1173
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v4, 0x7f0e039b

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v39

    check-cast v39, Lcom/android/systemui/statusbar/SignalClusterView;

    .line 1175
    .local v39, "signalCluster":Lcom/android/systemui/statusbar/SignalClusterView;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    const v4, 0x7f0e039b

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v40

    check-cast v40, Lcom/android/systemui/statusbar/SignalClusterView;

    .line 1177
    .local v40, "signalClusterKeyguard":Lcom/android/systemui/statusbar/SignalClusterView;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    const v4, 0x7f0e039b

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v41

    check-cast v41, Lcom/android/systemui/statusbar/SignalClusterView;

    .line 1179
    .local v41, "signalClusterQs":Lcom/android/systemui/statusbar/SignalClusterView;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    move-object/from16 v0, v39

    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->addSignalCluster(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;)V

    .line 1180
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    move-object/from16 v0, v40

    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->addSignalCluster(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;)V

    .line 1181
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    move-object/from16 v0, v41

    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->addSignalCluster(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;)V

    .line 1182
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    move-object/from16 v0, v39

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/SignalClusterView;->setSecurityController(Lcom/android/systemui/statusbar/policy/SecurityController;)V

    .line 1183
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    move-object/from16 v0, v39

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/SignalClusterView;->setNetworkController(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V

    .line 1184
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    move-object/from16 v0, v40

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/SignalClusterView;->setSecurityController(Lcom/android/systemui/statusbar/policy/SecurityController;)V

    .line 1185
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    move-object/from16 v0, v40

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/SignalClusterView;->setNetworkController(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V

    .line 1186
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    move-object/from16 v0, v41

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/SignalClusterView;->setSecurityController(Lcom/android/systemui/statusbar/policy/SecurityController;)V

    .line 1187
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    move-object/from16 v0, v41

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/SignalClusterView;->setNetworkController(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V

    .line 1188
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->hasVoiceCallingFeature()Z

    move-result v25

    .line 1189
    .local v25, "isAPhone":Z
    if-eqz v25, :cond_24

    .line 1190
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->addEmergencyLabelView(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;)V

    .line 1193
    :cond_24
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    move-object/from16 v0, v40

    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->addSignalCluster(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;)V

    .line 1194
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    move-object/from16 v0, v40

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/SignalClusterView;->setNetworkController(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V

    .line 1212
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v4, 0x7f0e0076

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabel:Landroid/widget/TextView;

    .line 1213
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabel:Landroid/widget/TextView;

    if-eqz v3, :cond_25

    const/4 v3, 0x1

    :goto_13
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mShowCarrierInPanel:Z

    .line 1214
    const-string v3, "PhoneStatusBar"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "carrierlabel="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabel:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " show="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mShowCarrierInPanel:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1216
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mShowCarrierInPanel:Z

    if-eqz v3, :cond_d

    .line 1217
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabel:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1221
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->hasMobileDataFeature()Z

    move-result v3

    if-eqz v3, :cond_26

    .line 1222
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabel:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->addMobileLabelView(Landroid/widget/TextView;)V

    .line 1227
    :goto_14
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabel:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mClearAll:Landroid/widget/TextView;

    invoke-virtual {v3, v4, v5}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setCarrierView(Landroid/widget/TextView;Landroid/widget/TextView;)V

    goto/16 :goto_9

    .line 1213
    :cond_25
    const/4 v3, 0x0

    goto :goto_13

    .line 1224
    :cond_26
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabel:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->addCombinedLabelView(Landroid/widget/TextView;)V

    goto :goto_14

    .line 1254
    .end local v25    # "isAPhone":Z
    .end local v39    # "signalCluster":Lcom/android/systemui/statusbar/SignalClusterView;
    .end local v40    # "signalClusterKeyguard":Lcom/android/systemui/statusbar/SignalClusterView;
    .end local v41    # "signalClusterQs":Lcom/android/systemui/statusbar/SignalClusterView;
    :cond_27
    const/4 v3, 0x0

    goto/16 :goto_a

    .line 1258
    :cond_28
    const/4 v3, 0x0

    goto/16 :goto_b

    .line 1302
    :cond_29
    new-instance v2, Lcom/android/systemui/statusbar/phone/QSTileHost;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBluetoothController:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLocationController:Lcom/android/systemui/statusbar/policy/LocationControllerImpl;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRotationLockController:Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mZenModeController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHotspotController:Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCastController:Lcom/android/systemui/statusbar/policy/CastControllerImpl;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    move-object/from16 v4, p0

    invoke-direct/range {v2 .. v15}, Lcom/android/systemui/statusbar/phone/QSTileHost;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Lcom/android/systemui/statusbar/policy/BluetoothController;Lcom/android/systemui/statusbar/policy/LocationController;Lcom/android/systemui/statusbar/policy/RotationLockController;Lcom/android/systemui/statusbar/policy/NetworkController;Lcom/android/systemui/statusbar/policy/ZenModeController;Lcom/android/systemui/statusbar/policy/HotspotController;Lcom/android/systemui/statusbar/policy/CastController;Lcom/android/systemui/statusbar/policy/FlashlightController;Lcom/android/systemui/statusbar/policy/UserSwitcherController;Lcom/android/systemui/statusbar/policy/KeyguardMonitor;Lcom/android/systemui/statusbar/policy/SecurityController;)V

    .restart local v2    # "qsh":Lcom/android/systemui/statusbar/phone/QSTileHost;
    goto/16 :goto_c

    .line 1314
    .end local v2    # "qsh":Lcom/android/systemui/statusbar/phone/QSTileHost;
    :cond_2a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSEditBackButton:Landroid/view/View;

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->removeView(Landroid/view/View;)V

    goto/16 :goto_d

    .line 1336
    :cond_2b
    new-instance v2, Lcom/android/systemui/statusbar/phone/QSTileHost;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBluetoothController:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLocationController:Lcom/android/systemui/statusbar/policy/LocationControllerImpl;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRotationLockController:Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mZenModeController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHotspotController:Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCastController:Lcom/android/systemui/statusbar/policy/CastControllerImpl;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    move-object/from16 v4, p0

    invoke-direct/range {v2 .. v15}, Lcom/android/systemui/statusbar/phone/QSTileHost;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Lcom/android/systemui/statusbar/policy/BluetoothController;Lcom/android/systemui/statusbar/policy/LocationController;Lcom/android/systemui/statusbar/policy/RotationLockController;Lcom/android/systemui/statusbar/policy/NetworkController;Lcom/android/systemui/statusbar/policy/ZenModeController;Lcom/android/systemui/statusbar/policy/HotspotController;Lcom/android/systemui/statusbar/policy/CastController;Lcom/android/systemui/statusbar/policy/FlashlightController;Lcom/android/systemui/statusbar/policy/UserSwitcherController;Lcom/android/systemui/statusbar/policy/KeyguardMonitor;Lcom/android/systemui/statusbar/policy/SecurityController;)V

    .restart local v2    # "qsh":Lcom/android/systemui/statusbar/phone/QSTileHost;
    goto/16 :goto_e

    .line 1486
    .end local v2    # "qsh":Lcom/android/systemui/statusbar/phone/QSTileHost;
    .restart local v32    # "pm":Landroid/os/PowerManager;
    :cond_2c
    const-string v3, "android.intent.action.SCREEN_OFF"

    goto/16 :goto_f

    .line 1577
    .restart local v20    # "filter":Landroid/content/IntentFilter;
    :cond_2d
    const/16 v37, 0x0

    goto/16 :goto_10

    .line 1579
    .restart local v37    # "showBatteryText":Z
    :cond_2e
    const/16 v3, 0x8

    goto/16 :goto_11

    .line 1580
    :cond_2f
    const/16 v3, 0x8

    goto/16 :goto_12

    .line 955
    .end local v20    # "filter":Landroid/content/IntentFilter;
    .end local v32    # "pm":Landroid/os/PowerManager;
    .end local v35    # "scrimBehind":Lcom/android/systemui/statusbar/ScrimView;
    .end local v36    # "scrimInFront":Lcom/android/systemui/statusbar/ScrimView;
    .end local v37    # "showBatteryText":Z
    .end local v42    # "speedBump":Lcom/android/systemui/statusbar/SpeedBumpView;
    .end local v43    # "tickerStub":Landroid/view/ViewStub;
    :catch_0
    move-exception v3

    goto/16 :goto_3
.end method

.method public notificationLightOff()V
    .locals 2

    .prologue
    .line 3789
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost;

    if-eqz v0, :cond_0

    .line 3790
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost;->fireNotificationLight(Z)V

    .line 3792
    :cond_0
    return-void
.end method

.method public notificationLightPulse(III)V
    .locals 2
    .param p1, "argb"    # I
    .param p2, "onMillis"    # I
    .param p3, "offMillis"    # I

    .prologue
    .line 3796
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost;

    if-eqz v0, :cond_0

    .line 3797
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost;->fireNotificationLight(Z)V

    .line 3799
    :cond_0
    return-void
.end method

.method public notifyRecentPanelVisiblity(Z)V
    .locals 3
    .param p1, "on"    # Z

    .prologue
    .line 6827
    const-string v0, "PhoneStatusBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyRecentPanelVisiblity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6829
    if-eqz p1, :cond_0

    .line 6830
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    .line 6834
    :goto_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->notifyUiVisibilityChanged(I)V

    .line 6835
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRecents:Lcom/android/systemui/RecentsComponent;

    invoke-interface {v0}, Lcom/android/systemui/RecentsComponent;->dismissHelpPopup()V

    .line 6836
    return-void

    .line 6832
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    goto :goto_0
.end method

.method public onActivated(Lcom/android/systemui/statusbar/ActivatableNotificationView;)V
    .locals 2
    .param p1, "view"    # Lcom/android/systemui/statusbar/ActivatableNotificationView;

    .prologue
    .line 5660
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getActivatedChild()Lcom/android/systemui/statusbar/ActivatableNotificationView;

    move-result-object v0

    .line 5661
    .local v0, "previousView":Lcom/android/systemui/statusbar/ActivatableNotificationView;
    if-eqz v0, :cond_0

    .line 5662
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->makeInactive(Z)V

    .line 5664
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setActivatedChild(Lcom/android/systemui/statusbar/ActivatableNotificationView;)V

    .line 5665
    return-void
.end method

.method public onActivationReset(Lcom/android/systemui/statusbar/ActivatableNotificationView;)V
    .locals 2
    .param p1, "view"    # Lcom/android/systemui/statusbar/ActivatableNotificationView;

    .prologue
    .line 5677
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getActivatedChild()Lcom/android/systemui/statusbar/ActivatableNotificationView;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 5680
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setActivatedChild(Lcom/android/systemui/statusbar/ActivatableNotificationView;)V

    .line 5682
    :cond_0
    return-void
.end method

.method public onBackPressed()Z
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v1, 0x1

    .line 5577
    const/4 v0, 0x0

    .line 5579
    .local v0, "needToCheckBackKey":Z
    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    if-ne v2, v1, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isQsExpanded()Z

    move-result v2

    if-nez v2, :cond_0

    .line 5580
    const/4 v0, 0x1

    .line 5586
    :cond_0
    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->onBackPressed()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5609
    :goto_0
    return v1

    .line 5590
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isQsExpanded()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 5591
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isQsDetailShowing()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5592
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->closeQsDetail()V

    .line 5596
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapsePanels()V

    goto :goto_0

    .line 5594
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->animateCloseQs()V

    goto :goto_1

    .line 5600
    :cond_3
    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    if-ne v2, v3, :cond_4

    .line 5601
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->goToKeyguard()V

    goto :goto_0

    .line 5605
    :cond_4
    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    if-eq v2, v1, :cond_5

    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    if-eq v2, v3, :cond_5

    .line 5606
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapsePanels()V

    goto :goto_0

    .line 5609
    :cond_5
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onCameraHintStarted()V
    .locals 0

    .prologue
    .line 5702
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v3, 0x0

    .line 4710
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/BaseStatusBar;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 4712
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 4713
    const-string v0, "PhoneStatusBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configuration changed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4715
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateDisplaySize()V

    .line 4716
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLocale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4717
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLocale:Ljava/util/Locale;

    .line 4718
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSPanel;->setListening(Z)V

    .line 4720
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateResources()V

    .line 4721
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateClockSize()V

    .line 4722
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->repositionNavigationBar()V

    .line 4723
    const/16 v0, -0x2710

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateExpandedViewPos(I)V

    .line 4724
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateShowSearchHoldoff()V

    .line 4725
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsInQSEditMode:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsInQSDetailviewMode:Z

    if-nez v0, :cond_4

    .line 4726
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateRowStates()V

    .line 4739
    :cond_2
    :goto_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_3

    .line 4740
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mOrientation:I

    .line 4741
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    packed-switch v0, :pswitch_data_0

    .line 4762
    :cond_3
    :goto_1
    return-void

    .line 4727
    :cond_4
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsInQSDetailviewMode:Z

    if-eqz v0, :cond_5

    .line 4728
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->collapseQsDetailviewPanel()V

    .line 4729
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->expandQsDetailviewPanel()V

    goto :goto_0

    .line 4730
    :cond_5
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-nez v0, :cond_2

    .line 4731
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapseQsEditPanel()V

    .line 4732
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateExpandQsEditPanel()V

    goto :goto_0

    .line 4745
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    if-eqz v0, :cond_6

    .line 4746
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->marqueeStatusBar()V

    .line 4748
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHSView:Landroid/widget/HorizontalScrollView;

    if-eqz v0, :cond_7

    .line 4749
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHSView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0, v3, v3}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    .line 4752
    :cond_7
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSingleLine:Z

    if-nez v0, :cond_3

    .line 4753
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSingleLine:Z

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateQSpanel(Z)V

    goto :goto_1

    .line 4741
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onCoverAppCovered(Z)I
    .locals 4
    .param p1, "covered"    # Z

    .prologue
    .line 4510
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSViewCoverCovered:Z

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAppCoverCovered:Z

    if-nez v1, :cond_1

    .line 4511
    const/4 v0, 0x1

    .line 4517
    .local v0, "result":I
    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAppCoverCovered:Z

    if-eq p1, v1, :cond_0

    .line 4518
    const-string v1, "CoverUI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCoverAppCovered - covered:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4519
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAppCoverCovered:Z

    .line 4520
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateCoverWindow()V

    .line 4522
    :cond_0
    return v0

    .line 4512
    .end local v0    # "result":I
    :cond_1
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSViewCoverCovered:Z

    if-eqz v1, :cond_2

    if-nez p1, :cond_2

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAppCoverCovered:Z

    if-eqz v1, :cond_2

    .line 4513
    const/4 v0, 0x2

    .restart local v0    # "result":I
    goto :goto_0

    .line 4515
    .end local v0    # "result":I
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "result":I
    goto :goto_0
.end method

.method public onDragDownReset()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 5745
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, v1, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setDimmed(ZZ)V

    .line 5746
    return-void
.end method

.method public onDraggedDown(Landroid/view/View;)Z
    .locals 1
    .param p1, "startingChild"    # Landroid/view/View;

    .prologue
    .line 5731
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->hasActiveNotifications()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5734
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->goToLockedShade(Landroid/view/View;)V

    .line 5735
    const/4 v0, 0x1

    .line 5739
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onHeadsUpDismissed()V
    .locals 1

    .prologue
    .line 4863
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->dismiss()V

    .line 4864
    return-void
.end method

.method public onHintFinished()V
    .locals 0

    .prologue
    .line 5697
    return-void
.end method

.method public onMenuPressed()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 5573
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->onMenuPressed()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPhoneHintStarted()V
    .locals 0

    .prologue
    .line 5707
    return-void
.end method

.method public onScreenTurnedOff()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 5844
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScreenOnFromKeyguard:Z

    .line 5845
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScreenOnComingFromTouch:Z

    .line 5846
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setAnimationsEnabled(Z)V

    .line 5847
    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 5850
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScreenOnFromKeyguard:Z

    .line 5851
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setAnimationsEnabled(Z)V

    .line 5852
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onScreenTurnedOn()V

    .line 5853
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setTouchDisabled(Z)V

    .line 5854
    return-void
.end method

.method public onSpacePressed()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 5613
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScreenOn:Ljava/lang/Boolean;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScreenOn:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    if-eq v2, v0, :cond_0

    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 5615
    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapsePanels(IZ)V

    .line 5618
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public onThresholdReached()V
    .locals 3

    .prologue
    .line 5750
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setDimmed(ZZ)V

    .line 5751
    return-void
.end method

.method public onTouchSlopExceeded()V
    .locals 1

    .prologue
    .line 5755
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->removeLongPressCallback()V

    .line 5756
    return-void
.end method

.method public onTrackingStarted()V
    .locals 0

    .prologue
    .line 5685
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->runPostCollapseRunnables()V

    .line 5686
    return-void
.end method

.method public onTrackingStopped(Z)V
    .locals 2
    .param p1, "expand"    # Z

    .prologue
    .line 5710
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 5711
    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->isMethodInsecure()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5716
    :cond_1
    return-void
.end method

.method public onUnlockHintStarted()V
    .locals 0

    .prologue
    .line 5691
    return-void
.end method

.method public onVisibilityChanged(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 5936
    if-eqz p1, :cond_0

    .line 5937
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    .line 5941
    :goto_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->notifyUiVisibilityChanged(I)V

    .line 5942
    return-void

    .line 5939
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    goto :goto_0
.end method

.method panelsEnabled()Z
    .locals 2

    .prologue
    .line 3403
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisabled:I

    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public postAnimateCollapsePanels()V
    .locals 2

    .prologue
    .line 3443
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAnimateCollapsePanels:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->post(Ljava/lang/Runnable;)Z

    .line 3444
    return-void
.end method

.method public postQuickConnectButtonOnClick()V
    .locals 4

    .prologue
    .line 6603
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    new-instance v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$52;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$52;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 6609
    return-void
.end method

.method public postStartSettingsActivity(Landroid/content/Intent;I)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "delay"    # I

    .prologue
    .line 5046
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    new-instance v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$44;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$44;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Landroid/content/Intent;)V

    int-to-long v2, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 5052
    return-void
.end method

.method postStartTracing()V
    .locals 4

    .prologue
    .line 5004
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStartTracing:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 5005
    return-void
.end method

.method public quickConnectButtonOnClick()V
    .locals 4

    .prologue
    .line 6612
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isDeviceProvisioned()Z

    move-result v1

    if-nez v1, :cond_0

    .line 6652
    :goto_0
    return-void

    .line 6615
    :cond_0
    sget-boolean v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDiagnosticLogs:Z

    if-eqz v1, :cond_1

    .line 6616
    const-string v1, "QUICKCONNECTBUTTON"

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->sendLogs(Ljava/lang/String;)V

    .line 6620
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v0

    .line 6621
    .local v0, "keyguardShowing":Z
    new-instance v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$53;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$53;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)V

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isInstantDismiss()Z

    move-result v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->dismissKeyguardThenExecute(Lcom/android/keyguard/KeyguardHostView$OnDismissAction;ZZ)V

    goto :goto_0
.end method

.method public refreshAllStatusBarIcons()V
    .locals 1

    .prologue
    .line 2050
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusIcons:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->refreshAllIconsForLayout(Landroid/widget/LinearLayout;)V

    .line 2051
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusIconsKeyguard:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->refreshAllIconsForLayout(Landroid/widget/LinearLayout;)V

    .line 2052
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->refreshAllIconsForLayout(Landroid/widget/LinearLayout;)V

    .line 2053
    return-void
.end method

.method protected refreshLayout(I)V
    .locals 3
    .param p1, "layoutDirection"    # I

    .prologue
    const/4 v2, 0x0

    .line 2279
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz v0, :cond_0

    .line 2280
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setLayoutDirection(I)V

    .line 2283
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandSettingsButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 2285
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandSettingsButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2287
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandSettingsButton:Landroid/widget/ImageView;

    const v1, 0x7f02010f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2291
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 2293
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2295
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationButton:Landroid/widget/ImageView;

    const v1, 0x7f020109

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2299
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->refreshAllStatusBarIcons()V

    .line 2300
    return-void
.end method

.method public removeIcon(Ljava/lang/String;II)V
    .locals 3
    .param p1, "slot"    # Ljava/lang/String;
    .param p2, "index"    # I
    .param p3, "viewIndex"    # I

    .prologue
    .line 2095
    const-string v0, "PhoneStatusBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeIcon slot="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " index="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " viewIndex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2096
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusIcons:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p3}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 2097
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusIconsKeyguard:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p3}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 2098
    return-void
.end method

.method public removeNotification(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "ranking"    # Landroid/service/notification/NotificationListenerService$RankingMap;

    .prologue
    .line 2221
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v3

    iget-object v3, v3, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2223
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->clear()V

    .line 2226
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->removeNotificationViews(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;)Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    .line 2229
    .local v2, "old":Landroid/service/notification/StatusBarNotification;
    if-eqz v2, :cond_3

    .line 2233
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTickerEnabled:Z

    if-eqz v3, :cond_1

    .line 2238
    :cond_1
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mPLMNIconDisplay:Z

    if-eqz v3, :cond_2

    .line 2239
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/IconMerger;->getChildCount()I

    move-result v3

    if-nez v3, :cond_2

    .line 2240
    const/4 v3, 0x1

    const/high16 v4, 0x10a0000

    invoke-virtual {p0, v3, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setCarrierLabelVisibility(ZI)V

    .line 2246
    :cond_2
    const/16 v3, -0x2710

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateExpandedViewPos(I)V

    .line 2248
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->hasActiveNotifications()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isTracking()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isQsExpanded()Z

    move-result v3

    if-nez v3, :cond_3

    .line 2250
    iget v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    if-nez v3, :cond_6

    .line 2251
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapsePanels()V

    .line 2257
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setAreThereNotifications()V

    .line 2260
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mReasonSweep:Z

    if-eqz v3, :cond_5

    .line 2261
    if-eqz v2, :cond_4

    .line 2262
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.samsung.accessory.intent.action.CHECK_NOTIFICATION_ITEM"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2263
    .local v1, "iForSweep":Landroid/content/Intent;
    const-string v3, "NOTIFICATION_PACKAGE_NAME"

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2264
    const-string v3, "NOTIFICATION_ID"

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2265
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2267
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.android.sms.action.SWEEP_NOTIFICATION"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2268
    .local v0, "iForMsg":Landroid/content/Intent;
    const-string v3, "NOTIFICATION_PACKAGE_NAME"

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2269
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2272
    .end local v0    # "iForMsg":Landroid/content/Intent;
    .end local v1    # "iForSweep":Landroid/content/Intent;
    :cond_4
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mReasonSweep:Z

    .line 2275
    :cond_5
    return-void

    .line 2252
    :cond_6
    iget v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    .line 2253
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->goToKeyguard()V

    goto :goto_0
.end method

.method removePlmnString()V
    .locals 3

    .prologue
    .line 6799
    const-string v1, "STATUSBAR-PhoneStatusBar"

    const-string v2, "removePlmnString"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6800
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAttCarrierLabel:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 6801
    const/4 v1, 0x0

    const v2, 0x10a0001

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setCarrierLabelVisibility(ZI)V

    .line 6802
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/IconMerger;->getChildCount()I

    move-result v0

    .line 6803
    .local v0, "count":I
    if-nez v0, :cond_0

    .line 6806
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->showPlmnString()V

    .line 6809
    .end local v0    # "count":I
    :cond_0
    return-void
.end method

.method public removeQsEditPanel()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 6886
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSEditPanel:Lcom/android/systemui/qs/QSEditPanel;

    if-eqz v0, :cond_0

    .line 6887
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSEditBackButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6888
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSEditPanel:Lcom/android/systemui/qs/QSEditPanel;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSEditPanel;->setVisibility(I)V

    .line 6904
    :cond_0
    return-void
.end method

.method public resetHeadsUpDecayTimer()V
    .locals 5

    .prologue
    const/16 v4, 0x407

    .line 2191
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    .line 2192
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUseHeadsUp:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpNotificationDecay:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->isClearable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2194
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpNotificationDecay:I

    int-to-long v2, v1

    invoke-virtual {v0, v4, v2, v3}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->sendEmptyMessageDelayed(IJ)Z

    .line 2196
    :cond_0
    return-void
.end method

.method public scheduleHeadsUpClose()V
    .locals 2

    .prologue
    .line 2205
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    const/16 v1, 0x405

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->sendEmptyMessage(I)Z

    .line 2206
    return-void
.end method

.method public scheduleHeadsUpEscalation()V
    .locals 2

    .prologue
    .line 2210
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    const/16 v1, 0x406

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->sendEmptyMessage(I)Z

    .line 2211
    return-void
.end method

.method public scheduleHeadsUpOpen()V
    .locals 2

    .prologue
    .line 2200
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    const/16 v1, 0x404

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->sendEmptyMessage(I)Z

    .line 2201
    return-void
.end method

.method protected setAreThereNotifications()V
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 2711
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v7, 0x7f0e0189

    invoke-virtual {v6, v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2712
    .local v0, "nlo":Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->hasActiveNotifications()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->areLightsOn()Z

    move-result v6

    if-nez v6, :cond_2

    move v1, v2

    .line 2713
    .local v1, "showDot":Z
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v6

    cmpl-float v6, v6, v4

    if-nez v6, :cond_3

    :goto_1
    if-eq v1, v2, :cond_1

    .line 2714
    if-eqz v1, :cond_0

    .line 2715
    invoke-virtual {v0, v5}, Landroid/view/View;->setAlpha(F)V

    .line 2716
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2718
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    if-eqz v1, :cond_4

    move v2, v4

    :goto_2
    invoke-virtual {v6, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    if-eqz v1, :cond_5

    const-wide/16 v4, 0x2ee

    :goto_3
    invoke-virtual {v2, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    new-instance v4, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v5, 0x40000000    # 2.0f

    invoke-direct {v4, v5}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {v2, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    if-eqz v1, :cond_6

    const/4 v2, 0x0

    :goto_4
    invoke-virtual {v4, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 2731
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->findAndUpdateMediaNotifications()V

    .line 2733
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateCarrierLabelVisibility(Z)V

    .line 2734
    return-void

    .end local v1    # "showDot":Z
    :cond_2
    move v1, v3

    .line 2712
    goto :goto_0

    .restart local v1    # "showDot":Z
    :cond_3
    move v2, v3

    .line 2713
    goto :goto_1

    :cond_4
    move v2, v5

    .line 2718
    goto :goto_2

    :cond_5
    const-wide/16 v4, 0xfa

    goto :goto_3

    :cond_6
    new-instance v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$27;

    invoke-direct {v2, p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$27;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Landroid/view/View;)V

    goto :goto_4
.end method

.method public setBarState(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 5671
    iput p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    .line 5672
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->setStatusBarState(I)V

    .line 5673
    return-void
.end method

.method public setBouncerShowing(Z)V
    .locals 2
    .param p1, "bouncerShowing"    # Z

    .prologue
    .line 5839
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/BaseStatusBar;->setBouncerShowing(Z)V

    .line 5840
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisabledUnmodified:I

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->disable(IZ)V

    .line 5841
    return-void
.end method

.method public setCallBackground(I)V
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 3814
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    if-eqz v0, :cond_0

    .line 3815
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->setCallBackground(I)V

    .line 3817
    :cond_0
    return-void
.end method

.method setCarrierLabelVisibility(ZI)V
    .locals 3
    .param p1, "visible"    # Z
    .param p2, "anim"    # I

    .prologue
    .line 6812
    const-string v0, "PhoneStatusBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCarrierLabelVibibility : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6813
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAttCarrierLabel:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6814
    return-void

    .line 6813
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setEmptyDragAmount(F)V
    .locals 1
    .param p1, "amount"    # F

    .prologue
    .line 5760
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setEmptyDragAmount(F)V

    .line 5761
    return-void
.end method

.method public setFocus(I)V
    .locals 10
    .param p1, "keycode"    # I

    .prologue
    const v9, 0x7f0e004e

    const v8, 0x7f0e004d

    const v7, 0x7f0e004c

    const v6, 0x7f0e01db

    .line 7079
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    const/high16 v5, 0x40000

    invoke-virtual {v4, v5}, Lcom/android/systemui/qs/QSPanel;->setDescendantFocusability(I)V

    .line 7080
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v4, v7}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/ToggleSliderView;

    .line 7082
    .local v0, "brightnessView":Lcom/android/systemui/statusbar/ToggleSliderView;
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v4, v8}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/QconnectSfinderView;

    .line 7084
    .local v3, "qConnectView":Lcom/android/systemui/statusbar/QconnectSfinderView;
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v4, v9}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 7086
    .local v2, "expandableRow":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    const v5, 0x7f0e0362

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 7087
    .local v1, "dateTimeView":Landroid/view/View;
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSingleLine:Z

    if-eqz v4, :cond_6

    .line 7088
    if-eqz v1, :cond_0

    .line 7089
    const v4, 0x7f0e0360

    invoke-virtual {v1, v4}, Landroid/view/View;->setNextFocusRightId(I)V

    .line 7090
    const v4, 0x7f0e0361

    invoke-virtual {v1, v4}, Landroid/view/View;->setNextFocusLeftId(I)V

    .line 7092
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->findFocus()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 7093
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->findFocus()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setNextFocusDownId(I)V

    .line 7118
    :cond_1
    :goto_0
    return-void

    .line 7094
    :cond_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v4}, Lcom/android/systemui/qs/QSPanel;->findFocus()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 7095
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v4}, Lcom/android/systemui/qs/QSPanel;->findFocus()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/View;->setNextFocusDownId(I)V

    goto :goto_0

    .line 7096
    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ToggleSliderView;->findFocus()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 7097
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ToggleSliderView;->findFocus()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/View;->setNextFocusDownId(I)V

    .line 7098
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ToggleSliderView;->findFocus()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setNextFocusUpId(I)V

    goto :goto_0

    .line 7099
    :cond_4
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/QconnectSfinderView;->findFocus()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 7100
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/QconnectSfinderView;->findFocus()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/view/View;->setNextFocusDownId(I)V

    .line 7101
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/QconnectSfinderView;->findFocus()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/View;->setNextFocusUpId(I)V

    goto :goto_0

    .line 7102
    :cond_5
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->findFocus()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 7103
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->findFocus()Landroid/view/View;

    move-result-object v4

    const v5, 0x7f0e01ee

    invoke-virtual {v4, v5}, Landroid/view/View;->setNextFocusUpId(I)V

    goto :goto_0

    .line 7106
    :cond_6
    if-eqz v1, :cond_7

    .line 7107
    const v4, 0x7f0e0363

    invoke-virtual {v1, v4}, Landroid/view/View;->setNextFocusRightId(I)V

    .line 7108
    const v4, 0x7f0e0364

    invoke-virtual {v1, v4}, Landroid/view/View;->setNextFocusLeftId(I)V

    .line 7110
    :cond_7
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->findFocus()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 7111
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->findFocus()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setNextFocusDownId(I)V

    goto :goto_0

    .line 7112
    :cond_8
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v4}, Lcom/android/systemui/qs/QSPanel;->findFocus()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 7113
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v4}, Lcom/android/systemui/qs/QSPanel;->findFocus()Landroid/view/View;

    move-result-object v4

    const v5, 0x7f0e0076

    invoke-virtual {v4, v5}, Landroid/view/View;->setNextFocusDownId(I)V

    goto/16 :goto_0

    .line 7114
    :cond_9
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabel:Landroid/widget/TextView;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabel:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->findFocus()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 7115
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabel:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->findFocus()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setNextFocusUpId(I)V

    goto/16 :goto_0
.end method

.method public setImeWindowStatus(Landroid/os/IBinder;IIZ)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "vis"    # I
    .param p3, "backDisposition"    # I
    .param p4, "showImeSwitcher"    # Z

    .prologue
    .line 4067
    and-int/lit8 v2, p2, 0x2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    .line 4068
    .local v1, "imeShown":Z
    :goto_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationIconHints:I

    .line 4069
    .local v0, "flags":I
    const/4 v2, 0x2

    if-eq p3, v2, :cond_0

    if-eqz v1, :cond_2

    .line 4070
    :cond_0
    or-int/lit8 v0, v0, 0x1

    .line 4074
    :goto_1
    if-eqz p4, :cond_3

    .line 4075
    or-int/lit8 v0, v0, 0x2

    .line 4080
    :goto_2
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setNavigationIconHints(I)V

    .line 4081
    return-void

    .line 4067
    .end local v0    # "flags":I
    .end local v1    # "imeShown":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 4072
    .restart local v0    # "flags":I
    .restart local v1    # "imeShown":Z
    :cond_2
    and-int/lit8 v0, v0, -0x2

    goto :goto_1

    .line 4077
    :cond_3
    and-int/lit8 v0, v0, -0x3

    goto :goto_2
.end method

.method public setInteracting(IZ)V
    .locals 2
    .param p1, "barWindow"    # I
    .param p2, "interacting"    # Z

    .prologue
    .line 3964
    if-eqz p2, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mInteractingWindows:I

    or-int/2addr v0, p1

    :goto_0
    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mInteractingWindows:I

    .line 3967
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mInteractingWindows:I

    if-eqz v0, :cond_1

    .line 3968
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->suspendAutohide()V

    .line 3972
    :goto_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->checkBarModes()V

    .line 3973
    return-void

    .line 3964
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mInteractingWindows:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    goto :goto_0

    .line 3970
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->resumeSuspendedAutohide()V

    goto :goto_1
.end method

.method public setKeyguardFadingAway(JJ)V
    .locals 3
    .param p1, "delay"    # J
    .param p3, "fadeoutDuration"    # J

    .prologue
    const/4 v1, 0x1

    .line 5355
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardFadingAway:Z

    .line 5356
    iput-wide p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardFadingAwayDelay:J

    .line 5357
    iput-wide p3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardFadingAwayDuration:J

    .line 5358
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mWaitingForKeyguardExit:Z

    .line 5359
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisabledUnmodified:I

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->disable(IZ)V

    .line 5360
    return-void
.end method

.method public setLightsOn(Z)V
    .locals 4
    .param p1, "on"    # Z

    .prologue
    const/4 v3, 0x1

    .line 4017
    const-string v0, "PhoneStatusBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLightsOn("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4018
    if-eqz p1, :cond_0

    .line 4019
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setSystemUiVisibility(II)V

    .line 4023
    :goto_0
    return-void

    .line 4021
    :cond_0
    invoke-virtual {p0, v3, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setSystemUiVisibility(II)V

    goto :goto_0
.end method

.method public setMultiWindowBg(Z)V
    .locals 3
    .param p1, "on"    # Z

    .prologue
    .line 6820
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMultiWindowMode:Z

    .line 6821
    const-string v0, "PhoneStatusBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMultiWindowBg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mMultiWindowMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMultiWindowMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6822
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->checkBarModes()V

    .line 6823
    return-void
.end method

.method public setQsDetailviewLayout(Landroid/view/View;)V
    .locals 2
    .param p1, "content"    # Landroid/view/View;

    .prologue
    const/16 v1, 0x3ed

    .line 6909
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6910
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    .line 6912
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 6913
    return-void
.end method

.method public setQsExpanded(Z)V
    .locals 1
    .param p1, "expanded"    # Z

    .prologue
    .line 3294
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->setQsExpanded(Z)V

    .line 3295
    return-void
.end method

.method public setSystemUiVisibility(II)V
    .locals 15
    .param p1, "vis"    # I
    .param p2, "mask"    # I

    .prologue
    .line 3822
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    .line 3823
    .local v1, "oldVal":I
    xor-int/lit8 v0, p2, -0x1

    and-int/2addr v0, v1

    and-int v3, p1, p2

    or-int v2, v0, v3

    .line 3824
    .local v2, "newVal":I
    xor-int v7, v2, v1

    .line 3825
    .local v7, "diff":I
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "PhoneStatusBar"

    const-string v3, "setSystemUiVisibility vis=%s mask=%s oldVal=%s newVal=%s diff=%s"

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v4, v5

    const/4 v5, 0x1

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v4, v5

    const/4 v5, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v4, v5

    const/4 v5, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v4, v5

    const/4 v5, 0x4

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3830
    :cond_0
    if-eqz v7, :cond_c

    .line 3833
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    and-int/lit16 v0, v0, 0x4000

    if-lez v0, :cond_d

    const/4 v13, 0x1

    .line 3835
    .local v13, "wasRecentsVisible":Z
    :goto_0
    iput v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    .line 3838
    and-int/lit8 v0, v7, 0x1

    if-eqz v0, :cond_2

    .line 3839
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_e

    const/4 v8, 0x1

    .line 3840
    .local v8, "lightsOut":Z
    :goto_1
    if-eqz v8, :cond_1

    .line 3841
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapsePanels()V

    .line 3842
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTicking:Z

    if-eqz v0, :cond_1

    .line 3843
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->haltTicker()V

    .line 3847
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setAreThereNotifications()V

    .line 3851
    .end local v8    # "lightsOut":Z
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getBarTransitions()Lcom/android/systemui/statusbar/phone/BarTransitions;

    move-result-object v3

    const/high16 v4, 0x4000000

    const/high16 v5, 0x40000000    # 2.0f

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->computeBarMode(IILcom/android/systemui/statusbar/phone/BarTransitions;II)I

    move-result v11

    .line 3855
    .local v11, "sbMode":I
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-nez v0, :cond_f

    const/4 v9, -0x1

    .line 3858
    .local v9, "nbMode":I
    :goto_2
    const/4 v0, -0x1

    if-eq v11, v0, :cond_10

    const/4 v12, 0x1

    .line 3859
    .local v12, "sbModeChanged":Z
    :goto_3
    const/4 v0, -0x1

    if-eq v9, v0, :cond_11

    const/4 v10, 0x1

    .line 3860
    .local v10, "nbModeChanged":Z
    :goto_4
    const/4 v6, 0x0

    .line 3861
    .local v6, "checkBarModes":Z
    if-eqz v12, :cond_3

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarMode:I

    if-eq v11, v0, :cond_3

    .line 3862
    iput v11, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarMode:I

    .line 3863
    const/4 v6, 0x1

    .line 3865
    :cond_3
    if-eqz v10, :cond_4

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarMode:I

    if-eq v9, v0, :cond_4

    .line 3866
    iput v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarMode:I

    .line 3867
    const/4 v6, 0x1

    .line 3869
    :cond_4
    if-eqz v6, :cond_5

    .line 3870
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->checkBarModes()V

    .line 3872
    :cond_5
    if-nez v12, :cond_6

    if-eqz v10, :cond_8

    .line 3874
    :cond_6
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarMode:I

    const/4 v3, 0x1

    if-eq v0, v3, :cond_7

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarMode:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_12

    .line 3875
    :cond_7
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->scheduleAutohide()V

    .line 3882
    :cond_8
    :goto_5
    const/high16 v0, 0x10000000

    and-int v0, v0, p1

    if-eqz v0, :cond_9

    .line 3883
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    const v3, -0x10000001

    and-int/2addr v0, v3

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    .line 3885
    :cond_9
    const/high16 v0, 0x20000000

    and-int v0, v0, p1

    if-eqz v0, :cond_a

    .line 3886
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    const v3, -0x20000001

    and-int/2addr v0, v3

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    .line 3890
    :cond_a
    if-eqz v13, :cond_b

    .line 3891
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    .line 3895
    :cond_b
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->notifyUiVisibilityChanged(I)V

    .line 3897
    .end local v6    # "checkBarModes":Z
    .end local v9    # "nbMode":I
    .end local v10    # "nbModeChanged":Z
    .end local v11    # "sbMode":I
    .end local v12    # "sbModeChanged":Z
    .end local v13    # "wasRecentsVisible":Z
    :cond_c
    return-void

    .line 3833
    :cond_d
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 3839
    .restart local v13    # "wasRecentsVisible":Z
    :cond_e
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 3855
    .restart local v11    # "sbMode":I
    :cond_f
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBarTransitions()Lcom/android/systemui/statusbar/phone/BarTransitions;

    move-result-object v3

    const/high16 v4, 0x8000000

    const/high16 v5, -0x80000000

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->computeBarMode(IILcom/android/systemui/statusbar/phone/BarTransitions;II)I

    move-result v9

    goto :goto_2

    .line 3858
    .restart local v9    # "nbMode":I
    :cond_10
    const/4 v12, 0x0

    goto :goto_3

    .line 3859
    .restart local v12    # "sbModeChanged":Z
    :cond_11
    const/4 v10, 0x0

    goto :goto_4

    .line 3877
    .restart local v6    # "checkBarModes":Z
    .restart local v10    # "nbModeChanged":Z
    :cond_12
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->cancelAutohide()V

    goto :goto_5
.end method

.method public setVisibilityWhenDone(Landroid/animation/Animator;Landroid/view/View;I)Landroid/animation/Animator;
    .locals 1
    .param p1, "a"    # Landroid/animation/Animator;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "vis"    # I

    .prologue
    .line 3514
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$33;

    invoke-direct {v0, p0, p2, p3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$33;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Landroid/view/View;I)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 3520
    return-object p1
.end method

.method public setVisibilityWhenDone(Landroid/view/ViewPropertyAnimator;Landroid/view/View;I)Landroid/view/ViewPropertyAnimator;
    .locals 1
    .param p1, "a"    # Landroid/view/ViewPropertyAnimator;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "vis"    # I

    .prologue
    .line 3502
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$32;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$32;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Landroid/view/View;ILandroid/view/ViewPropertyAnimator;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 3509
    return-object p1
.end method

.method public setWindowState(II)V
    .locals 4
    .param p1, "window"    # I
    .param p2, "state"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3762
    if-nez p2, :cond_2

    move v0, v1

    .line 3763
    .local v0, "showing":Z
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    if-eqz v3, :cond_0

    if-ne p1, v1, :cond_0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindowState:I

    if-eq v1, p2, :cond_0

    .line 3766
    iput p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindowState:I

    .line 3768
    if-nez v0, :cond_0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    if-nez v1, :cond_0

    .line 3769
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->collapseAllPanels(Z)V

    .line 3772
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarWindowState:I

    if-eq v1, p2, :cond_1

    .line 3775
    iput p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarWindowState:I

    .line 3778
    :cond_1
    return-void

    .end local v0    # "showing":Z
    :cond_2
    move v0, v2

    .line 3762
    goto :goto_0
.end method

.method protected setZenMode(I)V
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 1784
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/BaseStatusBar;->setZenMode(I)V

    .line 1785
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIconPolicy:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    if-eqz v0, :cond_0

    .line 1786
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIconPolicy:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->setZenMode(I)V

    .line 1788
    :cond_0
    return-void
.end method

.method protected shouldDisableNavbarGestures()Z
    .locals 2

    .prologue
    .line 5040
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isDeviceProvisioned()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedVisible:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisabled:I

    const/high16 v1, 0x2000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showClock(Z)V
    .locals 3
    .param p1, "show"    # Z

    .prologue
    .line 3008
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    if-nez v1, :cond_1

    .line 3013
    :cond_0
    :goto_0
    return-void

    .line 3009
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v2, 0x7f0e00f5

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 3010
    .local v0, "clock":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 3011
    if-eqz p1, :cond_2

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    const/16 v1, 0x8

    goto :goto_1
.end method

.method public showKeyguard()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 5236
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLaunchTransitionFadingAway:Z

    if-eqz v0, :cond_1

    .line 5237
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 5238
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setAlpha(F)V

    .line 5239
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLaunchTransitionEndRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 5240
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLaunchTransitionEndRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 5242
    :cond_0
    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLaunchTransitionEndRunnable:Ljava/lang/Runnable;

    .line 5243
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLaunchTransitionFadingAway:Z

    .line 5245
    :cond_1
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setBarState(I)V

    .line 5246
    invoke-direct {p0, v2, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateKeyguardState(ZZ)V

    .line 5247
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScreenOnFromKeyguard:Z

    if-nez v0, :cond_2

    .line 5252
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setTouchDisabled(Z)V

    .line 5254
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->instantExpandNotificationsPanel()V

    .line 5255
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLeaveOpenOnKeyguardHide:Z

    .line 5256
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDraggedDownRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v0, :cond_3

    .line 5257
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDraggedDownRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setUserLocked(Z)V

    .line 5258
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDraggedDownRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->notifyHeightChanged()V

    .line 5259
    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDraggedDownRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 5262
    :cond_3
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->panelRevealedByUser:Z

    .line 5263
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->checkHomeCitySettingsDialog(Z)V

    .line 5264
    return-void
.end method

.method showPlmnString()V
    .locals 4

    .prologue
    .line 6783
    const-string v1, "STATUSBAR-PhoneStatusBar"

    const-string v2, "showPlmnString"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6784
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAttCarrierLabel:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 6785
    const/4 v1, 0x1

    const/high16 v2, 0x10a0000

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setCarrierLabelVisibility(ZI)V

    .line 6787
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/IconMerger;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 6788
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 6789
    .local v0, "mPlmnHandler":Landroid/os/Handler;
    new-instance v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$54;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$54;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 6796
    .end local v0    # "mPlmnHandler":Landroid/os/Handler;
    :cond_0
    return-void
.end method

.method public showQsDetailviewPanel(I)V
    .locals 4
    .param p1, "type"    # I

    .prologue
    const/16 v1, 0x3eb

    .line 6916
    iput p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSDetailviewType:I

    .line 6917
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6918
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    .line 6920
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    const-wide/16 v2, 0x15e

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->sendEmptyMessageDelayed(IJ)Z

    .line 6921
    return-void
.end method

.method protected showRecents(Z)V
    .locals 1
    .param p1, "triggeredFromAltTab"    # Z

    .prologue
    .line 5912
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    .line 5913
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->notifyUiVisibilityChanged(I)V

    .line 5914
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/BaseStatusBar;->showRecents(Z)V

    .line 5915
    return-void
.end method

.method public showSearchPanel()V
    .locals 3

    .prologue
    .line 1838
    invoke-super {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->showSearchPanel()V

    .line 1839
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mShowSearchPanel:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1842
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSearchPanelView:Lcom/android/systemui/SearchPanelView;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    invoke-virtual {v1, v2}, Lcom/android/systemui/SearchPanelView;->setSystemUiVisibility(I)V

    .line 1844
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz v1, :cond_0

    .line 1845
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    .line 1847
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v1, v1, -0x21

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1848
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1850
    .end local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    return-void
.end method

.method public start(Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0
    .param p1, "a"    # Landroid/animation/Animator;

    .prologue
    .line 3534
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    .line 3535
    return-object p1
.end method

.method public start()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 785
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisplay:Landroid/view/Display;

    .line 787
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateDisplaySize()V

    .line 788
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b001f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrimSrcModeEnabled:Z

    .line 791
    invoke-super {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->start()V

    .line 793
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    const-string v1, "media_session"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSessionManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    .line 798
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->addNavigationBar()V

    .line 801
    const-string v0, "content://com.sec.knox.provider2/KnoxCustomManagerService1"

    const-string v1, "getSealedState"

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getKnoxValueBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 802
    const-string v0, "content://com.sec.knox.provider2/KnoxCustomManagerService1"

    const-string v1, "getSealedStatusBarMode"

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getKnoxValueInteger(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 804
    const-string v0, "PhoneStatusBar"

    const-string v1, "KnoxCustom: hiding status bar"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    if-eqz v0, :cond_0

    .line 806
    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setStatusBarOn(Z)V

    .line 813
    :cond_0
    new-instance v0, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mVowifiController:Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;

    .line 816
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCastController:Lcom/android/systemui/statusbar/policy/CastControllerImpl;

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/CastController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIconPolicy:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    .line 817
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v4}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 819
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v3}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 821
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "heads_up_notifications_enabled"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 824
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "ticker_gets_heads_up"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 828
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    .line 829
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->startKeyguard()V

    .line 831
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Lcom/android/systemui/statusbar/phone/PhoneStatusBar$1;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost;

    .line 832
    const-class v0, Lcom/android/systemui/doze/DozeHost;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost;

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->putComponent(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 833
    const-class v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {p0, v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->putComponent(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 835
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setControllerUsers()V

    .line 837
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->notifyUserAboutHiddenNotifications()V

    .line 838
    return-void
.end method

.method public startActivity(Landroid/content/Intent;Z)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "dismissShade"    # Z

    .prologue
    .line 3286
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->startActivityDismissingKeyguard(Landroid/content/Intent;ZZ)V

    .line 3287
    return-void
.end method

.method public startActivityDismissingKeyguard(Landroid/content/Intent;ZZ)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "onlyProvisioned"    # Z
    .param p3, "dismissShade"    # Z

    .prologue
    .line 4416
    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isDeviceProvisioned()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4458
    :goto_0
    return-void

    .line 4418
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurrentUserId:I

    invoke-static {v0, p1, v1}, Lcom/android/systemui/statusbar/policy/PreviewInflater;->wouldLaunchResolverActivity(Landroid/content/Context;Landroid/content/Intent;I)Z

    move-result v3

    .line 4420
    .local v3, "afterKeyguardGone":Z
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v2

    .line 4421
    .local v2, "keyguardShowing":Z
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$37;

    move-object v1, p0

    move-object v4, p1

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$37;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;ZZLandroid/content/Intent;Z)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isInstantDismiss()Z

    move-result v1

    invoke-virtual {p0, v0, v3, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->dismissKeyguardThenExecute(Lcom/android/keyguard/KeyguardHostView$OnDismissAction;ZZ)V

    goto :goto_0
.end method

.method public startDelay(ILandroid/animation/Animator;)Landroid/animation/Animator;
    .locals 2
    .param p1, "d"    # I
    .param p2, "a"    # Landroid/animation/Animator;

    .prologue
    .line 3529
    int-to-long v0, p1

    invoke-virtual {p2, v0, v1}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 3530
    return-object p2
.end method

.method protected tick(Landroid/service/notification/StatusBarNotification;Z)V
    .locals 4
    .param p1, "n"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "firstTime"    # Z

    .prologue
    .line 4085
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTickerEnabled:Z

    if-nez v1, :cond_1

    .line 4123
    :cond_0
    :goto_0
    return-void

    .line 4088
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->areLightsOn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4091
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isDeviceProvisioned()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4094
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isNotificationForCurrentProfiles(Landroid/service/notification/StatusBarNotification;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4098
    invoke-static {}, Landroid/app/enterprise/knoxcustom/KnoxCustomManager;->getInstance()Landroid/app/enterprise/knoxcustom/KnoxCustomManager;

    move-result-object v0

    .line 4099
    .local v0, "knoxCustomManager":Landroid/app/enterprise/knoxcustom/KnoxCustomManager;
    const-string v1, "PhoneStatusBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tick(): knoxCustomManager = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4100
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/enterprise/knoxcustom/KnoxCustomManager;->getSealedState()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4105
    :cond_2
    sget-boolean v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsStatusBarHidden:Z

    if-nez v1, :cond_0

    .line 4116
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget-object v1, v1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4118
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisabled:I

    const/high16 v2, 0xa0000

    and-int/2addr v1, v2

    if-nez v1, :cond_0

    .line 4120
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTicker:Lcom/android/systemui/statusbar/phone/Ticker;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/phone/Ticker;->addEntry(Landroid/service/notification/StatusBarNotification;)V

    goto :goto_0
.end method

.method public toggleNotificationPanel()V
    .locals 2

    .prologue
    .line 3804
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedVisible:Z

    if-eqz v1, :cond_0

    const/16 v0, 0x3e9

    .line 3805
    .local v0, "msg":I
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    .line 3806
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->sendEmptyMessage(I)Z

    .line 3807
    return-void

    .line 3804
    .end local v0    # "msg":I
    :cond_0
    const/16 v0, 0x3e8

    goto :goto_0
.end method

.method protected toggleRecents()V
    .locals 1

    .prologue
    .line 5928
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    xor-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    .line 5929
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->notifyUiVisibilityChanged(I)V

    .line 5930
    invoke-super {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->toggleRecents()V

    .line 5931
    return-void
.end method

.method public topAppWindowChanged(Z)V
    .locals 3
    .param p1, "showMenu"    # Z

    .prologue
    .line 4053
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 4054
    const-string v1, "PhoneStatusBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_3

    const-string v0, "showing"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " the MENU button"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4056
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz v0, :cond_1

    .line 4057
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setMenuVisibility(Z)V

    .line 4061
    :cond_1
    if-eqz p1, :cond_2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setLightsOn(Z)V

    .line 4062
    :cond_2
    return-void

    .line 4054
    :cond_3
    const-string v0, "hiding"

    goto :goto_0
.end method

.method protected updateCarrierLabelVisibility(Z)V
    .locals 1
    .param p1, "force"    # Z

    .prologue
    .line 2646
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mShowCarrierInPanel:Z

    if-nez v0, :cond_0

    .line 2698
    :cond_0
    return-void
.end method

.method public updateCoverState(Lcom/samsung/android/cover/CoverState;)V
    .locals 5
    .param p1, "state"    # Lcom/samsung/android/cover/CoverState;

    .prologue
    const/4 v1, 0x0

    .line 4464
    if-nez p1, :cond_0

    .line 4465
    const-string v1, "CoverUI"

    const-string v2, "updateCoverState : CoverState == null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4499
    :goto_0
    return-void

    .line 4469
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 4470
    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v2

    if-nez v2, :cond_3

    const/4 v0, 0x1

    .line 4471
    .local v0, "sViewCoverCovered":Z
    :goto_1
    const-string v2, "CoverUI"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateCoverState - attached : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p1, Lcom/samsung/android/cover/CoverState;->attached:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4472
    const-string v2, "CoverUI"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateCoverState - covered : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4475
    iget-boolean v2, p1, Lcom/samsung/android/cover/CoverState;->attached:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsShutingdown:Z

    if-eqz v2, :cond_4

    .line 4476
    :cond_1
    const/4 v0, 0x0

    .line 4477
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSViewCoverCovered:Z

    .line 4478
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAppCoverCovered:Z

    .line 4479
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    invoke-interface {v1, v0}, Lcom/android/keyguard/ViewMediatorCallback;->setSViewCoverCovered(Z)V

    .line 4480
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateCoverWindow()V

    .line 4487
    :cond_2
    :goto_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    new-instance v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$38;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$38;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    goto :goto_0

    .end local v0    # "sViewCoverCovered":Z
    :cond_3
    move v0, v1

    .line 4470
    goto :goto_1

    .line 4481
    .restart local v0    # "sViewCoverCovered":Z
    :cond_4
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSViewCoverCovered:Z

    if-eq v0, v1, :cond_2

    .line 4482
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSViewCoverCovered:Z

    .line 4483
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    invoke-interface {v1, v0}, Lcom/android/keyguard/ViewMediatorCallback;->setSViewCoverCovered(Z)V

    .line 4484
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateCoverWindow()V

    goto :goto_2
.end method

.method updateDisplaySize()V
    .locals 2

    .prologue
    .line 4406
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisplay:Landroid/view/Display;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 4407
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisplay:Landroid/view/Display;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurrentDisplaySize:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 4412
    return-void
.end method

.method public updateExpandedViewPos(I)V
    .locals 4
    .param p1, "thingy"    # I

    .prologue
    .line 4394
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanelMinHeightFrac:F

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurrentDisplaySize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setMinimumHeight(I)V

    .line 4397
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 4398
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanelGravity:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 4399
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4401
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateCarrierLabelVisibility(Z)V

    .line 4402
    return-void
.end method

.method public updateIcon(Ljava/lang/String;IILcom/android/internal/statusbar/StatusBarIcon;Lcom/android/internal/statusbar/StatusBarIcon;)V
    .locals 4
    .param p1, "slot"    # Ljava/lang/String;
    .param p2, "index"    # I
    .param p3, "viewIndex"    # I
    .param p4, "old"    # Lcom/android/internal/statusbar/StatusBarIcon;
    .param p5, "icon"    # Lcom/android/internal/statusbar/StatusBarIcon;

    .prologue
    .line 2086
    const-string v1, "PhoneStatusBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateIcon slot="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " index="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " viewIndex="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " old="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " icon="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2088
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusIcons:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 2089
    .local v0, "view":Lcom/android/systemui/statusbar/StatusBarIconView;
    invoke-virtual {v0, p5}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    .line 2090
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusIconsKeyguard:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "view":Lcom/android/systemui/statusbar/StatusBarIconView;
    check-cast v0, Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 2091
    .restart local v0    # "view":Lcom/android/systemui/statusbar/StatusBarIconView;
    invoke-virtual {v0, p5}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    .line 2092
    return-void
.end method

.method public updateMediaMetaData(Z)V
    .locals 6
    .param p1, "metaDataChanged"    # Z

    .prologue
    const/4 v5, 0x2

    const/4 v2, 0x1

    .line 2883
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBackdrop:Lcom/android/systemui/statusbar/BackDropView;

    if-nez v3, :cond_0

    .line 3005
    :goto_0
    return-void

    .line 2892
    :cond_0
    const/4 v0, 0x0

    .line 2893
    .local v0, "artworkBitmap":Landroid/graphics/Bitmap;
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMediaMetadata:Landroid/media/MediaMetadata;

    if-eqz v3, :cond_1

    .line 2894
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMediaMetadata:Landroid/media/MediaMetadata;

    const-string v4, "android.media.metadata.ART"

    invoke-virtual {v3, v4}, Landroid/media/MediaMetadata;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2895
    if-nez v0, :cond_1

    .line 2896
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMediaMetadata:Landroid/media/MediaMetadata;

    const-string v4, "android.media.metadata.ALBUM_ART"

    invoke-virtual {v3, v4}, Landroid/media/MediaMetadata;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2901
    :cond_1
    if-eqz v0, :cond_6

    move v1, v2

    .line 2903
    .local v1, "hasArtwork":Z
    :goto_1
    iget v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    if-eq v3, v2, :cond_2

    iget v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    if-ne v3, v5, :cond_3

    .line 2904
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/KeyguardEffectViewController;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->setLiveWallpaperBg(Landroid/graphics/Bitmap;)V

    .line 2907
    :cond_3
    if-nez v1, :cond_7

    .line 2964
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/KeyguardEffectViewController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->isMusicBackgroundSet()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2965
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/KeyguardEffectViewController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->removeMusicWallpaper()V

    .line 2966
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/KeyguardEffectViewController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->update()V

    .line 2967
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/KeyguardEffectViewController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->setLayerAndBitmapForParticleEffect()V

    .line 3003
    :cond_5
    :goto_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/NotificationData;->filterAndSort()V

    .line 3004
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateNotificationShade()V

    goto :goto_0

    .line 2901
    .end local v1    # "hasArtwork":Z
    :cond_6
    const/4 v1, 0x0

    goto :goto_1

    .line 2907
    .restart local v1    # "hasArtwork":Z
    :cond_7
    iget v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    if-eq v3, v2, :cond_8

    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    if-ne v2, v5, :cond_4

    .line 2910
    :cond_8
    const-string v2, "PhoneStatusBar"

    const-string v3, "artworkBitmap != null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2911
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/KeyguardEffectViewController;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->handleUpdateKeyguardMusicBackground(Landroid/graphics/Bitmap;)V

    .line 2912
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/KeyguardEffectViewController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->setLayerAndBitmapForParticleEffect()V

    goto :goto_2
.end method

.method protected updateNotificationRanking(Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 1
    .param p1, "ranking"    # Landroid/service/notification/NotificationListenerService$RankingMap;

    .prologue
    .line 2215
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NotificationData;->updateRanking(Landroid/service/notification/NotificationListenerService$RankingMap;)V

    .line 2216
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateNotifications()V

    .line 2217
    return-void
.end method

.method protected updateNotifications()V
    .locals 2

    .prologue
    .line 2547
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

    if-nez v1, :cond_0

    .line 2564
    :goto_0
    return-void

    .line 2549
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationData;->filterAndSort()V

    .line 2551
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateNotificationShade()V

    .line 2552
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateNotificationIcons()V

    .line 2553
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2554
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->resizeNotificationRow()V

    .line 2558
    :cond_1
    const/4 v0, 0x0

    .line 2559
    .local v0, "disable":Z
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    if-eqz v1, :cond_2

    .line 2560
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->needTodisableClock()Z

    move-result v0

    .line 2562
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateClock(Z)V

    .line 2563
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateCarrierLabelView()V

    goto :goto_0
.end method

.method public updateOverFlowView()V
    .locals 0

    .prologue
    .line 7159
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateRowStates()V

    .line 7160
    return-void
.end method

.method public updateQsPanelOnKeyguard(Z)V
    .locals 8
    .param p1, "singleline"    # Z

    .prologue
    const/high16 v7, 0x3f800000    # 1.0f

    const/16 v6, 0x8

    const/4 v3, 0x0

    .line 6234
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    if-eqz v2, :cond_0

    .line 6235
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v2, p1}, Lcom/android/systemui/qs/QSPanel;->setSingleLine(Z)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSpanelHeight:I

    .line 6236
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSingleLine:Z

    .line 6237
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setBrightnessControllerVisivility()V

    .line 6238
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->showHideQConnectLayout()V

    .line 6240
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isMSim()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getNumberOfActiveSim()I

    move-result v2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    .line 6241
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->showHideMultiSIMLayout(Z)V

    .line 6246
    :cond_1
    if-eqz p1, :cond_b

    .line 6247
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateNotificationShade()V

    .line 6253
    :cond_2
    const/4 v0, 0x0

    .line 6254
    .local v0, "height":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mEmergencyModeActivated:Z

    if-nez v2, :cond_c

    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSpanelHeight:I

    :goto_0
    add-int/2addr v0, v2

    .line 6255
    :cond_3
    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    if-eqz v2, :cond_5

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mEmergencyModeActivated:Z

    if-nez v2, :cond_5

    .line 6256
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQsBrightnessView:Landroid/view/View;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQsBrightnessView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_4

    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBrightnessHeight:I

    add-int/2addr v0, v2

    .line 6257
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQsQConnectView:Landroid/view/View;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQsQConnectView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_5

    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQConnectHeight:I

    add-int/2addr v0, v2

    .line 6259
    :cond_5
    const-string v2, "PhoneStatusBar"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateQSpanelHeight: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSpanelHeight:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " height:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6260
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSingleLine:Z

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setPeekHeight(I)V

    .line 6261
    :cond_6
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSingleLine:Z

    if-nez v2, :cond_d

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v4, v2, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsExpandHeight(ZI)V

    .line 6264
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandSettingsButton:Landroid/widget/ImageView;

    if-eqz v2, :cond_7

    .line 6265
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandSettingsButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 6266
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandSettingsButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6268
    :cond_7
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBasicSettingsButton:Landroid/widget/ImageView;

    if-eqz v2, :cond_8

    .line 6269
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBasicSettingsButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 6270
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBasicSettingsButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6273
    :cond_8
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationButton:Landroid/widget/ImageView;

    if-eqz v2, :cond_9

    .line 6274
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6276
    :cond_9
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsEditButton:Landroid/widget/ImageView;

    if-eqz v2, :cond_a

    .line 6277
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsEditButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6279
    :cond_a
    return-void

    .line 6249
    .end local v0    # "height":I
    :cond_b
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 6250
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 6249
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .end local v1    # "i":I
    .restart local v0    # "height":I
    :cond_c
    move v2, v3

    .line 6254
    goto/16 :goto_0

    :cond_d
    move v2, v3

    .line 6261
    goto :goto_1
.end method

.method updateResources()V
    .locals 2

    .prologue
    .line 4875
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    if-eqz v0, :cond_0

    .line 4876
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSPanel;->updateResources()V

    .line 4879
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->loadDimens()V

    .line 4880
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    const v1, 0x10c000e

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLinearOutSlowIn:Landroid/view/animation/Interpolator;

    .line 4883
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    if-eqz v0, :cond_1

    .line 4884
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateResources()V

    .line 4886
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    if-eqz v0, :cond_2

    .line 4887
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->updateResources()V

    .line 4889
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    if-eqz v0, :cond_3

    .line 4890
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->updateResources()V

    .line 4893
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateTextResources()V

    .line 4894
    return-void
.end method

.method protected updateRowStates()V
    .locals 2

    .prologue
    .line 2633
    invoke-super {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateRowStates()V

    .line 2634
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->notifyVisibleChildrenChanged()V

    .line 2637
    const/4 v0, 0x0

    .line 2638
    .local v0, "disable":Z
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    if-eqz v1, :cond_0

    .line 2639
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->needTodisableClock()Z

    move-result v0

    .line 2641
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateClock(Z)V

    .line 2642
    return-void
.end method

.method protected updateSearchPanel()V
    .locals 2

    .prologue
    .line 1830
    invoke-super {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateSearchPanel()V

    .line 1831
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz v0, :cond_0

    .line 1832
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSearchPanelView:Lcom/android/systemui/SearchPanelView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setDelegateView(Landroid/view/View;)V

    .line 1834
    :cond_0
    return-void
.end method

.method public updateStackScrollerState(Z)V
    .locals 6
    .param p1, "goingToFullShade"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 5545
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    if-nez v4, :cond_1

    .line 5559
    :cond_0
    :goto_0
    return-void

    .line 5546
    :cond_1
    iget v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    if-ne v4, v2, :cond_3

    move v1, v2

    .line 5547
    .local v1, "onKeyguard":Z
    :goto_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isLockscreenPublicMode()Z

    move-result v5

    invoke-virtual {v4, v5, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setHideSensitive(ZZ)V

    .line 5548
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v4, v1, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setDimmed(ZZ)V

    .line 5549
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    if-nez v1, :cond_4

    :goto_2
    invoke-virtual {v4, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setExpandingEnabled(Z)V

    .line 5550
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getActivatedChild()Lcom/android/systemui/statusbar/ActivatableNotificationView;

    move-result-object v0

    .line 5551
    .local v0, "activatedChild":Lcom/android/systemui/statusbar/ActivatableNotificationView;
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->refreshAnimStatus()V

    .line 5552
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setActivatedChild(Lcom/android/systemui/statusbar/ActivatableNotificationView;)V

    .line 5553
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5554
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->resizeNotificationRow()V

    .line 5556
    :cond_2
    if-eqz v0, :cond_0

    .line 5557
    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->makeInactive(Z)V

    goto :goto_0

    .end local v0    # "activatedChild":Lcom/android/systemui/statusbar/ActivatableNotificationView;
    .end local v1    # "onKeyguard":Z
    :cond_3
    move v1, v3

    .line 5546
    goto :goto_1

    .restart local v1    # "onKeyguard":Z
    :cond_4
    move v2, v3

    .line 5549
    goto :goto_2
.end method

.method protected updateTextResources()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const v9, 0x7f0e01f1

    const v8, 0x7f0e01ef

    const v7, 0x7f0d032f

    const v6, 0x7f0d032e

    .line 4765
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 4767
    .local v1, "res":Landroid/content/res/Resources;
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mClearAll:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mClearAll:Landroid/widget/TextView;

    instance-of v2, v2, Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 4768
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mClearAll:Landroid/widget/TextView;

    const v3, 0x7f0d01ca

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4769
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mClearAll:Landroid/widget/TextView;

    const v3, 0x7f0d0289

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 4772
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBatteryText:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    .line 4773
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBatteryText:Landroid/widget/TextView;

    const v3, 0x7f0d01e3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBatteryLevel:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v10

    invoke-virtual {v1, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4775
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardBatteryText:Landroid/widget/TextView;

    if-eqz v2, :cond_2

    .line 4776
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardBatteryText:Landroid/widget/TextView;

    const v3, 0x7f0d01e3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBatteryLevel:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v10

    invoke-virtual {v1, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4780
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandSettingsButton:Landroid/widget/ImageView;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandSettingsButton:Landroid/widget/ImageView;

    const v3, 0x7f0d0258

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 4781
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationButton:Landroid/widget/ImageView;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationButton:Landroid/widget/ImageView;

    const v3, 0x7f0d024b

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 4782
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBasicSettingsButton:Landroid/widget/ImageView;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBasicSettingsButton:Landroid/widget/ImageView;

    const v3, 0x7f0d024a

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 4783
    :cond_5
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsEditButton:Landroid/widget/ImageView;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsEditButton:Landroid/widget/ImageView;

    const v3, 0x7f0d041b

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 4785
    :cond_6
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabel:Landroid/widget/TextView;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabel:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 4786
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabel:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabel:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4790
    :cond_7
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mShowSFinderQConnectView:Z

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQconnectSfinderView:Lcom/android/systemui/statusbar/QconnectSfinderView;

    if-eqz v2, :cond_8

    .line 4791
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQconnectSfinderView:Lcom/android/systemui/statusbar/QconnectSfinderView;

    const v3, 0x7f0e01ec

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/QconnectSfinderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 4792
    .local v0, "layout":Landroid/widget/LinearLayout;
    if-eqz v0, :cond_8

    .line 4793
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQconnectSfinderView:Lcom/android/systemui/statusbar/QconnectSfinderView;

    invoke-virtual {v2, v8}, Lcom/android/systemui/statusbar/QconnectSfinderView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4795
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQconnectSfinderView:Lcom/android/systemui/statusbar/QconnectSfinderView;

    invoke-virtual {v2, v8}, Lcom/android/systemui/statusbar/QconnectSfinderView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 4797
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQconnectSfinderView:Lcom/android/systemui/statusbar/QconnectSfinderView;

    invoke-virtual {v2, v9}, Lcom/android/systemui/statusbar/QconnectSfinderView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4799
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQconnectSfinderView:Lcom/android/systemui/statusbar/QconnectSfinderView;

    invoke-virtual {v2, v9}, Lcom/android/systemui/statusbar/QconnectSfinderView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 4804
    .end local v0    # "layout":Landroid/widget/LinearLayout;
    :cond_8
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mShowSFinderQConnectView:Z

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQuickSettingContainer:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_9

    .line 4805
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQuickSettingContainer:Landroid/widget/FrameLayout;

    const v3, 0x7f0e01ec

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 4806
    .restart local v0    # "layout":Landroid/widget/LinearLayout;
    if-eqz v0, :cond_9

    .line 4807
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQuickSettingContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v8}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4809
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQuickSettingContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v8}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 4811
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQuickSettingContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v9}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4813
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQuickSettingContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v9}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 4818
    .end local v0    # "layout":Landroid/widget/LinearLayout;
    :cond_9
    return-void
.end method

.method public userActivity()V
    .locals 2

    .prologue
    .line 5562
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 5563
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    invoke-interface {v0}, Lcom/android/keyguard/ViewMediatorCallback;->userActivity()V

    .line 5565
    :cond_0
    return-void
.end method

.method public userSwitched(I)V
    .locals 2
    .param p1, "newUserId"    # I

    .prologue
    .line 4823
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapsePanels()V

    .line 4824
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateNotifications()V

    .line 4825
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->resetUserSetupObserver()V

    .line 4826
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setControllerUsers()V

    .line 4829
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->resetBrightnessEnableObserver()V

    .line 4830
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->resetBatteryPercentageObserver()V

    .line 4831
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->resetEasyModeObserver()V

    .line 4834
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDoNotDisturb:Lcom/android/systemui/statusbar/DoNotDisturb;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/DoNotDisturb;->clear()V

    .line 4835
    new-instance v0, Lcom/android/systemui/statusbar/DoNotDisturb;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/DoNotDisturb;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDoNotDisturb:Lcom/android/systemui/statusbar/DoNotDisturb;

    .line 4836
    return-void
.end method

.method vibrate()V
    .locals 4

    .prologue
    .line 5008
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    const-string v2, "vibrator"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 5010
    .local v0, "vib":Landroid/os/Vibrator;
    const-wide/16 v2, 0xfa

    sget-object v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/Vibrator;->vibrate(JLandroid/media/AudioAttributes;)V

    .line 5011
    return-void
.end method

.method protected visibilityChanged(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 4951
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mVisible:Z

    .line 4952
    if-eqz p1, :cond_0

    .line 4953
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->startNotificationLoggingIfScreenOnAndVisible()V

    .line 4957
    :goto_0
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/BaseStatusBar;->visibilityChanged(Z)V

    .line 4958
    return-void

    .line 4955
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->stopNotificationLogging()V

    goto :goto_0
.end method

.method public wakeUpIfDozing(JZ)V
    .locals 3
    .param p1, "time"    # J
    .param p3, "fromTouch"    # Z

    .prologue
    .line 5949
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDozing:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/ScrimController;->isPulsing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5950
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 5951
    .local v0, "pm":Landroid/os/PowerManager;
    invoke-virtual {v0, p1, p2}, Landroid/os/PowerManager;->wakeUp(J)V

    .line 5952
    if-eqz p3, :cond_0

    .line 5953
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScreenOnComingFromTouch:Z

    .line 5956
    .end local v0    # "pm":Landroid/os/PowerManager;
    :cond_0
    return-void
.end method
