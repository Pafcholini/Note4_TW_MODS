.class public Lcom/sec/android/cover/sviewcover/SViewCoverView;
.super Lcom/sec/android/cover/CoverMainFrameView;
.source "SViewCoverView.java"

# interfaces
.implements Lcom/sec/android/cover/widget/CoverHideEffectView$SViewCoverHideAnimationListener;
.implements Lcom/sec/android/cover/widget/PagedView$PageSwitchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/cover/sviewcover/SViewCoverView$5;,
        Lcom/sec/android/cover/sviewcover/SViewCoverView$PageIndex;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SViewCoverView"


# instance fields
.field private mCameraPage:Lcom/sec/android/cover/sviewcover/SViewCoverCameraArea;

.field private mCoverState:Lcom/samsung/android/cover/CoverState;

.field private mCurrentPageIndex:Lcom/sec/android/cover/sviewcover/SViewCoverView$PageIndex;

.field private mIsAddedMissedEventWidget:Z

.field private mMainPage:Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;

.field private mNeedToAddMissedEventWidget:Z

.field private mPendingIntent:Landroid/content/Intent;

.field private mSViewCoverHideEffectView:Lcom/sec/android/cover/widget/CoverHideEffectView;

.field private mSViewCoverPagerNavigation:Lcom/sec/android/cover/sviewcover/SViewCoverPagerNavigation;

.field private mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

.field private mSViewPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

.field private mScreenOffTimerHandler:Lcom/sec/android/cover/manager/CoverPowerManager$OnScreenOffTimerHandler;

.field private mShortcuts:Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;

.field private mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

.field private mVoiceRecorderDialogContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

.field private mVolumeWarningRemoteViewContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

.field private mWallpaperView:Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 218
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 219
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 222
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 223
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v0, 0x0

    .line 226
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/cover/CoverMainFrameView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 70
    iput-boolean v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mNeedToAddMissedEventWidget:Z

    .line 71
    iput-boolean v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mIsAddedMissedEventWidget:Z

    .line 87
    sget-object v0, Lcom/sec/android/cover/sviewcover/SViewCoverView$PageIndex;->HomePage:Lcom/sec/android/cover/sviewcover/SViewCoverView$PageIndex;

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mCurrentPageIndex:Lcom/sec/android/cover/sviewcover/SViewCoverView$PageIndex;

    .line 88
    new-instance v0, Lcom/samsung/android/cover/CoverState;

    invoke-direct {v0}, Lcom/samsung/android/cover/CoverState;-><init>()V

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mPendingIntent:Landroid/content/Intent;

    .line 91
    new-instance v0, Lcom/sec/android/cover/sviewcover/SViewCoverView$1;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView$1;-><init>(Lcom/sec/android/cover/sviewcover/SViewCoverView;)V

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    .line 200
    new-instance v0, Lcom/sec/android/cover/sviewcover/SViewCoverView$2;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView$2;-><init>(Lcom/sec/android/cover/sviewcover/SViewCoverView;)V

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mScreenOffTimerHandler:Lcom/sec/android/cover/manager/CoverPowerManager$OnScreenOffTimerHandler;

    .line 228
    iput-object p1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    .line 229
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/cover/sviewcover/SViewCoverView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverView;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/cover/sviewcover/SViewCoverView;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverView;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->requestRemoteViews()V

    return-void
.end method

.method static synthetic access$1000(Lcom/sec/android/cover/sviewcover/SViewCoverView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverView;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sec/android/cover/sviewcover/SViewCoverView;)Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverView;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mWallpaperView:Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sec/android/cover/sviewcover/SViewCoverView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverView;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sec/android/cover/sviewcover/SViewCoverView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverView;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/sec/android/cover/sviewcover/SViewCoverView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverView;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/sec/android/cover/sviewcover/SViewCoverView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverView;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/sec/android/cover/sviewcover/SViewCoverView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverView;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/sec/android/cover/sviewcover/SViewCoverView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverView;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/sec/android/cover/sviewcover/SViewCoverView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverView;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/cover/sviewcover/SViewCoverView;)Lcom/sec/android/cover/sviewcover/SViewCoverPager;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverView;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/cover/sviewcover/SViewCoverView;)Lcom/sec/android/cover/widget/CoverHideEffectView;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverView;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverHideEffectView:Lcom/sec/android/cover/widget/CoverHideEffectView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/cover/sviewcover/SViewCoverView;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverView;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->makeSViewMeasureSpec()V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/android/cover/sviewcover/SViewCoverView;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverView;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->updateViewVisibleState()V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/android/cover/sviewcover/SViewCoverView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverView;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/cover/sviewcover/SViewCoverView;)Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverView;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/cover/sviewcover/SViewCoverView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverView;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/cover/sviewcover/SViewCoverView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverView;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private ensureEffectViewHidden()V
    .locals 2

    .prologue
    .line 879
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverHideEffectView:Lcom/sec/android/cover/widget/CoverHideEffectView;

    if-eqz v0, :cond_1

    .line 880
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverHideEffectView:Lcom/sec/android/cover/widget/CoverHideEffectView;

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 881
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverHideEffectView:Lcom/sec/android/cover/widget/CoverHideEffectView;

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->removeView(Landroid/view/View;)V

    .line 882
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverHideEffectView:Lcom/sec/android/cover/widget/CoverHideEffectView;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->addView(Landroid/view/View;I)V

    .line 883
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->requestLayout()V

    .line 885
    :cond_0
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverHideEffectView:Lcom/sec/android/cover/widget/CoverHideEffectView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/widget/CoverHideEffectView;->setVisibility(I)V

    .line 887
    :cond_1
    return-void
.end method

.method private gotoOpenPage()V
    .locals 3

    .prologue
    .line 637
    const-string v0, "SViewCoverView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "gotoMissedPage current page index : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mCurrentPageIndex:Lcom/sec/android/cover/sviewcover/SViewCoverView$PageIndex;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mHomeMissedEventWidget.getMissedCallCount() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mMainPage:Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;

    invoke-virtual {v2}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->getMissedCallCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mPendingIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 640
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mPendingIntent:Landroid/content/Intent;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 643
    :cond_0
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mCurrentPageIndex:Lcom/sec/android/cover/sviewcover/SViewCoverView$PageIndex;

    sget-object v1, Lcom/sec/android/cover/sviewcover/SViewCoverView$PageIndex;->NotiPage:Lcom/sec/android/cover/sviewcover/SViewCoverView$PageIndex;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 672
    :cond_1
    return-void
.end method

