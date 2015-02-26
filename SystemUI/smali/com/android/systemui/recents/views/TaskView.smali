.class public Lcom/android/systemui/recents/views/TaskView;
.super Landroid/widget/FrameLayout;
.source "TaskView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/android/systemui/recents/model/Task$TaskCallbacks;
.implements Lcom/android/systemui/recents/views/TaskViewFooter$TaskFooterViewCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "Recents_TaskView"


# instance fields
.field mActionButtonView:Landroid/view/View;

.field mActivityInfo:Landroid/content/pm/ActivityInfo;

.field private mApplicationInfos:Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

.field mCb:Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;

.field mClipViewInStack:Z

.field mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

.field mContent:Landroid/view/View;

.field private final mContext:Landroid/content/Context;

.field mDim:I

.field mDimAnimator:Landroid/animation/ObjectAnimator;

.field mDimColorFilter:Landroid/graphics/PorterDuffColorFilter;

.field mDimInterpolator:Landroid/view/animation/AccelerateInterpolator;

.field mFocusAnimationsEnabled:Z

.field mFooterView:Lcom/android/systemui/recents/views/TaskViewFooter;

.field mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

.field mIsFocused:Z

.field mIsFullScreenView:Z

.field mLayerPaint:Landroid/graphics/Paint;

.field mMaxDimScale:F

.field mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

.field mTask:Lcom/android/systemui/recents/model/Task;

.field mTaskDataLoaded:Z

.field mTaskProgress:F

.field mTaskProgressAnimator:Landroid/animation/ObjectAnimator;

.field mThumbnailView:Lcom/android/systemui/recents/views/TaskViewThumbnail;

