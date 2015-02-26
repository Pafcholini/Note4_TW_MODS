.class public Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;
.super Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;
.source "SViewCoverNewUnlockArea.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$16;,
        Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$Dir;
    }
.end annotation


# static fields
.field protected static final TAG:Ljava/lang/String; = "SViewCoverNewUnlockArea"


# instance fields
.field private final IN_ANIMATION_DURATION:I

.field private final OUT_ANIMATION_DURATION:I

.field private circleAnimationMax:F

.field private circleAnimationMin:F

.field private dragAnimationValue:F

.field private fillAnimationValueMax:F

.field private mArrowCamera:Landroid/widget/ImageView;

.field private mArrowNoti:Landroid/widget/ImageView;

.field private mArrowSetting:Landroid/widget/ImageView;

.field private mCameraBgNormal:Landroid/widget/ImageView;

.field private mCameraBgPressed:Landroid/widget/ImageView;

.field private mCameraButton:Landroid/widget/ImageView;

.field private mCameraCircleEffect:Lcom/sec/android/cover/sviewcover/SViewCoverUnlockCircleEffect;

.field private mCameraCircleInAnimator:Landroid/animation/ValueAnimator;

.field private mCameraCircleOutAnimator:Landroid/animation/ValueAnimator;

.field private mCameraContainer:Landroid/widget/RelativeLayout;

.field private mContext:Landroid/content/Context;

.field private mDistance:D

.field private mIsFirstNoti:Z

.field private mIsMultiTouched:Z

.field private mNotiBgNormal:Landroid/widget/ImageView;

.field private mNotiBgPressed:Landroid/widget/ImageView;

.field private mNotiCircleEffect:Lcom/sec/android/cover/sviewcover/SViewCoverUnlockCircleEffect;

.field private mNotiCircleInAnimator:Landroid/animation/ValueAnimator;

.field private mNotiCircleOutAnimator:Landroid/animation/ValueAnimator;

.field private mNotiContainer:Landroid/widget/RelativeLayout;

.field private mNotiMultiContainer:Landroid/widget/LinearLayout;

.field private mNotiMultiMissedCallCount:Landroid/widget/TextView;

.field private mNotiMultiMissedCallImage:Landroid/widget/ImageView;

.field private mNotiMultiUnreadMessageCount:Landroid/widget/TextView;

.field private mNotiMultiUnreadMessageImage:Landroid/widget/ImageView;

.field private mNotiSingleContainer:Landroid/widget/LinearLayout;

.field private mNotiSingleEventCount:Landroid/widget/TextView;

.field private mNotiSingleEventImage:Landroid/widget/ImageView;

.field private mOnHoverListenr:Landroid/view/View$OnHoverListener;

.field private mRatio:F

.field private mSViewCoverPagerNavigation:Lcom/sec/android/cover/sviewcover/SViewCoverPagerNavigation;

.field private mSViewCoverView:Lcom/sec/android/cover/sviewcover/SViewCoverView;

.field private mSecondBorder:D

.field private mSettingBgNormal:Landroid/widget/ImageView;

.field private mSettingBgPressed:Landroid/widget/ImageView;

.field private mSettingButton:Landroid/widget/ImageView;

.field private mSettingCircleEffect:Lcom/sec/android/cover/sviewcover/SViewCoverUnlockCircleEffect;

.field private mSettingCircleInAnimator:Landroid/animation/ValueAnimator;

.field private mSettingCircleOutAnimator:Landroid/animation/ValueAnimator;

.field private mSettingContainer:Landroid/widget/RelativeLayout;

.field private mShortcutStartX:F

.field private mShortcutStartY:F

.field private mStylizedClockManager:Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;

.field private mTouchedShortcut:Ljava/lang/String;

.field private mUnlockLayout:Landroid/view/View;

.field private mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