.method private hideCoverUi()V
    .locals 5

    .prologue
    .line 579
    const-string v2, "SViewCoverView"

    const-string v3, "hideCoverUi"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    if-eqz v2, :cond_0

    .line 582
    const-string v2, "SViewCoverView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hideCoverUi : SViewPager Count : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    invoke-virtual {v4}, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->getChildCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->updateSViewCoverUnlockArea(Z)V

    .line 586
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->isCoverOpen()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 587
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->moveToMainPage()V

    .line 590
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->ensureEffectViewHidden()V

    .line 592
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/cover/manager/CoverPowerManager;->isScreenOn()Z

    move-result v2

    if-nez v2, :cond_3

    .line 593
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 595
    .local v1, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    .line 596
    .local v0, "callState":I
    const-string v2, "SViewCoverView"

    const-string v3, "handleMessage : Screen is off"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    const-string v2, "SViewCoverView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Call state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    if-nez v0, :cond_2

    .line 599
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/cover/manager/CoverPowerManager;->wakeUp()V

    .line 613
    .end local v0    # "callState":I
    .end local v1    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/cover/manager/CoverPowerManager;->releaseWakeLock()V

    .line 614
    return-void

    .line 602
    :cond_3
    const-string v2, "SViewCoverView"

    const-string v3, "handleMessage : Screen is on"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/cover/manager/CoverPowerManager;->userActivity()V

    goto :goto_0
.end method

.method private makeSViewMeasureSpec()V
    .locals 8

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    .line 617
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    if-eqz v4, :cond_0

    .line 621
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    invoke-virtual {v4}, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 623
    .local v1, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 625
    .local v2, "res":Landroid/content/res/Resources;
    sget v4, Lcom/sec/android/sviewcover/R$dimen;->sview_cover_pager_width:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget v5, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v4, v5

    iget v5, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sub-int v3, v4, v5

    .line 627
    .local v3, "width":I
    iget v0, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 629
    .local v0, "height":I
    const-string v4, "SViewCoverView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "makeSViewMeasureSpec width :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " height : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    invoke-static {v3, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-static {v0, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->measure(II)V

    .line 634
    .end local v0    # "height":I
    .end local v1    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v2    # "res":Landroid/content/res/Resources;
    .end local v3    # "width":I
    :cond_0
    return-void
.end method