.field mUpdateDimListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field mViewBounds:Lcom/android/systemui/recents/views/AnimateableViewBounds;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 125
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/recents/views/TaskView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 126
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 129
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/recents/views/TaskView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 130
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 133
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/recents/views/TaskView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 134
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 137
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 88
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mDimInterpolator:Landroid/view/animation/AccelerateInterpolator;

    .line 89
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    const/4 v1, 0x0

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mDimColorFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 98
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mLayerPaint:Landroid/graphics/Paint;

    .line 112
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mApplicationInfos:Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    .line 115
    new-instance v0, Lcom/android/systemui/recents/views/TaskView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/views/TaskView$1;-><init>(Lcom/android/systemui/recents/views/TaskView;)V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mUpdateDimListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 138
    invoke-static {}, Lcom/android/systemui/recents/RecentsConfiguration;->getInstance()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    .line 139
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->taskStackMaxDim:I

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/recents/views/TaskView;->mMaxDimScale:F

    .line 140
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/TaskView;->mClipViewInStack:Z

    .line 141
    new-instance v0, Lcom/android/systemui/recents/views/AnimateableViewBounds;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v1, v1, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewRoundedCornerRadiusPx:I

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/recents/views/AnimateableViewBounds;-><init>(Lcom/android/systemui/recents/views/TaskView;I)V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mViewBounds:Lcom/android/systemui/recents/views/AnimateableViewBounds;

    .line 142
    iput-object p1, p0, Lcom/android/systemui/recents/views/TaskView;->mContext:Landroid/content/Context;

    .line 143
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mContext:Landroid/content/Context;

    const-string v1, "multiwindow_facade"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    .line 144
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mApplicationInfos:Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    .line 145
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->getTaskProgress()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskView;->setTaskProgress(F)V

    .line 146
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->getDim()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskView;->setDim(I)V

    .line 147
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->fakeShadows:Z

    if-eqz v0, :cond_0

    .line 148
    new-instance v0, Lcom/android/systemui/recents/views/FakeShadowDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recents/views/FakeShadowDrawable;-><init>(Landroid/content/res/Resources;Lcom/android/systemui/recents/RecentsConfiguration;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mViewBounds:Lcom/android/systemui/recents/views/AnimateableViewBounds;

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 151
    return-void
.end method

.method private isFactoryMode()Z
    .locals 1

    .prologue
    .line 697
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mContext:Landroid/content/Context;

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


# virtual methods
.method animateDimToProgress(IILandroid/animation/Animator$AnimatorListener;)V
    .locals 5
    .param p1, "delay"    # I
    .param p2, "duration"    # I
    .param p3, "postAnimRunnable"    # Landroid/animation/Animator$AnimatorListener;

    .prologue
    .line 868
    const-string v2, "Recents_TaskView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "animateDimToProgress delay="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->getDimFromTaskProgress()I

    move-result v1

    .line 870
    .local v1, "toDim":I
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->getDim()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 871
    const-string v2, "dim"

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput v1, v3, v4

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 872
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 873
    int-to-long v2, p2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 874
    if-eqz p3, :cond_0

    .line 875
    invoke-virtual {v0, p3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 877
    :cond_0
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 879
    .end local v0    # "anim":Landroid/animation/ObjectAnimator;
    :cond_1
    return-void
.end method

.method animateFooterVisibility(ZI)V
    .locals 2
    .param p1, "visible"    # Z
    .param p2, "duration"    # I

    .prologue
    .line 804
    const-string v0, "Recents_TaskView"

    const-string v1, "animateFooterVisibility is called"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/TaskView;->mIsFullScreenView:Z

    if-eqz v0, :cond_1

    .line 812
    :cond_0
    :goto_0
    return-void

    .line 807
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-boolean v0, v0, Lcom/android/systemui/recents/model/Task;->lockToTaskEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-boolean v0, v0, Lcom/android/systemui/recents/model/Task;->lockToThisTask:Z

    if-eqz v0, :cond_0

    .line 809
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mFooterView:Lcom/android/systemui/recents/views/TaskViewFooter;

    if-eqz v0, :cond_0

    .line 810
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mFooterView:Lcom/android/systemui/recents/views/TaskViewFooter;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/recents/views/TaskViewFooter;->animateFooterVisibility(ZI)V

    goto :goto_0
.end method

.method dismissTask()V
    .locals 3

    .prologue
    .line 633
    const-string v1, "Recents_TaskView"

    const-string v2, "dismissTask is called"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    move-object v0, p0

    .line 635
    .local v0, "tv":Lcom/android/systemui/recents/views/TaskView;
    new-instance v1, Lcom/android/systemui/recents/views/TaskView$10;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/recents/views/TaskView$10;-><init>(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/TaskView;)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/views/TaskView;->startDeleteTaskAnimation(Ljava/lang/Runnable;)V

    .line 642
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v2, v2, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewRemoveAnimDuration:I

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/recents/views/TaskView;->animateFooterVisibility(ZI)V

    .line 643
    return-void
.end method

.method enableFocusAnimations()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 955
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/TaskView;->mFocusAnimationsEnabled:Z

    .line 956
    .local v0, "wasFocusAnimationsEnabled":Z
    iput-boolean v2, p0, Lcom/android/systemui/recents/views/TaskView;->mFocusAnimationsEnabled:Z

    .line 957
    iget-boolean v1, p0, Lcom/android/systemui/recents/views/TaskView;->mIsFocused:Z

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    .line 959
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/views/TaskViewHeader;->onTaskViewFocusChanged(Z)V

    .line 961
    :cond_0
    return-void
.end method

.method public getDim()I
    .locals 3

    .prologue
    .line 861
    const-string v0, "Recents_TaskView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDim is called mDim="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/recents/views/TaskView;->mDim:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    iget v0, p0, Lcom/android/systemui/recents/views/TaskView;->mDim:I

    return v0
.end method

.method getDimFromTaskProgress()I
    .locals 5

    .prologue
    .line 883
    iget v1, p0, Lcom/android/systemui/recents/views/TaskView;->mMaxDimScale:F

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mDimInterpolator:Landroid/view/animation/AccelerateInterpolator;

    const/high16 v3, 0x3f800000    # 1.0f

    iget v4, p0, Lcom/android/systemui/recents/views/TaskView;->mTaskProgress:F

    sub-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/view/animation/AccelerateInterpolator;->getInterpolation(F)F

    move-result v2

    mul-float v0, v1, v2

    .line 884
    .local v0, "dim":F
    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v1, v0

    float-to-int v1, v1

    return v1
.end method

.method public getMaxFooterHeight()I
    .locals 1

    .prologue
    .line 794
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mFooterView:Lcom/android/systemui/recents/views/TaskViewFooter;

    if-eqz v0, :cond_0

    .line 795
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mFooterView:Lcom/android/systemui/recents/views/TaskViewFooter;

    iget v0, v0, Lcom/android/systemui/recents/views/TaskViewFooter;->mMaxFooterHeight:I

    .line 797
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getTask()Lcom/android/systemui/recents/model/Task;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mTask:Lcom/android/systemui/recents/model/Task;

    return-object v0
.end method

.method public getTaskProgress()F
    .locals 1

    .prologue
    .line 824
    iget v0, p0, Lcom/android/systemui/recents/views/TaskView;->mTaskProgress:F

    return v0
.end method

.method getViewBounds()Lcom/android/systemui/recents/views/AnimateableViewBounds;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mViewBounds:Lcom/android/systemui/recents/views/AnimateableViewBounds;

    return-object v0
.end method

.method public handleOnClickMultiWindowBtn(ILandroid/content/Intent;Ljava/lang/String;)V
    .locals 10
    .param p1, "taskId"    # I
    .param p2, "baseIntent"    # Landroid/content/Intent;
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 651
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 652
    .local v3, "mwIntent":Landroid/content/Intent;
    const-string v4, "com.sec.android.app.FlashBarService"

    const-string v5, "com.sec.android.app.FlashBarService.MultiWindowTrayService"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 653
    const-string v4, "recentUI.multiwindow"

    invoke-virtual {v3, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 654
    const-string v4, "recentUI.multiwindow.package"

    invoke-virtual {v3, v4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 655
    const-string v4, "recentUI.multiwindow.taskId"

    invoke-virtual {v3, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 657
    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskView;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v4, v3, v5}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 662
    :goto_0
    if-ltz p1, :cond_1

    .line 663
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskView;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    new-instance v5, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-direct {v5, v8}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>(I)V

    invoke-virtual {v4, p1, v9, v7, v5}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->moveOnlySpecificTaskToFront(ILandroid/os/Bundle;ILcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 676
    :goto_1
    sget-boolean v4, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-nez v4, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/recents/views/TaskView;->isFactoryMode()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 677
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskView;->mContext:Landroid/content/Context;

    const-string v5, "Factory mode cannot support multi window"

    invoke-static {v4, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 681
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 682
    .local v1, "intent":Landroid/content/Intent;
    const-string v4, "com.sec.android.app.FlashBarService"

    const-string v5, "com.sec.android.app.FlashBarService.MultiWindowTrayService"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 683
    const-string v4, "recentUI.multiwindow"

    invoke-virtual {v1, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 684
    const-string v4, "recentUI.multiwindow.package"

    invoke-virtual {v1, v4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 685
    const-string v4, "recentUI.multiwindow.taskId"

    invoke-virtual {v1, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 688
    :try_start_1
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskView;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v4, v1, v5}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 693
    :goto_2
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskView;->mCb:Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;

    invoke-interface {v4}, Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;->dismiss()V

    .line 694
    return-void

    .line 658
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 659
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 665
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    move-object v1, p2

    .line 666
    .restart local v1    # "intent":Landroid/content/Intent;
    const v4, 0x10104000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 671
    new-instance v2, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-direct {v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>()V

    .line 672
    .local v2, "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setMultiWindowStyle(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 673
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskView;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/os/UserHandle;

    const/4 v6, -0x2

    invoke-direct {v5, v6}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v4, v1, v9, v5}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    goto :goto_1

    .line 689
    .end local v2    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :catch_1
    move-exception v0

    .line 690
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public handleOnLongClickTaskView(Landroid/view/View;Lcom/android/systemui/recents/views/TaskView;)V
    .locals 14
    .param p1, "v"    # Landroid/view/View;
    .param p2, "tv"    # Lcom/android/systemui/recents/views/TaskView;

    .prologue
    .line 702
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v10

    iget-object v10, v10, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget-object v4, v10, Lcom/android/systemui/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    .line 703
    .local v4, "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v10

    iget-object v0, v10, Lcom/android/systemui/recents/model/Task;->activityLabel:Ljava/lang/String;

    .line 704
    .local v0, "appName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v10

    iget-object v10, v10, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v9, v10, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    .line 708
    .local v9, "taskId":I
    iget-object v10, p0, Lcom/android/systemui/recents/views/TaskView;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "easy_mode_switch"

    const/4 v12, 0x1

    const/4 v13, -0x2

    invoke-static {v10, v11, v12, v13}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v10

    if-nez v10, :cond_2

    const/4 v5, 0x1

    .line 710
    .local v5, "isEasyModeEnabled":Z
    :goto_0
    iget-object v10, p0, Lcom/android/systemui/recents/views/TaskView;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "enabled_accessibility_s_talkback"

    const/4 v12, 0x0

    const/4 v13, -0x2

    invoke-static {v10, v11, v12, v13}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_3

    const/4 v6, 0x1

    .line 713
    .local v6, "isTalkBackEnabled":Z
    :goto_1
    if-nez v5, :cond_0

    if-eqz v6, :cond_4

    .line 714
    :cond_0
    const-string v10, "Recents_TaskView"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Do not execute because of that :: isEasyModeEnabled = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", isTalkBackEnabled = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    :cond_1
    :goto_2
    return-void

    .line 708
    .end local v5    # "isEasyModeEnabled":Z
    .end local v6    # "isTalkBackEnabled":Z
    :cond_2
    const/4 v5, 0x0

    goto :goto_0

    .line 710
    .restart local v5    # "isEasyModeEnabled":Z
    :cond_3
    const/4 v6, 0x0

    goto :goto_1

    .line 722
    .restart local v6    # "isTalkBackEnabled":Z
    :cond_4
    if-ltz v9, :cond_5

    if-nez v4, :cond_6

    .line 723
    :cond_5
    const-string v10, "Recents_TaskView"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "task has unvalid elements taskId = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 727
    :cond_6
    iget-object v10, p0, Lcom/android/systemui/recents/views/TaskView;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v10, :cond_9

    .line 729
    iget-object v10, p0, Lcom/android/systemui/recents/views/TaskView;->mApplicationInfos:Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    iget-object v11, p0, Lcom/android/systemui/recents/views/TaskView;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v10, v11}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->isSupportScaleApp(Landroid/content/pm/ActivityInfo;)Z

    move-result v10

    if-eqz v10, :cond_7

    iget-object v10, p0, Lcom/android/systemui/recents/views/TaskView;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v10}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    const/16 v11, 0x64

    if-lt v10, v11, :cond_8

    .line 730
    :cond_7
    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object v10, p0, Lcom/android/systemui/recents/views/TaskView;->mContext:Landroid/content/Context;

    const v11, 0x103012b

    invoke-direct {v1, v10, v11}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 731
    .local v1, "context":Landroid/content/Context;
    iget-object v10, p0, Lcom/android/systemui/recents/views/TaskView;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x1040b84

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    invoke-static {v1, v10, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 735
    .end local v1    # "context":Landroid/content/Context;
    :cond_8
    iget-object v10, p0, Lcom/android/systemui/recents/views/TaskView;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "multi_window_enabled"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-eqz v10, :cond_1

    .line 739
    iget-object v10, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    const/4 v11, 0x4

    invoke-virtual {v10, v11}, Lcom/android/systemui/recents/views/TaskViewHeader;->setVisibility(I)V

    .line 740
    const-string v10, ""

    const-string v11, ""

    invoke-static {v10, v11}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v2

    .line 741
    .local v2, "data":Landroid/content/ClipData;
    new-instance v8, Landroid/view/View$DragShadowBuilder;

    invoke-direct {v8, p1}, Landroid/view/View$DragShadowBuilder;-><init>(Landroid/view/View;)V

    .line 742
    .local v8, "shadowBuilder":Landroid/view/View$DragShadowBuilder;
    const/4 v10, 0x0

    invoke-virtual {p1, v2, v8, p1, v10}, Landroid/view/View;->startDrag(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    .line 743
    const/4 v10, 0x0

    invoke-virtual {p1, v10}, Landroid/view/View;->setVisibility(I)V

    .line 745
    new-instance v7, Landroid/content/Intent;

    const-string v10, "android.intent.action.MAIN"

    invoke-direct {v7, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 746
    .local v7, "mwIntent":Landroid/content/Intent;
    const-string v10, "com.sec.android.app.FlashBarService"

    const-string v11, "com.sec.android.app.FlashBarService.MultiWindowTrayService"

    invoke-virtual {v7, v10, v11}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 747
    const-string v10, "com.sec.android.action.RECENT_LONG_PRESS_LAUNCH"

    invoke-virtual {v7, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 748
    const-string v10, "com.sec.android.multiwindow.extra.intent"

    invoke-virtual {v7, v10, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 749
    const-string v10, "com.sec.android.multiwindow.extra.taskId"

    invoke-virtual {v7, v10, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 750
    const-string v10, "com.sec.android.multiwindow.extra.support_multiwindow"

    iget-object v11, p0, Lcom/android/systemui/recents/views/TaskView;->mApplicationInfos:Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    iget-object v12, p0, Lcom/android/systemui/recents/views/TaskView;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v11, v12}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->isSupportMultiWindow(Landroid/content/pm/ActivityInfo;)Z

    move-result v11

    invoke-virtual {v7, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 753
    :try_start_0
    iget-object v10, p0, Lcom/android/systemui/recents/views/TaskView;->mContext:Landroid/content/Context;

    sget-object v11, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v10, v7, v11}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 758
    .end local v2    # "data":Landroid/content/ClipData;
    .end local v7    # "mwIntent":Landroid/content/Intent;
    .end local v8    # "shadowBuilder":Landroid/view/View$DragShadowBuilder;
    :cond_9
    :goto_3
    iget-object v10, p0, Lcom/android/systemui/recents/views/TaskView;->mCb:Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;

    invoke-interface {v10}, Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;->dismiss()V

    goto/16 :goto_2

    .line 754
    .restart local v2    # "data":Landroid/content/ClipData;
    .restart local v7    # "mwIntent":Landroid/content/Intent;
    .restart local v8    # "shadowBuilder":Landroid/view/View$DragShadowBuilder;
    :catch_0
    move-exception v3

    .line 755
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method

.method public isFocusedTask()Z
    .locals 1

    .prologue
    .line 950
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/TaskView;->mIsFocused:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->isFocused()Z

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

.method isFullScreenView()Z
    .locals 1

    .prologue
    .line 773
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/TaskView;->mIsFullScreenView:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 12
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1075
    move-object v6, p0

    .line 1076
    .local v6, "tv":Lcom/android/systemui/recents/views/TaskView;
    if-eq p1, p0, :cond_0

    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    if-eq p1, v7, :cond_0

    move v1, v9

    .line 1077
    .local v1, "delayViewClick":Z
    :goto_0
    if-eqz v1, :cond_1

    .line 1079
    new-instance v7, Lcom/android/systemui/recents/views/TaskView$11;

    invoke-direct {v7, p0, p1, v6}, Lcom/android/systemui/recents/views/TaskView$11;-><init>(Lcom/android/systemui/recents/views/TaskView;Landroid/view/View;Lcom/android/systemui/recents/views/TaskView;)V

    const-wide/16 v8, 0x7d

    invoke-virtual {p0, v7, v8, v9}, Lcom/android/systemui/recents/views/TaskView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1163
    :goto_1
    return-void

    .end local v1    # "delayViewClick":Z
    :cond_0
    move v1, v8

    .line 1076
    goto :goto_0

    .line 1117
    .restart local v1    # "delayViewClick":Z
    :cond_1
    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    if-ne p1, v7, :cond_4

    .line 1119
    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getTranslationZ()F

    move-result v5

    .line 1120
    .local v5, "translationZ":F
    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    const/4 v10, 0x0

    invoke-virtual {v7, v10}, Landroid/view/View;->setTranslationZ(F)V

    .line 1123
    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v10, "multi_window_enabled"

    invoke-static {v7, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v9, :cond_2

    move v3, v9

    .line 1125
    .local v3, "isMultiWindowEnabled":Z
    :goto_2
    if-eqz v3, :cond_3

    .line 1127
    const/4 v4, 0x5

    .line 1128
    .local v4, "theme":I
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v7, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 1129
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v7, 0x7f0d0495

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1130
    const v7, 0x7f0d0496

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1131
    const v7, 0x104000a

    new-instance v8, Lcom/android/systemui/recents/views/TaskView$12;

    invoke-direct {v8, p0, v6, p1}, Lcom/android/systemui/recents/views/TaskView$12;-><init>(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/TaskView;Landroid/view/View;)V

    invoke-virtual {v0, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1142
    const/high16 v7, 0x1040000

    new-instance v8, Lcom/android/systemui/recents/views/TaskView$13;

    invoke-direct {v8, p0, v5}, Lcom/android/systemui/recents/views/TaskView$13;-><init>(Lcom/android/systemui/recents/views/TaskView;F)V

    invoke-virtual {v0, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1149
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 1150
    .local v2, "isAlertDialog":Landroid/app/AlertDialog;
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    goto :goto_1

    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v2    # "isAlertDialog":Landroid/app/AlertDialog;
    .end local v3    # "isMultiWindowEnabled":Z
    .end local v4    # "theme":I
    :cond_2
    move v3, v8

    .line 1123
    goto :goto_2

    .line 1152
    .restart local v3    # "isMultiWindowEnabled":Z
    :cond_3
    const-string v7, "Recents_TaskView"

    const-string v8, "do not pinning by multiwindow."

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1156
    .end local v3    # "isMultiWindowEnabled":Z
    .end local v5    # "translationZ":F
    :cond_4
    iget-object v10, p0, Lcom/android/systemui/recents/views/TaskView;->mCb:Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;

    invoke-virtual {v6}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v11

    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskView;->mFooterView:Lcom/android/systemui/recents/views/TaskViewFooter;

    if-eq p1, v7, :cond_5

    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    if-ne p1, v7, :cond_8

    :cond_5
    move v7, v9

    :goto_3
    invoke-interface {v10, v6, v11, v7}, Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;->onTaskViewClicked(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/model/Task;Z)V

    .line 1158
    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskView;->mCb:Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;

    invoke-virtual {v6}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v10

    iget-object v11, p0, Lcom/android/systemui/recents/views/TaskView;->mFooterView:Lcom/android/systemui/recents/views/TaskViewFooter;

    if-eq p1, v11, :cond_6

    iget-object v11, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    if-ne p1, v11, :cond_7

    :cond_6
    move v8, v9

    :cond_7
    invoke-interface {v7, v6, v10, v8}, Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;->onAltTaskViewClicked(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/model/Task;Z)V

    .line 1160
    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskView;->mCb:Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;

    invoke-interface {v7}, Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;->dismiss()V

    goto/16 :goto_1

    :cond_8
    move v7, v8

    .line 1156
    goto :goto_3
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 170
    const-string v0, "Recents_TaskView"

    const-string v1, "onFinishInflate"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    const v0, 0x7f0e021f

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mContent:Landroid/view/View;

    .line 173
    const v0, 0x7f0e0222

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/views/TaskViewHeader;

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    .line 174
    const v0, 0x7f0e0220

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/views/TaskViewThumbnail;

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mThumbnailView:Lcom/android/systemui/recents/views/TaskViewThumbnail;

    .line 175
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mThumbnailView:Lcom/android/systemui/recents/views/TaskViewThumbnail;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->enableTaskBarClip(Landroid/view/View;)V

    .line 176
    const v0, 0x7f0e0221

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    .line 177
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    new-instance v1, Lcom/android/systemui/recents/views/TaskView$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/views/TaskView$2;-><init>(Lcom/android/systemui/recents/views/TaskView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 184
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mFooterView:Lcom/android/systemui/recents/views/TaskViewFooter;

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mFooterView:Lcom/android/systemui/recents/views/TaskViewFooter;

    invoke-virtual {v0, p0}, Lcom/android/systemui/recents/views/TaskViewFooter;->setCallbacks(Lcom/android/systemui/recents/views/TaskViewFooter$TaskFooterViewCallbacks;)V

    .line 187
    :cond_0
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0
    .param p1, "gainFocus"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 940
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 941
    if-nez p1, :cond_0

    .line 942
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->unsetFocusedTask()V

    .line 944
    :cond_0
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    .line 1169
    const-string v0, "Recents_TaskView"

    const-string v1, "onLongClick is getting called"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1170
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskViewHeader;->mApplicationIcon:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_0

    .line 1171
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mCb:Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;

    invoke-interface {v0, p0}, Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;->onTaskViewAppInfoClicked(Lcom/android/systemui/recents/views/TaskView;)V

    .line 1175
    :goto_0
    return v2

    .line 1174
    :cond_0
    invoke-virtual {p0, p1, p0}, Lcom/android/systemui/recents/views/TaskView;->handleOnLongClickTaskView(Landroid/view/View;Lcom/android/systemui/recents/views/TaskView;)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 9
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v8, -0x80000000

    const/high16 v7, 0x40000000    # 2.0f

    .line 191
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 192
    .local v2, "width":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 194
    .local v0, "height":I
    iget v4, p0, Lcom/android/systemui/recents/views/TaskView;->mPaddingLeft:I

    sub-int v4, v2, v4

    iget v5, p0, Lcom/android/systemui/recents/views/TaskView;->mPaddingRight:I

    sub-int v3, v4, v5

    .line 195
    .local v3, "widthWithoutPadding":I
    iget v4, p0, Lcom/android/systemui/recents/views/TaskView;->mPaddingTop:I

    sub-int v4, v0, v4

    iget v5, p0, Lcom/android/systemui/recents/views/TaskView;->mPaddingBottom:I

    sub-int v1, v4, v5

    .line 198
    .local v1, "heightWithoutPadding":I
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskView;->mContent:Landroid/view/View;

    invoke-static {v3, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-static {v3, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/view/View;->measure(II)V

    .line 202
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-static {v3, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v6, v6, Lcom/android/systemui/recents/RecentsConfiguration;->taskBarHeight:I

    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/android/systemui/recents/views/TaskViewHeader;->measure(II)V

    .line 204
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskView;->mFooterView:Lcom/android/systemui/recents/views/TaskViewFooter;

    if-eqz v4, :cond_0

    .line 205
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskView;->mFooterView:Lcom/android/systemui/recents/views/TaskViewFooter;

    invoke-static {v3, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v6, v6, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewLockToAppButtonHeight:I

    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/android/systemui/recents/views/TaskViewFooter;->measure(II)V

    .line 210
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    invoke-static {v3, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-static {v1, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/view/View;->measure(II)V

    .line 213
    iget-boolean v4, p0, Lcom/android/systemui/recents/views/TaskView;->mIsFullScreenView:Z

    if-eqz v4, :cond_1

    .line 215
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskView;->mThumbnailView:Lcom/android/systemui/recents/views/TaskViewThumbnail;

    invoke-static {v3, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-static {v1, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->measure(II)V

    .line 224
    :goto_0
    invoke-virtual {p0, v2, v0}, Lcom/android/systemui/recents/views/TaskView;->setMeasuredDimension(II)V

    .line 225
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->invalidateOutline()V

    .line 226
    return-void

    .line 220
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskView;->mThumbnailView:Lcom/android/systemui/recents/views/TaskViewThumbnail;

    invoke-static {v3, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-static {v3, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->measure(II)V

    goto :goto_0
.end method

.method public onTaskBound(Lcom/android/systemui/recents/model/Task;)V
    .locals 8
    .param p1, "t"    # Lcom/android/systemui/recents/model/Task;

    .prologue
    const/16 v7, 0x8

    .line 967
    const-string v5, "Recents_TaskView"

    const-string v6, "onTaskBound is getting called"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 968
    iput-object p1, p0, Lcom/android/systemui/recents/views/TaskView;->mTask:Lcom/android/systemui/recents/model/Task;

    .line 969
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskView;->mTask:Lcom/android/systemui/recents/model/Task;

    invoke-virtual {v5, p0}, Lcom/android/systemui/recents/model/Task;->setCallbacks(Lcom/android/systemui/recents/model/Task$TaskCallbacks;)V

    .line 970
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->getMeasuredWidth()I

    move-result v5

    if-nez v5, :cond_2

    .line 972
    iget-boolean v5, p1, Lcom/android/systemui/recents/model/Task;->lockToThisTask:Z

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Lcom/android/systemui/recents/views/TaskView;->animateFooterVisibility(ZI)V

    .line 977
    :goto_0
    iget-boolean v5, p1, Lcom/android/systemui/recents/model/Task;->lockToTaskEnabled:Z

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eq v5, v7, :cond_0

    .line 978
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 980
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskView;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-object v5, v5, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget-object v5, v5, Lcom/android/systemui/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 981
    .local v0, "intent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 982
    .local v2, "pm":Landroid/content/pm/PackageManager;
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    .line 983
    .local v1, "ipm":Landroid/content/pm/IPackageManager;
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v5

    const v6, -0x200001

    and-int/2addr v5, v6

    const/high16 v6, 0x10000000

    or-int/2addr v5, v6

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 985
    const/4 v4, 0x0

    .line 987
    .local v4, "resolveInfo":Landroid/content/pm/ResolveInfo;
    const/4 v5, 0x0

    const/16 v6, 0x80

    :try_start_0
    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskView;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-object v7, v7, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v7, v7, Lcom/android/systemui/recents/model/Task$TaskKey;->userId:I

    invoke-interface {v1, v0, v5, v6, v7}, Landroid/content/pm/IPackageManager;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 991
    :goto_1
    if-eqz v4, :cond_1

    .line 992
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iput-object v5, p0, Lcom/android/systemui/recents/views/TaskView;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 994
    :cond_1
    return-void

    .line 974
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "ipm":Landroid/content/pm/IPackageManager;
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    .end local v4    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_2
    iget-boolean v5, p1, Lcom/android/systemui/recents/model/Task;->lockToThisTask:Z

    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v6, v6, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewLockToAppLongAnimDuration:I

    invoke-virtual {p0, v5, v6}, Lcom/android/systemui/recents/views/TaskView;->animateFooterVisibility(ZI)V

    goto :goto_0

    .line 988
    .restart local v0    # "intent":Landroid/content/Intent;
    .restart local v1    # "ipm":Landroid/content/pm/IPackageManager;
    .restart local v2    # "pm":Landroid/content/pm/PackageManager;
    .restart local v4    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :catch_0
    move-exception v3

    .line 989
    .local v3, "re":Landroid/os/RemoteException;
    const-string v5, "Recents_TaskView"

    const-string v6, "ResolveInfo RemoteEception"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onTaskDataLoaded()V
    .locals 2

    .prologue
    .line 998
    const-string v0, "Recents_TaskView"

    const-string v1, "onTaskDataLoaded is getting called"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 999
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mThumbnailView:Lcom/android/systemui/recents/views/TaskViewThumbnail;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    if-eqz v0, :cond_1

    .line 1001
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/TaskView;->mIsFullScreenView:Z

    if-eqz v0, :cond_2

    .line 1002
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mThumbnailView:Lcom/android/systemui/recents/views/TaskViewThumbnail;

    invoke-static {}, Lcom/android/systemui/recents/AlternateRecentsComponent;->getLastScreenshot()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->bindToScreenshot(Landroid/graphics/Bitmap;)Z

    .line 1006
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mTask:Lcom/android/systemui/recents/model/Task;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/TaskViewHeader;->rebindToTask(Lcom/android/systemui/recents/model/Task;)V

    .line 1008
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskViewHeader;->mApplicationIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1009
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDismissButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1010
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskViewHeader;->mMultiWindowButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1011
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mFooterView:Lcom/android/systemui/recents/views/TaskViewFooter;

    if-eqz v0, :cond_0

    .line 1012
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mFooterView:Lcom/android/systemui/recents/views/TaskViewFooter;

    invoke-virtual {v0, p0}, Lcom/android/systemui/recents/views/TaskViewFooter;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1014
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1016
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->developerOptionsEnabled:Z

    if-eqz v0, :cond_1

    .line 1017
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskViewHeader;->mApplicationIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1021
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/TaskView;->mTaskDataLoaded:Z

    .line 1022
    return-void

    .line 1004
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mThumbnailView:Lcom/android/systemui/recents/views/TaskViewThumbnail;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mTask:Lcom/android/systemui/recents/model/Task;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->rebindToTask(Lcom/android/systemui/recents/model/Task;)V

    goto :goto_0
.end method

.method public onTaskDataUnloaded()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1026
    const-string v0, "Recents_TaskView"

    const-string v1, "onTaskDataUnloaded is getting called"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1027
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mThumbnailView:Lcom/android/systemui/recents/views/TaskViewThumbnail;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    if-eqz v0, :cond_1

    .line 1029
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mTask:Lcom/android/systemui/recents/model/Task;

    invoke-virtual {v0, v2}, Lcom/android/systemui/recents/model/Task;->setCallbacks(Lcom/android/systemui/recents/model/Task$TaskCallbacks;)V

    .line 1030
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mThumbnailView:Lcom/android/systemui/recents/views/TaskViewThumbnail;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->unbindFromTask()V

    .line 1031
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskViewHeader;->unbindFromTask()V

    .line 1033
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskViewHeader;->mApplicationIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1034
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDismissButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1035
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskViewHeader;->mMultiWindowButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1036
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mFooterView:Lcom/android/systemui/recents/views/TaskViewFooter;

    if-eqz v0, :cond_0

    .line 1037
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mFooterView:Lcom/android/systemui/recents/views/TaskViewFooter;

    invoke-virtual {v0, v2}, Lcom/android/systemui/recents/views/TaskViewFooter;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1039
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1041
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskViewHeader;->mApplicationIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1044
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/TaskView;->mTaskDataLoaded:Z

    .line 1045
    return-void
.end method

.method public onTaskFooterHeightChanged(II)V
    .locals 2
    .param p1, "height"    # I
    .param p2, "maxHeight"    # I

    .prologue
    .line 1062
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/TaskView;->mIsFullScreenView:Z

    if-eqz v0, :cond_0

    .line 1064
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mViewBounds:Lcom/android/systemui/recents/views/AnimateableViewBounds;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/AnimateableViewBounds;->setOutlineClipBottom(I)V

    .line 1069
    :goto_0
    return-void

    .line 1067
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mViewBounds:Lcom/android/systemui/recents/views/AnimateableViewBounds;

    sub-int v1, p2, p1

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/AnimateableViewBounds;->setOutlineClipBottom(I)V

    goto :goto_0
.end method

.method prepareEnterRecentsAnimation(ZZI)V
    .locals 4
    .param p1, "isTaskViewLaunchTargetTask"    # Z
    .param p2, "occludesLaunchTarget"    # Z
    .param p3, "offscreenY"    # I

    .prologue
    const/4 v3, 0x0

    .line 297
    const-string v1, "Recents_TaskView"

    const-string v2, "prepareEnterRecentsAnimation is called"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->getDim()I

    move-result v0

    .line 299
    .local v0, "initialDim":I
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v1, v1, Lcom/android/systemui/recents/RecentsConfiguration;->launchedFromAppWithScreenshot:Z

    if-eqz v1, :cond_1

    .line 300
    if-eqz p1, :cond_0

    .line 302
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mFooterView:Lcom/android/systemui/recents/views/TaskViewFooter;

    if-eqz v1, :cond_0

    .line 303
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mFooterView:Lcom/android/systemui/recents/views/TaskViewFooter;

    invoke-virtual {v1, v3, v3}, Lcom/android/systemui/recents/views/TaskViewFooter;->animateFooterVisibility(ZI)V

    .line 332
    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskView;->setDim(I)V

    .line 334
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mThumbnailView:Lcom/android/systemui/recents/views/TaskViewThumbnail;

    invoke-virtual {v1, p1}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->prepareEnterRecentsAnimation(Z)V

    .line 335
    return-void

    .line 309
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v1, v1, Lcom/android/systemui/recents/RecentsConfiguration;->launchedFromAppWithThumbnail:Z

    if-eqz v1, :cond_0

    .line 310
    if-eqz p1, :cond_2

    .line 312
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 314
    const/4 v0, 0x0

    goto :goto_0

    .line 315
    :cond_2
    if-eqz p2, :cond_0

    .line 317
    int-to-float v1, p3

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/views/TaskView;->setTranslationY(F)V

    goto :goto_0
.end method

.method prepareTaskTransformForFilterTaskHidden(Lcom/android/systemui/recents/views/TaskViewTransform;)V
    .locals 3
    .param p1, "toTransform"    # Lcom/android/systemui/recents/views/TaskViewTransform;

    .prologue
    const/4 v2, 0x0

    .line 277
    const-string v0, "Recents_TaskView"

    const-string v1, "prepareTaskTransformForFilterTaskHidden is called"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    iput v2, p1, Lcom/android/systemui/recents/views/TaskViewTransform;->alpha:F

    .line 279
    iget v0, p1, Lcom/android/systemui/recents/views/TaskViewTransform;->translationY:I

    add-int/lit16 v0, v0, 0xc8

    iput v0, p1, Lcom/android/systemui/recents/views/TaskViewTransform;->translationY:I

    .line 280
    iput v2, p1, Lcom/android/systemui/recents/views/TaskViewTransform;->translationZ:F

    .line 281
    return-void
.end method

.method prepareTaskTransformForFilterTaskVisible(Lcom/android/systemui/recents/views/TaskViewTransform;)V
    .locals 2
    .param p1, "fromTransform"    # Lcom/android/systemui/recents/views/TaskViewTransform;

    .prologue
    .line 289
    const-string v0, "Recents_TaskView"

    const-string v1, "prepareTaskTransformForFilterTaskVisible is called"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    const/4 v0, 0x0

    iput v0, p1, Lcom/android/systemui/recents/views/TaskViewTransform;->alpha:F

    .line 291
    return-void
.end method

.method resetViewProperties()V
    .locals 1

    .prologue
    .line 267
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskView;->setDim(I)V

    .line 268
    invoke-static {p0}, Lcom/android/systemui/recents/views/TaskViewTransform;->reset(Landroid/view/View;)V

    .line 269
    return-void
.end method

.method setCallbacks(Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;)V
    .locals 0
    .param p1, "cb"    # Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/android/systemui/recents/views/TaskView;->mCb:Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;

    .line 156
    return-void
.end method

.method setClipViewInStack(Z)V
    .locals 1
    .param p1, "clip"    # Z

    .prologue
    .line 786
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/TaskView;->mClipViewInStack:Z

    if-eq p1, v0, :cond_0

    .line 787
    iput-boolean p1, p0, Lcom/android/systemui/recents/views/TaskView;->mClipViewInStack:Z

    .line 788
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mCb:Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;

    invoke-interface {v0, p0}, Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;->onTaskViewClipStateChanged(Lcom/android/systemui/recents/views/TaskView;)V

    .line 790
    :cond_0
    return-void
.end method

.method public setDim(I)V
    .locals 5
    .param p1, "dim"    # I

    .prologue
    .line 829
    const-string v2, "Recents_TaskView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setDim is called dim="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    iput p1, p0, Lcom/android/systemui/recents/views/TaskView;->mDim:I

    .line 831
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mDimAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v2, :cond_0

    .line 832
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mDimAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->removeAllListeners()V

    .line 833
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mDimAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 835
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v2, v2, Lcom/android/systemui/recents/RecentsConfiguration;->useHardwareLayers:Z

    if-eqz v2, :cond_3

    .line 837
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->getMeasuredWidth()I

    move-result v2

    if-lez v2, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->getMeasuredHeight()I

    move-result v2

    if-lez v2, :cond_2

    .line 838
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mDimAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v2, :cond_1

    .line 839
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mDimAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->removeAllListeners()V

    .line 840
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mDimAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 843
    :cond_1
    iget v2, p0, Lcom/android/systemui/recents/views/TaskView;->mDim:I

    rsub-int v1, v2, 0xff

    .line 844
    .local v1, "inverse":I
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mDimColorFilter:Landroid/graphics/PorterDuffColorFilter;

    const/16 v3, 0xff

    invoke-static {v3, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/PorterDuffColorFilter;->setColor(I)V

    .line 845
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mLayerPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskView;->mDimColorFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 846
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mContent:Landroid/view/View;

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskView;->mLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v3, v4}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 857
    .end local v1    # "inverse":I
    :cond_2
    :goto_0
    return-void

    .line 849
    :cond_3
    iget v2, p0, Lcom/android/systemui/recents/views/TaskView;->mDim:I

    int-to-float v2, v2

    const/high16 v3, 0x437f0000    # 255.0f

    div-float v0, v2, v3

    .line 850
    .local v0, "dimAlpha":F
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mThumbnailView:Lcom/android/systemui/recents/views/TaskViewThumbnail;

    if-eqz v2, :cond_4

    .line 851
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mThumbnailView:Lcom/android/systemui/recents/views/TaskViewThumbnail;

    invoke-virtual {v2, v0}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->setDimAlpha(F)V

    .line 853
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    if-eqz v2, :cond_2

    .line 854
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v2, p1}, Lcom/android/systemui/recents/views/TaskViewHeader;->setDimAlpha(I)V

    goto :goto_0
.end method

.method public setFocusedTask()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 900
    iput-boolean v1, p0, Lcom/android/systemui/recents/views/TaskView;->mIsFocused:Z

    .line 901
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/TaskView;->mFocusAnimationsEnabled:Z

    if-eqz v0, :cond_0

    .line 903
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/TaskViewHeader;->onTaskViewFocusChanged(Z)V

    .line 906
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mThumbnailView:Lcom/android/systemui/recents/views/TaskViewThumbnail;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->onFocusChanged(Z)V

    .line 908
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mCb:Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;

    invoke-interface {v0, p0, v1}, Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;->onTaskViewFocusChanged(Lcom/android/systemui/recents/views/TaskView;Z)V

    .line 912
    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/views/TaskView;->setFocusableInTouchMode(Z)V

    .line 913
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->requestFocus()Z

    .line 914
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskView;->setFocusableInTouchMode(Z)V

    .line 915
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->invalidate()V

    .line 916
    return-void
.end method

.method setIsFullScreen(Z)V
    .locals 2
    .param p1, "isFullscreen"    # Z

    .prologue
    .line 763
    iput-boolean p1, p0, Lcom/android/systemui/recents/views/TaskView;->mIsFullScreenView:Z

    .line 764
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v0, p1}, Lcom/android/systemui/recents/views/TaskViewHeader;->setIsFullscreen(Z)V

    .line 765
    if-eqz p1, :cond_0

    .line 767
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mViewBounds:Lcom/android/systemui/recents/views/AnimateableViewBounds;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/AnimateableViewBounds;->setOutlineClipBottom(I)V

    .line 769
    :cond_0
    return-void
.end method

.method setLongTouchEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 1055
    if-eqz p1, :cond_0

    move-object v0, p0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1056
    return-void

    .line 1055
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setNoUserInteractionState(Z)V
    .locals 6
    .param p1, "show"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 619
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "multi_window_enabled"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_2

    move v1, v2

    .line 621
    .local v1, "isMultiWindowEnabled":Z
    :goto_0
    const/4 v0, 0x0

    .line 622
    .local v0, "isKnoxMode":Z
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskView;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskView;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v4, :cond_0

    .line 623
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskView;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    const/16 v5, 0x64

    if-lt v4, v5, :cond_3

    move v0, v2

    .line 625
    :cond_0
    :goto_1
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v4}, Lcom/android/systemui/recents/views/TaskViewHeader;->setNoUserInteractionState()V

    .line 626
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskView;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-boolean v4, v4, Lcom/android/systemui/recents/model/Task;->isMultiWindowVisible:Z

    if-eqz v4, :cond_1

    .line 627
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    if-eqz p1, :cond_4

    if-eqz v1, :cond_4

    if-nez v0, :cond_4

    :goto_2
    invoke-virtual {v4, v2}, Lcom/android/systemui/recents/views/TaskViewHeader;->setNoUserInteractionStateForMultiWindow(Z)V

    .line 628
    :cond_1
    return-void

    .end local v0    # "isKnoxMode":Z
    .end local v1    # "isMultiWindowEnabled":Z
    :cond_2
    move v1, v3

    .line 619
    goto :goto_0

    .restart local v0    # "isKnoxMode":Z
    .restart local v1    # "isMultiWindowEnabled":Z
    :cond_3
    move v0, v3

    .line 623
    goto :goto_1

    :cond_4
    move v2, v3

    .line 627
    goto :goto_2
.end method

.method public setTaskProgress(F)V
    .locals 3
    .param p1, "p"    # F

    .prologue
    .line 816
    iput p1, p0, Lcom/android/systemui/recents/views/TaskView;->mTaskProgress:F

    .line 817
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mViewBounds:Lcom/android/systemui/recents/views/AnimateableViewBounds;

    invoke-virtual {v0, p1}, Lcom/android/systemui/recents/views/AnimateableViewBounds;->setAlpha(F)V

    .line 818
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->updateDimFromTaskProgress()V

    .line 819
    const-string v0, "Recents_TaskView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTaskProgress is called mTaskProgress="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    return-void
.end method

.method setTouchEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 1049
    if-eqz p1, :cond_0

    move-object v0, p0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1050
    return-void

    .line 1049
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method shouldClipViewInStack()Z
    .locals 1

    .prologue
    .line 781
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/TaskView;->mClipViewInStack:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/recents/views/TaskView;->mIsFullScreenView:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method startDeleteTaskAnimation(Ljava/lang/Runnable;)V
    .locals 4
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 578
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskView;->setClipViewInStack(Z)V

    .line 579
    const-string v0, "Recents_TaskView"

    const-string v1, "startDeleteTaskAnimation is called"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v1, v1, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewRemoveAnimTranslationXPx:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-object v1, v1, Lcom/android/systemui/recents/RecentsConfiguration;->fastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v1, v1, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewRemoveAnimDuration:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/views/TaskView$9;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/recents/views/TaskView$9;-><init>(Lcom/android/systemui/recents/views/TaskView;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 601
    return-void
.end method

.method startEnterRecentsAnimation(Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;)V
    .locals 20
    .param p1, "ctx"    # Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;

    .prologue
    .line 339
    const-string v16, "Recents_TaskView"

    const-string v17, "startEnterRecentsAnimation is called"

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;->currentTaskTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 341
    .local v14, "transform":Lcom/android/systemui/recents/views/TaskViewTransform;
    const/4 v11, 0x0

    .line 343
    .local v11, "startDelay":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->launchedFromAppWithScreenshot:Z

    move/from16 v16, v0

    if-eqz v16, :cond_2

    .line 344
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskView;->mTask:Lcom/android/systemui/recents/model/Task;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/android/systemui/recents/model/Task;->isLaunchTarget:Z

    move/from16 v16, v0

    if-eqz v16, :cond_1

    .line 345
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;->currentTaskRect:Landroid/graphics/Rect;

    .line 346
    .local v12, "taskRect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewEnterFromHomeDuration:I

    move/from16 v16, v0

    mul-int/lit8 v5, v16, 0xa

    .line 347
    .local v5, "duration":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->systemInsets:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v15, v0, Landroid/graphics/Rect;->top:I

    .line 348
    .local v15, "windowInsetTop":I
    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/views/TaskView;->getMeasuredWidth()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    div-float v16, v16, v17

    iget v0, v14, Lcom/android/systemui/recents/views/TaskViewTransform;->scale:F

    move/from16 v17, v0

    mul-float v13, v16, v17

    .line 349
    .local v13, "taskScale":F
    const/high16 v16, 0x3f800000    # 1.0f

    sub-float v16, v16, v13

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/views/TaskView;->getMeasuredHeight()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v16, v16, v17

    const/high16 v17, 0x40000000    # 2.0f

    div-float v9, v16, v17

    .line 350
    .local v9, "scaledYOffset":F
    int-to-float v0, v15

    move/from16 v16, v0

    mul-float v16, v16, v13

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v8, v0

    .line 351
    .local v8, "scaledWindowInsetTop":F
    iget v0, v12, Landroid/graphics/Rect;->top:I

    move/from16 v16, v0

    iget v0, v14, Lcom/android/systemui/recents/views/TaskViewTransform;->translationY:I

    move/from16 v17, v0

    add-int v16, v16, v17

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    add-float v17, v8, v9

    sub-float v7, v16, v17

    .line 353
    .local v7, "scaledTranslationY":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v11, v0, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewEnterFromHomeStaggerDelay:I

    .line 356
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskView;->mViewBounds:Lcom/android/systemui/recents/views/AnimateableViewBounds;

    move-object/from16 v16, v0

    new-instance v17, Lcom/android/systemui/recents/views/TaskView$3;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/recents/views/TaskView$3;-><init>(Lcom/android/systemui/recents/views/TaskView;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v15, v5, v1}, Lcom/android/systemui/recents/views/AnimateableViewBounds;->animateClipTop(IILandroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 365
    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    div-float v16, v16, v13

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->round(F)I

    move-result v10

    .line 366
    .local v10, "size":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/recents/RecentsConfiguration;->hasHorizontalLayout()Z

    move-result v16

    if-eqz v16, :cond_0

    .line 367
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskView;->mViewBounds:Lcom/android/systemui/recents/views/AnimateableViewBounds;

    move-object/from16 v16, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/views/TaskView;->getMeasuredWidth()I

    move-result v17

    sub-int v17, v17, v10

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v0, v1, v5}, Lcom/android/systemui/recents/views/AnimateableViewBounds;->animateClipRight(II)V

    .line 372
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/views/TaskView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v16

    int-to-long v0, v5

    move-wide/from16 v18, v0

    move-object/from16 v0, v16

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v16

    new-instance v17, Lcom/android/systemui/recents/views/TaskView$4;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recents/views/TaskView$4;-><init>(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;)V

    invoke-virtual/range {v16 .. v17}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 408
    .end local v5    # "duration":I
    .end local v7    # "scaledTranslationY":F
    .end local v8    # "scaledWindowInsetTop":F
    .end local v9    # "scaledYOffset":F
    .end local v10    # "size":I
    .end local v12    # "taskRect":Landroid/graphics/Rect;
    .end local v13    # "taskScale":F
    .end local v15    # "windowInsetTop":I
    :goto_1
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;->postAnimationTrigger:Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->increment()V

    .line 505
    :goto_2
    new-instance v16, Lcom/android/systemui/recents/views/TaskView$8;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/recents/views/TaskView$8;-><init>(Lcom/android/systemui/recents/views/TaskView;)V

    div-int/lit8 v17, v11, 0x2

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-wide/from16 v2, v18

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/recents/views/TaskView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 511
    return-void

    .line 369
    .restart local v5    # "duration":I
    .restart local v7    # "scaledTranslationY":F
    .restart local v8    # "scaledWindowInsetTop":F
    .restart local v9    # "scaledYOffset":F
    .restart local v10    # "size":I
    .restart local v12    # "taskRect":Landroid/graphics/Rect;
    .restart local v13    # "taskScale":F
    .restart local v15    # "windowInsetTop":I
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskView;->mViewBounds:Lcom/android/systemui/recents/views/AnimateableViewBounds;

    move-object/from16 v16, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/views/TaskView;->getMeasuredHeight()I

    move-result v17

    add-int v18, v15, v10

    sub-int v17, v17, v18

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v0, v1, v5}, Lcom/android/systemui/recents/views/AnimateableViewBounds;->animateClipBottom(II)V

    goto :goto_0

    .line 406
    .end local v5    # "duration":I
    .end local v7    # "scaledTranslationY":F
    .end local v8    # "scaledWindowInsetTop":F
    .end local v9    # "scaledYOffset":F
    .end local v10    # "size":I
    .end local v12    # "taskRect":Landroid/graphics/Rect;
    .end local v13    # "taskScale":F
    .end local v15    # "windowInsetTop":I
    :cond_1
    const/16 v16, 0x1

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/recents/views/TaskView;->animateFooterVisibility(ZI)V

    goto :goto_1

    .line 410
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->launchedFromAppWithThumbnail:Z

    move/from16 v16, v0

    if-eqz v16, :cond_5

    .line 411
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskView;->mTask:Lcom/android/systemui/recents/model/Task;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/android/systemui/recents/model/Task;->isLaunchTarget:Z

    move/from16 v16, v0

    if-eqz v16, :cond_4

    .line 426
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->taskBarEnterAnimDelay:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->taskBarEnterAnimDuration:I

    move/from16 v17, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;->postAnimationTrigger:Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->decrementOnAnimationEnd()Landroid/animation/Animator$AnimatorListener;

    move-result-object v18

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/recents/views/TaskView;->animateDimToProgress(IILandroid/animation/Animator$AnimatorListener;)V

    .line 430
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;->postAnimationTrigger:Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->increment()V

    .line 433
    const/16 v16, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->taskBarEnterAnimDuration:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/recents/views/TaskView;->animateFooterVisibility(ZI)V

    .line 436
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v16

    const/high16 v17, 0x3f800000    # 1.0f

    invoke-virtual/range {v16 .. v17}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->taskBarEnterAnimDelay:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v18, v0

    move-object/from16 v0, v16

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->taskBarEnterAnimDuration:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v18, v0

    move-object/from16 v0, v16

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->fastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 464
    :cond_3
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v11, v0, Lcom/android/systemui/recents/RecentsConfiguration;->taskBarEnterAnimDelay:I

    goto/16 :goto_2

    .line 444
    :cond_4
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;->currentTaskOccludesLaunchTarget:Z

    move/from16 v16, v0

    if-eqz v16, :cond_3

    .line 445
    iget v0, v14, Lcom/android/systemui/recents/views/TaskViewTransform;->translationY:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewAffiliateGroupEnterOffsetPx:I

    move/from16 v17, v0

    add-int v16, v16, v17

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/TaskView;->setTranslationY(F)V

    .line 446
    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/TaskView;->setAlpha(F)V

    .line 447
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/views/TaskView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v16

    const/high16 v17, 0x3f800000    # 1.0f

    invoke-virtual/range {v16 .. v17}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v16

    iget v0, v14, Lcom/android/systemui/recents/views/TaskViewTransform;->translationY:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->taskBarEnterAnimDelay:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v18, v0

    move-object/from16 v0, v16

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v16

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->fastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewEnterFromHomeDuration:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v18, v0

    move-object/from16 v0, v16

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v16

    new-instance v17, Lcom/android/systemui/recents/views/TaskView$6;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recents/views/TaskView$6;-><init>(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;)V

    invoke-virtual/range {v16 .. v17}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 461
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;->postAnimationTrigger:Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->increment()V

    goto/16 :goto_3

    .line 466
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->launchedFromHome:Z

    move/from16 v16, v0

    if-eqz v16, :cond_7

    .line 468
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;->currentStackViewCount:I

    move/from16 v16, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;->currentStackViewIndex:I

    move/from16 v17, v0

    sub-int v16, v16, v17

    add-int/lit8 v6, v16, -0x1

    .line 469
    .local v6, "frontIndex":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewEnterFromHomeDelay:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewEnterFromHomeStaggerDelay:I

    move/from16 v17, v0

    mul-int v17, v17, v6

    add-int v4, v16, v17

    .line 472
    .local v4, "delay":I
    iget v0, v14, Lcom/android/systemui/recents/views/TaskViewTransform;->scale:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/TaskView;->setScaleX(F)V

    .line 473
    iget v0, v14, Lcom/android/systemui/recents/views/TaskViewTransform;->scale:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/TaskView;->setScaleY(F)V

    .line 474
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->fakeShadows:Z

    move/from16 v16, v0

    if-nez v16, :cond_6

    .line 475
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/views/TaskView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v16

    iget v0, v14, Lcom/android/systemui/recents/views/TaskViewTransform;->translationZ:F

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/view/ViewPropertyAnimator;->translationZ(F)Landroid/view/ViewPropertyAnimator;

    .line 477
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/views/TaskView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v16

    iget v0, v14, Lcom/android/systemui/recents/views/TaskViewTransform;->translationY:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v16

    int-to-long v0, v4

    move-wide/from16 v18, v0

    move-object/from16 v0, v16

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v16

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;->updateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->quintOutInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewEnterFromHomeDuration:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewEnterFromHomeStaggerDelay:I

    move/from16 v18, v0

    mul-int v18, v18, v6

    add-int v17, v17, v18

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v18, v0

    move-object/from16 v0, v16

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v16

    new-instance v17, Lcom/android/systemui/recents/views/TaskView$7;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recents/views/TaskView$7;-><init>(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;)V

    invoke-virtual/range {v16 .. v17}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 492
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;->postAnimationTrigger:Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->increment()V

    .line 495
    const/16 v16, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewEnterFromHomeDuration:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/recents/views/TaskView;->animateFooterVisibility(ZI)V

    .line 496
    move v11, v4

    .line 498
    goto/16 :goto_2

    .line 500
    .end local v4    # "delay":I
    .end local v6    # "frontIndex":I
    :cond_7
    const/16 v16, 0x1

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/recents/views/TaskView;->animateFooterVisibility(ZI)V

    goto/16 :goto_2
.end method

.method startExitToHomeAnimation(Lcom/android/systemui/recents/views/ViewAnimation$TaskViewExitContext;)V
    .locals 4
    .param p1, "ctx"    # Lcom/android/systemui/recents/views/ViewAnimation$TaskViewExitContext;

    .prologue
    .line 515
    const-string v0, "Recents_TaskView"

    const-string v1, "startExitToHomeAnimation is called"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p1, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewExitContext;->offscreenTranslationY:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-object v1, v1, Lcom/android/systemui/recents/RecentsConfiguration;->fastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v1, v1, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewExitToHomeDuration:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p1, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewExitContext;->postAnimationTrigger:Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    invoke-virtual {v1}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->decrementAsRunnable()Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 524
    iget-object v0, p1, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewExitContext;->postAnimationTrigger:Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->increment()V

    .line 525
    return-void
.end method

.method startLaunchTaskAnimation(Ljava/lang/Runnable;ZZZ)V
    .locals 8
    .param p1, "postAnimRunnable"    # Ljava/lang/Runnable;
    .param p2, "isLaunchingTask"    # Z
    .param p3, "occludesLaunchTarget"    # Z
    .param p4, "lockToTask"    # Z

    .prologue
    const-wide/16 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 530
    const-string v2, "Recents_TaskView"

    const-string v3, "startLaunchTaskAnimation is called"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    if-eqz p2, :cond_3

    .line 533
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mThumbnailView:Lcom/android/systemui/recents/views/TaskViewThumbnail;

    invoke-virtual {v2, p1}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->startLaunchTaskAnimation(Ljava/lang/Runnable;)V

    .line 536
    iget v2, p0, Lcom/android/systemui/recents/views/TaskView;->mDim:I

    if-lez v2, :cond_0

    .line 537
    const-string v2, "dim"

    const/4 v3, 0x1

    new-array v3, v3, [I

    aput v5, v3, v5

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 538
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v2, v2, Lcom/android/systemui/recents/RecentsConfiguration;->taskBarExitAnimDuration:I

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 539
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-object v2, v2, Lcom/android/systemui/recents/RecentsConfiguration;->fastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 540
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 544
    .end local v0    # "anim":Landroid/animation/ObjectAnimator;
    :cond_0
    if-nez p4, :cond_1

    .line 545
    const v1, 0x3f666666    # 0.9f

    .line 546
    .local v1, "toScale":F
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    .line 550
    .end local v1    # "toScale":F
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v3, v3, Lcom/android/systemui/recents/RecentsConfiguration;->taskBarExitAnimDuration:I

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-object v3, v3, Lcom/android/systemui/recents/RecentsConfiguration;->fastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 573
    :cond_2
    :goto_0
    return-void

    .line 559
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskViewHeader;->startLaunchTaskDismissAnimation()V

    .line 560
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-boolean v2, v2, Lcom/android/systemui/recents/model/Task;->isMultiWindowVisible:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskViewHeader;->startLaunchMultiWindowAnimation()V

    .line 563
    :cond_4
    if-eqz p3, :cond_2

    .line 564
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->getTranslationY()F

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v4, v4, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewAffiliateGroupEnterOffsetPx:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-object v3, v3, Lcom/android/systemui/recents/RecentsConfiguration;->fastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v3, v3, Lcom/android/systemui/recents/RecentsConfiguration;->taskBarExitAnimDuration:I

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0
.end method

.method startNoUserInteractionAnimation()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 605
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "multi_window_enabled"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_2

    move v1, v2

    .line 607
    .local v1, "isMultiWindowEnabled":Z
    :goto_0
    const/4 v0, 0x0

    .line 608
    .local v0, "isKnoxMode":Z
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskView;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskView;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v4, :cond_0

    .line 609
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskView;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    const/16 v5, 0x64

    if-lt v4, v5, :cond_3

    move v0, v2

    .line 611
    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskViewHeader;->startNoUserInteractionAnimation()V

    .line 612
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-boolean v2, v2, Lcom/android/systemui/recents/model/Task;->isMultiWindowVisible:Z

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    .line 613
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskViewHeader;->startNoUserInteractionAnimationForMultiWindow()V

    .line 615
    :cond_1
    return-void

    .end local v0    # "isKnoxMode":Z
    .end local v1    # "isMultiWindowEnabled":Z
    :cond_2
    move v1, v3

    .line 605
    goto :goto_0

    .restart local v0    # "isKnoxMode":Z
    .restart local v1    # "isMultiWindowEnabled":Z
    :cond_3
    move v0, v3

    .line 609
    goto :goto_1
.end method

.method unsetFocusedTask()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 922
    iput-boolean v1, p0, Lcom/android/systemui/recents/views/TaskView;->mIsFocused:Z

    .line 923
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/TaskView;->mFocusAnimationsEnabled:Z

    if-eqz v0, :cond_0

    .line 925
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/TaskViewHeader;->onTaskViewFocusChanged(Z)V

    .line 929
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mThumbnailView:Lcom/android/systemui/recents/views/TaskViewThumbnail;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->onFocusChanged(Z)V

    .line 931
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mCb:Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;

    invoke-interface {v0, p0, v1}, Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;->onTaskViewFocusChanged(Lcom/android/systemui/recents/views/TaskView;Z)V

    .line 932
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->invalidate()V

    .line 933
    return-void
.end method

.method updateDimFromTaskProgress()V
    .locals 1

    .prologue
    .line 889
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->getDimFromTaskProgress()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskView;->setDim(I)V

    .line 890
    return-void
.end method

.method updateViewPropertiesToTaskTransform(Lcom/android/systemui/recents/views/TaskViewTransform;I)V
    .locals 1
    .param p1, "toTransform"    # Lcom/android/systemui/recents/views/TaskViewTransform;
    .param p2, "duration"    # I

    .prologue
    .line 230
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/systemui/recents/views/TaskView;->updateViewPropertiesToTaskTransform(Lcom/android/systemui/recents/views/TaskViewTransform;ILandroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 231
    return-void
.end method

.method updateViewPropertiesToTaskTransform(Lcom/android/systemui/recents/views/TaskViewTransform;ILandroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 8
    .param p1, "toTransform"    # Lcom/android/systemui/recents/views/TaskViewTransform;
    .param p2, "duration"    # I
    .param p3, "updateCallback"    # Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .prologue
    const/4 v7, 0x1

    const/4 v4, 0x0

    .line 237
    const-string v0, "Recents_TaskView"

    const-string v1, "updateViewPropertiesToTaskTransform is called"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/TaskView;->mIsFullScreenView:Z

    if-eqz v0, :cond_1

    .line 239
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->fakeShadows:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->getTranslationZ()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/systemui/recents/views/TaskViewTransform;->hasTranslationZChangedFrom(F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    iget v0, p1, Lcom/android/systemui/recents/views/TaskViewTransform;->translationZ:F

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskView;->setTranslationZ(F)V

    .line 263
    :cond_0
    :goto_0
    return-void

    .line 247
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-object v3, v0, Lcom/android/systemui/recents/RecentsConfiguration;->fastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->fakeShadows:Z

    if-nez v0, :cond_3

    move v5, v7

    :goto_1
    move-object v0, p1

    move-object v1, p0

    move v2, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/recents/views/TaskViewTransform;->applyToTaskView(Landroid/view/View;ILandroid/view/animation/Interpolator;ZZLandroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 251
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mTaskProgressAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_2

    .line 252
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mTaskProgressAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->removeAllListeners()V

    .line 253
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mTaskProgressAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 255
    :cond_2
    if-gtz p2, :cond_4

    .line 256
    iget v0, p1, Lcom/android/systemui/recents/views/TaskViewTransform;->p:F

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskView;->setTaskProgress(F)V

    goto :goto_0

    :cond_3
    move v5, v4

    .line 247
    goto :goto_1

    .line 258
    :cond_4
    const-string v0, "taskProgress"

    new-array v1, v7, [F

    iget v2, p1, Lcom/android/systemui/recents/views/TaskViewTransform;->p:F

    aput v2, v1, v4

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mTaskProgressAnimator:Landroid/animation/ObjectAnimator;

    .line 259
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mTaskProgressAnimator:Landroid/animation/ObjectAnimator;

    int-to-long v2, p2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 260
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mTaskProgressAnimator:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mUpdateDimListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 261
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mTaskProgressAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0
.end method
