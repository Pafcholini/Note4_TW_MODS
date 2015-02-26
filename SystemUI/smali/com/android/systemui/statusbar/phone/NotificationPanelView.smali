.class public Lcom/android/systemui/statusbar/phone/NotificationPanelView;
.super Lcom/android/systemui/statusbar/phone/PanelView;
.source "NotificationPanelView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/systemui/statusbar/ExpandableView$OnHeightChangedListener;
.implements Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;
.implements Lcom/android/systemui/statusbar/phone/ObservableScrollView$Listener;
.implements Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnOverscrollTopChangedListener;


# static fields
.field private static final ACTION_HOME_PAUSE:Ljava/lang/String; = "com.sec.android.intent.action.HOME_PAUSE"

.field private static final ACTION_HOME_RESUME:Ljava/lang/String; = "com.sec.android.intent.action.HOME_RESUME"

.field private static final CAP_HEIGHT:I = 0x5b0

.field private static final DOUBLETAP_TIMEOUT_MS:J = 0x4b0L

.field private static final DOZE_BACKGROUND_ANIM_DURATION:J = 0xdcL

.field private static final DOZE_BACKGROUND_COLOR:I = -0x1000000

.field private static final FONT_HEIGHT:I = 0x873

.field private static final HEADER_RUBBERBAND_FACTOR:F = 2.05f

.field private static final HEADER_RUBBERBAND_SINGLEMODE_FACTOR:F = 1.6f

.field private static final LOCK_ICON_ACTIVE_SCALE:F = 1.2f

.field private static final TAG_KEY_ANIM:I = 0x7f0e0061


# instance fields
.field private final mAnimateHeaderSlidingInListener:Landroid/animation/Animator$AnimatorListener;

.field private final mAnimateKeyguardStatusBarInvisibleEndRunnable:Ljava/lang/Runnable;

.field private final mAnimateKeyguardStatusViewInvisibleEndRunnable:Ljava/lang/Runnable;

.field private final mAnimateKeyguardStatusViewVisibleEndRunnable:Ljava/lang/Runnable;

.field private mAnimateNextTopPaddingChange:Z

.field private mBlockTouches:Z

.field private mBrightnessHeight:I

.field private mBrightnessView:Landroid/view/View;

.field private mCarrierLabel:Landroid/widget/TextView;

.field private mClearAll:Landroid/widget/TextView;

.field private mClearAllTouchDown:Z

.field private mClearAllVisible:Z

.field private mClearX:F

.field private mClearY:F

.field private mClockAnimationTarget:I

.field private mClockAnimator:Landroid/animation/ObjectAnimator;

.field private mClockView:Landroid/widget/TextView;

.field private mCocktailBarPresent:Z

.field private mConflictingQsExpansionGesture:Z

.field private mDisableTouchEvent:Z

.field private mDisableUpdateNotificationStack:Z

.field private mDispatchInitBouncerState:Z

.field private mDispatchInitState:I

.field private mDispatchInitX:F

.field private mDispatchInitY:F

.field mDisplay:Landroid/view/Display;

.field private mDozing:Z

.field private mEmergencyModeActivated:Z

.field private mEmptyDragAmount:F

.field private mExtraMargin:I

.field private mFastOutLinearInterpolator:Landroid/view/animation/Interpolator;

.field private mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

.field private mHasNotification:Z

.field private mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

.field private mHeaderAnimatingIn:Z

.field private mHomeIntent:Landroid/content/Intent;

.field private mInitialHeightOnTouch:F

.field private mInitialTouchX:F

.field private mInitialTouchY:F

.field private mIntercepting:Z

.field private mIsDetailviewMode:Z

.field private mIsExpanding:Z

.field private mIsFirstExpanded:Z

.field private mIsFullyOpened:Z

.field private mIsLaunchTransitionFinished:Z

.field private mIsLaunchTransitionRunning:Z

.field private mIsQsonAnimating:Z

.field private mKeyguardBouncerContainer:Landroid/view/View;

.field private mKeyguardShowing:Z

.field private mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

.field private mKeyguardStatusView:Landroid/view/View;

.field private mKeyguardStatusViewAnimating:Z

.field private mKeyguardUserSwitcher:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

.field private mLastAnnouncementWasQuickSettings:Z

.field private mLastAnnouncementforShade:Z

.field private mLastOverscroll:F

.field private mLastTouchX:F

.field private mLastTouchY:F

.field private mLaunchAnimationEndRunnable:Ljava/lang/Runnable;

.field private mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;

.field private mNotificationContainerParent:Landroid/view/View;

.field private mNotificationScrimWaitDistance:I

.field private mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

.field private mNotificationTopPadding:I

.field private mNotificationsHeaderCollideDistance:I

.field private mOnlyAffordanceInThisMotion:Z

.field private mQConnectHeight:I

.field private mQConnectView:Landroid/view/View;

.field private mQSEditDivider:Landroid/view/View;

.field private mQsAnimatorExpand:Z

.field private mQsContainer:Landroid/view/View;

.field private mQsContainerAnimator:Landroid/animation/ObjectAnimator;

.field private final mQsContainerAnimatorUpdater:Landroid/view/View$OnLayoutChangeListener;

.field private mQsDetailviewPanelHeight:I

.field private mQsDetailviewPanelType:I

.field private mQsExpanded:Z

.field private mQsExpandedWhenExpandingStarted:Z

.field private mQsExpansionAnimator:Landroid/animation/ValueAnimator;

.field private mQsExpansionEnabled:Z

.field private mQsExpansionFromOverscroll:Z

.field private mQsExpansionHeight:F

.field private mQsFalsingThreshold:I

.field private mQsFixedHeight:I

.field public mQsFullyExpanded:Z

.field private mQsHsView:Landroid/widget/HorizontalScrollView;

.field private mQsMaxExpansionHeight:I

.field private mQsMinExpansionHeight:I

.field private mQsNavbarScrim:Landroid/view/View;

.field private mQsPanel:Lcom/android/systemui/qs/QSPanel;

.field private mQsPeekHeight:I

.field private mQsPreviousFixedHeight:I

.field private mQsPreviousPeekHeight:I

.field private mQsScrimEnabled:Z

.field private mQsTouchAboveFalsingThreshold:Z

.field private mQsTracking:Z

.field private mReserveNotificationSpace:Landroid/view/View;

.field private mScrollView:Lcom/android/systemui/statusbar/phone/ObservableScrollView;

.field private mScrollYOverride:I

.field private mSecAdaptiveEventContainer:Landroid/view/View;

.field private mSecClockHolder:Landroid/view/View;

.field private mSecKeyguardStatusView:Landroid/view/View;

.field private mStackScrollerOverscrolling:Z

.field private final mStartHeaderSlidingIn:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private mStatusBarMinHeight:I

.field private mStatusBarState:I

.field private final mTapTimeoutRunnable:Ljava/lang/Runnable;