.field private strokeAnimationValue:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 138
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 139
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 142
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mIsFirstNoti:Z

    .line 92
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mTouchedShortcut:Ljava/lang/String;

    .line 93
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mDistance:D

    .line 105
    iput v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->strokeAnimationValue:F

    .line 106
    iput v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->dragAnimationValue:F

    .line 108
    iput v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->circleAnimationMin:F

    .line 110
    const/16 v0, 0x29a

    iput v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->IN_ANIMATION_DURATION:I

    .line 111
    const/16 v0, 0x14d

    iput v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->OUT_ANIMATION_DURATION:I

    .line 113
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mIsMultiTouched:Z

    .line 114
    iput-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiCircleEffect:Lcom/sec/android/cover/sviewcover/SViewCoverUnlockCircleEffect;

    .line 115
    iput-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mCameraCircleEffect:Lcom/sec/android/cover/sviewcover/SViewCoverUnlockCircleEffect;

    .line 116
    iput-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mSettingCircleEffect:Lcom/sec/android/cover/sviewcover/SViewCoverUnlockCircleEffect;

    .line 126
    iput-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mSViewCoverView:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    .line 128
    new-instance v0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$1;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$1;-><init>(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)V

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    .line 571
    new-instance v0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$6;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$6;-><init>(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)V

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mOnHoverListenr:Landroid/view/View$OnHoverListener;

    .line 143
    iput-object p1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mContext:Landroid/content/Context;

    .line 144
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/sec/android/sviewcover/R$dimen;->s_view_cover_border:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    int-to-double v0, v0

    iput-wide v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mSecondBorder:D

    .line 146
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mStylizedClockManager:Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;

    .line 147
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->setupStylizedClockStyle()V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mIsFirstNoti:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mArrowCamera:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;ZLcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$Dir;[Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$Dir;
    .param p3, "x3"    # [Landroid/view/View;

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->playAnimation(ZLcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$Dir;[Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->resetCircleAnimator()V

    return-void
.end method

.method static synthetic access$1300(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->cancelAllAnimator()V

    return-void
.end method

.method static synthetic access$1400(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mCameraCircleInAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mCameraBgNormal:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)F
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    .prologue
    .line 55
    iget v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mRatio:F

    return v0
.end method

.method static synthetic access$1602(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;F)F
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;
    .param p1, "x1"    # F

    .prologue
    .line 55
    iput p1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mRatio:F

    return p1
.end method

.method static synthetic access$1700(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)D
    .locals 2
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    .prologue
    .line 55
    iget-wide v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mSecondBorder:D

    return-wide v0
.end method

.method static synthetic access$1800(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)Lcom/sec/android/cover/sviewcover/SViewCoverUnlockCircleEffect;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mCameraCircleEffect:Lcom/sec/android/cover/sviewcover/SViewCoverUnlockCircleEffect;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;Lcom/sec/android/cover/sviewcover/SViewCoverUnlockCircleEffect;FLandroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;
    .param p1, "x1"    # Lcom/sec/android/cover/sviewcover/SViewCoverUnlockCircleEffect;
    .param p2, "x2"    # F
    .param p3, "x3"    # Landroid/view/View;

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->updateDragCircle(Lcom/sec/android/cover/sviewcover/SViewCoverUnlockCircleEffect;FLandroid/view/View;)V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mTouchedShortcut:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;
    .param p1, "x1"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->setCameraIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method static synthetic access$202(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mTouchedShortcut:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mCameraCircleOutAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;Landroid/animation/ValueAnimator;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;
    .param p1, "x1"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->closeCircleEffect(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiBgPressed:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mArrowNoti:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;F)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;
    .param p1, "x1"    # F

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->setAlphaExceptNotiButtons(F)V

    return-void
.end method

.method static synthetic access$2600(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiCircleInAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mStylizedClockManager:Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiBgNormal:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)Lcom/sec/android/cover/sviewcover/SViewCoverUnlockCircleEffect;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiCircleEffect:Lcom/sec/android/cover/sviewcover/SViewCoverUnlockCircleEffect;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->isTalkBackEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3000(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiCircleOutAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mSettingBgPressed:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mArrowSetting:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mSettingCircleInAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mSettingBgNormal:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)Lcom/sec/android/cover/sviewcover/SViewCoverUnlockCircleEffect;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mSettingCircleEffect:Lcom/sec/android/cover/sviewcover/SViewCoverUnlockCircleEffect;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mSettingCircleOutAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)F
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    .prologue
    .line 55
    iget v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->strokeAnimationValue:F

    return v0
.end method

.method static synthetic access$3702(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;F)F
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;
    .param p1, "x1"    # F

    .prologue
    .line 55
    iput p1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->strokeAnimationValue:F

    return p1
.end method

.method static synthetic access$3800(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)F
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    .prologue
    .line 55
    iget v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->circleAnimationMin:F

    return v0
.end method

.method static synthetic access$3900(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;Landroid/view/View;F)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # F

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->setAlphaAndVisibility(Landroid/view/View;F)V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mIsMultiTouched:Z

    return v0
.end method

.method static synthetic access$4000(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)F
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    .prologue
    .line 55
    iget v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->circleAnimationMax:F

    return v0
.end method

.method static synthetic access$402(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;
    .param p1, "x1"    # Z

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mIsMultiTouched:Z

    return p1
.end method

.method static synthetic access$4100(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)F
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    .prologue
    .line 55
    iget v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->dragAnimationValue:F

    return v0
.end method

.method static synthetic access$4102(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;F)F
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;
    .param p1, "x1"    # F

    .prologue
    .line 55
    iput p1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->dragAnimationValue:F

    return p1
.end method

.method static synthetic access$4200(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)F
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    .prologue
    .line 55
    iget v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->fillAnimationValueMax:F

    return v0
.end method

.method static synthetic access$500(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)F
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    .prologue
    .line 55
    iget v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mShortcutStartX:F

    return v0
.end method

.method static synthetic access$602(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;F)F
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;
    .param p1, "x1"    # F

    .prologue
    .line 55
    iput p1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mShortcutStartX:F

    return p1
.end method

.method static synthetic access$700(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)F
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    .prologue
    .line 55
    iget v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mShortcutStartY:F

    return v0
.end method

.method static synthetic access$702(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;F)F
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;
    .param p1, "x1"    # F

    .prologue
    .line 55
    iput p1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mShortcutStartY:F

    return p1
.end method

.method static synthetic access$800(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)D
    .locals 2
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    .prologue
    .line 55
    iget-wide v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mDistance:D

    return-wide v0
.end method

.method static synthetic access$802(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;D)D
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;
    .param p1, "x1"    # D

    .prologue
    .line 55
    iput-wide p1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mDistance:D

    return-wide p1
.end method

.method static synthetic access$900(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mCameraBgPressed:Landroid/widget/ImageView;

    return-object v0
.end method

.method private cancelAllAnimator()V
    .locals 1

    .prologue
    .line 1118
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mCameraCircleInAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->cancelAnimator(Landroid/animation/Animator;)V

    .line 1119
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mSettingCircleInAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->cancelAnimator(Landroid/animation/Animator;)V

    .line 1120
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiCircleInAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->cancelAnimator(Landroid/animation/Animator;)V

    .line 1121
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mCameraCircleOutAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->cancelAnimator(Landroid/animation/Animator;)V

    .line 1122
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mSettingCircleOutAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->cancelAnimator(Landroid/animation/Animator;)V

    .line 1123
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiCircleOutAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->cancelAnimator(Landroid/animation/Animator;)V

    .line 1124
    return-void
.end method

.method private cancelAnimator(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 1127
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1128
    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    .line 1129
    :cond_0
    return-void
.end method

.method private closeCircleEffect(Landroid/animation/ValueAnimator;)V
    .locals 1
    .param p1, "outAnimator"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 1077
    if-nez p1, :cond_0

    .line 1083
    :goto_0
    return-void

    .line 1080
    :cond_0
    iget v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->strokeAnimationValue:F

    iput v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->circleAnimationMax:F

    .line 1081
    iget v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->dragAnimationValue:F

    iput v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->fillAnimationValueMax:F

    .line 1082
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0
.end method

.method private hideNotiPageButton()V
    .locals 2

    .prologue
    .line 768
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiContainer:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 769
    return-void
.end method

.method private hideSettingPageButton()V
    .locals 2

    .prologue
    .line 777
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mSettingContainer:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 778
    return-void
.end method

.method private initCircleEffect()V
    .locals 15

    .prologue
    const/16 v14, 0x8

    .line 901
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    .line 902
    .local v7, "dm":Landroid/util/DisplayMetrics;
    iget v10, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 903
    .local v10, "screenWidth":I
    iget v9, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 905
    .local v9, "screenHeight":I
    if-ge v10, v9, :cond_0

    move v11, v10

    .line 906
    .local v11, "smallestWidth":I
    :goto_0
    int-to-float v0, v11

    const/high16 v1, 0x44870000    # 1080.0f

    div-float v8, v0, v1

    .line 908
    .local v8, "ratio":F
    const/high16 v0, 0x40800000    # 4.0f

    mul-float/2addr v0, v8

    float-to-int v4, v0

    .line 909
    .local v4, "outerStrokeWidth":I
    const/high16 v0, 0x41000000    # 8.0f

    mul-float/2addr v0, v8

    float-to-int v5, v0

    .line 911
    .local v5, "innerStrokeWidth":I
    iget-wide v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mSecondBorder:D

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    mul-double/2addr v0, v12

    double-to-int v2, v0

    .line 912
    .local v2, "circleMaxWidth":I
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/sec/android/sviewcover/R$dimen;->s_view_cover_circle_min_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sub-int v3, v0, v5

    .line 916
    .local v3, "circleMinWidth":I
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/sec/android/sviewcover/R$dimen;->s_view_cover_circle_camera_point_x:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v6, v0

    .line 919
    .local v6, "pointX":I
    const-string v0, "SViewCoverNewUnlockArea"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "center is "

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v12, ", maxwidth : "

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v12, ",  minWidth : "

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    new-instance v0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockCircleEffect;

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mContext:Landroid/content/Context;

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockCircleEffect;-><init>(Landroid/content/Context;IIIII)V

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mCameraCircleEffect:Lcom/sec/android/cover/sviewcover/SViewCoverUnlockCircleEffect;

    .line 924
    new-instance v0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockCircleEffect;

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mContext:Landroid/content/Context;

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockCircleEffect;-><init>(Landroid/content/Context;IIIII)V

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiCircleEffect:Lcom/sec/android/cover/sviewcover/SViewCoverUnlockCircleEffect;

    .line 926
    new-instance v0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockCircleEffect;

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mContext:Landroid/content/Context;

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockCircleEffect;-><init>(Landroid/content/Context;IIIII)V

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mSettingCircleEffect:Lcom/sec/android/cover/sviewcover/SViewCoverUnlockCircleEffect;

    .line 929
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mCameraCircleEffect:Lcom/sec/android/cover/sviewcover/SViewCoverUnlockCircleEffect;

    invoke-virtual {v0, v14}, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockCircleEffect;->setVisibility(I)V

    .line 930
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiCircleEffect:Lcom/sec/android/cover/sviewcover/SViewCoverUnlockCircleEffect;

    invoke-virtual {v0, v14}, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockCircleEffect;->setVisibility(I)V

    .line 931
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mSettingCircleEffect:Lcom/sec/android/cover/sviewcover/SViewCoverUnlockCircleEffect;

    invoke-virtual {v0, v14}, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockCircleEffect;->setVisibility(I)V

    .line 933
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mCameraContainer:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mCameraCircleEffect:Lcom/sec/android/cover/sviewcover/SViewCoverUnlockCircleEffect;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 934
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiContainer:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiCircleEffect:Lcom/sec/android/cover/sviewcover/SViewCoverUnlockCircleEffect;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 935
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mSettingContainer:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mSettingCircleEffect:Lcom/sec/android/cover/sviewcover/SViewCoverUnlockCircleEffect;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 937
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->setAllAnimator()V

    .line 938
    return-void

    .end local v2    # "circleMaxWidth":I
    .end local v3    # "circleMinWidth":I
    .end local v4    # "outerStrokeWidth":I
    .end local v5    # "innerStrokeWidth":I
    .end local v6    # "pointX":I
    .end local v8    # "ratio":F
    .end local v11    # "smallestWidth":I
    :cond_0
    move v11, v9

    .line 905
    goto/16 :goto_0
.end method

.method private isGuestMode()Z
    .locals 3

    .prologue
    .line 749
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 750
    const-string v0, "SViewCoverNewUnlockArea"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ActivityManager.getCurrentUser() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isTalkBackEnabled()Z
    .locals 3

    .prologue
    .line 1294
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 1295
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mContext:Landroid/content/Context;

    const-string v2, "accessibility"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 1297
    .local v0, "am":Landroid/view/accessibility/AccessibilityManager;
    if-eqz v0, :cond_0

    .line 1298
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v1

    .line 1301
    .end local v0    # "am":Landroid/view/accessibility/AccessibilityManager;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private varargs playAnimation(ZLcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$Dir;[Landroid/view/View;)V
    .locals 8
    .param p1, "isPlay"    # Z
    .param p2, "side"    # Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$Dir;
    .param p3, "otherViews"    # [Landroid/view/View;

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v7, 0x1

    .line 812
    if-ne p1, v7, :cond_0

    .line 813
    move-object v0, p3

    .local v0, "arr$":[Landroid/view/View;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 814
    .local v3, "view":Landroid/view/View;
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 813
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 817
    .end local v0    # "arr$":[Landroid/view/View;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "view":Landroid/view/View;
    :cond_0
    move-object v0, p3

    .restart local v0    # "arr$":[Landroid/view/View;
    array-length v2, v0

    .restart local v2    # "len$":I
    const/4 v1, 0x0

    .restart local v1    # "i$":I
    :goto_1
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 818
    .restart local v3    # "view":Landroid/view/View;
    const/16 v6, 0x8

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 817
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 822
    .end local v3    # "view":Landroid/view/View;
    :cond_1
    sget-object v6, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$Dir;->Left:Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$Dir;

    if-ne p2, v6, :cond_4

    .line 823
    if-ne p1, v7, :cond_3

    :goto_2
    invoke-direct {p0, v4}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->setAlphaRightSideButtons(F)V

    .line 831
    :cond_2
    :goto_3
    return-void

    :cond_3
    move v4, v5

    .line 823
    goto :goto_2

    .line 824
    :cond_4
    sget-object v6, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$Dir;->Right:Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$Dir;

    if-ne p2, v6, :cond_6

    .line 825
    if-ne p1, v7, :cond_5

    :goto_4
    invoke-direct {p0, v4}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->setAlphaLeftSideButtons(F)V

    goto :goto_3

    :cond_5
    move v4, v5

    goto :goto_4

    .line 826
    :cond_6
    sget-object v6, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$Dir;->Up:Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$Dir;

    if-ne p2, v6, :cond_2

    .line 827
    if-ne p1, v7, :cond_7

    :goto_5
    invoke-direct {p0, v4}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->setAlphaExceptNotiButtons(F)V

    goto :goto_3

    :cond_7
    move v4, v5

    goto :goto_5
.end method

.method private resetCircleAnimator()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x29a

    const-wide/16 v4, 0x14d

    const-wide/16 v2, 0x0

    .line 1086
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mCameraCircleInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 1087
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mCameraCircleInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 1088
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mCameraCircleInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1089
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mCameraCircleInAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/interpolator/QuintEaseOut;

    invoke-direct {v1}, Landroid/view/animation/interpolator/QuintEaseOut;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1091
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mSettingCircleInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 1092
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mSettingCircleInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 1093
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mSettingCircleInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1094
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mSettingCircleInAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/interpolator/QuintEaseOut;

    invoke-direct {v1}, Landroid/view/animation/interpolator/QuintEaseOut;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1096
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiCircleInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 1097
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiCircleInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 1098
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiCircleInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1099
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiCircleInAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/interpolator/QuintEaseOut;

    invoke-direct {v1}, Landroid/view/animation/interpolator/QuintEaseOut;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1101
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mCameraCircleOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 1102
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mCameraCircleOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 1103
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mCameraCircleOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1104
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mCameraCircleOutAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/interpolator/QuintEaseOut;

    invoke-direct {v1}, Landroid/view/animation/interpolator/QuintEaseOut;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1106
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mSettingCircleOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 1107
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mSettingCircleOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 1108
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mSettingCircleOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1109
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mSettingCircleOutAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/interpolator/QuintEaseOut;

    invoke-direct {v1}, Landroid/view/animation/interpolator/QuintEaseOut;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1111
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiCircleOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 1112
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiCircleOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 1113
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiCircleOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1114
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiCircleOutAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/interpolator/QuintEaseOut;

    invoke-direct {v1}, Landroid/view/animation/interpolator/QuintEaseOut;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1115
    return-void
.end method

.method private setAllAnimator()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 942
    new-array v0, v2, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mCameraCircleInAnimator:Landroid/animation/ValueAnimator;

    .line 943
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mCameraCircleInAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$7;

    invoke-direct {v1, p0}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$7;-><init>(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 952
    new-array v0, v2, [F

    fill-array-data v0, :array_1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiCircleInAnimator:Landroid/animation/ValueAnimator;

    .line 953
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiCircleInAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$8;

    invoke-direct {v1, p0}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$8;-><init>(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 962
    new-array v0, v2, [F

    fill-array-data v0, :array_2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mSettingCircleInAnimator:Landroid/animation/ValueAnimator;

    .line 963
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mSettingCircleInAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$9;

    invoke-direct {v1, p0}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$9;-><init>(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 973
    new-array v0, v2, [F

    fill-array-data v0, :array_3

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mCameraCircleOutAnimator:Landroid/animation/ValueAnimator;

    .line 974
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mCameraCircleOutAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$10;

    invoke-direct {v1, p0}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$10;-><init>(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 984
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mCameraCircleOutAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$11;

    invoke-direct {v1, p0}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$11;-><init>(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1003
    new-array v0, v2, [F

    fill-array-data v0, :array_4

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiCircleOutAnimator:Landroid/animation/ValueAnimator;

    .line 1004
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiCircleOutAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$12;

    invoke-direct {v1, p0}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$12;-><init>(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1014
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiCircleOutAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$13;

    invoke-direct {v1, p0}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$13;-><init>(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1033
    new-array v0, v2, [F

    fill-array-data v0, :array_5

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mSettingCircleOutAnimator:Landroid/animation/ValueAnimator;

    .line 1034
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mSettingCircleOutAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$14;

    invoke-direct {v1, p0}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$14;-><init>(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1045
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mSettingCircleOutAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$15;

    invoke-direct {v1, p0}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$15;-><init>(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1063
    return-void

    .line 942
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 952
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 962
    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 973
    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 1003
    :array_4
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 1033
    :array_5
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private setAlphaAndVisibility(Landroid/view/View;F)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "alpha"    # F

    .prologue
    const/16 v0, 0x8

    .line 1132
    const/4 v1, 0x0

    cmpl-float v1, p2, v1

    if-nez v1, :cond_2

    .line 1133
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, v0, :cond_1

    .line 1134
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x4

    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1141
    :cond_1
    :goto_0
    return-void

    .line 1137
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_3

    .line 1138
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1139
    :cond_3
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0
.end method

.method private setAlphaExceptNotiButtons(F)V
    .locals 1
    .param p1, "alpha"    # F

    .prologue
    .line 848
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mCameraContainer:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 849
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mCameraContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    .line 850
    :cond_0
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mSettingContainer:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    .line 851
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mSettingContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    .line 852
    :cond_1
    return-void
.end method

.method private setAlphaLeftSideButtons(F)V
    .locals 1
    .param p1, "alpha"    # F

    .prologue
    .line 834
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiContainer:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 835
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    .line 836
    :cond_0
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mSettingContainer:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    .line 837
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mSettingContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    .line 838
    :cond_1
    return-void
.end method

.method private setAlphaRightSideButtons(F)V
    .locals 1
    .param p1, "alpha"    # F

    .prologue
    .line 841
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mCameraContainer:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 842
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mCameraContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    .line 843
    :cond_0
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiContainer:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    .line 844
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    .line 845
    :cond_1
    return-void
.end method

.method private setCameraContainerVisibility(I)V
    .locals 4
    .param p1, "visibility"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 865
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mCameraContainer:Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_1

    .line 866
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverDatabaseManager;

    move-result-object v2

    const-string v3, "set_shortcuts_mode"

    invoke-virtual {v2, v3, v0}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 868
    .local v0, "cameraEnabled":Z
    :cond_0
    if-ne v0, v1, :cond_2

    .line 869
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mCameraContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 874
    .end local v0    # "cameraEnabled":Z
    :cond_1
    :goto_0
    return-void

    .line 871
    .restart local v0    # "cameraEnabled":Z
    :cond_2
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mCameraContainer:Landroid/widget/RelativeLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private setCameraIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 564
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;

    move-result-object v0

    .line 565
    .local v0, "scm":Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;->isAnalogClock()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 569
    :goto_0
    return-void

    .line 568
    :cond_0
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mCameraButton:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private setNotiContainerVisibility(I)V
    .locals 6
    .param p1, "visibility"    # I

    .prologue
    const/4 v2, 0x1

    .line 877
    const/4 v1, 0x1

    .line 879
    .local v1, "enableNoti":Z
    :try_start_0
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "lock_screen_show_notifications"

    const/4 v5, -0x2

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-ne v3, v2, :cond_2

    move v1, v2

    .line 885
    :goto_0
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiContainer:Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_1

    .line 886
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiContainer:Landroid/widget/RelativeLayout;

    if-nez v1, :cond_0

    const/16 p1, 0x8

    .end local p1    # "visibility":I
    :cond_0
    invoke-virtual {v2, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 888
    :cond_1
    return-void

    .line 879
    .restart local p1    # "visibility":I
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 881
    :catch_0
    move-exception v0

    .line 882
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    const-string v2, "SViewCoverNewUnlockArea"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateNotiArea() can not found setting "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private setSettingContainerVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 860
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mSettingContainer:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 861
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mSettingContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 862
    :cond_0
    return-void
.end method

.method private setupStylizedClockStyle()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1144
    iget-object v7, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/sec/android/cover/manager/CoverRemoteViewManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverRemoteViewManager;

    move-result-object v5

    .line 1145
    .local v5, "mgr":Lcom/sec/android/cover/manager/CoverRemoteViewManager;
    const-string v7, "music_controller"

    invoke-virtual {v5, v7}, Lcom/sec/android/cover/manager/CoverRemoteViewManager;->isRemoteViewAvailable(Ljava/lang/String;)Z

    move-result v2

    .line 1146
    .local v2, "isMusicPlayerEnable":Z
    const-string v7, "voice_recorder"

    invoke-virtual {v5, v7}, Lcom/sec/android/cover/manager/CoverRemoteViewManager;->isRemoteViewAvailable(Ljava/lang/String;)Z

    move-result v3

    .line 1147
    .local v3, "isVoiceMemoEnable":Z
    const-string v7, "SViewCoverNewUnlockArea"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setupStylizedClockStyle() isMusicPlayerEnable ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1148
    if-eqz v3, :cond_0

    .line 1149
    const/4 v2, 0x1

    .line 1153
    :cond_0
    iget-object v7, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiMultiContainer:Landroid/widget/LinearLayout;

    if-eqz v7, :cond_1

    .line 1154
    if-nez v2, :cond_d

    .line 1155
    iget-object v7, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiMultiMissedCallImage:Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mStylizedClockManager:Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;

    invoke-virtual {v8, v10}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;->getCurrentStyleLockSingleMissedEventsDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1158
    iget-object v7, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiMultiUnreadMessageImage:Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mStylizedClockManager:Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;

    invoke-virtual {v8, v11}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;->getCurrentStyleLockSingleMissedEventsDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1161
    iget-object v7, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiMultiMissedCallCount:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mStylizedClockManager:Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;

    invoke-virtual {v8}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;->getCurrentStyleLockMissedEventsTextColor()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1163
    iget-object v7, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiMultiUnreadMessageCount:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mStylizedClockManager:Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;

    invoke-virtual {v8}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;->getCurrentStyleLockMissedEventsTextColor()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1175
    :cond_1
    :goto_0
    iget-object v7, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiSingleContainer:Landroid/widget/LinearLayout;

    if-eqz v7, :cond_3

    .line 1176
    const/4 v6, 0x0

    .line 1177
    .local v6, "missedCallCount":I
    iget-object v7, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/sec/android/cover/manager/CoverRemoteViewManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverRemoteViewManager;

    move-result-object v1

    .line 1179
    .local v1, "coverRemoteViewManager":Lcom/sec/android/cover/manager/CoverRemoteViewManager;
    const-string v7, "missed_call"

    invoke-virtual {v1, v7}, Lcom/sec/android/cover/manager/CoverRemoteViewManager;->getRemoteViewInfo(Ljava/lang/String;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;

    move-result-object v4

    .line 1181
    .local v4, "messageRemoteViewInfo":Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;
    if-eqz v4, :cond_2

    .line 1182
    iget-boolean v7, v4, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mVisibility:Z

    if-eqz v7, :cond_2

    .line 1183
    iget v6, v4, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mCount:I

    .line 1185
    :cond_2
    const-string v7, "SViewCoverNewUnlockArea"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setupStylizedClockStyle -> missedCallCount = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1186
    if-nez v2, :cond_f

    .line 1187
    if-lez v6, :cond_e

    .line 1188
    iget-object v7, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiSingleEventImage:Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mStylizedClockManager:Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;

    invoke-virtual {v8, v10}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;->getCurrentStyleLockSingleMissedEventsDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1196
    :goto_1
    iget-object v7, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiSingleEventCount:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mStylizedClockManager:Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;

    invoke-virtual {v8}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;->getCurrentStyleLockMissedEventsTextColor()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1209
    .end local v1    # "coverRemoteViewManager":Lcom/sec/android/cover/manager/CoverRemoteViewManager;
    .end local v4    # "messageRemoteViewInfo":Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;
    .end local v6    # "missedCallCount":I
    :cond_3
    :goto_2
    if-eqz v2, :cond_11

    .line 1210
    iget-object v7, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mSettingButton:Landroid/widget/ImageView;

    if-eqz v7, :cond_4

    .line 1211
    iget-object v7, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mSettingButton:Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/sec/android/sviewcover/R$drawable;->main_circle_ic_settings:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1214
    :cond_4
    iget-object v7, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mCameraButton:Landroid/widget/ImageView;

    if-eqz v7, :cond_5

    .line 1215
    iget-object v7, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mCameraButton:Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/sec/android/sviewcover/R$drawable;->lock_circle_ic_camera:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1229
    :cond_5
    :goto_3
    iget-object v7, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mCameraBgNormal:Landroid/widget/ImageView;

    if-eqz v7, :cond_6

    .line 1230
    if-eqz v2, :cond_13

    .line 1231
    iget-object v7, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mCameraBgNormal:Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/sec/android/sviewcover/R$drawable;->lock_circle_01_default:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1237
    :cond_6
    :goto_4
    iget-object v7, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mSettingBgNormal:Landroid/widget/ImageView;

    if-eqz v7, :cond_7

    .line 1238
    if-eqz v2, :cond_14

    .line 1239
    iget-object v7, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mSettingBgNormal:Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/sec/android/sviewcover/R$drawable;->lock_circle_01_default:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1246
    :cond_7
    :goto_5
    iget-object v7, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiBgNormal:Landroid/widget/ImageView;

    if-eqz v7, :cond_8

    .line 1247
    if-eqz v2, :cond_15

    .line 1248
    iget-object v7, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiBgNormal:Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/sec/android/sviewcover/R$drawable;->lock_circle_01_default:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1255
    :cond_8
    :goto_6
    sget v7, Lcom/sec/android/sviewcover/R$id;->s_view_cover_car_mode_layout:I

    invoke-virtual {p0, v7}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1256
    .local v0, "Carmodetv":Landroid/widget/TextView;
    if-eqz v0, :cond_c

    iget-object v7, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mContext:Landroid/content/Context;

    if-eqz v7, :cond_c

    .line 1258
    iget-object v7, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/sec/android/cover/CoverUtils;->isCarMode(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_16

    .line 1259
    const-string v7, "SViewCoverNewUnlockArea"

    const-string v8, "Disable unlock area by CarMode"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1260
    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1261
    iget-object v7, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mSettingButton:Landroid/widget/ImageView;

    if-eqz v7, :cond_9

    .line 1262
    iget-object v7, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mSettingButton:Landroid/widget/ImageView;

    invoke-virtual {v7, v10}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1263
    :cond_9
    iget-object v7, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mCameraButton:Landroid/widget/ImageView;

    if-eqz v7, :cond_a

    .line 1264
    iget-object v7, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mCameraButton:Landroid/widget/ImageView;

    invoke-virtual {v7, v10}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1265
    :cond_a
    iget-object v7, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiMultiContainer:Landroid/widget/LinearLayout;

    if-eqz v7, :cond_b

    .line 1266
    iget-object v7, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiMultiContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v10}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 1267
    :cond_b
    iget-object v7, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiSingleContainer:Landroid/widget/LinearLayout;

    if-eqz v7, :cond_c

    .line 1268
    iget-object v7, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiSingleContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v10}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 1282
    :cond_c
    :goto_7
    return-void

    .line 1166
    .end local v0    # "Carmodetv":Landroid/widget/TextView;
    :cond_d
    iget-object v7, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiMultiMissedCallImage:Landroid/widget/ImageView;

    sget v8, Lcom/sec/android/sviewcover/R$drawable;->sc_n_lock_circle_ic_missed_call_1:I

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1167
    iget-object v7, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiMultiUnreadMessageImage:Landroid/widget/ImageView;

    sget v8, Lcom/sec/android/sviewcover/R$drawable;->sc_n_lock_circle_ic_message_1:I

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1168
    iget-object v7, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiMultiMissedCallCount:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/sec/android/sviewcover/R$color;->sview_cover_wallpaper_title_text_color:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1170
    iget-object v7, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiMultiUnreadMessageCount:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/sec/android/sviewcover/R$color;->sview_cover_wallpaper_title_text_color:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 1192
    .restart local v1    # "coverRemoteViewManager":Lcom/sec/android/cover/manager/CoverRemoteViewManager;
    .restart local v4    # "messageRemoteViewInfo":Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;
    .restart local v6    # "missedCallCount":I
    :cond_e
    iget-object v7, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiSingleEventImage:Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mStylizedClockManager:Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;

    invoke-virtual {v8, v11}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;->getCurrentStyleLockSingleMissedEventsDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 1199
    :cond_f
    if-lez v6, :cond_10

    .line 1200
    iget-object v7, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiSingleEventImage:Landroid/widget/ImageView;

    sget v8, Lcom/sec/android/sviewcover/R$drawable;->sc_n_lock_circle_ic_missed_call_1:I

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1204
    :goto_8
    iget-object v7, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiSingleEventCount:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/sec/android/sviewcover/R$color;->sview_cover_wallpaper_title_text_color:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_2

    .line 1202
    :cond_10
    iget-object v7, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiSingleEventImage:Landroid/widget/ImageView;

    sget v8, Lcom/sec/android/sviewcover/R$drawable;->sc_n_lock_circle_ic_message_1:I

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_8

    .line 1219
    .end local v1    # "coverRemoteViewManager":Lcom/sec/android/cover/manager/CoverRemoteViewManager;
    .end local v4    # "messageRemoteViewInfo":Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;
    .end local v6    # "missedCallCount":I
    :cond_11
    iget-object v7, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mSettingButton:Landroid/widget/ImageView;

    if-eqz v7, :cond_12

    .line 1220
    iget-object v7, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mSettingButton:Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mStylizedClockManager:Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;

    invoke-virtual {v8}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;->getCurrentStyleLockSettingsDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1223
    :cond_12
    iget-object v7, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mCameraButton:Landroid/widget/ImageView;

    if-eqz v7, :cond_5

    .line 1224
    iget-object v7, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mCameraButton:Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mStylizedClockManager:Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;

    invoke-virtual {v8}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;->getCurrentStyleLockCameraDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_3

    .line 1234
    :cond_13
    iget-object v7, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mCameraBgNormal:Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mStylizedClockManager:Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;

    invoke-virtual {v8}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;->getCurrentStyleLockBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_4

    .line 1242
    :cond_14
    iget-object v7, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mSettingBgNormal:Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mStylizedClockManager:Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;

    invoke-virtual {v8}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;->getCurrentStyleLockBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_5

    .line 1251
    :cond_15
    iget-object v7, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiBgNormal:Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mStylizedClockManager:Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;

    invoke-virtual {v8}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;->getCurrentStyleLockBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_6

    .line 1270
    .restart local v0    # "Carmodetv":Landroid/widget/TextView;
    :cond_16
    const/16 v7, 0x8

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1271
    iget-object v7, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mSettingButton:Landroid/widget/ImageView;

    if-eqz v7, :cond_17

    .line 1272
    iget-object v7, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mSettingButton:Landroid/widget/ImageView;

    invoke-virtual {v7, v11}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1273
    :cond_17
    iget-object v7, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mCameraButton:Landroid/widget/ImageView;

    if-eqz v7, :cond_18

    .line 1274
    iget-object v7, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mCameraButton:Landroid/widget/ImageView;

    invoke-virtual {v7, v11}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1275
    :cond_18
    iget-object v7, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiMultiContainer:Landroid/widget/LinearLayout;

    if-eqz v7, :cond_19

    .line 1276
    iget-object v7, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiMultiContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v11}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 1277
    :cond_19
    iget-object v7, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiSingleContainer:Landroid/widget/LinearLayout;

    if-eqz v7, :cond_c

    .line 1278
    iget-object v7, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiSingleContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v11}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    goto/16 :goto_7
.end method

.method private showNotiPageButton()V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 755
    const/4 v1, 0x1

    .line 757
    .local v1, "enableNoti":Z
    :try_start_0
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "lock_screen_show_notifications"

    const/4 v6, -0x2

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-ne v4, v2, :cond_1

    move v1, v2

    .line 763
    :goto_0
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mSViewCoverView:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    invoke-virtual {v2}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->isHideAllHandlerMode()Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    .line 764
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 765
    :cond_0
    return-void

    :cond_1
    move v1, v3

    .line 757
    goto :goto_0

    .line 759
    :catch_0
    move-exception v0

    .line 760
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    const-string v2, "SViewCoverNewUnlockArea"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateNotiArea() can not found setting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private showSettingPageButton()V
    .locals 2

    .prologue
    .line 772
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/CoverUtils;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mSViewCoverView:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    invoke-virtual {v0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->isHideAllHandlerMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 773
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mSettingContainer:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 774
    :cond_0
    return-void
.end method

.method private updateDragCircle(Lcom/sec/android/cover/sviewcover/SViewCoverUnlockCircleEffect;FLandroid/view/View;)V
    .locals 1
    .param p1, "circleEffect"    # Lcom/sec/android/cover/sviewcover/SViewCoverUnlockCircleEffect;
    .param p2, "ratio"    # F
    .param p3, "view"    # Landroid/view/View;

    .prologue
    .line 1066
    if-nez p1, :cond_0

    .line 1074
    :goto_0
    return-void

    .line 1068
    :cond_0
    const v0, 0x3e99999a    # 0.3f

    cmpl-float v0, p2, v0

    if-lez v0, :cond_1

    .line 1069
    const/16 v0, 0x8

    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1073
    :goto_1
    invoke-virtual {p1, p2}, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockCircleEffect;->dragAnimationUpdate(F)V

    goto :goto_0

    .line 1071
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method public handleHide()V
    .locals 2

    .prologue
    .line 803
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->setVisibility(I)V

    .line 804
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/CoverUtils;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mSViewCoverView:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    invoke-virtual {v0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->isHideAllHandlerMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 805
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mSViewCoverPagerNavigation:Lcom/sec/android/cover/sviewcover/SViewCoverPagerNavigation;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/sviewcover/SViewCoverPagerNavigation;->setVisibility(I)V

    .line 807
    :cond_0
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mSViewCoverPagerNavigation:Lcom/sec/android/cover/sviewcover/SViewCoverPagerNavigation;

    invoke-virtual {v0}, Lcom/sec/android/cover/sviewcover/SViewCoverPagerNavigation;->updateLayout()V

    .line 809
    return-void
.end method

.method public handleHideIconsOnly()V
    .locals 2

    .prologue
    .line 781
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mUnlockLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 782
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mUnlockLayout:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 783
    :cond_0
    return-void
.end method

.method public handleShow()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 792
    invoke-virtual {p0, v3}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->setVisibility(I)V

    .line 793
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mSViewCoverPagerNavigation:Lcom/sec/android/cover/sviewcover/SViewCoverPagerNavigation;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/sviewcover/SViewCoverPagerNavigation;->setVisibility(I)V

    .line 794
    iput-boolean v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mIsFirstNoti:Z

    .line 796
    sget-object v0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$Dir;->Right:Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$Dir;

    new-array v1, v5, [Landroid/view/View;

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mCameraBgPressed:Landroid/widget/ImageView;

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mArrowCamera:Landroid/widget/ImageView;

    aput-object v2, v1, v4

    invoke-direct {p0, v3, v0, v1}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->playAnimation(ZLcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$Dir;[Landroid/view/View;)V

    .line 797
    sget-object v0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$Dir;->Left:Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$Dir;

    new-array v1, v5, [Landroid/view/View;

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiBgPressed:Landroid/widget/ImageView;

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mArrowNoti:Landroid/widget/ImageView;

    aput-object v2, v1, v4

    invoke-direct {p0, v3, v0, v1}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->playAnimation(ZLcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$Dir;[Landroid/view/View;)V

    .line 798
    sget-object v0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$Dir;->Left:Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$Dir;

    new-array v1, v5, [Landroid/view/View;

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mSettingBgPressed:Landroid/widget/ImageView;

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mArrowSetting:Landroid/widget/ImageView;

    aput-object v2, v1, v4

    invoke-direct {p0, v3, v0, v1}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->playAnimation(ZLcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$Dir;[Landroid/view/View;)V

    .line 799
    return-void
.end method

.method public handleShowIconsOnly()V
    .locals 2

    .prologue
    .line 786
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mUnlockLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 787
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mUnlockLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 788
    :cond_0
    return-void
.end method

.method public handleUnlock(Lcom/sec/android/cover/sviewcover/SViewCoverView$PageIndex;)V
    .locals 2
    .param p1, "moveToPage"    # Lcom/sec/android/cover/sviewcover/SViewCoverView$PageIndex;

    .prologue
    .line 608
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->userActivity()V

    .line 610
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mSViewCoverPagerNavigation:Lcom/sec/android/cover/sviewcover/SViewCoverPagerNavigation;

    if-eqz v0, :cond_0

    .line 611
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mSViewCoverPagerNavigation:Lcom/sec/android/cover/sviewcover/SViewCoverPagerNavigation;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/sviewcover/SViewCoverPagerNavigation;->setVisibility(I)V

    .line 612
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mSViewCoverPagerNavigation:Lcom/sec/android/cover/sviewcover/SViewCoverPagerNavigation;

    invoke-virtual {v0}, Lcom/sec/android/cover/sviewcover/SViewCoverPagerNavigation;->updateLayout()V

    .line 615
    :cond_0
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mSViewCoverView:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    if-eqz v0, :cond_1

    .line 616
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mSViewCoverView:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->moveToPage(Lcom/sec/android/cover/sviewcover/SViewCoverView$PageIndex;Z)V

    .line 619
    :cond_1
    return-void
.end method

.method public initMultiTouched()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1286
    iput-boolean v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mIsMultiTouched:Z

    .line 1287
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mDistance:D

    .line 1288
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mTouchedShortcut:Ljava/lang/String;

    .line 1289
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mCameraCircleOutAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->closeCircleEffect(Landroid/animation/ValueAnimator;)V

    .line 1290
    sget-object v0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$Dir;->Right:Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$Dir;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/view/View;

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mCameraBgPressed:Landroid/widget/ImageView;

    aput-object v2, v1, v4

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mArrowCamera:Landroid/widget/ImageView;

    aput-object v3, v1, v2

    invoke-direct {p0, v4, v0, v1}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->playAnimation(ZLcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$Dir;[Landroid/view/View;)V

    .line 1291
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 595
    invoke-super {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->onAttachedToWindow()V

    .line 597
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->registerCallback(Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;)V

    .line 598
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 602
    invoke-super {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->onDetachedFromWindow()V

    .line 604
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->unregisterCallback(Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;)V

    .line 605
    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    .prologue
    .line 150
    sget v2, Lcom/sec/android/sviewcover/R$id;->s_view_cover_unlock_thrid_level_layout:I

    invoke-virtual {p0, v2}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mUnlockLayout:Landroid/view/View;

    .line 151
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mUnlockLayout:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 152
    sget v2, Lcom/sec/android/sviewcover/R$id;->s_view_cover_noti_page_thrid_level_area:I

    invoke-virtual {p0, v2}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiContainer:Landroid/widget/RelativeLayout;

    .line 155
    sget v2, Lcom/sec/android/sviewcover/R$id;->s_view_cover_noti_page_third_level_single_event_image:I

    invoke-virtual {p0, v2}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiSingleEventImage:Landroid/widget/ImageView;

    .line 157
    sget v2, Lcom/sec/android/sviewcover/R$id;->s_view_cover_noti_page_third_level_missed_call_image:I

    invoke-virtual {p0, v2}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiMultiMissedCallImage:Landroid/widget/ImageView;

    .line 159
    sget v2, Lcom/sec/android/sviewcover/R$id;->s_view_cover_noti_page_third_level_unread_message_image:I

    invoke-virtual {p0, v2}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiMultiUnreadMessageImage:Landroid/widget/ImageView;

    .line 162
    sget v2, Lcom/sec/android/sviewcover/R$id;->s_view_cover_noti_page_third_level_single_event_count:I

    invoke-virtual {p0, v2}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiSingleEventCount:Landroid/widget/TextView;

    .line 164
    sget v2, Lcom/sec/android/sviewcover/R$id;->s_view_cover_noti_page_third_level_missed_call_count:I

    invoke-virtual {p0, v2}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiMultiMissedCallCount:Landroid/widget/TextView;

    .line 166
    sget v2, Lcom/sec/android/sviewcover/R$id;->s_view_cover_noti_page_third_level_unread_message_count:I

    invoke-virtual {p0, v2}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiMultiUnreadMessageCount:Landroid/widget/TextView;

    .line 169
    sget v2, Lcom/sec/android/sviewcover/R$id;->s_view_cover_setting_area:I

    invoke-virtual {p0, v2}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mSettingContainer:Landroid/widget/RelativeLayout;

    .line 170
    sget v2, Lcom/sec/android/sviewcover/R$id;->s_view_cover_camera_area:I

    invoke-virtual {p0, v2}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mCameraContainer:Landroid/widget/RelativeLayout;

    .line 172
    sget v2, Lcom/sec/android/sviewcover/R$id;->s_view_cover_swipearrow_thrid_level_right:I

    invoke-virtual {p0, v2}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mArrowCamera:Landroid/widget/ImageView;

    .line 174
    sget v2, Lcom/sec/android/sviewcover/R$id;->s_view_cover_swipearrow_thrid_level_left:I

    invoke-virtual {p0, v2}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mArrowNoti:Landroid/widget/ImageView;

    .line 175
    sget v2, Lcom/sec/android/sviewcover/R$id;->s_view_cover_swipearrow_setting:I

    invoke-virtual {p0, v2}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mArrowSetting:Landroid/widget/ImageView;

    .line 177
    sget v2, Lcom/sec/android/sviewcover/R$id;->s_view_cover_shortcut_camera_bg_pressed:I

    invoke-virtual {p0, v2}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mCameraBgPressed:Landroid/widget/ImageView;

    .line 179
    sget v2, Lcom/sec/android/sviewcover/R$id;->s_view_cover_shortcut_noti_bg_pressed:I

    invoke-virtual {p0, v2}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiBgPressed:Landroid/widget/ImageView;

    .line 180
    sget v2, Lcom/sec/android/sviewcover/R$id;->s_view_cover_setting_bg_pressed:I

    invoke-virtual {p0, v2}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mSettingBgPressed:Landroid/widget/ImageView;

    .line 182
    sget v2, Lcom/sec/android/sviewcover/R$id;->s_view_cover_setting_bg_normal:I

    invoke-virtual {p0, v2}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mSettingBgNormal:Landroid/widget/ImageView;

    .line 183
    sget v2, Lcom/sec/android/sviewcover/R$id;->s_view_cover_shortcut_noti_bg_normal:I

    invoke-virtual {p0, v2}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiBgNormal:Landroid/widget/ImageView;

    .line 184
    sget v2, Lcom/sec/android/sviewcover/R$id;->s_view_cover_shortcut_camera_bg_normal:I

    invoke-virtual {p0, v2}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mCameraBgNormal:Landroid/widget/ImageView;

    .line 186
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->initCircleEffect()V

    .line 188
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/sec/android/sviewcover/R$drawable;->lock_circle_ic_camera:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 189
    .local v0, "cameraNormal":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/sec/android/sviewcover/R$drawable;->lock_circle_ic_camera_press:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 192
    .local v1, "cameraPessed":Landroid/graphics/drawable/Drawable;
    sget v2, Lcom/sec/android/sviewcover/R$id;->s_view_cover_shortcut_camera_button:I

    invoke-virtual {p0, v2}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mCameraButton:Landroid/widget/ImageView;

    .line 193
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mCameraButton:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mOnHoverListenr:Landroid/view/View$OnHoverListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 194
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mCameraButton:Landroid/widget/ImageView;

    new-instance v3, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$2;

    invoke-direct {v3, p0, v1, v0}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$2;-><init>(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 290
    sget v2, Lcom/sec/android/sviewcover/R$id;->s_view_cover_noti_page_third_level_single_event_layout:I

    invoke-virtual {p0, v2}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiSingleContainer:Landroid/widget/LinearLayout;

    .line 292
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiSingleContainer:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mOnHoverListenr:Landroid/view/View$OnHoverListener;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 293
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiSingleContainer:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$3;

    invoke-direct {v3, p0}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$3;-><init>(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 384
    sget v2, Lcom/sec/android/sviewcover/R$id;->s_view_cover_noti_page_third_level_multi_event_layout:I

    invoke-virtual {p0, v2}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiMultiContainer:Landroid/widget/LinearLayout;

    .line 386
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiMultiContainer:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mOnHoverListenr:Landroid/view/View$OnHoverListener;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 387
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiMultiContainer:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$4;

    invoke-direct {v3, p0}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$4;-><init>(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 478
    sget v2, Lcom/sec/android/sviewcover/R$id;->s_view_cover_setting_button:I

    invoke-virtual {p0, v2}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mSettingButton:Landroid/widget/ImageView;

    .line 479
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mSettingButton:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mOnHoverListenr:Landroid/view/View$OnHoverListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 480
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mSettingButton:Landroid/widget/ImageView;

    new-instance v3, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$5;

    invoke-direct {v3, p0}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$5;-><init>(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 560
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->setupStylizedClockStyle()V

    .line 561
    return-void
.end method

.method public setContainerVisibility(Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;I)V
    .locals 3
    .param p1, "container"    # Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;
    .param p2, "visibility"    # I

    .prologue
    .line 1306
    sget-object v0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$16;->$SwitchMap$com$sec$android$cover$sviewcover$SViewCoverAbstractUnlockArea$Container:[I

    invoke-virtual {p1}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1322
    :goto_0
    return-void

    .line 1308
    :pswitch_0
    invoke-direct {p0, p2}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->setCameraContainerVisibility(I)V

    goto :goto_0

    .line 1312
    :pswitch_1
    invoke-direct {p0, p2}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->setSettingContainerVisibility(I)V

    goto :goto_0

    .line 1316
    :pswitch_2
    const-string v0, "SViewCoverNewUnlockArea"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setContainerVisibility() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1317
    invoke-direct {p0, p2}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->setNotiContainerVisibility(I)V

    goto :goto_0

    .line 1306
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setCoverView(Lcom/sec/android/cover/sviewcover/SViewCoverView;)V
    .locals 0
    .param p1, "view"    # Lcom/sec/android/cover/sviewcover/SViewCoverView;

    .prologue
    .line 856
    iput-object p1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mSViewCoverView:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    .line 857
    return-void
.end method

.method public setPageButtonVisibility(Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;I)V
    .locals 2
    .param p1, "container"    # Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;
    .param p2, "visibility"    # I

    .prologue
    .line 1326
    sget-object v0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$16;->$SwitchMap$com$sec$android$cover$sviewcover$SViewCoverAbstractUnlockArea$Container:[I

    invoke-virtual {p1}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1345
    :goto_0
    return-void

    .line 1328
    :pswitch_0
    if-nez p2, :cond_0

    .line 1329
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->showSettingPageButton()V

    goto :goto_0

    .line 1331
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->hideSettingPageButton()V

    goto :goto_0

    .line 1336
    :pswitch_1
    if-nez p2, :cond_1

    .line 1337
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->showNotiPageButton()V

    goto :goto_0

    .line 1339
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->hideNotiPageButton()V

    goto :goto_0

    .line 1326
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setPageNavigationVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 892
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mSViewCoverPagerNavigation:Lcom/sec/android/cover/sviewcover/SViewCoverPagerNavigation;

    if-eqz v0, :cond_0

    .line 893
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mSViewCoverPagerNavigation:Lcom/sec/android/cover/sviewcover/SViewCoverPagerNavigation;

    invoke-virtual {v0, p1}, Lcom/sec/android/cover/sviewcover/SViewCoverPagerNavigation;->setVisibility(I)V

    .line 894
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mSViewCoverPagerNavigation:Lcom/sec/android/cover/sviewcover/SViewCoverPagerNavigation;

    invoke-virtual {v0}, Lcom/sec/android/cover/sviewcover/SViewCoverPagerNavigation;->updateLayout()V

    .line 896
    :cond_0
    return-void
.end method

.method public setPagerNavigation(Lcom/sec/android/cover/sviewcover/SViewCoverPagerNavigation;)V
    .locals 0
    .param p1, "sViewCoverPagerNavigation"    # Lcom/sec/android/cover/sviewcover/SViewCoverPagerNavigation;

    .prologue
    .line 623
    iput-object p1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mSViewCoverPagerNavigation:Lcom/sec/android/cover/sviewcover/SViewCoverPagerNavigation;

    .line 624
    return-void
.end method

.method protected startCameraActivity()V
    .locals 4

    .prologue
    .line 581
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 582
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x4000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 583
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 584
    const-string v2, "com.sec.android.app.camera"

    const-string v3, "com.sec.android.app.camera.Camera"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 585
    const-string v2, "covermode"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 587
    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 591
    :goto_0
    return-void

    .line 588
    :catch_0
    move-exception v0

    .line 589
    .local v0, "exception":Landroid/content/ActivityNotFoundException;
    const-string v2, "SViewCoverNewUnlockArea"

    const-string v3, "ActivityNotFoundException !!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public updateNotiArea(II)V
    .locals 12
    .param p1, "missedCallCount"    # I
    .param p2, "unreadMessage"    # I

    .prologue
    const/high16 v11, 0x41500000    # 13.0f

    const/16 v10, 0x8

    const/16 v9, 0x63

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 644
    const/4 v3, 0x1

    .line 645
    .local v3, "showContent":Z
    const/4 v2, 0x1

    .line 647
    .local v2, "enableNoti":Z
    :try_start_0
    iget-object v6, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "lock_screen_allow_private_notifications"

    const/4 v8, -0x2

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v4, :cond_0

    move v3, v4

    .line 650
    :goto_0
    iget-object v6, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "lock_screen_show_notifications"

    const/4 v8, -0x2

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-ne v6, v4, :cond_1

    move v2, v4

    .line 657
    :goto_1
    if-lez p1, :cond_5

    if-lez p2, :cond_5

    .line 658
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v6, Lcom/sec/android/sviewcover/R$string;->s_view_cover_missed_event_button_accessibiliy:I

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 660
    .local v0, "accessibilityDescription":Ljava/lang/StringBuilder;
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiMultiContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 661
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiSingleContainer:Landroid/widget/LinearLayout;

    const/4 v6, 0x4

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 663
    if-le p1, v9, :cond_2

    .line 664
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiMultiMissedCallCount:Landroid/widget/TextView;

    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setTextSize(F)V

    .line 665
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiMultiMissedCallCount:Landroid/widget/TextView;

    const-string v6, "99+"

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 666
    const-string v4, " 99+"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 671
    :goto_2
    if-le p2, v9, :cond_3

    .line 672
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiMultiUnreadMessageCount:Landroid/widget/TextView;

    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setTextSize(F)V

    .line 673
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiMultiUnreadMessageCount:Landroid/widget/TextView;

    const-string v6, "99+"

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 674
    const-string v4, " 99+"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 679
    :goto_3
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiMultiContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 681
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->isGuestMode()Z

    move-result v4

    if-nez v4, :cond_4

    .line 682
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->showNotiPageButton()V

    .line 729
    :goto_4
    if-nez v2, :cond_d

    .line 731
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->hideNotiPageButton()V

    .line 744
    :goto_5
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->setupStylizedClockStyle()V

    .line 745
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->invalidate()V

    .line 746
    return-void

    .end local v0    # "accessibilityDescription":Ljava/lang/StringBuilder;
    :cond_0
    move v3, v5

    .line 647
    goto :goto_0

    :cond_1
    move v2, v5

    .line 650
    goto :goto_1

    .line 652
    :catch_0
    move-exception v1

    .line 653
    .local v1, "e":Landroid/provider/Settings$SettingNotFoundException;
    const-string v4, "SViewCoverNewUnlockArea"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateNotiArea() can not found setting "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Landroid/provider/Settings$SettingNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    invoke-virtual {v1}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto/16 :goto_1

    .line 668
    .end local v1    # "e":Landroid/provider/Settings$SettingNotFoundException;
    .restart local v0    # "accessibilityDescription":Ljava/lang/StringBuilder;
    :cond_2
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiMultiMissedCallCount:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 669
    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 676
    :cond_3
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiMultiUnreadMessageCount:Landroid/widget/TextView;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 677
    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 684
    :cond_4
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->hideNotiPageButton()V

    .line 685
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->showSettingPageButton()V

    goto :goto_4

    .line 688
    .end local v0    # "accessibilityDescription":Ljava/lang/StringBuilder;
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v6, Lcom/sec/android/sviewcover/R$string;->s_view_cover_missed_event_button_accessibiliy:I

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 690
    .restart local v0    # "accessibilityDescription":Ljava/lang/StringBuilder;
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiSingleContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 691
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiMultiContainer:Landroid/widget/LinearLayout;

    const/4 v6, 0x4

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 692
    if-gtz p1, :cond_6

    if-lez p2, :cond_c

    .line 693
    :cond_6
    if-lez p1, :cond_9

    .line 694
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiSingleEventImage:Landroid/widget/ImageView;

    sget v6, Lcom/sec/android/sviewcover/R$drawable;->sc_n_lock_circle_ic_missed_call_1:I

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 696
    if-le p1, v9, :cond_8

    .line 697
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiSingleEventCount:Landroid/widget/TextView;

    const-string v6, "99+"

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 698
    const-string v4, " 99+"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 716
    :cond_7
    :goto_6
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->isGuestMode()Z

    move-result v4

    if-nez v4, :cond_b

    .line 717
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->showNotiPageButton()V

    goto/16 :goto_4

    .line 700
    :cond_8
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiSingleEventCount:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 701
    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 704
    :cond_9
    if-lez p2, :cond_7

    .line 705
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiSingleEventImage:Landroid/widget/ImageView;

    sget v6, Lcom/sec/android/sviewcover/R$drawable;->sc_n_lock_circle_ic_message_1:I

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 707
    if-le p2, v9, :cond_a

    .line 708
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiSingleEventCount:Landroid/widget/TextView;

    const-string v6, "99+"

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 709
    const-string v4, " 99+"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 714
    :goto_7
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiSingleContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 711
    :cond_a
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiSingleEventCount:Landroid/widget/TextView;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 712
    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 720
    :cond_b
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->hideNotiPageButton()V

    .line 721
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->showSettingPageButton()V

    goto/16 :goto_4

    .line 724
    :cond_c
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->hideNotiPageButton()V

    .line 725
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->showSettingPageButton()V

    goto/16 :goto_4

    .line 732
    :cond_d
    if-nez v3, :cond_e

    .line 734
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiMultiMissedCallCount:Landroid/widget/TextView;

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 735
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiMultiUnreadMessageCount:Landroid/widget/TextView;

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 736
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiSingleEventCount:Landroid/widget/TextView;

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_5

    .line 739
    :cond_e
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiMultiMissedCallCount:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 740
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiMultiUnreadMessageCount:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 741
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiSingleEventCount:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_5
.end method

.method public updateNotiPageButton(II)V
    .locals 7
    .param p1, "missedCallCount"    # I
    .param p2, "unreadMessage"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 628
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->updateNotiArea(II)V

    .line 629
    const/4 v1, 0x1

    .line 631
    .local v1, "enableNoti":Z
    :try_start_0
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "lock_screen_show_notifications"

    const/4 v6, -0x2

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-ne v4, v2, :cond_1

    move v1, v2

    .line 637
    :goto_0
    if-ne v1, v2, :cond_0

    .line 638
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 640
    :cond_0
    return-void

    :cond_1
    move v1, v3

    .line 631
    goto :goto_0

    .line 633
    :catch_0
    move-exception v0

    .line 634
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    const-string v4, "SViewCoverNewUnlockArea"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateNotiArea() can not found setting "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_0
.end method