.method private playAnimationAndHide()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 839
    const/4 v4, 0x0

    .line 840
    .local v4, "quickShowHide":Z
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->orientation:I

    if-ne v7, v5, :cond_0

    move v3, v5

    .line 841
    .local v3, "portrait":Z
    :goto_0
    const/4 v3, 0x0

    .line 842
    iget-object v7, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverHideEffectView:Lcom/sec/android/cover/widget/CoverHideEffectView;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/cover/manager/CoverPowerManager;->isScreenOn()Z

    move-result v7

    if-eqz v7, :cond_3

    if-nez v4, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->hasWindowFocus()Z

    move-result v7

    if-eqz v7, :cond_3

    if-eqz v3, :cond_3

    .line 845
    invoke-virtual {p0, v5}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->setDrawingCacheEnabled(Z)V

    .line 846
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 848
    .local v2, "cache":Landroid/graphics/Bitmap;
    if-eqz v2, :cond_2

    .line 855
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    if-le v5, v7, :cond_1

    .line 856
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v8

    invoke-static {v5, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 858
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 859
    .local v1, "c":Landroid/graphics/Canvas;
    const/16 v5, 0xff

    invoke-virtual {v1, v5, v6, v6, v6}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 860
    const/4 v5, 0x0

    invoke-virtual {v1, v2, v9, v9, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 864
    .end local v1    # "c":Landroid/graphics/Canvas;
    :goto_1
    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverHideEffectView:Lcom/sec/android/cover/widget/CoverHideEffectView;

    invoke-virtual {v5, v0}, Lcom/sec/android/cover/widget/CoverHideEffectView;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 865
    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverHideEffectView:Lcom/sec/android/cover/widget/CoverHideEffectView;

    invoke-virtual {v5, v6}, Lcom/sec/android/cover/widget/CoverHideEffectView;->setVisibility(I)V

    .line 866
    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverHideEffectView:Lcom/sec/android/cover/widget/CoverHideEffectView;

    invoke-virtual {v5}, Lcom/sec/android/cover/widget/CoverHideEffectView;->startHideAnimation()V

    .line 871
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :goto_2
    invoke-virtual {p0, v6}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->setDrawingCacheEnabled(Z)V

    .line 872
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->destroyDrawingCache()V

    .line 876
    .end local v2    # "cache":Landroid/graphics/Bitmap;
    :goto_3
    return-void

    .end local v3    # "portrait":Z
    :cond_0
    move v3, v6

    .line 840
    goto :goto_0

    .line 862
    .restart local v2    # "cache":Landroid/graphics/Bitmap;
    .restart local v3    # "portrait":Z
    :cond_1
    invoke-static {v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    goto :goto_1

    .line 868
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->hideCoverUi()V

    goto :goto_2

    .line 874
    .end local v2    # "cache":Landroid/graphics/Bitmap;
    :cond_3
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->hideCoverUi()V

    goto :goto_3
.end method

.method private requestRemoteViews()V
    .locals 3

    .prologue
    .line 969
    const-string v1, "SViewCoverView"

    const-string v2, "requestRemoteViews : Requesting latest remote views to apps.."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 970
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.cover.REQUEST_REMOTEVIEWS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 971
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 972
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 973
    return-void
.end method

.method private sendCoverEventProcessingFinishedNotification()V
    .locals 5

    .prologue
    .line 718
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->isCoverOpen()Z

    move-result v0

    .line 719
    .local v0, "coverOpen":Z
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.cover.notification.COVER_EVENT_FINISHED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 720
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "coverOpen"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 721
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 723
    const-string v2, "SViewCoverView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cover event processing notification sent : coverOpen="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    return-void
.end method

.method private showCoverUi()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/16 v4, 0x8

    .line 490
    const-string v1, "SViewCoverView"

    const-string v2, "showCoverUi"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->isCoverOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 493
    const-string v1, "SViewCoverView"

    const-string v2, "showCoverUi : Cover is opend -> Ignore showCoverUi()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/cover/manager/CoverPowerManager;->releaseWakeLock()V

    .line 576
    :goto_0
    return-void

    .line 499
    :cond_0
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverHideEffectView:Lcom/sec/android/cover/widget/CoverHideEffectView;

    if-eqz v1, :cond_1

    .line 500
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverHideEffectView:Lcom/sec/android/cover/widget/CoverHideEffectView;

    invoke-virtual {v1, v5}, Lcom/sec/android/cover/widget/CoverHideEffectView;->stopAnimation(Z)V

    .line 501
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->ensureEffectViewHidden()V

    .line 504
    :cond_1
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    if-eqz v1, :cond_2

    .line 505
    const-string v1, "SViewCoverView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SViewPager Count : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    invoke-virtual {v3}, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->getChildCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->makeSViewMeasureSpec()V

    .line 509
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->showWallPaperSetting()V

    .line 510
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->moveToMainPage()V

    .line 512
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->updateViewVisibleState()V

    .line 513
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/cover/CoverUtils;->isKidsMode(Landroid/content/Context;)Z

    move-result v0

    .line 515
    .local v0, "isKidsMode":Z
    if-ne v0, v6, :cond_5

    .line 516
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    if-eqz v1, :cond_3

    .line 517
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    sget-object v2, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;->Setting:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;

    invoke-virtual {v1, v2, v4}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->setContainerVisibility(Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;I)V

    .line 518
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    sget-object v2, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;->Contact:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;

    invoke-virtual {v1, v2, v4}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->setContainerVisibility(Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;I)V

    .line 519
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    sget-object v2, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;->Camera:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;

    invoke-virtual {v1, v2, v4}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->setContainerVisibility(Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;I)V

    .line 520
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    sget-object v2, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;->Noti:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;

    invoke-virtual {v1, v2, v4}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->setContainerVisibility(Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;I)V

    .line 521
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    invoke-virtual {v1, v4}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->setPageNavigationVisibility(I)V

    .line 555
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mWallpaperView:Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;

    invoke-virtual {v1, v5}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->setProperWallpaper(Z)V

    .line 557
    invoke-virtual {p0, v6}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->updateSViewCoverUnlockArea(Z)V

    .line 561
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/cover/manager/CoverPowerManager;->isScreenOn()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 562
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/cover/manager/CoverPowerManager;->wakeUp()V

    .line 563
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/cover/manager/CoverPowerManager;->startScreenOffTimer()V

    .line 575
    :cond_4
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/cover/manager/CoverPowerManager;->releaseWakeLock()V

    goto/16 :goto_0

    .line 523
    :cond_5
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/cover/CoverUtils;->isSetupWizardRunning(Landroid/content/Context;)Z

    move-result v1

    if-ne v1, v6, :cond_6

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    if-eqz v1, :cond_6

    .line 525
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    sget-object v2, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;->Setting:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;

    invoke-virtual {v1, v2, v4}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->setContainerVisibility(Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;I)V

    .line 526
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    sget-object v2, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;->Contact:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;

    invoke-virtual {v1, v2, v4}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->setContainerVisibility(Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;I)V

    .line 527
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    sget-object v2, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;->Camera:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;

    invoke-virtual {v1, v2, v4}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->setContainerVisibility(Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;I)V

    .line 528
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    sget-object v2, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;->Noti:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;

    invoke-virtual {v1, v2, v4}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->setContainerVisibility(Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;I)V

    .line 529
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    invoke-virtual {v1, v4}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->setPageNavigationVisibility(I)V

    goto :goto_1

    .line 530
    :cond_6
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/cover/CoverUtils;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 531
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mCameraPage:Lcom/sec/android/cover/sviewcover/SViewCoverCameraArea;

    if-eqz v1, :cond_7

    .line 532
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mCameraPage:Lcom/sec/android/cover/sviewcover/SViewCoverCameraArea;

    invoke-virtual {v1, v2}, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->removeView(Landroid/view/View;)V

    .line 534
    :cond_7
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    if-eqz v1, :cond_3

    .line 535
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    sget-object v2, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;->Setting:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;

    invoke-virtual {v1, v2, v4}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->setContainerVisibility(Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;I)V

    .line 536
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    sget-object v2, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;->Contact:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;

    invoke-virtual {v1, v2, v4}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->setContainerVisibility(Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;I)V

    .line 537
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    sget-object v2, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;->Contact:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;

    invoke-virtual {v1, v2, v4}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->setContainerVisibility(Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;I)V

    .line 538
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    sget-object v2, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;->Camera:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;

    invoke-virtual {v1, v2, v4}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->setContainerVisibility(Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;I)V

    .line 539
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    invoke-virtual {v1, v4}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->setPageNavigationVisibility(I)V

    goto/16 :goto_1

    .line 542
    :cond_8
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mCameraPage:Lcom/sec/android/cover/sviewcover/SViewCoverCameraArea;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mCameraPage:Lcom/sec/android/cover/sviewcover/SViewCoverCameraArea;

    invoke-virtual {v1}, Lcom/sec/android/cover/sviewcover/SViewCoverCameraArea;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_9

    .line 543
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mCameraPage:Lcom/sec/android/cover/sviewcover/SViewCoverCameraArea;

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    invoke-virtual {v3}, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->getChildCount()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->addView(Landroid/view/View;I)V

    .line 545
    :cond_9
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    if-eqz v1, :cond_3

    .line 546
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    sget-object v2, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;->Setting:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;

    invoke-virtual {v1, v2, v5}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->setContainerVisibility(Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;I)V

    .line 547
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    sget-object v2, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;->Contact:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;

    invoke-virtual {v1, v2, v5}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->setContainerVisibility(Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;I)V

    .line 548
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    sget-object v2, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;->Camera:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;

    invoke-virtual {v1, v2, v5}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->setContainerVisibility(Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;I)V

    .line 549
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    sget-object v2, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;->Noti:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;

    invoke-virtual {v1, v2, v5}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->setContainerVisibility(Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;I)V

    .line 550
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    invoke-virtual {v1, v5}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->setPageNavigationVisibility(I)V

    goto/16 :goto_1
.end method

.method private showWallPaperSetting()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 407
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->isCoverOpen()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 441
    :cond_0
    :goto_0
    return-void

    .line 410
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_2

    .line 411
    invoke-virtual {p0, v5}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->setVisibility(I)V

    .line 413
    :cond_2
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v4}, Lcom/samsung/android/cover/CoverState;->getColor()I

    move-result v0

    .line 416
    .local v0, "currentCoverColor":I
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;

    move-result-object v3

    .line 417
    .local v3, "wallpaperMgr":Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/cover/CoverUtils;->isCallActive(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 418
    invoke-virtual {v3, v0}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->isWallpaperNeedToSetup(I)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/android/cover/CoverUtils;->isKidsMode(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/android/cover/CoverUtils;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 421
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_3

    .line 422
    const/4 v4, 0x4

    invoke-virtual {p0, v4}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->setVisibility(I)V

    .line 423
    :cond_3
    const-string v4, "SViewCoverView"

    const-string v5, "showCoverUi : Wallpaper color is not setup yet -> Show wallpaper setup activity"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 426
    .local v2, "intent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    const-class v5, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 427
    const/high16 v4, 0x10010000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 428
    const-string v4, "wallpaper_initialize"

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 430
    :try_start_0
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v4, v2, v5}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 432
    :catch_0
    move-exception v1

    .line 433
    .local v1, "exception":Landroid/content/ActivityNotFoundException;
    const-string v4, "SViewCoverView"

    const-string v5, "showCoverUi : ActivityNotFoundException !!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 437
    .end local v1    # "exception":Landroid/content/ActivityNotFoundException;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_0

    .line 438
    invoke-virtual {p0, v5}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateViewVisibleState()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 444
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/cover/CoverUtils;->isKidsMode(Landroid/content/Context;)Z

    move-result v0

    .line 446
    .local v0, "isKidsMode":Z
    if-ne v0, v5, :cond_1

    .line 447
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    if-eqz v1, :cond_0

    .line 448
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    sget-object v2, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;->Setting:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->setContainerVisibility(Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;I)V

    .line 449
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    sget-object v2, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;->Contact:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->setContainerVisibility(Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;I)V

    .line 450
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    sget-object v2, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;->Camera:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->setContainerVisibility(Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;I)V

    .line 451
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    sget-object v2, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;->Noti:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->setContainerVisibility(Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;I)V

    .line 452
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    invoke-virtual {v1, v3}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->setPageNavigationVisibility(I)V

    .line 485
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mWallpaperView:Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;

    invoke-virtual {v1, v4}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->setProperWallpaper(Z)V

    .line 486
    invoke-virtual {p0, v5}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->updateSViewCoverUnlockArea(Z)V

    .line 487
    return-void

    .line 454
    :cond_1
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/cover/CoverUtils;->isSetupWizardRunning(Landroid/content/Context;)Z

    move-result v1

    if-ne v1, v5, :cond_2

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    if-eqz v1, :cond_2

    .line 456
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    sget-object v2, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;->Setting:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->setContainerVisibility(Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;I)V

    .line 457
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    sget-object v2, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;->Contact:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->setContainerVisibility(Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;I)V

    .line 458
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    sget-object v2, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;->Camera:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->setContainerVisibility(Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;I)V

    .line 459
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    sget-object v2, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;->Noti:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->setContainerVisibility(Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;I)V

    .line 460
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    invoke-virtual {v1, v3}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->setPageNavigationVisibility(I)V

    goto :goto_0

    .line 461
    :cond_2
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/cover/CoverUtils;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 462
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mCameraPage:Lcom/sec/android/cover/sviewcover/SViewCoverCameraArea;

    if-eqz v1, :cond_3

    .line 463
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mCameraPage:Lcom/sec/android/cover/sviewcover/SViewCoverCameraArea;

    invoke-virtual {v1, v2}, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->removeView(Landroid/view/View;)V

    .line 465
    :cond_3
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    if-eqz v1, :cond_0

    .line 466
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    sget-object v2, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;->Setting:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->setContainerVisibility(Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;I)V

    .line 467
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    sget-object v2, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;->Contact:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->setContainerVisibility(Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;I)V

    .line 468
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    sget-object v2, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;->Camera:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->setContainerVisibility(Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;I)V

    .line 469
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    invoke-virtual {v1, v3}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->setPageNavigationVisibility(I)V

    goto :goto_0

    .line 472
    :cond_4
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mCameraPage:Lcom/sec/android/cover/sviewcover/SViewCoverCameraArea;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mCameraPage:Lcom/sec/android/cover/sviewcover/SViewCoverCameraArea;

    invoke-virtual {v1}, Lcom/sec/android/cover/sviewcover/SViewCoverCameraArea;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_5

    .line 473
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mCameraPage:Lcom/sec/android/cover/sviewcover/SViewCoverCameraArea;

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    invoke-virtual {v3}, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->getChildCount()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->addView(Landroid/view/View;I)V

    .line 475
    :cond_5
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    if-eqz v1, :cond_0

    .line 476
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    sget-object v2, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;->Setting:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;

    invoke-virtual {v1, v2, v4}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->setContainerVisibility(Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;I)V

    .line 477
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    sget-object v2, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;->Contact:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;

    invoke-virtual {v1, v2, v4}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->setContainerVisibility(Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;I)V

    .line 478
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    sget-object v2, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;->Camera:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;

    invoke-virtual {v1, v2, v4}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->setContainerVisibility(Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;I)V

    .line 479
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    sget-object v2, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;->Noti:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;

    invoke-virtual {v1, v2, v4}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->setContainerVisibility(Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;I)V

    .line 480
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    invoke-virtual {v1, v4}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->setPageNavigationVisibility(I)V

    goto/16 :goto_0
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 386
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 387
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 397
    :cond_0
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Lcom/sec/android/cover/CoverMainFrameView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 390
    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    invoke-virtual {v1}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 391
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/cover/manager/CoverPowerManager;->resetScreenOffTimer()V

    goto :goto_0

    .line 387
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getCurrentPageIndex()Lcom/sec/android/cover/sviewcover/SViewCoverView$PageIndex;
    .locals 1

    .prologue
    .line 976
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mCurrentPageIndex:Lcom/sec/android/cover/sviewcover/SViewCoverView$PageIndex;

    return-object v0
.end method

.method public getTopmostVisibleView()Landroid/view/ViewGroup;
    .locals 2

    .prologue
    .line 402
    sget v1, Lcom/sec/android/sviewcover/R$id;->sview_cover_root:I

    invoke-virtual {p0, v1}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 403
    .local v0, "topmostVisibleView":Landroid/view/ViewGroup;
    return-object v0
.end method

.method public isCoverOpen()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 708
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v1}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHideAllHandlerMode()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 712
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/cover/CoverUtils;->isKidsMode(Landroid/content/Context;)Z

    move-result v1

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/cover/CoverUtils;->isSetupWizardRunning(Landroid/content/Context;)Z

    move-result v1

    if-ne v1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public moveToMainPage()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 904
    sget-object v0, Lcom/sec/android/cover/sviewcover/SViewCoverView$PageIndex;->HomePage:Lcom/sec/android/cover/sviewcover/SViewCoverView$PageIndex;

    invoke-virtual {p0, v0, v2}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->moveToPage(Lcom/sec/android/cover/sviewcover/SViewCoverView$PageIndex;Z)V

    .line 906
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    if-eqz v0, :cond_0

    .line 907
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    sget-object v1, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;->Camera:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->setContainerVisibility(Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;I)V

    .line 908
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    invoke-virtual {v0}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->handleShow()V

    .line 910
    :cond_0
    return-void
.end method

.method public moveToPage(IZ)V
    .locals 3
    .param p1, "pageIndex"    # I
    .param p2, "isSnapToPage"    # Z

    .prologue
    .line 913
    sget-object v1, Lcom/sec/android/cover/sviewcover/SViewCoverView$PageIndex;->HomePage:Lcom/sec/android/cover/sviewcover/SViewCoverView$PageIndex;

    .line 915
    .local v1, "enumIndex":Lcom/sec/android/cover/sviewcover/SViewCoverView$PageIndex;
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    invoke-virtual {v2, p1}, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 917
    .local v0, "child":Landroid/view/View;
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mMainPage:Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mMainPage:Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;

    if-ne v2, v0, :cond_1

    .line 918
    sget-object v1, Lcom/sec/android/cover/sviewcover/SViewCoverView$PageIndex;->HomePage:Lcom/sec/android/cover/sviewcover/SViewCoverView$PageIndex;

    .line 925
    :cond_0
    :goto_0
    invoke-virtual {p0, v1, p2}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->moveToPage(Lcom/sec/android/cover/sviewcover/SViewCoverView$PageIndex;Z)V

    .line 926
    return-void

    .line 919
    :cond_1
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mCameraPage:Lcom/sec/android/cover/sviewcover/SViewCoverCameraArea;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mCameraPage:Lcom/sec/android/cover/sviewcover/SViewCoverCameraArea;

    if-ne v2, v0, :cond_2

    .line 920
    sget-object v1, Lcom/sec/android/cover/sviewcover/SViewCoverView$PageIndex;->CameraPage:Lcom/sec/android/cover/sviewcover/SViewCoverView$PageIndex;

    goto :goto_0

    .line 921
    :cond_2
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mShortcuts:Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mShortcuts:Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;

    if-ne v2, v0, :cond_0

    .line 922
    sget-object v1, Lcom/sec/android/cover/sviewcover/SViewCoverView$PageIndex;->ShortCutPage:Lcom/sec/android/cover/sviewcover/SViewCoverView$PageIndex;

    goto :goto_0
.end method

.method public moveToPage(Lcom/sec/android/cover/sviewcover/SViewCoverView$PageIndex;Z)V
    .locals 4
    .param p1, "pageIndex"    # Lcom/sec/android/cover/sviewcover/SViewCoverView$PageIndex;
    .param p2, "isSnapToPage"    # Z

    .prologue
    .line 929
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    if-nez v1, :cond_0

    .line 966
    :goto_0
    return-void

    .line 932
    :cond_0
    const-string v1, "SViewCoverView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Move to page : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    iput-object p1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mCurrentPageIndex:Lcom/sec/android/cover/sviewcover/SViewCoverView$PageIndex;

    .line 936
    const/4 v0, 0x0

    .line 938
    .local v0, "movePageIndex":I
    sget-object v1, Lcom/sec/android/cover/sviewcover/SViewCoverView$5;->$SwitchMap$com$sec$android$cover$sviewcover$SViewCoverView$PageIndex:[I

    invoke-virtual {p1}, Lcom/sec/android/cover/sviewcover/SViewCoverView$PageIndex;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 952
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mMainPage:Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;

    if-eqz v1, :cond_1

    .line 953
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mMainPage:Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;

    invoke-virtual {v1, v2}, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 957
    :cond_1
    :goto_1
    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 958
    const-string v1, "SViewCoverView"

    const-string v2, "Index page not found!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    const/4 v0, 0x0

    .line 962
    :cond_2
    const/4 v1, 0x1

    if-ne p2, v1, :cond_3

    .line 963
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    invoke-virtual {v1, v0}, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->snapToPage(I)V

    goto :goto_0

    .line 940
    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mMainPage:Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;

    if-eqz v1, :cond_1

    .line 941
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mMainPage:Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;

    invoke-virtual {v1, v2}, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->indexOfChild(Landroid/view/View;)I

    move-result v0

    goto :goto_1

    .line 944
    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mCameraPage:Lcom/sec/android/cover/sviewcover/SViewCoverCameraArea;

    if-eqz v1, :cond_1

    .line 945
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mCameraPage:Lcom/sec/android/cover/sviewcover/SViewCoverCameraArea;

    invoke-virtual {v1, v2}, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->indexOfChild(Landroid/view/View;)I

    move-result v0

    goto :goto_1

    .line 948
    :pswitch_2
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mShortcuts:Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;

    if-eqz v1, :cond_1

    .line 949
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mShortcuts:Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;

    invoke-virtual {v1, v2}, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->indexOfChild(Landroid/view/View;)I

    move-result v0

    goto :goto_1

    .line 965
    :cond_3
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    invoke-virtual {v1, v0}, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->setCurrentPage(I)V

    goto :goto_0

    .line 938
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 335
    const-string v0, "SViewCoverView"

    const-string v1, "onAttachedToWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    invoke-super {p0}, Lcom/sec/android/cover/CoverMainFrameView;->onAttachedToWindow()V

    .line 338
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->registerCallback(Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;)V

    .line 339
    return-void
.end method

.method public onCoverEvent(Lcom/samsung/android/cover/CoverState;)V
    .locals 4
    .param p1, "state"    # Lcom/samsung/android/cover/CoverState;

    .prologue
    const/4 v0, 0x1

    .line 353
    invoke-super {p0, p1}, Lcom/sec/android/cover/CoverMainFrameView;->onCoverEvent(Lcom/samsung/android/cover/CoverState;)V

    .line 354
    iput-object p1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 356
    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v1

    if-ne v1, v0, :cond_0

    .line 358
    .local v0, "isCoverOpen":Z
    :goto_0
    const-string v1, "SViewCoverView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCoverEvent :  isCoverOpen:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " coverType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " coverColor:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getColor()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    invoke-static {}, Lcom/sec/android/cover/FeatureUtils;->isLGTModel()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 363
    const-string v1, "lock"

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "missing_phone_lock"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 365
    const-string v1, "SViewCoverView"

    const-string v2, "onCoverEvent : missing_phone_lock"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    :goto_1
    return-void

    .line 356
    .end local v0    # "isCoverOpen":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 370
    .restart local v0    # "isCoverOpen":Z
    :cond_1
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/cover/manager/CoverPowerManager;->cancelScreenOffTimer()V

    .line 372
    if-eqz v0, :cond_2

    .line 373
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->gotoOpenPage()V

    .line 374
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->playAnimationAndHide()V

    .line 381
    :goto_2
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->sendCoverEventProcessingFinishedNotification()V

    goto :goto_1

    .line 376
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->showCoverUi()V

    .line 377
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/input/InputManager;->coverEventFinished()V

    goto :goto_2
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 343
    const-string v0, "SViewCoverView"

    const-string v1, "onDetachedFromWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    invoke-super {p0}, Lcom/sec/android/cover/CoverMainFrameView;->onDetachedFromWindow()V

    .line 346
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/manager/CoverPowerManager;->setTimerExpireHandler(Lcom/sec/android/cover/manager/CoverPowerManager$OnScreenOffTimerHandler;)V

    .line 348
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->unregisterCallback(Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;)V

    .line 349
    return-void
.end method

.method protected onFinishInflate()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 233
    invoke-super {p0}, Lcom/sec/android/cover/CoverMainFrameView;->onFinishInflate()V

    .line 234
    const-string v0, "SViewCoverView"

    const-string v1, "onFinishInflate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    invoke-virtual {p0, v3}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->setVisibility(I)V

    .line 238
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mScreenOffTimerHandler:Lcom/sec/android/cover/manager/CoverPowerManager$OnScreenOffTimerHandler;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/manager/CoverPowerManager;->setTimerExpireHandler(Lcom/sec/android/cover/manager/CoverPowerManager$OnScreenOffTimerHandler;)V

    .line 241
    sget v0, Lcom/sec/android/sviewcover/R$id;->s_view_cover_wallpaper:I

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mWallpaperView:Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;

    .line 242
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mWallpaperView:Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;

    invoke-virtual {v0, v2}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->setProperWallpaper(Z)V

    .line 245
    sget v0, Lcom/sec/android/sviewcover/R$id;->clear_sound_warning_contatiner:I

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/widget/RemoteViewContainerView;

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mVolumeWarningRemoteViewContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    .line 246
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mVolumeWarningRemoteViewContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    const-string v1, "volume"

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->init(Ljava/lang/String;Z)V

    .line 247
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mVolumeWarningRemoteViewContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    new-instance v1, Lcom/sec/android/cover/sviewcover/SViewCoverView$3;

    invoke-direct {v1, p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView$3;-><init>(Lcom/sec/android/cover/sviewcover/SViewCoverView;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->setOnUpdateListener(Lcom/sec/android/cover/widget/RemoteViewContainerView$OnUpdateListener;)V

    .line 259
    sget v0, Lcom/sec/android/sviewcover/R$id;->voice_recorder_dialog_contatiner:I

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/widget/RemoteViewContainerView;

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mVoiceRecorderDialogContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    .line 260
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mVoiceRecorderDialogContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    const-string v1, "voice_recorder_dialog"

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->init(Ljava/lang/String;Z)V

    .line 261
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mVoiceRecorderDialogContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    new-instance v1, Lcom/sec/android/cover/sviewcover/SViewCoverView$4;

    invoke-direct {v1, p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView$4;-><init>(Lcom/sec/android/cover/sviewcover/SViewCoverView;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->setOnUpdateListener(Lcom/sec/android/cover/widget/RemoteViewContainerView$OnUpdateListener;)V

    .line 270
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    invoke-virtual {v0}, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->removeAllViews()V

    .line 273
    :cond_0
    sget v0, Lcom/sec/android/sviewcover/R$id;->s_view_cover_pager:I

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    .line 274
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    if-eqz v0, :cond_1

    .line 275
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    invoke-virtual {v0, p0}, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->setSViewCoverView(Lcom/sec/android/cover/sviewcover/SViewCoverView;)V

    .line 277
    :cond_1
    const-string v0, "SViewCoverView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSViewPager"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    sget v0, Lcom/sec/android/sviewcover/R$id;->s_view_cover_hide_effect:I

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/widget/CoverHideEffectView;

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverHideEffectView:Lcom/sec/android/cover/widget/CoverHideEffectView;

    .line 280
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverHideEffectView:Lcom/sec/android/cover/widget/CoverHideEffectView;

    if-eqz v0, :cond_2

    .line 281
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverHideEffectView:Lcom/sec/android/cover/widget/CoverHideEffectView;

    invoke-virtual {v0, p0}, Lcom/sec/android/cover/widget/CoverHideEffectView;->setListener(Lcom/sec/android/cover/widget/CoverHideEffectView$SViewCoverHideAnimationListener;)V

    .line 284
    :cond_2
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    if-eqz v0, :cond_7

    .line 285
    iput-boolean v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mIsAddedMissedEventWidget:Z

    .line 289
    sget v0, Lcom/sec/android/sviewcover/R$id;->s_view_cover_page_navigation:I

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/sviewcover/SViewCoverPagerNavigation;

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverPagerNavigation:Lcom/sec/android/cover/sviewcover/SViewCoverPagerNavigation;

    .line 290
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    if-eqz v0, :cond_3

    .line 291
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverPagerNavigation:Lcom/sec/android/cover/sviewcover/SViewCoverPagerNavigation;

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/sviewcover/SViewCoverPagerNavigation;->setPager(Lcom/sec/android/cover/sviewcover/SViewCoverPager;)V

    .line 293
    :cond_3
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    sget v1, Lcom/sec/android/sviewcover/R$layout;->s_view_cover_shortcuts:I

    invoke-static {v0, v1, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mShortcuts:Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;

    .line 295
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mShortcuts:Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;

    if-eqz v0, :cond_4

    .line 296
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mShortcuts:Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->addView(Landroid/view/View;)V

    .line 297
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mShortcuts:Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;

    invoke-virtual {v0, p0}, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;->setCoverView(Lcom/sec/android/cover/sviewcover/SViewCoverView;)V

    .line 300
    :cond_4
    new-instance v0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mMainPage:Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;

    .line 301
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mMainPage:Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;

    if-eqz v0, :cond_5

    .line 302
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mMainPage:Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->addView(Landroid/view/View;)V

    .line 304
    :cond_5
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mMainPage:Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;

    sget v1, Lcom/sec/android/sviewcover/R$id;->s_view_cover_unlock_area:I

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    .line 306
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverPagerNavigation:Lcom/sec/android/cover/sviewcover/SViewCoverPagerNavigation;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->setPagerNavigation(Lcom/sec/android/cover/sviewcover/SViewCoverPagerNavigation;)V

    .line 307
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    invoke-virtual {v0, p0}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->setCoverView(Lcom/sec/android/cover/sviewcover/SViewCoverView;)V

    .line 309
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    sget v1, Lcom/sec/android/sviewcover/R$layout;->s_view_cover_camera_layout:I

    invoke-static {v0, v1, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/sviewcover/SViewCoverCameraArea;

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mCameraPage:Lcom/sec/android/cover/sviewcover/SViewCoverCameraArea;

    .line 311
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mCameraPage:Lcom/sec/android/cover/sviewcover/SViewCoverCameraArea;

    if-eqz v0, :cond_6

    .line 312
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mCameraPage:Lcom/sec/android/cover/sviewcover/SViewCoverCameraArea;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->addView(Landroid/view/View;)V

    .line 313
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mCameraPage:Lcom/sec/android/cover/sviewcover/SViewCoverCameraArea;

    invoke-virtual {v0, p0}, Lcom/sec/android/cover/sviewcover/SViewCoverCameraArea;->setCoverView(Lcom/sec/android/cover/sviewcover/SViewCoverView;)V

    .line 316
    :cond_6
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    invoke-virtual {v0, p0}, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->setPageSwitchListener(Lcom/sec/android/cover/widget/PagedView$PageSwitchListener;)V

    .line 318
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->updateMissedEvent()V

    .line 319
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->moveToMainPage()V

    .line 322
    :cond_7
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->requestRemoteViews()V

    .line 323
    return-void
.end method

.method public onHideAnimationFinished()V
    .locals 0

    .prologue
    .line 835
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->hideCoverUi()V

    .line 836
    return-void
.end method

.method public onPageSwitched(Landroid/view/View;I)V
    .locals 1
    .param p1, "newPage"    # Landroid/view/View;
    .param p2, "newPageIndex"    # I

    .prologue
    .line 891
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->isCoverOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 892
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->resetScreenOffTimer()V

    .line 893
    :cond_0
    return-void
.end method

.method public onPageSwitching(Landroid/view/View;I)V
    .locals 2
    .param p1, "newPage"    # Landroid/view/View;
    .param p2, "newPageIndex"    # I

    .prologue
    .line 897
    if-nez p2, :cond_0

    .line 898
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->setEnableTouchEvent(Z)V

    .line 901
    :goto_0
    return-void

    .line 900
    :cond_0
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->setEnableTouchEvent(Z)V

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 327
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->isCoverOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->resetScreenOffTimer()V

    .line 330
    :cond_0
    invoke-super {p0, p1}, Lcom/sec/android/cover/CoverMainFrameView;->onWindowFocusChanged(Z)V

    .line 331
    return-void
.end method

.method public setPendingIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "i"    # Landroid/content/Intent;

    .prologue
    .line 980
    iput-object p1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mPendingIntent:Landroid/content/Intent;

    .line 981
    return-void
.end method

.method public updateMissedEvent()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    const/4 v3, 0x1

    .line 783
    const-string v2, "SViewCoverView"

    const-string v4, "updateMissedEvent()"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/cover/manager/CoverRemoteViewManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverRemoteViewManager;

    move-result-object v11

    .line 787
    .local v11, "coverRemoteViewManager":Lcom/sec/android/cover/manager/CoverRemoteViewManager;
    const-string v2, "new_message"

    invoke-virtual {v11, v2}, Lcom/sec/android/cover/manager/CoverRemoteViewManager;->getRemoteViewInfo(Ljava/lang/String;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;

    move-result-object v12

    .line 789
    .local v12, "messageRemoteViewInfo":Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;
    const-string v2, "missed_call"

    invoke-virtual {v11, v2}, Lcom/sec/android/cover/manager/CoverRemoteViewManager;->getRemoteViewInfo(Ljava/lang/String;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;

    move-result-object v0

    .line 792
    .local v0, "callRemoteViewInfo":Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/cover/manager/CoverMissedEventManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverMissedEventManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/cover/manager/CoverMissedEventManager;->clearMissedEvent()V

    .line 795
    iput-boolean v13, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mNeedToAddMissedEventWidget:Z

    .line 798
    if-eqz v12, :cond_0

    iget-boolean v2, v12, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mVisibility:Z

    if-eqz v2, :cond_0

    .line 799
    iput-boolean v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mNeedToAddMissedEventWidget:Z

    .line 800
    new-instance v1, Lcom/sec/android/cover/manager/CoverMissedEventManager$RemoteViewsItem;

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/cover/manager/CoverMissedEventManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverMissedEventManager;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v4, v12, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mTime:J

    iget-object v6, v12, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mRemoteViews:Landroid/widget/RemoteViews;

    iget-object v7, v12, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mSecureModeRemoteViews:Landroid/widget/RemoteViews;

    iget-object v8, v12, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mPendingIntent:Landroid/app/PendingIntent;

    iget v9, v12, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mCount:I

    iget-object v10, v12, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mType:Ljava/lang/String;

    invoke-direct/range {v1 .. v10}, Lcom/sec/android/cover/manager/CoverMissedEventManager$RemoteViewsItem;-><init>(Lcom/sec/android/cover/manager/CoverMissedEventManager;IJLandroid/widget/RemoteViews;Landroid/widget/RemoteViews;Landroid/app/PendingIntent;ILjava/lang/String;)V

    .line 807
    .local v1, "remoteViewsItem":Lcom/sec/android/cover/manager/CoverMissedEventManager$RemoteViewsItem;
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/cover/manager/CoverMissedEventManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverMissedEventManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sec/android/cover/manager/CoverMissedEventManager;->addMissedEvent(Lcom/sec/android/cover/manager/CoverMissedEventManager$MissedEventItem;)V

    .line 811
    .end local v1    # "remoteViewsItem":Lcom/sec/android/cover/manager/CoverMissedEventManager$RemoteViewsItem;
    :cond_0
    if-eqz v0, :cond_1

    iget-boolean v2, v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mVisibility:Z

    if-eqz v2, :cond_1

    .line 812
    iput-boolean v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mNeedToAddMissedEventWidget:Z

    .line 813
    new-instance v1, Lcom/sec/android/cover/manager/CoverMissedEventManager$RemoteViewsItem;

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/cover/manager/CoverMissedEventManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverMissedEventManager;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v4, v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mTime:J

    iget-object v6, v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mRemoteViews:Landroid/widget/RemoteViews;

    iget-object v7, v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mSecureModeRemoteViews:Landroid/widget/RemoteViews;

    iget-object v8, v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mPendingIntent:Landroid/app/PendingIntent;

    iget v9, v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mCount:I

    iget-object v10, v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mType:Ljava/lang/String;

    invoke-direct/range {v1 .. v10}, Lcom/sec/android/cover/manager/CoverMissedEventManager$RemoteViewsItem;-><init>(Lcom/sec/android/cover/manager/CoverMissedEventManager;IJLandroid/widget/RemoteViews;Landroid/widget/RemoteViews;Landroid/app/PendingIntent;ILjava/lang/String;)V

    .line 819
    .restart local v1    # "remoteViewsItem":Lcom/sec/android/cover/manager/CoverMissedEventManager$RemoteViewsItem;
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/cover/manager/CoverMissedEventManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverMissedEventManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sec/android/cover/manager/CoverMissedEventManager;->addMissedEvent(Lcom/sec/android/cover/manager/CoverMissedEventManager$MissedEventItem;)V

    .line 822
    .end local v1    # "remoteViewsItem":Lcom/sec/android/cover/manager/CoverMissedEventManager$RemoteViewsItem;
    :cond_1
    iget-boolean v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mNeedToAddMissedEventWidget:Z

    if-eqz v2, :cond_2

    .line 823
    invoke-virtual {p0, v3}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->updateSViewCoverUnlockArea(Z)V

    .line 824
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->updateMissedEventWidget()V

    .line 831
    :goto_0
    return-void

    .line 828
    :cond_2
    iput-boolean v13, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mNeedToAddMissedEventWidget:Z

    .line 829
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->updateMissedEventWidget()V

    goto :goto_0
.end method

.method public updateMissedEventWidget()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 727
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->isHideAllHandlerMode()Z

    move-result v4

    if-ne v4, v8, :cond_1

    .line 780
    :cond_0
    :goto_0
    return-void

    .line 731
    :cond_1
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    const-string v5, "keyguard"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    .line 733
    .local v1, "keyguardManager":Landroid/app/KeyguardManager;
    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v0

    .line 735
    .local v0, "isKeyguardSecureMode":Z
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    if-eqz v4, :cond_0

    .line 736
    if-nez v0, :cond_2

    iget-boolean v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mNeedToAddMissedEventWidget:Z

    if-nez v4, :cond_4

    .line 737
    :cond_2
    iget-boolean v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mIsAddedMissedEventWidget:Z

    if-eqz v4, :cond_0

    .line 741
    iput-boolean v6, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mIsAddedMissedEventWidget:Z

    .line 742
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mMainPage:Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;

    invoke-virtual {v4}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->getMissedEventCount()I

    move-result v4

    if-nez v4, :cond_0

    .line 743
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    sget-object v5, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;->Noti:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;

    invoke-virtual {v4, v5, v7}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->setPageButtonVisibility(Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;I)V

    .line 744
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/android/cover/CoverUtils;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 745
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    sget-object v5, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;->Setting:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;

    invoke-virtual {v4, v5, v7}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->setPageButtonVisibility(Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;I)V

    .line 746
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    invoke-virtual {v4, v7}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->setPageNavigationVisibility(I)V

    .line 747
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    invoke-virtual {v4, v6}, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->setEnableTouchEvent(Z)V

    goto :goto_0

    .line 749
    :cond_3
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    sget-object v5, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;->Setting:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->setPageButtonVisibility(Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;I)V

    goto :goto_0

    .line 755
    :cond_4
    iget-boolean v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mNeedToAddMissedEventWidget:Z

    if-eqz v4, :cond_0

    .line 756
    iget-boolean v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mIsAddedMissedEventWidget:Z

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/android/cover/CoverUtils;->isKidsMode(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 758
    iput-boolean v8, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mIsAddedMissedEventWidget:Z

    .line 762
    :cond_5
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    if-eqz v4, :cond_0

    .line 763
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mMainPage:Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;

    invoke-virtual {v4}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->getMissedEventCount()I

    move-result v4

    if-nez v4, :cond_6

    .line 764
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    sget-object v5, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;->Noti:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;

    invoke-virtual {v4, v5, v7}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->setPageButtonVisibility(Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;I)V

    .line 765
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    sget-object v5, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;->Setting:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->setPageButtonVisibility(Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;I)V

    goto :goto_0

    .line 768
    :cond_6
    const/4 v2, 0x0

    .line 769
    .local v2, "missedCallCount":I
    const/4 v3, 0x0

    .line 770
    .local v3, "unreadMessage":I
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mMainPage:Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;

    invoke-virtual {v4}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->getMissedCallCount()I

    move-result v2

    .line 771
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mMainPage:Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;

    invoke-virtual {v4}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->getUnreadMessageCount()I

    move-result v3

    .line 772
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    invoke-virtual {v4, v2, v3}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->updateNotiPageButton(II)V

    goto/16 :goto_0
.end method

.method public updateSViewCoverUnlockArea(Z)V
    .locals 5
    .param p1, "visibility"    # Z

    .prologue
    .line 675
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    if-nez v3, :cond_1

    .line 705
    :cond_0
    :goto_0
    return-void

    .line 679
    :cond_1
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mMainPage:Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;

    invoke-virtual {v3, v4}, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 680
    .local v0, "homeIndex":I
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    invoke-virtual {v3}, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->getCurrentPage()I

    move-result v3

    if-ne v3, v0, :cond_4

    .line 681
    if-eqz p1, :cond_3

    .line 682
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    invoke-virtual {v3}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->handleShow()V

    .line 683
    const/4 v1, 0x0

    .line 684
    .local v1, "missedCallCount":I
    const/4 v2, 0x0

    .line 685
    .local v2, "unreadMessage":I
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mMainPage:Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;

    invoke-virtual {v3}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->getMissedCallCount()I

    move-result v1

    .line 686
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mMainPage:Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;

    invoke-virtual {v3}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->getUnreadMessageCount()I

    move-result v2

    .line 687
    if-nez v1, :cond_2

    if-nez v2, :cond_2

    .line 688
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mNeedToAddMissedEventWidget:Z

    .line 692
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->updateMissedEventWidget()V

    .line 693
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    invoke-virtual {v3, v1, v2}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->updateNotiArea(II)V

    goto :goto_0

    .line 690
    :cond_2
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mNeedToAddMissedEventWidget:Z

    goto :goto_1

    .line 695
    .end local v1    # "missedCallCount":I
    .end local v2    # "unreadMessage":I
    :cond_3
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    invoke-virtual {v3}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->handleHide()V

    goto :goto_0

    .line 697
    :cond_4
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    if-eqz v3, :cond_0

    if-eqz p1, :cond_0

    .line 698
    const/4 v1, 0x0

    .line 699
    .restart local v1    # "missedCallCount":I
    const/4 v2, 0x0

    .line 700
    .restart local v2    # "unreadMessage":I
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mMainPage:Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;

    invoke-virtual {v3}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->getMissedCallCount()I

    move-result v1

    .line 701
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mMainPage:Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;

    invoke-virtual {v3}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->getUnreadMessageCount()I

    move-result v2

    .line 702
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    invoke-virtual {v3, v1, v2}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->updateNotiArea(II)V

    goto :goto_0
.end method