.field private final mTemp2:[I

.field private mTempRect:Landroid/graphics/Rect;

.field private mTopPaddingAdjustment:I

.field private mTrackingPointer:I

.field private mTwoFingerQsExpand:Z

.field private mTwoFingerQsExpandPossible:Z

.field private mUnlockIconActive:Z

.field private mUnlockMoveDistance:I

.field private final mUpdateHeader:Ljava/lang/Runnable;

.field private final mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 269
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/PanelView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 130
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDisplay:Landroid/view/Display;

    .line 131
    iput v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mExtraMargin:I

    .line 170
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionEnabled:Z

    .line 182
    iput v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClockAnimationTarget:I

    .line 200
    iput v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mScrollYOverride:I

    .line 217
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsScrimEnabled:Z

    .line 237
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mEmergencyModeActivated:Z

    .line 239
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsQsonAnimating:Z

    .line 241
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHasNotification:Z

    .line 266
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsDetailviewMode:Z

    .line 787
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTempRect:Landroid/graphics/Rect;

    .line 789
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDispatchInitBouncerState:Z

    .line 925
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTemp2:[I

    .line 1311
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$4;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAnimateKeyguardStatusViewInvisibleEndRunnable:Ljava/lang/Runnable;

    .line 1319
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$5;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAnimateKeyguardStatusViewVisibleEndRunnable:Ljava/lang/Runnable;

    .line 1326
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$6;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$6;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAnimateHeaderSlidingInListener:Landroid/animation/Animator$AnimatorListener;

    .line 1336
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$7;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$7;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsContainerAnimatorUpdater:Landroid/view/View$OnLayoutChangeListener;

    .line 1353
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$8;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$8;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStartHeaderSlidingIn:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 1386
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$9;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$9;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAnimateKeyguardStatusBarInvisibleEndRunnable:Ljava/lang/Runnable;

    .line 2211
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$13;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$13;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 2655
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$17;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$17;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mUpdateHeader:Ljava/lang/Runnable;

    .line 2740
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDisableTouchEvent:Z

    .line 2770
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHomeIntent:Landroid/content/Intent;

    .line 2851
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$18;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$18;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTapTimeoutRunnable:Ljava/lang/Runnable;

    .line 271
    invoke-static {p1}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportStyleTransition(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    new-instance v0, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;

    invoke-direct {v0, p1}, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;

    .line 275
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/animation/ObjectAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClockAnimator:Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;
    .param p1, "x1"    # Landroid/animation/ObjectAnimator;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClockAnimator:Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/view/View$OnLayoutChangeListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsContainerAnimatorUpdater:Landroid/view/View$OnLayoutChangeListener;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .prologue
    .line 87
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPeekHeight:I

    return v0
.end method

.method static synthetic access$1400(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/animation/Animator$AnimatorListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAnimateHeaderSlidingInListener:Landroid/animation/Animator$AnimatorListener;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;
    .param p1, "x1"    # Z

    .prologue
    .line 87
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsQsonAnimating:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/android/systemui/statusbar/phone/NotificationPanelView;F)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;
    .param p1, "x1"    # F

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsExpansion(F)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/systemui/statusbar/phone/ObservableScrollView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mScrollView:Lcom/android/systemui/statusbar/phone/ObservableScrollView;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/android/systemui/statusbar/phone/NotificationPanelView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;
    .param p1, "x1"    # I

    .prologue
    .line 87
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mScrollYOverride:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .prologue
    .line 87
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClockAnimationTarget:I

    return v0
.end method

.method static synthetic access$2002(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;
    .param p1, "x1"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$202(Lcom/android/systemui/statusbar/phone/NotificationPanelView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;
    .param p1, "x1"    # I

    .prologue
    .line 87
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClockAnimationTarget:I

    return p1
.end method

.method static synthetic access$2100(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    return v0
.end method

.method static synthetic access$2200(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/systemui/qs/QSPanel;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCarrierLabel:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClearAll:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsFullyOpened:Z

    return v0
.end method

.method static synthetic access$2700(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsDetailviewMode:Z

    return v0
.end method

.method static synthetic access$2800(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHasNotification:Z

    return v0
.end method

.method static synthetic access$2900(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClearAllVisible:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/view/animation/Interpolator;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;
    .param p1, "x1"    # Z

    .prologue
    .line 87
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStackScrollerOverscrolling:Z

    return p1
.end method

.method static synthetic access$502(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;
    .param p1, "x1"    # Z

    .prologue
    .line 87
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionFromOverscroll:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateQsState()V

    return-void
.end method

.method static synthetic access$702(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;
    .param p1, "x1"    # Z

    .prologue
    .line 87
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusViewAnimating:Z

    return p1
.end method

.method static synthetic access$802(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;
    .param p1, "x1"    # Z

    .prologue
    .line 87
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeaderAnimatingIn:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/animation/ObjectAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsContainerAnimator:Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;
    .param p1, "x1"    # Landroid/animation/ObjectAnimator;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsContainerAnimator:Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method private animateHeaderSlidingIn()V
    .locals 2

    .prologue
    .line 1381
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeaderAnimatingIn:Z

    .line 1382
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStartHeaderSlidingIn:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1384
    return-void
.end method

.method private animateKeyguardStatusBarOut()V
    .locals 6

    .prologue
    .line 1394
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getKeyguardFadingAwayDelay()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getKeyguardFadingAwayDuration()J

    move-result-wide v2

    const-wide/16 v4, 0x2

    div-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAnimateKeyguardStatusBarInvisibleEndRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1401
    return-void
.end method

.method private calculatePanelHeightQsExpanded()I
    .locals 5

    .prologue
    .line 1923
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getEmptyBottomMargin()I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getTopPadding()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v1, v3

    .line 1926
    .local v1, "notificationHeight":F
    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    int-to-float v3, v3

    add-float/2addr v3, v1

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getNotificationTopPadding()I

    move-result v4

    int-to-float v4, v4

    add-float v2, v3, v4

    .line 1928
    .local v2, "totalHeight":F
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v3, v2, v3

    if-lez v3, :cond_0

    .line 1929
    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getMinStackHeight()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getNotificationTopPadding()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getScrollViewScrollY()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v0, v3

    .line 1933
    .local v0, "fullyCollapsedHeight":F
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 1935
    .end local v0    # "fullyCollapsedHeight":F
    :cond_0
    float-to-int v3, v2

    return v3
.end method

.method private calculatePanelHeightShade()I
    .locals 4

    .prologue
    .line 1915
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getEmptyBottomMargin()I

    move-result v0

    .line 1916
    .local v0, "emptyBottomMargin":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getHeight()I

    move-result v2

    sub-int/2addr v2, v0

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTopPaddingAdjustment:I

    sub-int v1, v2, v3

    .line 1918
    .local v1, "maxHeight":I
    int-to-float v2, v1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getTopPaddingOverflow()F

    move-result v3

    add-float/2addr v2, v3

    float-to-int v1, v2

    .line 1919
    return v1
.end method

.method private calculateQsTopPadding()F
    .locals 3

    .prologue
    .line 1678
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mScrollYOverride:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1679
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getQsExpansionFraction()F

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getIntrinsicPadding()I

    move-result v1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationTopPadding:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    int-to-float v2, v2

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->interpolate(FFF)F

    move-result v0

    .line 1683
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    goto :goto_0
.end method

.method private cancelAnimation()V
    .locals 1

    .prologue
    .line 1716
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 1717
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1719
    :cond_0
    return-void
.end method

.method private findNotificationView(FF)Lcom/android/systemui/statusbar/ExpandableView;
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 928
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTemp2:[I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getLocationOnScreen([I)V

    .line 929
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTemp2:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    int-to-float v0, v0

    add-float/2addr p1, v0

    .line 930
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTemp2:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    int-to-float v0, v0

    add-float/2addr p2, v0

    .line 931
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAtRawPosition(FF)Lcom/android/systemui/statusbar/ExpandableView;

    move-result-object v0

    return-object v0
.end method

.method private flingExpandsQs(F)Z
    .locals 4
    .param p1, "vel"    # F

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 960
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isBelowFalsingThreshold()Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    .line 966
    :cond_0
    :goto_0
    return v0

    .line 963
    :cond_1
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/FlingAnimationUtils;->getMinVelocityPxPerSecond()F

    move-result v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    .line 964
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getQsExpansionFraction()F

    move-result v2

    const/high16 v3, 0x3f000000    # 0.5f

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 966
    :cond_2
    const/4 v2, 0x0

    cmpl-float v2, p1, v2

    if-gtz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private flingQsWithCurrentVelocity()V
    .locals 2

    .prologue
    .line 955
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getCurrentVelocity()F

    move-result v0

    .line 956
    .local v0, "vel":F
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->flingExpandsQs(F)Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->flingSettings(FZ)V

    .line 957
    return-void
.end method

.method private flingSettings(FZ)V
    .locals 1
    .param p1, "vel"    # F
    .param p2, "expand"    # Z

    .prologue
    .line 1752
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->flingSettings(FZLjava/lang/Runnable;)V

    .line 1753
    return-void
.end method

.method private flingSettings(FZLjava/lang/Runnable;)V
    .locals 8
    .param p1, "vel"    # F
    .param p2, "expand"    # Z
    .param p3, "onFinishRunnable"    # Ljava/lang/Runnable;

    .prologue
    const/4 v7, 0x1

    .line 1756
    if-eqz p2, :cond_1

    iget v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    int-to-float v3, v4

    .line 1757
    .local v3, "target":F
    :goto_0
    move v2, p2

    .line 1758
    .local v2, "isExpand":Z
    iget v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    cmpl-float v4, v3, v4

    if-nez v4, :cond_2

    .line 1759
    const/4 v4, -0x1

    iput v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mScrollYOverride:I

    .line 1760
    if-eqz p3, :cond_0

    .line 1761
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    .line 1805
    :cond_0
    :goto_1
    return-void

    .line 1756
    .end local v2    # "isExpand":Z
    .end local v3    # "target":F
    :cond_1
    iget v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    int-to-float v3, v4

    goto :goto_0

    .line 1765
    .restart local v2    # "isExpand":Z
    .restart local v3    # "target":F
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isBelowFalsingThreshold()Z

    move-result v1

    .line 1766
    .local v1, "belowFalsingThreshold":Z
    if-eqz v1, :cond_3

    .line 1767
    const/4 p1, 0x0

    .line 1769
    :cond_3
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mScrollView:Lcom/android/systemui/statusbar/phone/ObservableScrollView;

    invoke-virtual {v4, v7}, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->setBlockFlinging(Z)V

    .line 1770
    const/4 v4, 0x2

    new-array v4, v4, [F

    const/4 v5, 0x0

    iget v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    aput v6, v4, v5

    aput v3, v4, v7

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 1771
    .local v0, "animator":Landroid/animation/ValueAnimator;
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    iget v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    invoke-virtual {v4, v0, v5, v3, p1}, Lcom/android/systemui/statusbar/FlingAnimationUtils;->apply(Landroid/animation/Animator;FFF)V

    .line 1772
    if-eqz v1, :cond_4

    .line 1773
    const-wide/16 v4, 0x15e

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1775
    :cond_4
    new-instance v4, Lcom/android/systemui/statusbar/phone/NotificationPanelView$10;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$10;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1782
    new-instance v4, Lcom/android/systemui/statusbar/phone/NotificationPanelView$11;

    invoke-direct {v4, p0, p3, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$11;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Ljava/lang/Runnable;Z)V

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1802
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 1803
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionAnimator:Landroid/animation/ValueAnimator;

    .line 1804
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsAnimatorExpand:Z

    goto :goto_1
.end method

.method private static getBackgroundAlpha(Landroid/view/View;)I
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 2624
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    instance-of v1, v1, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v1, :cond_0

    .line 2625
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/ColorDrawable;

    .line 2626
    .local v0, "drawable":Landroid/graphics/drawable/ColorDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v1

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    .line 2628
    .end local v0    # "drawable":Landroid/graphics/drawable/ColorDrawable;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getCurrentVelocity()F
    .locals 2

    .prologue
    .line 1708
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 1709
    const/4 v0, 0x0

    .line 1712
    :goto_0
    return v0

    .line 1711
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 1712
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    goto :goto_0
.end method

.method private getFalsingThreshold()I
    .locals 2

    .prologue
    .line 1183
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isScreenOnComingFromTouch()Z

    move-result v1

    if-eqz v1, :cond_0

    const/high16 v0, 0x3fc00000    # 1.5f

    .line 1184
    .local v0, "factor":F
    :goto_0
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFalsingThreshold:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    return v1

    .line 1183
    .end local v0    # "factor":F
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method private getHeaderExpansionFraction()F
    .locals 1

    .prologue
    .line 1581
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    if-nez v0, :cond_0

    .line 1582
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getQsExpansionFraction()F

    move-result v0

    .line 1584
    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method private getHeaderTranslation()F
    .locals 4

    .prologue
    const v0, 0x40033333    # 2.05f

    const/4 v1, 0x0

    .line 2011
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getBarState()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getBarState()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    :cond_0
    move v0, v1

    .line 2029
    :goto_0
    return v0

    .line 2015
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getNotGoneChildCount()I

    move-result v2

    if-nez v2, :cond_4

    .line 2016
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mExpandedHeight:F

    div-float/2addr v2, v0

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_2

    move v0, v1

    .line 2017
    goto :goto_0

    .line 2024
    :cond_2
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mExpandedHeight:F

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSingleLine:Z

    if-nez v2, :cond_3

    const/high16 v0, 0x3f800000    # 1.0f

    :cond_3
    div-float v0, v1, v0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    goto :goto_0

    .line 2029
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getTranslationY()F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSingleLine:Z

    if-eqz v2, :cond_5

    const v0, 0x3fcccccd    # 1.6f

    :cond_5
    div-float v0, v1, v0

    goto :goto_0
.end method

.method private getKeyguardOrLockScreenString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1567
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1568
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0d0259

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1570
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0d0257

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getNotificationsTopY()F
    .locals 1

    .prologue
    .line 2063
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getNotGoneChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 2064
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getExpandedHeight()F

    move-result v0

    .line 2066
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getNotificationsTopY()F

    move-result v0

    goto :goto_0
.end method

.method private getQSDetailviewHeight(I)I
    .locals 3
    .param p1, "type"    # I

    .prologue
    .line 2827
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c03af

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 2828
    .local v0, "height":I
    packed-switch p1, :pswitch_data_0

    .line 2839
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0370

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 2841
    return v0

    .line 2830
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c03b0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 2831
    goto :goto_0

    .line 2833
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c03b1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 2834
    goto :goto_0

    .line 2836
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c03b2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0

    .line 2828
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getQsExpansionFraction()F
    .locals 4

    .prologue
    .line 975
    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getTempQsMaxExpansion()I

    move-result v2

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method private getScrollViewScrollY()I
    .locals 2

    .prologue
    .line 1939
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mScrollYOverride:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1940
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mScrollYOverride:I

    .line 1942
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mScrollView:Lcom/android/systemui/statusbar/phone/ObservableScrollView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->getScrollY()I

    move-result v0

    goto :goto_0
.end method

.method private getTempQsMaxExpansion()I
    .locals 3

    .prologue
    .line 1907
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    .line 1908
    .local v0, "qsTempMaxExpansion":I
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mScrollYOverride:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 1909
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mScrollYOverride:I

    sub-int/2addr v0, v1

    .line 1911
    :cond_0
    return v0
.end method

.method private handleQsDown(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1088
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    const/high16 v2, -0x40800000    # -1.0f

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->shouldQuickSettingsIntercept(FFF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1090
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsTracking:Z

    .line 1091
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onQsExpansionStarted()V

    .line 1092
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialHeightOnTouch:F

    .line 1093
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchY:F

    .line 1094
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchX:F

    .line 1097
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsExpanding:Z

    if-eqz v0, :cond_0

    .line 1098
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onExpandingFinished()V

    .line 1101
    :cond_0
    return-void
.end method

.method private initVelocityTracker()V
    .locals 1

    .prologue
    .line 1701
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 1702
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 1704
    :cond_0
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1705
    return-void
.end method

.method private static interpolate(FFF)F
    .locals 2
    .param p0, "t"    # F
    .param p1, "start"    # F
    .param p2, "end"    # F

    .prologue
    .line 2564
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p0

    mul-float/2addr v0, p1

    mul-float v1, p0, p2

    add-float/2addr v0, v1

    return v0
.end method

.method private isBelowFalsingThreshold()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 971
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsTouchAboveFalsingThreshold:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isCurrentHomeActivity(Landroid/content/ComponentName;)Z
    .locals 5
    .param p1, "component"    # Landroid/content/ComponentName;

    .prologue
    const/4 v2, 0x0

    .line 2772
    const/4 v0, 0x0

    .line 2773
    .local v0, "homeInfo":Landroid/content/pm/ActivityInfo;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 2774
    .local v1, "pm":Landroid/content/pm/PackageManager;
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHomeIntent:Landroid/content/Intent;

    invoke-virtual {v3, v1, v2}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 2776
    if-eqz v0, :cond_0

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method private isHome()Z
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 2749
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "activity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 2750
    .local v0, "am":Landroid/app/ActivityManager;
    const/4 v5, 0x1

    const/4 v6, 0x2

    sget-object v7, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v7}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    invoke-virtual {v0, v5, v6, v7}, Landroid/app/ActivityManager;->getRecentTasksForUser(III)Ljava/util/List;

    move-result-object v3

    .line 2753
    .local v3, "recentTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 2754
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 2755
    .local v2, "recentInfo":Landroid/app/ActivityManager$RecentTaskInfo;
    const/4 v1, 0x0

    .line 2756
    .local v1, "componentName":Landroid/content/ComponentName;
    iget-object v5, v2, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    if-eqz v5, :cond_2

    .line 2757
    iget-object v1, v2, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    .line 2762
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 2763
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isCurrentHomeActivity(Landroid/content/ComponentName;)Z

    move-result v4

    .line 2767
    .end local v1    # "componentName":Landroid/content/ComponentName;
    .end local v2    # "recentInfo":Landroid/app/ActivityManager$RecentTaskInfo;
    :cond_1
    return v4

    .line 2758
    .restart local v1    # "componentName":Landroid/content/ComponentName;
    .restart local v2    # "recentInfo":Landroid/app/ActivityManager$RecentTaskInfo;
    :cond_2
    iget-object v5, v2, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    if-eqz v5, :cond_0

    .line 2759
    iget-object v5, v2, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    goto :goto_0
.end method

.method private isInBouncerFrame(FF)Z
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 915
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBouncerContainer:Landroid/view/View;

    const v3, 0x7f0e0086

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 917
    .local v0, "bouncer":Landroid/view/View;
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 918
    .local v1, "bouncerRect":Landroid/graphics/Rect;
    invoke-virtual {v0, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 920
    iget v2, v1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_0

    iget v2, v1, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    cmpg-float v2, p1, v2

    if-gtz v2, :cond_0

    iget v2, v1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    cmpl-float v2, p2, v2

    if-ltz v2, :cond_0

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    cmpg-float v2, p2, v2

    if-gtz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isInQsArea(FF)Z
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 1081
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mScrollView:Lcom/android/systemui/statusbar/phone/ObservableScrollView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->getLeft()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mScrollView:Lcom/android/systemui/statusbar/phone/ObservableScrollView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->getRight()I

    move-result v0

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getBottomMostNotificationBottom()F

    move-result v0

    cmpg-float v0, p2, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isInSettings()Z
    .locals 1

    .prologue
    .line 1876
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    return v0
.end method

.method private onQsExpansionStarted()V
    .locals 1

    .prologue
    .line 1229
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onQsExpansionStarted(I)V

    .line 1230
    return-void
.end method

.method private onQsExpansionStarted(I)V
    .locals 4
    .param p1, "overscrollAmount"    # I

    .prologue
    const/4 v3, 0x0

    .line 1233
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->cancelAnimation()V

    .line 1236
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mScrollView:Lcom/android/systemui/statusbar/phone/ObservableScrollView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->getScrollY()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    int-to-float v2, p1

    sub-float v0, v1, v2

    .line 1237
    .local v0, "height":F
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mScrollView:Lcom/android/systemui/statusbar/phone/ObservableScrollView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->getScrollY()I

    move-result v1

    if-eqz v1, :cond_0

    .line 1238
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mScrollView:Lcom/android/systemui/statusbar/phone/ObservableScrollView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->getScrollY()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mScrollYOverride:I

    .line 1240
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mScrollView:Lcom/android/systemui/statusbar/phone/ObservableScrollView;

    invoke-virtual {v1, v3, v3}, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->scrollTo(II)V

    .line 1241
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsExpansion(F)V

    .line 1242
    return-void
.end method

.method private onQsTouch(Landroid/view/MotionEvent;)V
    .locals 12
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v11, -0x1

    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 1120
    iget v10, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTrackingPointer:I

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v5

    .line 1121
    .local v5, "pointerIndex":I
    if-gez v5, :cond_0

    .line 1122
    const/4 v5, 0x0

    .line 1123
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v10

    iput v10, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTrackingPointer:I

    .line 1125
    :cond_0
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    .line 1126
    .local v8, "y":F
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    .line 1128
    .local v7, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v10

    packed-switch v10, :pswitch_data_0

    .line 1180
    :cond_1
    :goto_0
    :pswitch_0
    return-void

    .line 1130
    :pswitch_1
    iput-boolean v9, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsTracking:Z

    .line 1131
    iput v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchY:F

    .line 1132
    iput v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchX:F

    .line 1133
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onQsExpansionStarted()V

    .line 1134
    iget v9, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    iput v9, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialHeightOnTouch:F

    .line 1135
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->initVelocityTracker()V

    .line 1136
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->trackMovement(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 1140
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v10

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    .line 1141
    .local v6, "upPointer":I
    iget v10, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTrackingPointer:I

    if-ne v10, v6, :cond_1

    .line 1143
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v10

    if-eq v10, v6, :cond_2

    .line 1144
    .local v2, "newIndex":I
    :goto_1
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    .line 1145
    .local v4, "newY":F
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 1146
    .local v3, "newX":F
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v9

    iput v9, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTrackingPointer:I

    .line 1147
    iget v9, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    iput v9, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialHeightOnTouch:F

    .line 1148
    iput v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchY:F

    .line 1149
    iput v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchX:F

    goto :goto_0

    .end local v2    # "newIndex":I
    .end local v3    # "newX":F
    .end local v4    # "newY":F
    :cond_2
    move v2, v9

    .line 1143
    goto :goto_1

    .line 1154
    .end local v6    # "upPointer":I
    :pswitch_3
    iget v10, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchY:F

    sub-float v1, v8, v10

    .line 1155
    .local v1, "h":F
    iget v10, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialHeightOnTouch:F

    add-float/2addr v10, v1

    invoke-direct {p0, v10}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsExpansion(F)V

    .line 1156
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getFalsingThreshold()I

    move-result v10

    int-to-float v10, v10

    cmpl-float v10, v1, v10

    if-ltz v10, :cond_3

    .line 1157
    iput-boolean v9, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsTouchAboveFalsingThreshold:Z

    .line 1159
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->trackMovement(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 1164
    .end local v1    # "h":F
    :pswitch_4
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsTracking:Z

    .line 1165
    iput v11, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTrackingPointer:I

    .line 1166
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->trackMovement(Landroid/view/MotionEvent;)V

    .line 1167
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getQsExpansionFraction()F

    move-result v0

    .line 1168
    .local v0, "fraction":F
    const/4 v9, 0x0

    cmpl-float v9, v0, v9

    if-nez v9, :cond_4

    iget v9, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchY:F

    cmpl-float v9, v8, v9

    if-ltz v9, :cond_6

    :cond_4
    const/high16 v9, 0x3f800000    # 1.0f

    cmpl-float v9, v0, v9

    if-nez v9, :cond_5

    iget v9, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchY:F

    cmpg-float v9, v8, v9

    if-gtz v9, :cond_6

    .line 1170
    :cond_5
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->flingQsWithCurrentVelocity()V

    .line 1174
    :goto_2
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v9, :cond_1

    .line 1175
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9}, Landroid/view/VelocityTracker;->recycle()V

    .line 1176
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto/16 :goto_0

    .line 1172
    :cond_6
    iput v11, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mScrollYOverride:I

    goto :goto_2

    .line 1128
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private positionClockAndNotifications()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 511
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isAddOrRemoveAnimationPending()Z

    move-result v0

    .line 513
    .local v0, "animate":Z
    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    .line 514
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getCollapsedHeight()I

    move-result v1

    .line 515
    .local v1, "bottom":I
    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    if-nez v3, :cond_0

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPeekHeight:I

    add-int/2addr v3, v1

    iget v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationTopPadding:I

    add-int v2, v3, v4

    .line 518
    .local v2, "stackScrollerPadding":I
    :goto_0
    iput v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTopPaddingAdjustment:I

    .line 546
    .end local v1    # "bottom":I
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setIntrinsicPadding(I)V

    .line 547
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->requestScrollerTopPaddingUpdate(Z)V

    .line 548
    return-void

    .line 515
    .end local v2    # "stackScrollerPadding":I
    .restart local v1    # "bottom":I
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->getHeight()I

    move-result v3

    iget v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationTopPadding:I

    add-int v2, v3, v4

    goto :goto_0

    .line 538
    .end local v1    # "bottom":I
    :cond_1
    const/16 v3, 0x64

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->startClockAnimation(I)V

    .line 539
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->useBigClockWithNoti()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 540
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mSecClockHolder:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/lit8 v3, v3, 0x64

    add-int/lit8 v2, v3, 0x2d

    .line 544
    .restart local v2    # "stackScrollerPadding":I
    :goto_2
    iput v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTopPaddingAdjustment:I

    goto :goto_1

    .line 542
    .end local v2    # "stackScrollerPadding":I
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/lit8 v2, v3, 0x64

    .restart local v2    # "stackScrollerPadding":I
    goto :goto_2
.end method

.method private requestScrollerTopPaddingUpdate(Z)V
    .locals 5
    .param p1, "animate"    # Z

    .prologue
    const/4 v1, 0x0

    .line 1688
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->calculateQsTopPadding()F

    move-result v3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mScrollView:Lcom/android/systemui/statusbar/phone/ObservableScrollView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->getScrollY()I

    move-result v4

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAnimateNextTopPaddingChange:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v3, v4, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateTopPadding(FIZ)V

    .line 1691
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAnimateNextTopPaddingChange:Z

    .line 1692
    return-void

    :cond_1
    move v0, v1

    .line 1688
    goto :goto_0
.end method

.method private resetDownStates(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 937
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_0

    .line 938
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mOnlyAffordanceInThisMotion:Z

    .line 939
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFullyExpanded:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsTouchAboveFalsingThreshold:Z

    .line 941
    :cond_0
    return-void
.end method

.method private resizeQsPanelHeight(F)V
    .locals 3
    .param p1, "height"    # F

    .prologue
    .line 1648
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1649
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    float-to-int v1, p1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1650
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsContainer:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1651
    float-to-int v1, p1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPeekHeight:I

    if-gt v1, v2, :cond_0

    .line 1652
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsFirstExpanded:Z

    .line 1656
    :goto_0
    return-void

    .line 1654
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsFirstExpanded:Z

    goto :goto_0
.end method

.method private static setBackgroundColorAlpha(Landroid/view/View;IIZ)V
    .locals 9
    .param p0, "target"    # Landroid/view/View;
    .param p1, "rgb"    # I
    .param p2, "targetAlpha"    # I
    .param p3, "animate"    # Z

    .prologue
    const v8, 0x7f0e0061

    .line 2589
    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getBackgroundAlpha(Landroid/view/View;)I

    move-result v2

    .line 2590
    .local v2, "currentAlpha":I
    if-ne v2, p2, :cond_0

    .line 2621
    :goto_0
    return-void

    .line 2593
    :cond_0
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v4

    .line 2594
    .local v4, "r":I
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v3

    .line 2595
    .local v3, "g":I
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    .line 2596
    .local v1, "b":I
    invoke-virtual {p0, v8}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v5

    .line 2597
    .local v5, "runningAnim":Ljava/lang/Object;
    instance-of v6, v5, Landroid/animation/ValueAnimator;

    if-eqz v6, :cond_1

    .line 2598
    check-cast v5, Landroid/animation/ValueAnimator;

    .end local v5    # "runningAnim":Ljava/lang/Object;
    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->cancel()V

    .line 2600
    :cond_1
    if-nez p3, :cond_2

    .line 2601
    invoke-static {p2, v4, v3, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    invoke-virtual {p0, v6}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 2604
    :cond_2
    const/4 v6, 0x2

    new-array v6, v6, [I

    const/4 v7, 0x0

    aput v2, v6, v7

    const/4 v7, 0x1

    aput p2, v6, v7

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 2605
    .local v0, "anim":Landroid/animation/ValueAnimator;
    new-instance v6, Lcom/android/systemui/statusbar/phone/NotificationPanelView$15;

    invoke-direct {v6, p0, v4, v3, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$15;-><init>(Landroid/view/View;III)V

    invoke-virtual {v0, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2612
    const-wide/16 v6, 0xdc

    invoke-virtual {v0, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2613
    new-instance v6, Lcom/android/systemui/statusbar/phone/NotificationPanelView$16;

    invoke-direct {v6, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$16;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v6}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2619
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 2620
    invoke-virtual {p0, v8, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private setKeyguardStatusViewVisibility(IZZ)V
    .locals 8
    .param p1, "statusBarState"    # I
    .param p2, "keyguardFadingAway"    # Z
    .param p3, "goingToFullShade"    # Z

    .prologue
    const-wide/16 v6, 0x0

    const/4 v5, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1436
    if-nez p2, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    if-ne v0, v2, :cond_0

    if-ne p1, v2, :cond_1

    :cond_0
    if-eqz p3, :cond_3

    .line 1438
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1439
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusViewAnimating:Z

    .line 1440
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xa0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAnimateKeyguardStatusViewInvisibleEndRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 1446
    if-eqz p2, :cond_2

    .line 1447
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getKeyguardFadingAwayDelay()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getKeyguardFadingAwayDuration()J

    move-result-wide v2

    const-wide/16 v4, 0x2

    div-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1475
    :cond_2
    :goto_0
    return-void

    .line 1452
    :cond_3
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    if-ne p1, v2, :cond_4

    .line 1454
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1455
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1456
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusViewAnimating:Z

    .line 1457
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setAlpha(F)V

    .line 1458
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x140

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->ALPHA_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAnimateKeyguardStatusViewVisibleEndRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    .line 1464
    :cond_4
    if-ne p1, v2, :cond_5

    .line 1465
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1466
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusViewAnimating:Z

    .line 1467
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1468
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 1470
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1471
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusViewAnimating:Z

    .line 1472
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1473
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0
.end method

.method private setListening(Z)V
    .locals 1
    .param p1, "listening"    # Z

    .prologue
    .line 2097
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->setListening(Z)V

    .line 2098
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->setListening(Z)V

    .line 2099
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSPanel;->setListening(Z)V

    .line 2100
    return-void
.end method

.method private setMarginOfBrightnessController(F)V
    .locals 5
    .param p1, "newHeight"    # F

    .prologue
    const/4 v4, 0x0

    .line 1659
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBrightnessView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1660
    .local v0, "marginParams":Landroid/view/ViewGroup$MarginLayoutParams;
    float-to-int v2, p1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBrightnessView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    sub-int v1, v2, v3

    .line 1661
    .local v1, "topMargin":I
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFixedHeight:I

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBrightnessView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQConnectView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    if-le v1, v2, :cond_0

    .line 1662
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFixedHeight:I

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBrightnessView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQConnectView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    sub-int v1, v2, v3

    .line 1664
    :cond_0
    invoke-virtual {v0, v4, v1, v4, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 1665
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBrightnessView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->bringToFront()V

    .line 1666
    return-void
.end method

.method private setMarginOfQuickConnectLayout()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1669
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQConnectView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1670
    .local v0, "marginParams":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFixedHeight:I

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQConnectView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    sub-int v1, v2, v3

    .line 1671
    .local v1, "topMargin":I
    invoke-virtual {v0, v4, v1, v4, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 1672
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBrightnessView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->bringToFront()V

    .line 1673
    return-void
.end method

.method private setQsExpanded(Z)V
    .locals 3
    .param p1, "expanded"    # Z

    .prologue
    .line 1245
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-eq v1, p1, :cond_1

    const/4 v0, 0x1

    .line 1246
    .local v0, "changed":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 1247
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    .line 1248
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateQsState()V

    .line 1249
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->requestPanelHeightUpdate()V

    .line 1250
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setInterceptDelegateEnabled(Z)V

    .line 1251
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setQsExpanded(Z)V

    .line 1252
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsDetailviewMode:Z

    if-eqz v1, :cond_0

    .line 1254
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQSEditDivider:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1276
    :cond_0
    return-void

    .line 1245
    .end local v0    # "changed":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setQsExpansion(F)V
    .locals 6
    .param p1, "height"    # F

    .prologue
    const v5, 0x7f0d0258

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1509
    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    int-to-float v3, v3

    invoke-static {p1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iget v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    int-to-float v4, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 1514
    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    int-to-float v3, v3

    cmpl-float v3, p1, v3

    if-nez v3, :cond_5

    move v0, v1

    .line 1515
    .local v0, "newExpanded":Z
    :goto_0
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFullyExpanded:Z

    if-eq v3, v0, :cond_0

    .line 1516
    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    int-to-float v3, v3

    cmpl-float v3, p1, v3

    if-nez v3, :cond_6

    move v3, v1

    :goto_1
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFullyExpanded:Z

    .line 1517
    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    if-ne v3, v1, :cond_0

    .line 1518
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateOverFlowView()V

    .line 1522
    :cond_0
    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    int-to-float v3, v3

    cmpl-float v3, p1, v3

    if-lez v3, :cond_7

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-nez v3, :cond_7

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStackScrollerOverscrolling:Z

    if-nez v3, :cond_7

    .line 1523
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsExpanded(Z)V

    .line 1531
    :cond_1
    :goto_2
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    .line 1533
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsTranslation(F)V

    .line 1534
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->requestScrollerTopPaddingUpdate(Z)V

    .line 1535
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateNotificationScrim(F)V

    .line 1536
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    if-eqz v2, :cond_2

    .line 1537
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateHeaderKeyguard()V

    .line 1539
    :cond_2
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStackScrollerOverscrolling:Z

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsScrimEnabled:Z

    if-eqz v2, :cond_3

    .line 1541
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsNavbarScrim:Landroid/view/View;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getQsExpansionFraction()F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 1546
    :cond_3
    const/4 v2, 0x0

    cmpl-float v2, p1, v2

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFullyExpanded:Z

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastAnnouncementWasQuickSettings:Z

    if-nez v2, :cond_4

    .line 1551
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    if-nez v2, :cond_8

    .line 1552
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsFullyOpened:Z

    if-eqz v2, :cond_4

    .line 1553
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 1555
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastAnnouncementWasQuickSettings:Z

    .line 1564
    :cond_4
    :goto_3
    return-void

    .end local v0    # "newExpanded":Z
    :cond_5
    move v0, v2

    .line 1514
    goto :goto_0

    .restart local v0    # "newExpanded":Z
    :cond_6
    move v3, v2

    .line 1516
    goto :goto_1

    .line 1524
    :cond_7
    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    int-to-float v3, v3

    cmpg-float v3, p1, v3

    if-gtz v3, :cond_1

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-eqz v3, :cond_1

    .line 1525
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsExpanded(Z)V

    .line 1526
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastAnnouncementWasQuickSettings:Z

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTracking:Z

    if-nez v3, :cond_1

    .line 1527
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getKeyguardOrLockScreenString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 1528
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastAnnouncementWasQuickSettings:Z

    goto :goto_2

    .line 1558
    :cond_8
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 1560
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastAnnouncementWasQuickSettings:Z

    goto :goto_3
.end method

.method private setQsTranslation(F)V
    .locals 5
    .param p1, "height"    # F

    .prologue
    const/4 v4, 0x0

    .line 1589
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeaderAnimatingIn:Z

    if-nez v1, :cond_4

    .line 1595
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    sub-float v1, p1, v1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getHeaderTranslation()F

    move-result v2

    add-float v0, v1, v2

    .line 1596
    .local v0, "Y":F
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSingleLine:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v1, v0, v1

    if-gtz v1, :cond_1

    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    int-to-float v1, v1

    cmpl-float v1, p1, v1

    if-nez v1, :cond_2

    .line 1598
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getHeight()I

    move-result v1

    int-to-float v0, v1

    .line 1600
    :cond_2
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    if-nez v1, :cond_3

    .line 1628
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsContainer:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setY(F)V

    .line 1632
    .end local v0    # "Y":F
    :cond_4
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    if-eqz v1, :cond_5

    .line 1633
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getQsExpansionFraction()F

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getHeight()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    invoke-static {v2, v3, v4}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->interpolate(FFF)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->setY(F)V

    .line 1645
    :goto_0
    return-void

    .line 1638
    :cond_5
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    if-eqz v1, :cond_6

    .line 1642
    :cond_6
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    invoke-virtual {v1, v4}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->setY(F)V

    goto :goto_0
.end method

.method private shouldPanelIntercept(FF)Z
    .locals 5
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2687
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionEnabled:Z

    if-nez v4, :cond_1

    .line 2696
    :cond_0
    :goto_0
    return v3

    .line 2690
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    .line 2691
    .local v0, "header":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v4, p1, v4

    if-ltz v4, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v4

    int-to-float v4, v4

    cmpg-float v4, p1, v4

    if-gtz v4, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v4, p2, v4

    if-ltz v4, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v4

    int-to-float v4, v4

    cmpg-float v4, p2, v4

    if-gtz v4, :cond_3

    move v1, v2

    .line 2693
    .local v1, "onHeader":Z
    :goto_1
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-eqz v4, :cond_4

    .line 2694
    if-nez v1, :cond_2

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isInQsArea(FF)Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_2
    move v3, v2

    goto :goto_0

    .end local v1    # "onHeader":Z
    :cond_3
    move v1, v3

    .line 2691
    goto :goto_1

    .restart local v1    # "onHeader":Z
    :cond_4
    move v3, v1

    .line 2696
    goto :goto_0
.end method

.method private shouldQuickSettingsIntercept(FFF)Z
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "yDiff"    # F

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1811
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionEnabled:Z

    if-nez v5, :cond_1

    .line 1826
    :cond_0
    :goto_0
    return v4

    .line 1814
    :cond_1
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    if-eqz v5, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    .line 1815
    .local v0, "header":Landroid/view/View;
    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v5

    int-to-float v5, v5

    cmpl-float v5, p1, v5

    if-ltz v5, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v5

    int-to-float v5, v5

    cmpg-float v5, p1, v5

    if-gtz v5, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v5

    int-to-float v5, v5

    cmpl-float v5, p2, v5

    if-ltz v5, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v5

    int-to-float v5, v5

    cmpg-float v5, p2, v5

    if-gtz v5, :cond_4

    move v1, v3

    .line 1818
    .local v1, "onHeader":Z
    :goto_2
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsContainer:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    int-to-float v5, v5

    cmpl-float v5, p1, v5

    if-ltz v5, :cond_5

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsContainer:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v5

    int-to-float v5, v5

    cmpg-float v5, p1, v5

    if-gtz v5, :cond_5

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsContainer:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    int-to-float v5, v5

    cmpl-float v5, p2, v5

    if-ltz v5, :cond_5

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsContainer:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    int-to-float v5, v5

    cmpg-float v5, p2, v5

    if-gtz v5, :cond_5

    move v2, v3

    .line 1821
    .local v2, "onQSContainer":Z
    :goto_3
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-eqz v5, :cond_6

    .line 1822
    if-nez v1, :cond_2

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mScrollView:Lcom/android/systemui/statusbar/phone/ObservableScrollView;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->isScrolledToBottom()Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x0

    cmpg-float v5, p3, v5

    if-gez v5, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isInQsArea(FF)Z

    move-result v5

    if-eqz v5, :cond_0

    :cond_2
    move v4, v3

    goto :goto_0

    .line 1814
    .end local v0    # "header":Landroid/view/View;
    .end local v1    # "onHeader":Z
    .end local v2    # "onQSContainer":Z
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    goto :goto_1

    .restart local v0    # "header":Landroid/view/View;
    :cond_4
    move v1, v4

    .line 1815
    goto :goto_2

    .restart local v1    # "onHeader":Z
    :cond_5
    move v2, v4

    .line 1818
    goto :goto_3

    .restart local v2    # "onQSContainer":Z
    :cond_6
    move v4, v1

    .line 1826
    goto :goto_0
.end method

.method private shouldWidgetViewIntercept(FF)Z
    .locals 5
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 2667
    const/4 v2, 0x0

    .line 2668
    .local v2, "onWidgetContainer":Z
    const v4, 0x7f0e034a

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;

    .line 2669
    .local v0, "container":Lcom/android/keyguard/sec/WallpaperWidgetContainer;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/KeyguardEffectViewController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->isRichLockWallpaper()Z

    move-result v1

    .line 2671
    .local v1, "isRichLockWallpaper":Z
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 2672
    const v4, 0x7f0e034b

    invoke-virtual {v0, v4}, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 2673
    .local v3, "widgetItems":Landroid/view/View;
    if-eqz v3, :cond_0

    .line 2674
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v4, p1, v4

    if-ltz v4, :cond_2

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v4

    int-to-float v4, v4

    cmpg-float v4, p1, v4

    if-gtz v4, :cond_2

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v4, p2, v4

    if-ltz v4, :cond_2

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v4

    int-to-float v4, v4

    cmpg-float v4, p2, v4

    if-gtz v4, :cond_2

    const/4 v2, 0x1

    .line 2677
    :cond_0
    :goto_0
    if-nez v2, :cond_1

    .line 2678
    invoke-virtual {v0}, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->onOutsideTouch()V

    .line 2682
    .end local v3    # "widgetItems":Landroid/view/View;
    :cond_1
    return v2

    .line 2674
    .restart local v3    # "widgetItems":Landroid/view/View;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private startClockAnimation(I)V
    .locals 2
    .param p1, "y"    # I

    .prologue
    .line 551
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClockAnimationTarget:I

    if-ne v0, p1, :cond_0

    .line 578
    :goto_0
    return-void

    .line 554
    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClockAnimationTarget:I

    .line 555
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/phone/NotificationPanelView$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$2;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_0
.end method

.method private startHighlightIconAnimation(Lcom/android/systemui/statusbar/KeyguardAffordanceView;)V
    .locals 8
    .param p1, "icon"    # Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    .prologue
    .line 2395
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x1

    const-wide/16 v4, 0xc8

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    new-instance v7, Lcom/android/systemui/statusbar/phone/NotificationPanelView$14;

    invoke-direct {v7, p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$14;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Lcom/android/systemui/statusbar/KeyguardAffordanceView;)V

    move-object v1, p1

    invoke-virtual/range {v1 .. v7}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setImageAlpha(FZJLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    .line 2404
    return-void
.end method

.method private trackMovement(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1695
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1696
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastTouchX:F

    .line 1697
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastTouchY:F

    .line 1698
    return-void
.end method

.method private updateClock(FF)V
    .locals 1
    .param p1, "alpha"    # F
    .param p2, "scale"    # F

    .prologue
    .line 581
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusViewAnimating:Z

    if-nez v0, :cond_0

    .line 582
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 584
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setScaleX(F)V

    .line 585
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setScaleY(F)V

    .line 586
    return-void
.end method

.method private updateHeader()V
    .locals 2

    .prologue
    .line 1994
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getBarState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getBarState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1996
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateHeaderKeyguard()V

    .line 2001
    :goto_0
    return-void

    .line 1998
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateHeaderShade()V

    goto :goto_0
.end method

.method private updateHeaderShade()V
    .locals 2

    .prologue
    .line 2004
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeaderAnimatingIn:Z

    if-nez v0, :cond_0

    .line 2005
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getHeaderTranslation()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->setTranslationY(F)V

    .line 2007
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsTranslation(F)V

    .line 2008
    return-void
.end method

.method private updateKeyguardStatusBarVisibility()V
    .locals 2

    .prologue
    .line 2568
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mIsStatusBarHidden:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDozing:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->setVisibility(I)V

    .line 2569
    return-void

    .line 2568
    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method private updateNotificationScrim(F)V
    .locals 4
    .param p1, "height"    # F

    .prologue
    .line 1575
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationScrimWaitDistance:I

    add-int v1, v2, v3

    .line 1576
    .local v1, "startDistance":I
    int-to-float v2, v1

    sub-float v2, p1, v2

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    sub-int/2addr v3, v1

    int-to-float v3, v3

    div-float v0, v2, v3

    .line 1577
    .local v0, "progress":F
    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 1578
    return-void
.end method

.method private updateNotificationTranslucency()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x2

    const/high16 v6, 0x3f800000    # 1.0f

    .line 1946
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getNotificationsTopY()F

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getItemHeight()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getBottomStackPeekSize()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getCollapseSecondCardPadding()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    div-float v0, v1, v2

    .line 1949
    .local v0, "alpha":F
    const/4 v1, 0x0

    invoke-static {v0, v6}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 1950
    float-to-double v2, v0

    const-wide/high16 v4, 0x3fe8000000000000L    # 0.75

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v0, v2

    .line 1951
    cmpl-float v1, v0, v6

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getLayerType()I

    move-result v1

    if-eq v1, v7, :cond_1

    .line 1952
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v1, v7, v8}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1957
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setAlpha(F)V

    .line 1958
    return-void

    .line 1953
    :cond_1
    cmpl-float v1, v0, v6

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getLayerType()I

    move-result v1

    if-ne v1, v7, :cond_0

    .line 1955
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v8}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method private updateQsState()V
    .locals 6

    .prologue
    const/4 v4, 0x4

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1478
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStackScrollerOverscrolling:Z

    if-eqz v3, :cond_6

    :cond_0
    move v0, v2

    .line 1479
    .local v0, "expandVisually":Z
    :goto_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    if-nez v3, :cond_7

    :cond_1
    move v3, v1

    :goto_1
    invoke-virtual {v5, v3}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->setVisibility(I)V

    .line 1481
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    if-eq v3, v2, :cond_8

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionFromOverscroll:Z

    if-eqz v3, :cond_8

    :cond_2
    move v3, v2

    :goto_2
    invoke-virtual {v5, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setScrollingEnabled(Z)V

    .line 1485
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsDetailviewMode:Z

    if-eqz v3, :cond_9

    .line 1486
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v3, v4}, Lcom/android/systemui/qs/QSPanel;->setVisibility(I)V

    .line 1490
    :goto_3
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsContainer:Landroid/view/View;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    if-eqz v3, :cond_a

    if-nez v0, :cond_a

    move v3, v4

    :goto_4
    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1492
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mEmergencyModeActivated:Z

    if-nez v3, :cond_3

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isSecure()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1494
    :cond_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsContainer:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1497
    :cond_4
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mScrollView:Lcom/android/systemui/statusbar/phone/ObservableScrollView;

    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->setTouchEnabled(Z)V

    .line 1499
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsNavbarScrim:Landroid/view/View;

    iget v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    if-nez v5, :cond_b

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-eqz v5, :cond_b

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStackScrollerOverscrolling:Z

    if-nez v5, :cond_b

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsScrimEnabled:Z

    if-eqz v5, :cond_b

    :goto_5
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1503
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardUserSwitcher:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStackScrollerOverscrolling:Z

    if-nez v1, :cond_5

    .line 1504
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardUserSwitcher:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->hide(Z)V

    .line 1506
    :cond_5
    return-void

    .end local v0    # "expandVisually":Z
    :cond_6
    move v0, v1

    .line 1478
    goto :goto_0

    .restart local v0    # "expandVisually":Z
    :cond_7
    move v3, v4

    .line 1479
    goto :goto_1

    :cond_8
    move v3, v1

    .line 1481
    goto :goto_2

    .line 1488
    :cond_9
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v3, v1}, Lcom/android/systemui/qs/QSPanel;->setVisibility(I)V

    goto :goto_3

    :cond_a
    move v3, v1

    .line 1490
    goto :goto_4

    :cond_b
    move v1, v4

    .line 1499
    goto :goto_5
.end method

.method private updateTextResources()V
    .locals 0

    .prologue
    .line 448
    return-void
.end method

.method private updateUnlockIcon()V
    .locals 0

    .prologue
    .line 1988
    return-void
.end method


# virtual methods
.method public animateCloseQs()V
    .locals 3

    .prologue
    .line 630
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_1

    .line 631
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsAnimatorExpand:Z

    if-nez v1, :cond_0

    .line 639
    :goto_0
    return-void

    .line 634
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    .line 635
    .local v0, "height":F
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 636
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsExpansion(F)V

    .line 638
    .end local v0    # "height":F
    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->flingSettings(FZ)V

    goto :goto_0
.end method

.method public animateToFullShade(J)V
    .locals 1
    .param p1, "delay"    # J

    .prologue
    .line 589
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAnimateNextTopPaddingChange:Z

    .line 590
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->goToFullShade(J)V

    .line 591
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->requestLayout()V

    .line 592
    return-void
.end method

.method public closeQs()V
    .locals 1

    .prologue
    .line 617
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->cancelAnimation()V

    .line 618
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    int-to-float v0, v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsExpansion(F)V

    .line 627
    return-void
.end method

.method public closeQsDetail()V
    .locals 1

    .prologue
    .line 2532
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSPanel;->closeDetail()V

    .line 2533
    return-void
.end method

.method public disableClockAndClear()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 2846
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 2847
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClearAll:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 2848
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTapTimeoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x4b0

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2849
    return-void
.end method

.method public disableTouchEvent(Z)V
    .locals 0
    .param p1, "disableTouchEvent"    # Z

    .prologue
    .line 2742
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDisableTouchEvent:Z

    .line 2743
    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 668
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_1

    .line 669
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getKeyguardOrLockScreenString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 670
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastAnnouncementWasQuickSettings:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastAnnouncementWasQuickSettings:Z

    .line 671
    :cond_0
    const/4 v0, 0x1

    .line 674
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v10, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 793
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 794
    .local v0, "action":I
    const/4 v2, 0x0

    .line 796
    .local v2, "handled":Z
    iget v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mExpandedHeight:F

    cmpg-float v5, v5, v10

    if-gtz v5, :cond_0

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getBarState()I

    move-result v5

    iget v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDispatchInitState:I

    if-eq v5, v8, :cond_0

    move v3, v2

    .line 911
    .end local v2    # "handled":Z
    .local v3, "handled":I
    :goto_0
    return v3

    .line 803
    .end local v3    # "handled":I
    .restart local v2    # "handled":Z
    :cond_0
    if-nez v0, :cond_1

    .line 804
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getBarState()I

    move-result v5

    iput v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDispatchInitState:I

    .line 805
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isBouncerShowing()Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDispatchInitBouncerState:Z

    .line 808
    :cond_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getBarState()I

    move-result v5

    if-ne v5, v6, :cond_6

    .line 810
    if-nez v0, :cond_2

    .line 811
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iput v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDispatchInitX:F

    .line 812
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iput v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDispatchInitY:F

    .line 813
    sget-object v5, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mDispatchInitX="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDispatchInitX:F

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", mDispatchInitY="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDispatchInitY:F

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    :cond_2
    const/4 v5, 0x2

    if-ne v0, v5, :cond_9

    iget v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDispatchInitX:F

    iget v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDispatchInitY:F

    invoke-direct {p0, v5, v8}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findNotificationView(FF)Lcom/android/systemui/statusbar/ExpandableView;

    move-result-object v5

    if-eqz v5, :cond_9

    iget v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDispatchInitY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    sub-float/2addr v5, v8

    cmpl-float v5, v5, v10

    if-lez v5, :cond_9

    .line 820
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDisableUpdateNotificationStack:Z

    .line 828
    :goto_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isBouncerShowing()Z

    move-result v5

    if-eqz v5, :cond_5

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDispatchInitBouncerState:Z

    if-eqz v5, :cond_5

    .line 829
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v7, v7, v7, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 831
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBouncerContainer:Landroid/view/View;

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v5, v8}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 832
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTempRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    int-to-float v8, v8

    invoke-virtual {p1, v5, v8}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 833
    sget-object v5, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isInBouncerFrame = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDispatchInitX:F

    iget v10, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDispatchInitY:F

    invoke-direct {p0, v9, v10}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isInBouncerFrame(FF)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    iget v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDispatchInitX:F

    iget v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDispatchInitY:F

    invoke-direct {p0, v5, v8}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isInBouncerFrame(FF)Z

    move-result v4

    .line 835
    .local v4, "isInBouncer":Z
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    neg-int v5, v5

    int-to-float v5, v5

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTempRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    neg-int v8, v8

    int-to-float v8, v8

    invoke-virtual {p1, v5, v8}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 837
    if-nez v4, :cond_5

    .line 838
    if-eq v0, v6, :cond_3

    const/4 v5, 0x3

    if-ne v0, v5, :cond_4

    .line 839
    :cond_3
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->hideBouncerFrame()Z

    .line 841
    :cond_4
    const/4 v2, 0x1

    .line 846
    .end local v4    # "isInBouncer":Z
    :cond_5
    if-nez v2, :cond_a

    iget v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDispatchInitX:F

    iget v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDispatchInitY:F

    invoke-direct {p0, v5, v8}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findNotificationView(FF)Lcom/android/systemui/statusbar/ExpandableView;

    move-result-object v5

    if-nez v5, :cond_a

    iget v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDispatchInitX:F

    iget v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDispatchInitY:F

    invoke-direct {p0, v5, v8}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->shouldWidgetViewIntercept(FF)Z

    move-result v5

    if-eqz v5, :cond_a

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsTracking:Z

    if-nez v5, :cond_a

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-nez v5, :cond_a

    iget v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDispatchInitX:F

    iget v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDispatchInitY:F

    invoke-virtual {p0, v5, v8}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getClearAllview(FF)Z

    move-result v5

    if-nez v5, :cond_a

    .line 856
    const v5, 0x7f0e034a

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/sec/WallpaperWidgetContainer;

    .line 857
    .local v1, "container":Lcom/android/keyguard/sec/WallpaperWidgetContainer;
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v7, v7, v7, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 858
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v1, v5}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 859
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTempRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    int-to-float v8, v8

    invoke-virtual {p1, v5, v8}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 860
    invoke-virtual {v1, p1}, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 861
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    neg-int v5, v5

    int-to-float v5, v5

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTempRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    neg-int v8, v8

    int-to-float v8, v8

    invoke-virtual {p1, v5, v8}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 862
    const/4 v2, 0x1

    .line 902
    .end local v1    # "container":Lcom/android/keyguard/sec/WallpaperWidgetContainer;
    :cond_6
    :goto_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    invoke-virtual {p0, v5, v8}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getClearAllview(FF)Z

    .line 903
    if-ne v0, v6, :cond_7

    .line 904
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClearAll:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setPressed(Z)V

    .line 907
    :cond_7
    if-nez v2, :cond_8

    .line 908
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    :cond_8
    move v3, v2

    .line 911
    .restart local v3    # "handled":I
    goto/16 :goto_0

    .line 822
    .end local v3    # "handled":I
    :cond_9
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDisableUpdateNotificationStack:Z

    goto/16 :goto_1

    .line 863
    :cond_a
    if-nez v2, :cond_c

    iget v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDispatchInitX:F

    iget v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDispatchInitY:F

    invoke-direct {p0, v5, v8}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findNotificationView(FF)Lcom/android/systemui/statusbar/ExpandableView;

    move-result-object v5

    if-nez v5, :cond_c

    iget v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDispatchInitX:F

    iget v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDispatchInitY:F

    invoke-direct {p0, v5, v8}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->shouldPanelIntercept(FF)Z

    move-result v5

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->isMethodInsecure()Z

    move-result v5

    if-nez v5, :cond_c

    :cond_b
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsTracking:Z

    if-nez v5, :cond_c

    iget v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDispatchInitX:F

    iget v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDispatchInitY:F

    invoke-virtual {p0, v5, v8}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getClearAllview(FF)Z

    move-result v5

    if-nez v5, :cond_c

    .line 878
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v7, v7, v7, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 879
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBouncerContainer:Landroid/view/View;

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v5, v8}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 880
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTempRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    int-to-float v8, v8

    invoke-virtual {p1, v5, v8}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 881
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBouncerContainer:Landroid/view/View;

    invoke-virtual {v5, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 882
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    neg-int v5, v5

    int-to-float v5, v5

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTempRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    neg-int v8, v8

    int-to-float v8, v8

    invoke-virtual {p1, v5, v8}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 883
    const/4 v2, 0x1

    goto :goto_2

    .line 886
    :cond_c
    if-nez v0, :cond_6

    .line 887
    sget-object v8, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "!handled - "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-nez v2, :cond_d

    move v5, v6

    :goto_3
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    sget-object v8, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "findNotificationView(mDispatchInitX, mDispatchInitY) == null - "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDispatchInitX:F

    iget v10, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDispatchInitY:F

    invoke-direct {p0, v5, v10}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findNotificationView(FF)Lcom/android/systemui/statusbar/ExpandableView;

    move-result-object v5

    if-nez v5, :cond_e

    move v5, v6

    :goto_4
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    sget-object v5, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "shouldPanelIntercept(mDispatchInitX, mDispatchInitY) - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDispatchInitX:F

    iget v10, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDispatchInitY:F

    invoke-direct {p0, v9, v10}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->shouldPanelIntercept(FF)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    sget-object v5, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "UnlockMethodCache.getInstance(mContext).isMethodInsecure() - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->isMethodInsecure()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    sget-object v8, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "!mQsTracking - "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsTracking:Z

    if-nez v5, :cond_f

    move v5, v6

    :goto_5
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    sget-object v8, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "!getClearAllview(mDispatchInitX, mDispatchInitY) - "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDispatchInitX:F

    iget v10, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDispatchInitY:F

    invoke-virtual {p0, v5, v10}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getClearAllview(FF)Z

    move-result v5

    if-nez v5, :cond_10

    move v5, v6

    :goto_6
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_d
    move v5, v7

    .line 887
    goto/16 :goto_3

    :cond_e
    move v5, v7

    .line 888
    goto/16 :goto_4

    :cond_f
    move v5, v7

    .line 894
    goto :goto_5

    :cond_10
    move v5, v7

    .line 895
    goto :goto_6
.end method

.method public enableClockAndClear()V
    .locals 2

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 2860
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 2861
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClearAll:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 2862
    return-void
.end method

.method public fling(FZ)V
    .locals 4
    .param p1, "vel"    # F
    .param p2, "expand"    # Z

    .prologue
    .line 652
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getBarState()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFullyExpanded:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->isMethodInsecure()Z

    move-result v1

    if-nez v1, :cond_1

    .line 664
    :cond_0
    :goto_0
    return-void

    .line 658
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

    check-cast v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getGestureRecorder()Lcom/android/systemui/statusbar/GestureRecorder;

    move-result-object v0

    .line 659
    .local v0, "gr":Lcom/android/systemui/statusbar/GestureRecorder;
    if-eqz v0, :cond_2

    .line 660
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fling "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-lez v1, :cond_3

    const-string v1, "open"

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifications,v="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/GestureRecorder;->tag(Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/PanelView;->fling(FZ)V

    goto :goto_0

    .line 660
    :cond_3
    const-string v1, "closed"

    goto :goto_1
.end method

.method protected flingExpands(FF)Z
    .locals 2
    .param p1, "vel"    # F
    .param p2, "vectorVel"    # F

    .prologue
    .line 1105
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/PanelView;->flingExpands(FF)Z

    move-result v0

    .line 1108
    .local v0, "expands":Z
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    .line 1109
    const/4 v0, 0x1

    .line 1111
    :cond_0
    return v0
.end method

.method public flingSettings(FZI)V
    .locals 3
    .param p1, "vel"    # F
    .param p2, "expand"    # Z
    .param p3, "height"    # I

    .prologue
    const/4 v1, 0x0

    .line 1735
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->isMethodInsecure()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mIsStatusBarHidden:Z

    if-eqz v0, :cond_1

    .line 1736
    :cond_0
    iput v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    .line 1740
    :goto_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_1
    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    .line 1741
    if-eqz p2, :cond_5

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    int-to-float v0, v0

    :goto_2
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsExpansion(F)V

    .line 1743
    sget-object v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "flingSettings mQsMin:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mQsMax:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mQsEx:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mQsPeek:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPeekHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1748
    return-void

    .line 1738
    :cond_1
    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getExpandedHeight()I

    move-result v0

    add-int/2addr v0, p3

    :goto_3
    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getCollapsedHeight()I

    move-result v0

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPeekHeight:I

    add-int/2addr v0, v2

    goto :goto_3

    .line 1740
    :cond_3
    if-eqz p2, :cond_4

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getCollapsedHeight()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPeekHeight:I

    add-int/2addr v0, v1

    goto :goto_1

    .line 1741
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getCollapsedHeight()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPeekHeight:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    goto :goto_2
.end method

.method public flingTopOverscroll(FZ)V
    .locals 2
    .param p1, "velocity"    # F
    .param p2, "open"    # Z

    .prologue
    const/4 v0, 0x0

    .line 1215
    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastOverscroll:F

    .line 1216
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsExpansion(F)V

    .line 1217
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionEnabled:Z

    if-nez v1, :cond_0

    if-eqz p2, :cond_0

    move p1, v0

    .end local p1    # "velocity":F
    :cond_0
    if-eqz p2, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionEnabled:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    new-instance v1, Lcom/android/systemui/statusbar/phone/NotificationPanelView$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$3;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->flingSettings(FZLjava/lang/Runnable;)V

    .line 1226
    return-void

    .line 1217
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected fullyExpandedClearAllVisible()Z
    .locals 1

    .prologue
    .line 2492
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isDismissViewNotGone()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isScrolledToBottom()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTwoFingerQsExpand:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAffordanceFalsingFactor()F
    .locals 1

    .prologue
    .line 2464
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isScreenOnComingFromTouch()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x3fc00000    # 1.5f

    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method protected getCannedFlingDurationFactor()F
    .locals 1

    .prologue
    .line 2483
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-eqz v0, :cond_0

    .line 2484
    const v0, 0x3f333333    # 0.7f

    .line 2486
    :goto_0
    return v0

    :cond_0
    const v0, 0x3f19999a    # 0.6f

    goto :goto_0
.end method

.method public getCenterIcon()Lcom/android/systemui/statusbar/KeyguardAffordanceView;
    .locals 1

    .prologue
    .line 2431
    const/4 v0, 0x0

    return-object v0
.end method

.method public getClearAll()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 2240
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClearAll:Landroid/widget/TextView;

    return-object v0
.end method

.method protected getClearAllHeight()I
    .locals 1

    .prologue
    .line 2503
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getDismissViewHeight()I

    move-result v0

    return v0
.end method

.method public getClearAllVisibility()Z
    .locals 1

    .prologue
    .line 2158
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClearAll:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getClearAllview(FF)Z
    .locals 9
    .param p1, "mInitialTouchX"    # F
    .param p2, "mInitialTouchY"    # F

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 2221
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClearAll:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getVisibility()I

    move-result v6

    if-nez v6, :cond_1

    .line 2222
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClearAll:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getTop()I

    move-result v6

    int-to-float v3, v6

    .line 2223
    .local v3, "top":F
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClearAll:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getBottom()I

    move-result v6

    int-to-float v0, v6

    .line 2224
    .local v0, "bottom":F
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClearAll:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getRight()I

    move-result v6

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c02e1

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    sub-int v2, v6, v7

    .line 2225
    .local v2, "right":I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c0345

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    sub-int v1, v2, v6

    .line 2227
    .local v1, "left":I
    cmpl-float v6, p2, v3

    if-ltz v6, :cond_0

    cmpg-float v6, p2, v0

    if-gtz v6, :cond_0

    int-to-float v6, v1

    cmpl-float v6, p1, v6

    if-ltz v6, :cond_0

    int-to-float v6, v2

    cmpg-float v6, p1, v6

    if-gtz v6, :cond_0

    .line 2228
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClearAll:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setPressed(Z)V

    .line 2235
    .end local v0    # "bottom":F
    .end local v1    # "left":I
    .end local v2    # "right":I
    .end local v3    # "top":F
    :goto_0
    return v4

    .line 2231
    .restart local v0    # "bottom":F
    .restart local v1    # "left":I
    .restart local v2    # "right":I
    .restart local v3    # "top":F
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClearAll:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setPressed(Z)V

    move v4, v5

    .line 2232
    goto :goto_0

    .end local v0    # "bottom":F
    .end local v1    # "left":I
    .end local v2    # "right":I
    .end local v3    # "top":F
    :cond_1
    move v4, v5

    .line 2235
    goto :goto_0
.end method

.method public getHeaderViewCollapsedHeight()I
    .locals 1

    .prologue
    .line 2874
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getCollapsedHeight()I

    move-result v0

    return v0
.end method

.method public getLeftIcon()Lcom/android/systemui/statusbar/KeyguardAffordanceView;
    .locals 1

    .prologue
    .line 2422
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLeftPreview()Landroid/view/View;
    .locals 1

    .prologue
    .line 2447
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getMaxPanelHeight()I
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 1844
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarMinHeight:I

    .line 1845
    .local v1, "min":I
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getBarState()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_0

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getNotGoneChildCount()I

    move-result v4

    if-nez v4, :cond_0

    .line 1847
    iget v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    int-to-float v4, v4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getOverExpansionAmount()F

    move-result v5

    add-float/2addr v4, v5

    const v5, 0x40033333    # 2.05f

    mul-float/2addr v4, v5

    float-to-int v2, v4

    .line 1849
    .local v2, "minHeight":I
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1852
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-boolean v4, v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSingleLine:Z

    if-nez v4, :cond_0

    .line 1853
    iget v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    sub-int/2addr v1, v4

    .line 1859
    .end local v2    # "minHeight":I
    :cond_0
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTwoFingerQsExpand:Z

    if-nez v4, :cond_1

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-nez v4, :cond_1

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsExpanding:Z

    if-eqz v4, :cond_3

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpandedWhenExpandingStarted:Z

    if-eqz v4, :cond_3

    .line 1861
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->calculatePanelHeightQsExpanded()I

    move-result v4

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->calculatePanelHeightShade()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-boolean v5, v5, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSingleLine:Z

    if-nez v5, :cond_2

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    :cond_2
    sub-int v0, v4, v3

    .line 1871
    .local v0, "maxHeight":I
    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1872
    return v0

    .line 1866
    .end local v0    # "maxHeight":I
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->calculatePanelHeightShade()I

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-boolean v5, v5, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSingleLine:Z

    if-nez v5, :cond_4

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    :cond_4
    sub-int v0, v4, v3

    .restart local v0    # "maxHeight":I
    goto :goto_0
.end method

.method protected getOverExpansionAmount()F
    .locals 2

    .prologue
    .line 1962
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getCurrentOverScrollAmount(Z)F

    move-result v0

    return v0
.end method

.method protected getOverExpansionPixels()F
    .locals 2

    .prologue
    .line 1967
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getCurrentOverScrolledPixels(Z)F

    move-result v0

    return v0
.end method

.method public getPageWidth()F
    .locals 1

    .prologue
    .line 2408
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method protected getPeekHeight()F
    .locals 1

    .prologue
    .line 2477
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getCollapsedHeight()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public getRightIcon()Lcom/android/systemui/statusbar/KeyguardAffordanceView;
    .locals 1

    .prologue
    .line 2438
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRightPreview()Landroid/view/View;
    .locals 1

    .prologue
    .line 2456
    const/4 v0, 0x0

    return-object v0
.end method

.method protected hasConflictingGestures()Z
    .locals 1

    .prologue
    .line 1116
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getBarState()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public instantExpand()V
    .locals 1

    .prologue
    .line 2104
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->instantExpand()V

    .line 2105
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setListening(Z)V

    .line 2106
    return-void
.end method

.method protected isBelowLastNotificationOrClear(F)Z
    .locals 2
    .param p1, "y"    # F

    .prologue
    .line 2869
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getLastChildYTranslation()F

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClearAll:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isClearAllVisible()Z
    .locals 1

    .prologue
    .line 2498
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isDismissViewVisible()Z

    move-result v0

    return v0
.end method

.method public isDozing()Z
    .locals 1

    .prologue
    .line 2584
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDozing:Z

    return v0
.end method

.method public isLaunchTransitionFinished()Z
    .locals 1

    .prologue
    .line 2541
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsLaunchTransitionFinished:Z

    return v0
.end method

.method public isLaunchTransitionRunning()Z
    .locals 1

    .prologue
    .line 2545
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsLaunchTransitionRunning:Z

    return v0
.end method

.method public isQsDetailShowing()Z
    .locals 1

    .prologue
    .line 2528
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSPanel;->isShowingDetail()Z

    move-result v0

    return v0
.end method

.method public isQsExpanded()Z
    .locals 1

    .prologue
    .line 2524
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    return v0
.end method

.method protected isScrolledToBottom()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1832
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getBarState()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 1838
    :goto_0
    return v0

    .line 1835
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isInSettings()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1836
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isScrolledToBottom()Z

    move-result v0

    goto :goto_0

    .line 1838
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mScrollView:Lcom/android/systemui/statusbar/phone/ObservableScrollView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->isScrolledToBottom()Z

    move-result v0

    goto :goto_0
.end method

.method protected isTrackingBlocked()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2508
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    if-ne v1, v0, :cond_1

    .line 2509
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDisableUpdateNotificationStack:Z

    .line 2511
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mConflictingQsExpansionGesture:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected loadDimens()V
    .locals 3

    .prologue
    .line 347
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->loadDimens()V

    .line 348
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c02eb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationTopPadding:I

    .line 350
    new-instance v0, Lcom/android/systemui/statusbar/FlingAnimationUtils;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x3ecccccd    # 0.4f

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/FlingAnimationUtils;-><init>(Landroid/content/Context;F)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    .line 351
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050010

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarMinHeight:I

    .line 356
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c034e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPeekHeight:I

    .line 357
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mEmergencyModeActivated:Z

    if-eqz v0, :cond_0

    .line 358
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPeekHeight:I

    .line 360
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c02c8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFixedHeight:I

    .line 374
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c02f7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationsHeaderCollideDistance:I

    .line 376
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c02f8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mUnlockMoveDistance:I

    .line 379
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c02f9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationScrimWaitDistance:I

    .line 381
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c02e9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFalsingThreshold:I

    .line 383
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c034c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBrightnessHeight:I

    .line 384
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0370

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQConnectHeight:I

    .line 385
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c03cb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mExtraMargin:I

    .line 386
    return-void
.end method

.method public notifyVisibleChildrenChanged()V
    .locals 2

    .prologue
    .line 2516
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getNotGoneChildCount()I

    move-result v0

    if-eqz v0, :cond_0

    .line 2521
    :goto_0
    return-void

    .line 2519
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mReserveNotificationSpace:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public onAnimationToSideEnded()V
    .locals 1

    .prologue
    .line 2353
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsLaunchTransitionRunning:Z

    .line 2354
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsLaunchTransitionFinished:Z

    .line 2355
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLaunchAnimationEndRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 2356
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLaunchAnimationEndRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 2357
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLaunchAnimationEndRunnable:Ljava/lang/Runnable;

    .line 2359
    :cond_0
    return-void
.end method

.method public onAnimationToSideStarted(Z)V
    .locals 3
    .param p1, "rightPage"    # Z

    .prologue
    const/4 v1, 0x1

    .line 2339
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getLayoutDirection()I

    move-result v2

    if-ne v2, v1, :cond_0

    move v0, p1

    .line 2340
    .local v0, "start":Z
    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsLaunchTransitionRunning:Z

    .line 2341
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLaunchAnimationEndRunnable:Ljava/lang/Runnable;

    .line 2348
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBlockTouches:Z

    .line 2349
    return-void

    .line 2339
    .end local v0    # "start":Z
    :cond_0
    if-nez p1, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAttachedToWindow()V
    .locals 2

    .prologue
    .line 496
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 497
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2335
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 2292
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2295
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateCarrierLabelView()V

    .line 2296
    sget-object v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->TAG:Ljava/lang/String;

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2300
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsDetailviewPanelType:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getQSDetailviewHeight(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsDetailviewPanelHeight:I

    .line 2301
    sget-object v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mQsDetailviewPanelHeight : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsDetailviewPanelHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2321
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 503
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 504
    return-void
.end method

.method protected onEdgeClicked(Z)V
    .locals 0
    .param p1, "right"    # Z

    .prologue
    .line 2383
    return-void
.end method

.method protected onExpandingFinished()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2082
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->onExpandingFinished()V

    .line 2083
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->onExpansionStopped()V

    .line 2084
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsExpanding:Z

    .line 2085
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mScrollYOverride:I

    .line 2086
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mExpandedHeight:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    .line 2087
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setListening(Z)V

    .line 2091
    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTwoFingerQsExpand:Z

    .line 2092
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTwoFingerQsExpandPossible:Z

    .line 2093
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isFullyCollapsed()Z

    move-result v2

    if-nez v2, :cond_1

    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updatePanelState(Z)V

    .line 2094
    return-void

    .line 2089
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setListening(Z)V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 2093
    goto :goto_1
.end method

.method protected onExpandingStarted()V
    .locals 1

    .prologue
    .line 2071
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->onExpandingStarted()V

    .line 2072
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->onExpansionStarted()V

    .line 2073
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsExpanding:Z

    .line 2074
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpandedWhenExpandingStarted:Z

    .line 2075
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-eqz v0, :cond_0

    .line 2076
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onQsExpansionStarted()V

    .line 2078
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 283
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->onFinishInflate()V

    .line 284
    const v0, 0x7f0e035c

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    .line 285
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 286
    const v0, 0x7f0e0115

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    .line 287
    const v0, 0x7f0e011c

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Landroid/view/View;

    .line 288
    const v0, 0x7f0e01d9

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsContainer:Landroid/view/View;

    .line 290
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    const v1, 0x7f0e01f0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQSEditDivider:Landroid/view/View;

    .line 291
    const v0, 0x7f0e01da

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/HorizontalScrollView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsHsView:Landroid/widget/HorizontalScrollView;

    .line 292
    const v0, 0x7f0e01db

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSPanel;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    .line 293
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsContainer:Landroid/view/View;

    const v1, 0x7f0e01cb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBrightnessView:Landroid/view/View;

    .line 294
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsContainer:Landroid/view/View;

    const v1, 0x7f0e01ec

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQConnectView:Landroid/view/View;

    .line 295
    const v0, 0x7f0e00f6

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClockView:Landroid/widget/TextView;

    .line 296
    const v0, 0x7f0e0197

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/ObservableScrollView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mScrollView:Lcom/android/systemui/statusbar/phone/ObservableScrollView;

    .line 297
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mScrollView:Lcom/android/systemui/statusbar/phone/ObservableScrollView;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->setListener(Lcom/android/systemui/statusbar/phone/ObservableScrollView$Listener;)V

    .line 298
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mScrollView:Lcom/android/systemui/statusbar/phone/ObservableScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->setFocusable(Z)V

    .line 299
    const v0, 0x7f0e0198

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mReserveNotificationSpace:Landroid/view/View;

    .line 300
    const v0, 0x7f0e0196

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationContainerParent:Landroid/view/View;

    .line 301
    const v0, 0x7f0e0199

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    .line 303
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOnHeightChangedListener(Lcom/android/systemui/statusbar/ExpandableView$OnHeightChangedListener;)V

    .line 304
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOverscrollTopChangedListener(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnOverscrollTopChangedListener;)V

    .line 305
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mScrollView:Lcom/android/systemui/statusbar/phone/ObservableScrollView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setScrollView(Landroid/view/ViewGroup;)V

    .line 306
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsHsView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setHsView(Landroid/widget/HorizontalScrollView;)V

    .line 307
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setNotificationPanelView(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    .line 308
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x10c000d

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 310
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x10c000f

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFastOutLinearInterpolator:Landroid/view/animation/Interpolator;

    .line 314
    const v0, 0x7f0e019a

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsNavbarScrim:Landroid/view/View;

    .line 322
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsContainer:Landroid/view/View;

    new-instance v1, Lcom/android/systemui/statusbar/phone/NotificationPanelView$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$1;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 336
    const v0, 0x7f0e0194

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBouncerContainer:Landroid/view/View;

    .line 337
    const v0, 0x7f0e0343

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mSecKeyguardStatusView:Landroid/view/View;

    .line 338
    const v0, 0x7f0e0337

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mSecClockHolder:Landroid/view/View;

    .line 339
    const v0, 0x7f0e02e3

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mSecAdaptiveEventContainer:Landroid/view/View;

    .line 341
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/statusbar/Feature;->hasCocktailBar(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCocktailBarPresent:Z

    .line 342
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDisplay:Landroid/view/Display;

    .line 343
    return-void
.end method

.method public onHeightChanged(Lcom/android/systemui/statusbar/ExpandableView;)V
    .locals 1
    .param p1, "view"    # Lcom/android/systemui/statusbar/ExpandableView;

    .prologue
    .line 2272
    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-eqz v0, :cond_0

    .line 2276
    :goto_0
    return-void

    .line 2275
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->requestPanelHeightUpdate()V

    goto :goto_0
.end method

.method protected onHeightUpdated(F)V
    .locals 6
    .param p1, "expandedHeight"    # F

    .prologue
    .line 1881
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-nez v3, :cond_0

    .line 1882
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->positionClockAndNotifications()V

    .line 1884
    :cond_0
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTwoFingerQsExpand:Z

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsTracking:Z

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionAnimator:Landroid/animation/ValueAnimator;

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionFromOverscroll:Z

    if-nez v3, :cond_2

    .line 1886
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getIntrinsicPadding()I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getMinStackHeight()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getNotificationTopPadding()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v0, v3

    .line 1889
    .local v0, "panelHeightQsCollapsed":F
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->calculatePanelHeightQsExpanded()I

    move-result v3

    int-to-float v1, v3

    .line 1890
    .local v1, "panelHeightQsExpanded":F
    sub-float v3, p1, v0

    sub-float v4, v1, v0

    div-float v2, v3, v4

    .line 1893
    .local v2, "t":F
    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    int-to-float v3, v3

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getTempQsMaxExpansion()I

    move-result v4

    iget v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsExpansion(F)V

    .line 1896
    .end local v0    # "panelHeightQsCollapsed":F
    .end local v1    # "panelHeightQsExpanded":F
    .end local v2    # "t":F
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v3, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setStackHeight(F)V

    .line 1897
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateHeader()V

    .line 1898
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateUnlockIcon()V

    .line 1899
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateNotificationTranslucency()V

    .line 1900
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 679
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBlockTouches:Z

    if-eqz v8, :cond_1

    move v7, v6

    .line 782
    :cond_0
    :goto_0
    return v7

    .line 682
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->resetDownStates(Landroid/view/MotionEvent;)V

    .line 683
    iget v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTrackingPointer:I

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    .line 684
    .local v2, "pointerIndex":I
    if-gez v2, :cond_2

    .line 685
    const/4 v2, 0x0

    .line 686
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v8

    iput v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTrackingPointer:I

    .line 688
    :cond_2
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    .line 689
    .local v4, "x":F
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    .line 690
    .local v5, "y":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    .line 770
    :cond_3
    :goto_1
    :pswitch_0
    iget v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    if-nez v8, :cond_a

    .line 771
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    goto :goto_0

    .line 692
    :pswitch_1
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIntercepting:Z

    .line 693
    iput v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchY:F

    .line 694
    iput v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchX:F

    .line 695
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->initVelocityTracker()V

    .line 696
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->trackMovement(Landroid/view/MotionEvent;)V

    .line 697
    iget v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchX:F

    iget v9, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchY:F

    const/4 v10, 0x0

    invoke-direct {p0, v8, v9, v10}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->shouldQuickSettingsIntercept(FFF)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 698
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    invoke-interface {v8, v7}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 700
    :cond_4
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionAnimator:Landroid/animation/ValueAnimator;

    if-eqz v8, :cond_5

    .line 701
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onQsExpansionStarted()V

    .line 702
    iget v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    iput v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialHeightOnTouch:F

    .line 703
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsTracking:Z

    .line 704
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIntercepting:Z

    .line 705
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->removeLongPressCallback()V

    .line 710
    :goto_2
    iget v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchX:F

    iget v9, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchY:F

    invoke-virtual {p0, v8, v9}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getClearAllview(FF)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 711
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClearAllTouchDown:Z

    goto :goto_1

    .line 708
    :cond_5
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsTracking:Z

    goto :goto_2

    .line 713
    :cond_6
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClearAllTouchDown:Z

    goto :goto_1

    .line 717
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v8

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    .line 718
    .local v3, "upPointer":I
    iget v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTrackingPointer:I

    if-ne v8, v3, :cond_3

    .line 720
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v8

    if-eq v8, v3, :cond_7

    move v1, v6

    .line 721
    .local v1, "newIndex":I
    :goto_3
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v8

    iput v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTrackingPointer:I

    .line 722
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    iput v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchX:F

    .line 723
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    iput v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchY:F

    goto :goto_1

    .end local v1    # "newIndex":I
    :cond_7
    move v1, v7

    .line 720
    goto :goto_3

    .line 728
    .end local v3    # "upPointer":I
    :pswitch_3
    iget v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchY:F

    sub-float v0, v5, v8

    .line 729
    .local v0, "h":F
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->trackMovement(Landroid/view/MotionEvent;)V

    .line 730
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsTracking:Z

    if-eqz v8, :cond_8

    .line 735
    iget v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialHeightOnTouch:F

    add-float/2addr v8, v0

    invoke-direct {p0, v8}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsExpansion(F)V

    .line 736
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->trackMovement(Landroid/view/MotionEvent;)V

    .line 737
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIntercepting:Z

    goto/16 :goto_0

    .line 740
    :cond_8
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v8

    iget v9, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTouchSlop:I

    int-to-float v9, v9

    cmpl-float v8, v8, v9

    if-lez v8, :cond_3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v8

    iget v9, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchX:F

    sub-float v9, v4, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    cmpl-float v8, v8, v9

    if-lez v8, :cond_3

    iget v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchX:F

    iget v9, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchY:F

    invoke-direct {p0, v8, v9, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->shouldQuickSettingsIntercept(FFF)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 742
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onQsExpansionStarted()V

    .line 743
    iget v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    iput v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialHeightOnTouch:F

    .line 744
    iput v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchY:F

    .line 745
    iput v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchX:F

    .line 746
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsTracking:Z

    .line 747
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIntercepting:Z

    .line 748
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->removeLongPressCallback()V

    goto/16 :goto_0

    .line 755
    .end local v0    # "h":F
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->trackMovement(Landroid/view/MotionEvent;)V

    .line 756
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsTracking:Z

    if-eqz v8, :cond_9

    .line 757
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->flingQsWithCurrentVelocity()V

    .line 758
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsTracking:Z

    .line 760
    :cond_9
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIntercepting:Z

    .line 761
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClearAllTouchDown:Z

    if-eqz v8, :cond_3

    iget v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchX:F

    iget v9, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchY:F

    invoke-virtual {p0, v8, v9}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getClearAllview(FF)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 762
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClearAll:Landroid/widget/TextView;

    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setPressed(Z)V

    .line 763
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClearAll:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->performClick()Z

    .line 764
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClearAllTouchDown:Z

    goto/16 :goto_1

    .line 774
    :cond_a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v8

    if-nez v8, :cond_b

    .line 775
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getBarState()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_b

    .line 776
    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isBelowLastNotificationOrClear(F)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 777
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 782
    :cond_b
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-nez v8, :cond_c

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    if-nez v8, :cond_0

    :cond_c
    move v7, v6

    goto/16 :goto_0

    .line 690
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 3
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    const/4 v1, 0x0

    .line 452
    invoke-super/range {p0 .. p5}, Lcom/android/systemui/statusbar/phone/PanelView;->onLayout(ZIIII)V

    .line 455
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setPivotX(F)V

    .line 459
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Landroid/view/View;

    const v2, 0x420a1600

    invoke-virtual {v0, v2}, Landroid/view/View;->setPivotY(F)V

    .line 464
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    if-nez v0, :cond_0

    .line 465
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_0
    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    .line 466
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    if-nez v0, :cond_1

    .line 467
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    if-eqz v0, :cond_4

    move v0, v1

    :goto_1
    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    .line 477
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->positionClockAndNotifications()V

    .line 478
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-eqz v0, :cond_5

    .line 479
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFullyExpanded:Z

    if-eqz v0, :cond_2

    .line 480
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    .line 481
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->requestScrollerTopPaddingUpdate(Z)V

    .line 488
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getCollapsedHeight()I

    move-result v1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPeekHeight:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateIsSmallScreen(I)V

    .line 490
    return-void

    .line 465
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getCollapsedHeight()I

    move-result v0

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPeekHeight:I

    add-int/2addr v0, v2

    goto :goto_0

    .line 467
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getCollapsedHeight()I

    move-result v0

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPeekHeight:I

    add-int/2addr v0, v2

    goto :goto_1

    .line 484
    :cond_5
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastOverscroll:F

    add-float/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsExpansion(F)V

    .line 485
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getExpandedHeight()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setStackHeight(F)V

    .line 486
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateHeader()V

    goto :goto_2
.end method

.method protected onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 389
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCocktailBarPresent:Z

    if-eqz v2, :cond_1

    .line 390
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getBarState()I

    move-result v2

    if-eq v2, v5, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getBarState()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 391
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 412
    :cond_1
    :goto_0
    :pswitch_0
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/PanelView;->onMeasure(II)V

    .line 413
    return-void

    .line 394
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 395
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mExtraMargin:I

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    .line 396
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 397
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v2, v5}, Lcom/android/systemui/qs/QSPanel;->SetCocktailBarEnabled(Z)V

    goto :goto_0

    .line 401
    .end local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v2

    packed-switch v2, :pswitch_data_1

    :pswitch_2
    goto :goto_0

    .line 404
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 405
    .local v1, "lp_2":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    .line 406
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 407
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v2, v4}, Lcom/android/systemui/qs/QSPanel;->SetCocktailBarEnabled(Z)V

    goto :goto_0

    .line 391
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 401
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onOverscrollTopChanged(FZ)V
    .locals 5
    .param p1, "amount"    # F
    .param p2, "isRubberbanded"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 1201
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->cancelAnimation()V

    .line 1202
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionEnabled:Z

    if-nez v1, :cond_0

    .line 1203
    const/4 p1, 0x0

    .line 1205
    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_1

    move v0, p1

    .line 1206
    .local v0, "rounded":F
    :goto_0
    cmpl-float v1, v0, v4

    if-eqz v1, :cond_2

    if-eqz p2, :cond_2

    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStackScrollerOverscrolling:Z

    .line 1207
    cmpl-float v1, v0, v4

    if-eqz v1, :cond_3

    :goto_2
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionFromOverscroll:Z

    .line 1208
    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastOverscroll:F

    .line 1209
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateQsState()V

    .line 1210
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    int-to-float v1, v1

    add-float/2addr v1, v0

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsExpansion(F)V

    .line 1211
    return-void

    .end local v0    # "rounded":F
    :cond_1
    move v0, v4

    .line 1205
    goto :goto_0

    .restart local v0    # "rounded":F
    :cond_2
    move v1, v3

    .line 1206
    goto :goto_1

    :cond_3
    move v2, v3

    .line 1207
    goto :goto_2
.end method

.method public onOverscrolled(FFI)V
    .locals 1
    .param p1, "lastTouchX"    # F
    .param p2, "lastTouchY"    # F
    .param p3, "amount"    # I

    .prologue
    .line 1189
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIntercepting:Z

    if-eqz v0, :cond_0

    const/high16 v0, -0x40800000    # -1.0f

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->shouldQuickSettingsIntercept(FFF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1191
    invoke-direct {p0, p3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onQsExpansionStarted(I)V

    .line 1192
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialHeightOnTouch:F

    .line 1193
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastTouchY:F

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchY:F

    .line 1194
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastTouchX:F

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchX:F

    .line 1195
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsTracking:Z

    .line 1197
    :cond_0
    return-void
.end method

.method public onReset(Lcom/android/systemui/statusbar/ExpandableView;)V
    .locals 0
    .param p1, "view"    # Lcom/android/systemui/statusbar/ExpandableView;

    .prologue
    .line 2280
    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 0

    .prologue
    .line 2664
    return-void
.end method

.method public onScrollChanged()V
    .locals 1

    .prologue
    .line 2284
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-eqz v0, :cond_0

    .line 2285
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->requestScrollerTopPaddingUpdate(Z)V

    .line 2286
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->requestPanelHeightUpdate()V

    .line 2288
    :cond_0
    return-void
.end method

.method public onSwipingStarted()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 2415
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->requestDisallowInterceptTouchEvent(Z)V

    .line 2416
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mOnlyAffordanceInThisMotion:Z

    .line 2417
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 983
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->H_PROJECT:Z

    if-nez v3, :cond_0

    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->TPROJECT:Z

    if-eqz v3, :cond_4

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v3, v4, p1}, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->onTouchEvent(ILandroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 985
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isHome()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    if-eqz v3, :cond_3

    .line 986
    :cond_1
    const-string v2, "TAG"

    const-string v3, "The statusBar scroll is not work by multiwindow gesture."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1077
    :cond_2
    :goto_0
    return v1

    .line 989
    :cond_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;

    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->reset()V

    .line 994
    :cond_4
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBlockTouches:Z

    if-nez v3, :cond_5

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDisableTouchEvent:Z

    if-eqz v3, :cond_6

    .line 995
    :cond_5
    sget-object v1, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "T.E:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBlockTouches:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDisableTouchEvent:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 996
    goto :goto_0

    .line 999
    :cond_6
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->resetDownStates(Landroid/view/MotionEvent;)V

    .line 1006
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mOnlyAffordanceInThisMotion:Z

    if-nez v3, :cond_2

    .line 1009
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    if-nez v3, :cond_7

    .line 1010
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClearX:F

    .line 1011
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClearY:F

    .line 1012
    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClearX:F

    iget v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClearY:F

    invoke-virtual {p0, v3, v4}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getClearAllview(FF)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 1013
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClearAllTouchDown:Z

    .line 1018
    :cond_7
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    if-eq v3, v6, :cond_8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    if-ne v3, v1, :cond_9

    :cond_8
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClearAllTouchDown:Z

    if-eqz v3, :cond_9

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClearX:F

    iget v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClearY:F

    invoke-virtual {p0, v3, v4}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getClearAllview(FF)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1021
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClearAll:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->performClick()Z

    .line 1022
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClearAll:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setPressed(Z)V

    .line 1023
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClearAllTouchDown:Z

    .line 1026
    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    if-nez v3, :cond_a

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getExpandedFraction()F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v4

    if-nez v3, :cond_a

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getBarState()I

    move-result v3

    if-eq v3, v1, :cond_a

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-nez v3, :cond_a

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionEnabled:Z

    if-eqz v3, :cond_a

    .line 1031
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsTracking:Z

    .line 1032
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mConflictingQsExpansionGesture:Z

    .line 1033
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onQsExpansionStarted()V

    .line 1034
    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    iput v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialHeightOnTouch:F

    .line 1035
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchY:F

    .line 1036
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchX:F

    .line 1038
    :cond_a
    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mExpandedHeight:F

    cmpl-float v3, v3, v5

    if-eqz v3, :cond_b

    .line 1039
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->handleQsDown(Landroid/view/MotionEvent;)V

    .line 1041
    :cond_b
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTwoFingerQsExpand:Z

    if-nez v3, :cond_c

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsTracking:Z

    if-eqz v3, :cond_c

    .line 1042
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onQsTouch(Landroid/view/MotionEvent;)V

    .line 1043
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mConflictingQsExpansionGesture:Z

    if-eqz v3, :cond_2

    .line 1047
    :cond_c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    if-eq v3, v6, :cond_d

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    if-ne v3, v1, :cond_e

    .line 1049
    :cond_d
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mConflictingQsExpansionGesture:Z

    .line 1052
    :cond_e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    if-nez v2, :cond_f

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mExpandedHeight:F

    cmpl-float v2, v2, v5

    if-nez v2, :cond_f

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionEnabled:Z

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isEmergencyModeActivated()Z

    move-result v2

    if-nez v2, :cond_f

    .line 1054
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTwoFingerQsExpandPossible:Z

    .line 1057
    :cond_f
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;

    const-string v3, "accessibility"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 1059
    .local v0, "am":Landroid/view/accessibility/AccessibilityManager;
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTwoFingerQsExpandPossible:Z

    if-eqz v2, :cond_10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_10

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v2

    if-nez v2, :cond_10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarMinHeight:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_10

    .line 1063
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTwoFingerQsExpand:Z

    .line 1065
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->flipToSettings()V

    .line 1070
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->requestPanelHeightUpdate()V

    .line 1074
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setListening(Z)V

    .line 1076
    :cond_10
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto/16 :goto_0

    .line 1015
    .end local v0    # "am":Landroid/view/accessibility/AccessibilityManager;
    :cond_11
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClearAllTouchDown:Z

    goto/16 :goto_1
.end method

.method protected onTrackingStarted()V
    .locals 1

    .prologue
    .line 2128
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->onTrackingStarted()V

    .line 2136
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getBarState()I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-eqz v0, :cond_0

    .line 2138
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTwoFingerQsExpand:Z

    .line 2140
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updatePanelState(Z)V

    .line 2141
    return-void
.end method

.method protected onTrackingStopped(Z)V
    .locals 3
    .param p1, "expand"    # Z

    .prologue
    const/4 v2, 0x1

    .line 2245
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->onTrackingStopped(Z)V

    .line 2246
    if-eqz p1, :cond_0

    .line 2247
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOverScrolledPixels(FZZ)V

    .line 2265
    :cond_0
    return-void
.end method

.method public openQs()V
    .locals 1

    .prologue
    .line 642
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->cancelAnimation()V

    .line 643
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionEnabled:Z

    if-eqz v0, :cond_0

    .line 644
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    int-to-float v0, v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsExpansion(F)V

    .line 646
    :cond_0
    return-void
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 1
    .param p1, "disallowIntercept"    # Z

    .prologue
    .line 948
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mScrollView:Lcom/android/systemui/statusbar/phone/ObservableScrollView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->isHandlingTouchEvent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 952
    :goto_0
    return-void

    .line 951
    :cond_0
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0
.end method

.method public resetViews()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 605
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsLaunchTransitionFinished:Z

    .line 606
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBlockTouches:Z

    .line 607
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mUnlockIconActive:Z

    .line 610
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->closeQs()V

    .line 611
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->dismissPopups()V

    .line 612
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v3, v2, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOverScrollAmount(FZZZ)V

    .line 614
    return-void
.end method

.method public setBarState(IZZ)V
    .locals 6
    .param p1, "statusBarState"    # I
    .param p2, "keyguardFadingAway"    # Z
    .param p3, "goingToFullShade"    # Z

    .prologue
    const/4 v5, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1280
    if-eq p1, v2, :cond_0

    if-ne p1, v5, :cond_5

    :cond_0
    move v0, v2

    .line 1282
    .local v0, "keyguardShowing":Z
    :goto_0
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    if-nez v3, :cond_1

    if-eqz v0, :cond_1

    .line 1283
    iput v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    .line 1284
    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsTranslation(F)V

    .line 1285
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->setTranslationY(F)V

    .line 1287
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setKeyguardStatusViewVisibility(IZZ)V

    .line 1290
    if-eqz p3, :cond_6

    .line 1291
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->animateKeyguardStatusBarOut()V

    .line 1296
    :goto_1
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    .line 1297
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    .line 1298
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateQsState()V

    .line 1299
    if-eqz p3, :cond_2

    .line 1300
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->animateHeaderSlidingIn()V

    .line 1302
    :cond_2
    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    if-ne v3, v2, :cond_3

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastAnnouncementWasQuickSettings:Z

    if-nez v3, :cond_3

    .line 1303
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastAnnouncementforShade:Z

    .line 1305
    :cond_3
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    if-ne v1, v5, :cond_4

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastAnnouncementWasQuickSettings:Z

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastAnnouncementforShade:Z

    if-nez v1, :cond_4

    .line 1306
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getKeyguardOrLockScreenString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 1307
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastAnnouncementforShade:Z

    .line 1309
    :cond_4
    return-void

    .end local v0    # "keyguardShowing":Z
    :cond_5
    move v0, v1

    .line 1280
    goto :goto_0

    .line 1293
    .restart local v0    # "keyguardShowing":Z
    :cond_6
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->setAlpha(F)V

    .line 1294
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    if-eqz v0, :cond_7

    sget-boolean v3, Lcom/android/systemui/statusbar/BaseStatusBar;->mIsStatusBarHidden:Z

    if-nez v3, :cond_7

    move v3, v1

    :goto_2
    invoke-virtual {v4, v3}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->setVisibility(I)V

    goto :goto_1

    :cond_7
    const/4 v3, 0x4

    goto :goto_2
.end method

.method public setCarrierView(Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "carrierView"    # Landroid/widget/TextView;
    .param p2, "clearAll"    # Landroid/widget/TextView;

    .prologue
    .line 2144
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCarrierLabel:Landroid/widget/TextView;

    .line 2145
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClearAll:Landroid/widget/TextView;

    .line 2146
    return-void
.end method

.method public setDozing(Z)V
    .locals 3
    .param p1, "dozing"    # Z

    .prologue
    const/4 v2, 0x0

    const/high16 v1, -0x1000000

    .line 2572
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDozing:Z

    if-ne p1, v0, :cond_0

    .line 2580
    :goto_0
    return-void

    .line 2573
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDozing:Z

    .line 2574
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDozing:Z

    if-eqz v0, :cond_1

    .line 2575
    const/16 v0, 0xff

    invoke-static {p0, v1, v0, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setBackgroundColorAlpha(Landroid/view/View;IIZ)V

    .line 2579
    :goto_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateKeyguardStatusBarVisibility()V

    goto :goto_0

    .line 2577
    :cond_1
    const/4 v0, 0x1

    invoke-static {p0, v1, v2, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setBackgroundColorAlpha(Landroid/view/View;IIZ)V

    goto :goto_1
.end method

.method public setEmergencyMode(Z)V
    .locals 0
    .param p1, "isEm"    # Z

    .prologue
    .line 2735
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mEmergencyModeActivated:Z

    .line 2736
    return-void
.end method

.method public setEmptyDragAmount(F)V
    .locals 2
    .param p1, "amount"    # F

    .prologue
    .line 2553
    const v0, 0x3f4ccccd    # 0.8f

    .line 2554
    .local v0, "factor":F
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getNotGoneChildCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 2555
    const v0, 0x3ecccccd    # 0.4f

    .line 2559
    :cond_0
    :goto_0
    mul-float v1, p1, v0

    iput v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mEmptyDragAmount:F

    .line 2560
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->positionClockAndNotifications()V

    .line 2561
    return-void

    .line 2556
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->hasActiveNotifications()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2557
    const v0, 0x3ecccccd    # 0.4f

    goto :goto_0
.end method

.method public setKeyguardUserSwitcher(Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;)V
    .locals 0
    .param p1, "keyguardUserSwitcher"    # Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

    .prologue
    .line 2652
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardUserSwitcher:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

    .line 2653
    return-void
.end method

.method public setLaunchTransitionEndRunnable(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 2549
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLaunchAnimationEndRunnable:Ljava/lang/Runnable;

    .line 2550
    return-void
.end method

.method protected setOverExpansion(FZ)V
    .locals 4
    .param p1, "overExpansion"    # F
    .param p2, "isPixels"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 2110
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mConflictingQsExpansionGesture:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTwoFingerQsExpand:Z

    if-eqz v0, :cond_1

    .line 2124
    :cond_0
    :goto_0
    return-void

    .line 2113
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getBarState()I

    move-result v0

    if-eq v0, v2, :cond_0

    .line 2114
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOnHeightChangedListener(Lcom/android/systemui/statusbar/ExpandableView$OnHeightChangedListener;)V

    .line 2115
    if-eqz p2, :cond_2

    .line 2116
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, p1, v2, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOverScrolledPixels(FZZ)V

    .line 2122
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOnHeightChangedListener(Lcom/android/systemui/statusbar/ExpandableView$OnHeightChangedListener;)V

    goto :goto_0

    .line 2119
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, p1, v2, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOverScrollAmount(FZZ)V

    goto :goto_1
.end method

.method public setPeekHeight(I)V
    .locals 0
    .param p1, "peek"    # I

    .prologue
    .line 2731
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPeekHeight:I

    .line 2732
    return-void
.end method

.method public setQSDetailviewMode(ZI)V
    .locals 3
    .param p1, "enable"    # Z
    .param p2, "type"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 2806
    if-eqz p1, :cond_0

    .line 2807
    iput p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsDetailviewPanelType:I

    .line 2808
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getQSDetailviewHeight(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsDetailviewPanelHeight:I

    .line 2809
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPeekHeight:I

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPreviousPeekHeight:I

    .line 2810
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFixedHeight:I

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPreviousFixedHeight:I

    .line 2811
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsDetailviewPanelHeight:I

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPeekHeight:I

    .line 2812
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsDetailviewPanelHeight:I

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFixedHeight:I

    .line 2813
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsDetailviewPanelHeight:I

    invoke-virtual {p0, v2, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsExpandHeight(ZI)V

    .line 2814
    iput v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    .line 2815
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsDetailviewMode:Z

    .line 2823
    :goto_0
    return-void

    .line 2818
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPreviousPeekHeight:I

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPeekHeight:I

    .line 2819
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPreviousFixedHeight:I

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFixedHeight:I

    .line 2820
    iput v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    .line 2821
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsDetailviewMode:Z

    goto :goto_0
.end method

.method public setQsExpandHeight(ZI)V
    .locals 3
    .param p1, "expand"    # Z
    .param p2, "height"    # I

    .prologue
    const/4 v1, 0x0

    .line 1723
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isSecure()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getBarState()I

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mEmergencyModeActivated:Z

    if-eqz v0, :cond_1

    :cond_0
    sget-boolean v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mIsStatusBarHidden:Z

    if-eqz v0, :cond_2

    .line 1724
    :cond_1
    iput v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    .line 1728
    :goto_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    if-eqz v0, :cond_4

    move v0, v1

    :goto_1
    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    .line 1729
    sget-object v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setQsHeight mQsMin:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mQsMax:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mQsEx:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mQsPeek:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPeekHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1731
    return-void

    .line 1726
    :cond_2
    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getExpandedHeight()I

    move-result v0

    add-int/2addr v0, p2

    :goto_2
    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getCollapsedHeight()I

    move-result v0

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPeekHeight:I

    add-int/2addr v0, v2

    goto :goto_2

    .line 1728
    :cond_4
    if-eqz p1, :cond_5

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getCollapsedHeight()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPeekHeight:I

    add-int/2addr v0, v1

    goto :goto_1
.end method

.method public setQsExpansionEnabled(Z)V
    .locals 2
    .param p1, "qsExpansionEnabled"    # Z

    .prologue
    .line 595
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionEnabled:Z

    .line 599
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->setClickable(Z)V

    .line 601
    return-void
.end method

.method public setQsScrimEnabled(Z)V
    .locals 2
    .param p1, "qsScrimEnabled"    # Z

    .prologue
    .line 2644
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsScrimEnabled:Z

    if-eq v1, p1, :cond_1

    const/4 v0, 0x1

    .line 2645
    .local v0, "changed":Z
    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsScrimEnabled:Z

    .line 2646
    if-eqz v0, :cond_0

    .line 2647
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateQsState()V

    .line 2649
    :cond_0
    return-void

    .line 2644
    .end local v0    # "changed":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setStatusBar(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0
    .param p1, "bar"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 278
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .line 279
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .prologue
    .line 2537
    const/4 v0, 0x1

    return v0
.end method

.method protected startUnlockHintAnimation()V
    .locals 0

    .prologue
    .line 2387
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->startUnlockHintAnimation()V

    .line 2389
    return-void
.end method

.method public updateCarrierLabelView()V
    .locals 10

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 2162
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getBarState()I

    move-result v6

    if-ne v6, v0, :cond_0

    move v3, v0

    .line 2163
    .local v3, "isKeyGuard":Z
    :goto_0
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getBarState()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_1

    move v4, v0

    .line 2165
    .local v4, "isShadeLocked":Z
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCarrierLabel:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2166
    .local v5, "marginParams":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c02a7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 2168
    .local v2, "carrierLabelHeight":I
    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$12;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$12;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;IZZLandroid/view/ViewGroup$MarginLayoutParams;)V

    const-wide/16 v8, 0x46

    invoke-virtual {v6, v0, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2210
    return-void

    .end local v2    # "carrierLabelHeight":I
    .end local v3    # "isKeyGuard":Z
    .end local v4    # "isShadeLocked":Z
    .end local v5    # "marginParams":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_0
    move v3, v1

    .line 2162
    goto :goto_0

    .restart local v3    # "isKeyGuard":Z
    :cond_1
    move v4, v1

    .line 2163
    goto :goto_1
.end method

.method public updateClearAll(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 2149
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClearAllVisible:Z

    .line 2150
    return-void
.end method

.method public updateClock(Z)V
    .locals 5
    .param p1, "disable"    # Z

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 2701
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->hasNotification()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHasNotification:Z

    .line 2702
    sget-object v1, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "There is/are "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHasNotification:Z

    if-eqz v0, :cond_0

    const-string v0, ""

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "notification(s) "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2704
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    if-nez p1, :cond_4

    .line 2705
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->useBigClockWithNoti()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2706
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2707
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mSecKeyguardStatusView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2708
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHasNotification:Z

    if-eqz v0, :cond_1

    .line 2709
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mSecAdaptiveEventContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2726
    :goto_1
    return-void

    .line 2702
    :cond_0
    const-string v0, "no"

    goto :goto_0

    .line 2711
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mSecAdaptiveEventContainer:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 2714
    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHasNotification:Z

    if-eqz v0, :cond_3

    .line 2715
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mSecKeyguardStatusView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2716
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 2718
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2719
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mSecKeyguardStatusView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 2723
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mSecKeyguardStatusView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2724
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public updateHeaderKeyguard()V
    .locals 7

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    .line 2036
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getBarState()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 2040
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getNotificationsTopY()F

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->getHeight()I

    move-result v3

    iget v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationsHeaderCollideDistance:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    div-float v0, v2, v3

    .line 2049
    .local v0, "alphaNotifications":F
    :goto_0
    const/4 v2, 0x0

    invoke-static {v0, v2, v6}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v0

    .line 2050
    float-to-double v2, v0

    const-wide/high16 v4, 0x3fe8000000000000L    # 0.75

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v0, v2

    .line 2051
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getQsExpansionFraction()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    invoke-static {v6, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    sub-float v1, v6, v2

    .line 2052
    .local v1, "alphaQsExpansion":F
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->setAlpha(F)V

    .line 2057
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBouncerContainer:Landroid/view/View;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getQsExpansionFraction()F

    move-result v3

    sub-float v3, v6, v3

    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 2059
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsTranslation(F)V

    .line 2060
    return-void

    .line 2047
    .end local v0    # "alphaNotifications":F
    .end local v1    # "alphaQsExpansion":F
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getNotificationsTopY()F

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v0, v2, v3

    .restart local v0    # "alphaNotifications":F
    goto :goto_0
.end method

.method protected updatePanelState(Z)V
    .locals 0
    .param p1, "open"    # Z

    .prologue
    .line 2153
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsFullyOpened:Z

    .line 2154
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateCarrierLabelView()V

    .line 2155
    return-void
.end method

.method public updateResources()V
    .locals 5

    .prologue
    .line 416
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c02a6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 417
    .local v2, "panelWidth":I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f0041

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 418
    .local v1, "panelGravity":I
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 419
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    if-eq v3, v2, :cond_0

    .line 420
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 421
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 422
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 423
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mUpdateHeader:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->post(Ljava/lang/Runnable;)Z

    .line 426
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .end local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 427
    .restart local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    if-eq v3, v2, :cond_1

    .line 428
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 429
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 430
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 433
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mScrollView:Lcom/android/systemui/statusbar/phone/ObservableScrollView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .end local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 434
    .restart local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    if-eq v3, v2, :cond_2

    .line 435
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 436
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 437
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mScrollView:Lcom/android/systemui/statusbar/phone/ObservableScrollView;

    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 440
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateTextResources()V

    .line 441
    return-void
.end method
