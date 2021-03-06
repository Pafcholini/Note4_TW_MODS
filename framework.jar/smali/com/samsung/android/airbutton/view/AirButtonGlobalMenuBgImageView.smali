.class public Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;
.super Landroid/widget/ImageView;
.source "AirButtonGlobalMenuBgImageView.java"


# instance fields
.field private final ANIMATION_DURATION:I

.field private final ARC_BASE_ANGLE:F

.field private final ARC_MAX_ANGLE:F

.field private final TAG:Ljava/lang/String;

.field private mArcAnimator:Landroid/animation/ObjectAnimator;

.field private mArcPath:Landroid/graphics/Path;

.field private mContext:Landroid/content/Context;

.field private mCurrentAnimatingArc:F

.field private mImageBoundary:Landroid/graphics/RectF;

.field private mImageCenterX:F

.field private mImageCenterY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    const/high16 v2, -0x3ca10000    # -223.0f

    const/4 v1, 0x0

    .line 61
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 28
    const-string v0, "AirButtonGlobalMenuBgImageView"

    iput-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;->TAG:Ljava/lang/String;

    .line 34
    iput-object v1, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;->mContext:Landroid/content/Context;

    .line 40
    iput-object v1, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;->mImageBoundary:Landroid/graphics/RectF;

    .line 41
    iput v3, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;->mImageCenterX:F

    .line 42
    iput v3, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;->mImageCenterY:F

    .line 48
    const/16 v0, 0x190

    iput v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;->ANIMATION_DURATION:I

    .line 49
    const/high16 v0, 0x42a00000    # 80.0f

    iput v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;->ARC_BASE_ANGLE:F

    .line 50
    iput v2, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;->ARC_MAX_ANGLE:F

    .line 51
    iput v2, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;->mCurrentAnimatingArc:F

    .line 52
    iput-object v1, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;->mArcAnimator:Landroid/animation/ObjectAnimator;

    .line 53
    iput-object v1, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;->mArcPath:Landroid/graphics/Path;

    .line 63
    iput-object p1, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;->mContext:Landroid/content/Context;

    .line 66
    const v0, 0x10800da

    invoke-virtual {p0, v0}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;->setImageResource(I)V

    .line 69
    new-instance v0, Landroid/animation/ObjectAnimator;

    invoke-direct {v0}, Landroid/animation/ObjectAnimator;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;->mArcAnimator:Landroid/animation/ObjectAnimator;

    .line 70
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;->mArcAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, p0}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 71
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;->mArcAnimator:Landroid/animation/ObjectAnimator;

    const-string v1, "animationArc"

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setPropertyName(Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method private initVariables()V
    .locals 4

    .prologue
    const/high16 v3, -0x3d380000    # -100.0f

    .line 75
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;->mImageBoundary:Landroid/graphics/RectF;

    if-nez v0, :cond_0

    .line 76
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;->getWidth()I

    move-result v1

    add-int/lit8 v1, v1, 0x64

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;->getWidth()I

    move-result v2

    add-int/lit8 v2, v2, 0x64

    int-to-float v2, v2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;->mImageBoundary:Landroid/graphics/RectF;

    .line 79
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;->mImageCenterY:F

    iput v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;->mImageCenterX:F

    .line 80
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;->mArcPath:Landroid/graphics/Path;

    .line 81
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;->mImageBoundary:Landroid/graphics/RectF;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;->mArcPath:Landroid/graphics/Path;

    if-nez v0, :cond_1

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 93
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;->mArcPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 94
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;->mArcPath:Landroid/graphics/Path;

    iget v1, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;->mImageCenterX:F

    iget v2, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;->mImageCenterY:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 95
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;->mArcPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;->mImageBoundary:Landroid/graphics/RectF;

    const/high16 v2, 0x42a00000    # 80.0f

    iget v3, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;->mCurrentAnimatingArc:F

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 96
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;->mArcPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 98
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;->mArcPath:Landroid/graphics/Path;

    sget-object v1, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 99
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public setAnimationArc(F)V
    .locals 0
    .param p1, "animationArc"    # F

    .prologue
    .line 130
    iput p1, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;->mCurrentAnimatingArc:F

    .line 131
    invoke-virtual {p0}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;->invalidate()V

    .line 132
    return-void
.end method

.method public startCloseAnimation(ILandroid/animation/Animator$AnimatorListener;)V
    .locals 4
    .param p1, "startDelay"    # I
    .param p2, "mFinishListener"    # Landroid/animation/Animator$AnimatorListener;

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;->initVariables()V

    .line 117
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;->mArcAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;->mArcAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;->mArcAnimator:Landroid/animation/ObjectAnimator;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 121
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;->mArcAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 122
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;->mArcAnimator:Landroid/animation/ObjectAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 123
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;->mArcAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->removeAllListeners()V

    .line 124
    if-eqz p2, :cond_1

    .line 125
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;->mArcAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, p2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 126
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;->mArcAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 127
    return-void

    .line 122
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        -0x3c688000    # -303.0f
    .end array-data
.end method

.method public startOpenAnimation()V
    .locals 4

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;->initVariables()V

    .line 105
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;->mArcAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;->mArcAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;->mArcAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 109
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;->mArcAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 110
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;->mArcAnimator:Landroid/animation/ObjectAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 111
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;->mArcAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 112
    return-void

    .line 110
    nop

    :array_0
    .array-data 4
        -0x3c688000    # -303.0f
        0x3f800000    # 1.0f
    .end array-data
.end method
