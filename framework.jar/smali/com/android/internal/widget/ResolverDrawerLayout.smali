.class public Lcom/android/internal/widget/ResolverDrawerLayout;
.super Landroid/view/ViewGroup;
.source "ResolverDrawerLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/ResolverDrawerLayout$SavedState;,
        Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ResolverDrawerLayout"


# instance fields
.field private mActivePointerId:I

.field private mClickOutsideListener:Landroid/view/View$OnClickListener;

.field private mCollapseOffset:F

.field private mCollapsibleHeight:I

.field private mInitialTouchX:F

.field private mInitialTouchY:F

.field private mIsDragging:Z

.field private mLastTouchY:F

.field private mMaxCollapsedHeight:I

.field private mMaxCollapsedHeightSmall:I

.field private mMaxWidth:I

.field private final mMinFlingVelocity:F

.field private mOpenOnClick:Z

.field private mOpenOnLayout:Z

.field private final mScroller:Landroid/widget/OverScroller;

.field private mSmallCollapsed:Z

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTopOffset:I

.field private final mTouchModeChangeListener:Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;

.field private final mTouchSlop:I

.field private final mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 97
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/ResolverDrawerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 98
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 101
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/widget/ResolverDrawerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 102
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 105
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 82
    iput v4, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mActivePointerId:I

    .line 84
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mTempRect:Landroid/graphics/Rect;

    .line 86
    new-instance v2, Lcom/android/internal/widget/ResolverDrawerLayout$1;

    invoke-direct {v2, p0}, Lcom/android/internal/widget/ResolverDrawerLayout$1;-><init>(Lcom/android/internal/widget/ResolverDrawerLayout;)V

    iput-object v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mTouchModeChangeListener:Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;

    .line 107
    sget-object v2, Lcom/android/internal/R$styleable;->ResolverDrawerLayout:[I

    invoke-virtual {p1, p2, v2, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 109
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mMaxWidth:I

    .line 110
    const/4 v2, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mMaxCollapsedHeight:I

    .line 112
    const/4 v2, 0x2

    iget v3, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mMaxCollapsedHeight:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mMaxCollapsedHeightSmall:I

    .line 115
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 117
    new-instance v2, Landroid/widget/OverScroller;

    const v3, 0x10c0005

    invoke-static {p1, v3}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mScroller:Landroid/widget/OverScroller;

    .line 119
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 121
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    .line 122
    .local v1, "vc":Landroid/view/ViewConfiguration;
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mTouchSlop:I

    .line 123
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mMinFlingVelocity:F

    .line 124
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/widget/ResolverDrawerLayout;Landroid/view/View;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/ResolverDrawerLayout;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ResolverDrawerLayout;->isDescendantClipped(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/internal/widget/ResolverDrawerLayout;IF)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/widget/ResolverDrawerLayout;
    .param p1, "x1"    # I
    .param p2, "x2"    # F

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/ResolverDrawerLayout;->smoothScrollTo(IF)V

    return-void
.end method

.method private distanceInfluenceForSnapDuration(F)F
    .locals 4
    .param p1, "f"    # F

    .prologue
    .line 397
    const/high16 v0, 0x3f000000    # 0.5f

    sub-float/2addr p1, v0

    .line 398
    float-to-double v0, p1

    const-wide v2, 0x3fde28c7460698c7L    # 0.4712389167638204

    mul-double/2addr v0, v2

    double-to-float p1, v0

    .line 399
    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method private findChildUnder(FF)Landroid/view/View;
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 407
    invoke-static {p0, p1, p2}, Lcom/android/internal/widget/ResolverDrawerLayout;->findChildUnder(Landroid/view/ViewGroup;FF)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private static findChildUnder(Landroid/view/ViewGroup;FF)Landroid/view/View;
    .locals 4
    .param p0, "parent"    # Landroid/view/ViewGroup;
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 411
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 412
    .local v1, "childCount":I
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 413
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 414
    .local v0, "child":Landroid/view/View;
    invoke-static {v0, p1, p2}, Lcom/android/internal/widget/ResolverDrawerLayout;->isChildUnder(Landroid/view/View;FF)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 418
    .end local v0    # "child":Landroid/view/View;
    :goto_1
    return-object v0

    .line 412
    .restart local v0    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 418
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private findListChildUnder(FF)Landroid/view/View;
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 422
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/ResolverDrawerLayout;->findChildUnder(FF)Landroid/view/View;

    move-result-object v0

    .line 423
    .local v0, "v":Landroid/view/View;
    :goto_0
    if-eqz v0, :cond_0

    .line 424
    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v1

    sub-float/2addr p1, v1

    .line 425
    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v1

    sub-float/2addr p2, v1

    .line 426
    instance-of v1, v0, Landroid/widget/AbsListView;

    if-eqz v1, :cond_1

    .line 428
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0    # "v":Landroid/view/View;
    invoke-static {v0, p1, p2}, Lcom/android/internal/widget/ResolverDrawerLayout;->findChildUnder(Landroid/view/ViewGroup;FF)Landroid/view/View;

    move-result-object v0

    .line 432
    :cond_0
    return-object v0

    .line 430
    .restart local v0    # "v":Landroid/view/View;
    :cond_1
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    check-cast v0, Landroid/view/ViewGroup;

    .end local v0    # "v":Landroid/view/View;
    invoke-static {v0, p1, p2}, Lcom/android/internal/widget/ResolverDrawerLayout;->findChildUnder(Landroid/view/ViewGroup;FF)Landroid/view/View;

    move-result-object v0

    .restart local v0    # "v":Landroid/view/View;
    :goto_1
    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private getMaxCollapsedHeight()I
    .locals 1

    .prologue
    .line 144
    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->isSmallCollapsed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mMaxCollapsedHeightSmall:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mMaxCollapsedHeight:I

    goto :goto_0
.end method

.method private static isChildUnder(Landroid/view/View;FF)Z
    .locals 5
    .param p0, "child"    # Landroid/view/View;
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 474
    invoke-virtual {p0}, Landroid/view/View;->getX()F

    move-result v1

    .line 475
    .local v1, "left":F
    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result v3

    .line 476
    .local v3, "top":F
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    add-float v2, v1, v4

    .line 477
    .local v2, "right":F
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    add-float v0, v3, v4

    .line 478
    .local v0, "bottom":F
    cmpl-float v4, p1, v1

    if-ltz v4, :cond_0

    cmpl-float v4, p2, v3

    if-ltz v4, :cond_0

    cmpg-float v4, p1, v2

    if-gez v4, :cond_0

    cmpg-float v4, p2, v0

    if-gez v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private isDescendantClipped(Landroid/view/View;)Z
    .locals 11
    .param p1, "child"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x0

    .line 444
    iget-object v8, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v9

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v10

    invoke-virtual {v8, v7, v7, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 445
    iget-object v8, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v8}, Lcom/android/internal/widget/ResolverDrawerLayout;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 447
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    if-ne v8, p0, :cond_0

    .line 448
    move-object v2, p1

    .line 461
    .local v2, "directChild":Landroid/view/View;
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getHeight()I

    move-result v8

    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getPaddingBottom()I

    move-result v9

    sub-int v1, v8, v9

    .line 462
    .local v1, "clipEdge":I
    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getChildCount()I

    move-result v0

    .line 463
    .local v0, "childCount":I
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ResolverDrawerLayout;->indexOfChild(Landroid/view/View;)I

    move-result v8

    add-int/lit8 v3, v8, 0x1

    .local v3, "i":I
    :goto_1
    if-ge v3, v0, :cond_3

    .line 464
    invoke-virtual {p0, v3}, Lcom/android/internal/widget/ResolverDrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 465
    .local v4, "nextChild":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-ne v8, v9, :cond_2

    .line 463
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 450
    .end local v0    # "childCount":I
    .end local v1    # "clipEdge":I
    .end local v2    # "directChild":Landroid/view/View;
    .end local v3    # "i":I
    .end local v4    # "nextChild":Landroid/view/View;
    :cond_0
    move-object v6, p1

    .line 451
    .local v6, "v":Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    .line 452
    .local v5, "p":Landroid/view/ViewParent;
    :goto_3
    if-eq v5, p0, :cond_1

    move-object v6, v5

    .line 453
    check-cast v6, Landroid/view/View;

    .line 454
    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    goto :goto_3

    .line 456
    :cond_1
    move-object v2, v6

    .restart local v2    # "directChild":Landroid/view/View;
    goto :goto_0

    .line 468
    .end local v5    # "p":Landroid/view/ViewParent;
    .end local v6    # "v":Landroid/view/View;
    .restart local v0    # "childCount":I
    .restart local v1    # "clipEdge":I
    .restart local v3    # "i":I
    .restart local v4    # "nextChild":Landroid/view/View;
    :cond_2
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v8

    invoke-static {v1, v8}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_2

    .line 470
    .end local v4    # "nextChild":Landroid/view/View;
    :cond_3
    iget-object v8, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mTempRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    if-le v8, v1, :cond_4

    const/4 v7, 0x1

    :cond_4
    return v7
.end method

.method private isListChildUnderClipped(FF)Z
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 439
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/ResolverDrawerLayout;->findListChildUnder(FF)Landroid/view/View;

    move-result-object v0

    .line 440
    .local v0, "listChild":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/android/internal/widget/ResolverDrawerLayout;->isDescendantClipped(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isMoving()Z
    .locals 1

    .prologue
    .line 140
    iget-boolean v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mIsDragging:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

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

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 313
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    .line 314
    .local v2, "pointerIndex":I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 315
    .local v1, "pointerId":I
    iget v3, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mActivePointerId:I

    if-ne v1, v3, :cond_0

    .line 318
    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 319
    .local v0, "newPointerIndex":I
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iput v3, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mInitialTouchX:F

    .line 320
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    iput v3, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mLastTouchY:F

    iput v3, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mInitialTouchY:F

    .line 321
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mActivePointerId:I

    .line 323
    .end local v0    # "newPointerIndex":I
    :cond_0
    return-void

    .line 318
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private performDrag(F)F
    .locals 8
    .param p1, "dy"    # F

    .prologue
    const/4 v5, 0x0

    .line 346
    iget v6, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    add-float/2addr v6, p1

    iget v7, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    int-to-float v7, v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 347
    .local v4, "newPos":F
    iget v6, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    cmpl-float v6, v4, v6

    if-eqz v6, :cond_2

    .line 348
    iget v5, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    sub-float p1, v4, v5

    .line 349
    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getChildCount()I

    move-result v1

    .line 350
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 351
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ResolverDrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 352
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;

    .line 353
    .local v3, "lp":Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;
    iget-boolean v5, v3, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;->ignoreOffset:Z

    if-nez v5, :cond_0

    .line 354
    float-to-int v5, p1

    invoke-virtual {v0, v5}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 350
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 357
    .end local v0    # "child":Landroid/view/View;
    .end local v3    # "lp":Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;
    :cond_1
    iput v4, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    .line 358
    iget v5, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mTopOffset:I

    int-to-float v5, v5

    add-float/2addr v5, p1

    float-to-int v5, v5

    iput v5, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mTopOffset:I

    .line 359
    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->postInvalidateOnAnimation()V

    move v5, p1

    .line 362
    .end local v1    # "childCount":I
    .end local v2    # "i":I
    :cond_2
    return v5
.end method

.method private resetTouch()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 326
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mActivePointerId:I

    .line 327
    iput-boolean v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mIsDragging:Z

    .line 328
    iput-boolean v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mOpenOnClick:Z

    .line 329
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mLastTouchY:F

    iput v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mInitialTouchY:F

    iput v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mInitialTouchX:F

    .line 330
    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 331
    return-void
.end method

.method private smoothScrollTo(IF)V
    .locals 13
    .param p1, "yOffset"    # I
    .param p2, "velocity"    # F

    .prologue
    const/4 v1, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    .line 366
    invoke-direct {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getMaxCollapsedHeight()I

    move-result v0

    if-nez v0, :cond_1

    .line 394
    :cond_0
    :goto_0
    return-void

    .line 369
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 370
    iget v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    float-to-int v2, v0

    .line 371
    .local v2, "sy":I
    sub-int v4, p1, v2

    .line 372
    .local v4, "dy":I
    if-eqz v4, :cond_0

    .line 376
    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getHeight()I

    move-result v9

    .line 377
    .local v9, "height":I
    div-int/lit8 v8, v9, 0x2

    .line 378
    .local v8, "halfHeight":I
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v12

    int-to-float v3, v9

    div-float/2addr v0, v3

    invoke-static {v12, v0}, Ljava/lang/Math;->min(FF)F

    move-result v7

    .line 379
    .local v7, "distanceRatio":F
    int-to-float v0, v8

    int-to-float v3, v8

    invoke-direct {p0, v7}, Lcom/android/internal/widget/ResolverDrawerLayout;->distanceInfluenceForSnapDuration(F)F

    move-result v11

    mul-float/2addr v3, v11

    add-float v6, v0, v3

    .line 382
    .local v6, "distance":F
    const/4 v5, 0x0

    .line 383
    .local v5, "duration":I
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    .line 384
    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_2

    .line 385
    const/high16 v0, 0x447a0000    # 1000.0f

    div-float v3, v6, p2

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    mul-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    mul-int/lit8 v5, v0, 0x4

    .line 390
    :goto_1
    const/16 v0, 0x12c

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 392
    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mScroller:Landroid/widget/OverScroller;

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    .line 393
    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->postInvalidateOnAnimation()V

    goto :goto_0

    .line 387
    :cond_2
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    int-to-float v3, v9

    div-float v10, v0, v3

    .line 388
    .local v10, "pageDelta":F
    add-float v0, v10, v12

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr v0, v3

    float-to-int v5, v0

    goto :goto_1
.end method


# virtual methods
.method public computeScroll()V
    .locals 3

    .prologue
    .line 335
    invoke-super {p0}, Landroid/view/ViewGroup;->computeScroll()V

    .line 336
    iget-object v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_0

    .line 337
    iget-object v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    .line 338
    .local v0, "keepGoing":Z
    iget-object v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    sub-float/2addr v1, v2

    invoke-direct {p0, v1}, Lcom/android/internal/widget/ResolverDrawerLayout;->performDrag(F)F

    .line 339
    if-eqz v0, :cond_0

    .line 340
    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->postInvalidateOnAnimation()V

    .line 343
    .end local v0    # "keepGoing":Z
    :cond_0
    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    .prologue
    .line 658
    new-instance v0, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 643
    new-instance v0, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 648
    instance-of v0, p1, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;

    if-eqz v0, :cond_0

    .line 649
    new-instance v0, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;

    check-cast p1, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;

    .end local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v0, p1}, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;-><init>(Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;)V

    .line 653
    :goto_0
    return-object v0

    .line 650
    .restart local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    .line 651
    new-instance v0, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .end local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v0, p1}, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    goto :goto_0

    .line 653
    .restart local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    new-instance v0, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public isCollapsed()Z
    .locals 2

    .prologue
    .line 136
    iget v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSmallCollapsed()Z
    .locals 1

    .prologue
    .line 132
    iget-boolean v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mSmallCollapsed:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 491
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 492
    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mTouchModeChangeListener:Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 493
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 497
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 498
    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mTouchModeChangeListener:Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 499
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 153
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 155
    .local v0, "action":I
    if-nez v0, :cond_0

    .line 156
    iget-object v7, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7}, Landroid/view/VelocityTracker;->clear()V

    .line 159
    :cond_0
    iget-object v7, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 161
    packed-switch v0, :pswitch_data_0

    .line 202
    :cond_1
    :goto_0
    :pswitch_0
    iget-boolean v5, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mIsDragging:Z

    if-eqz v5, :cond_2

    .line 203
    iget-object v5, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v5}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 205
    :cond_2
    iget-boolean v5, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mIsDragging:Z

    return v5

    .line 163
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 164
    .local v3, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 165
    .local v4, "y":F
    iput v3, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mInitialTouchX:F

    .line 166
    iput v4, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mLastTouchY:F

    iput v4, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mInitialTouchY:F

    .line 167
    invoke-direct {p0, v3, v4}, Lcom/android/internal/widget/ResolverDrawerLayout;->isListChildUnderClipped(FF)Z

    move-result v7

    if-eqz v7, :cond_3

    iget v7, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    if-lez v7, :cond_3

    :goto_1
    iput-boolean v5, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mOpenOnClick:Z

    goto :goto_0

    :cond_3
    move v5, v6

    goto :goto_1

    .line 172
    .end local v3    # "x":F
    .end local v4    # "y":F
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 173
    .restart local v3    # "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 174
    .restart local v4    # "y":F
    iget v7, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mInitialTouchY:F

    sub-float v1, v4, v7

    .line 175
    .local v1, "dy":F
    const/4 v2, 0x0

    .line 177
    .local v2, "isChildScrollBarTouched":Z
    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getChildCount()I

    move-result v7

    if-le v7, v5, :cond_4

    invoke-virtual {p0, v5}, Lcom/android/internal/widget/ResolverDrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    instance-of v7, v7, Landroid/widget/GridView;

    if-eqz v7, :cond_4

    .line 178
    invoke-virtual {p0, v5}, Lcom/android/internal/widget/ResolverDrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    iget-boolean v2, v7, Landroid/view/View;->mTwScrollingByScrollbar:Z

    .line 180
    :cond_4
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget v8, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mTouchSlop:I

    int-to-float v8, v8

    cmpl-float v7, v7, v8

    if-lez v7, :cond_1

    invoke-direct {p0, v3, v4}, Lcom/android/internal/widget/ResolverDrawerLayout;->findChildUnder(FF)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getNestedScrollAxes()I

    move-result v7

    and-int/lit8 v7, v7, 0x2

    if-nez v7, :cond_1

    if-nez v2, :cond_1

    .line 182
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    iput v6, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mActivePointerId:I

    .line 183
    iput-boolean v5, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mIsDragging:Z

    .line 184
    iget v5, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mLastTouchY:F

    iget v6, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mTouchSlop:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    iget v6, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mLastTouchY:F

    add-float/2addr v6, v1

    iget v7, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mLastTouchY:F

    iget v8, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mTouchSlop:I

    int-to-float v8, v8

    add-float/2addr v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    iput v5, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mLastTouchY:F

    goto/16 :goto_0

    .line 191
    .end local v1    # "dy":F
    .end local v2    # "isChildScrollBarTouched":Z
    .end local v3    # "x":F
    .end local v4    # "y":F
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ResolverDrawerLayout;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 197
    :pswitch_4
    invoke-direct {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->resetTouch()V

    goto/16 :goto_0

    .line 161
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 17
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 609
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getWidth()I

    move-result v12

    .line 611
    .local v12, "width":I
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mTopOffset:I

    .line 612
    .local v14, "ypos":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getPaddingLeft()I

    move-result v7

    .line 613
    .local v7, "leftEdge":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getPaddingRight()I

    move-result v15

    sub-int v10, v12, v15

    .line 615
    .local v10, "rightEdge":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getChildCount()I

    move-result v3

    .line 616
    .local v3, "childCount":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v3, :cond_2

    .line 617
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/widget/ResolverDrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 618
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;

    .line 620
    .local v8, "lp":Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v15

    const/16 v16, 0x8

    move/from16 v0, v16

    if-ne v15, v0, :cond_0

    .line 616
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 624
    :cond_0
    iget v15, v8, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;->topMargin:I

    add-int v11, v14, v15

    .line 625
    .local v11, "top":I
    iget-boolean v15, v8, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;->ignoreOffset:Z

    if-eqz v15, :cond_1

    .line 626
    int-to-float v15, v11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    move/from16 v16, v0

    sub-float v15, v15, v16

    float-to-int v11, v15

    .line 628
    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    add-int v1, v11, v15

    .line 630
    .local v1, "bottom":I
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 631
    .local v4, "childWidth":I
    sub-int v13, v10, v7

    .line 632
    .local v13, "widthAvailable":I
    sub-int v15, v13, v4

    div-int/lit8 v15, v15, 0x2

    add-int v6, v7, v15

    .line 633
    .local v6, "left":I
    add-int v9, v6, v4

    .line 635
    .local v9, "right":I
    invoke-virtual {v2, v6, v11, v9, v1}, Landroid/view/View;->layout(IIII)V

    .line 637
    iget v15, v8, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;->bottomMargin:I

    add-int v14, v1, v15

    goto :goto_1

    .line 639
    .end local v1    # "bottom":I
    .end local v2    # "child":Landroid/view/View;
    .end local v4    # "childWidth":I
    .end local v6    # "left":I
    .end local v8    # "lp":Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;
    .end local v9    # "right":I
    .end local v11    # "top":I
    .end local v13    # "widthAvailable":I
    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 15
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 554
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v11

    .line 555
    .local v11, "sourceWidth":I
    move v12, v11

    .line 556
    .local v12, "widthSize":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    .line 560
    .local v8, "heightSize":I
    iget v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mMaxWidth:I

    if-ltz v0, :cond_0

    .line 561
    iget v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mMaxWidth:I

    invoke-static {v12, v0}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 564
    :cond_0
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v12, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 565
    .local v2, "widthSpec":I
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v8, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 566
    .local v4, "heightSpec":I
    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getPaddingRight()I

    move-result v13

    add-int v3, v0, v13

    .line 567
    .local v3, "widthPadding":I
    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getPaddingBottom()I

    move-result v13

    add-int v5, v0, v13

    .line 570
    .local v5, "heightUsed":I
    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getChildCount()I

    move-result v7

    .line 571
    .local v7, "childCount":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    if-ge v9, v7, :cond_2

    .line 572
    invoke-virtual {p0, v9}, Lcom/android/internal/widget/ResolverDrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 573
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;

    .line 574
    .local v10, "lp":Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;
    iget-boolean v0, v10, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;->alwaysShow:Z

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v13, 0x8

    if-eq v0, v13, :cond_1

    move-object v0, p0

    .line 575
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/ResolverDrawerLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 576
    iget v0, v10, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;->topMargin:I

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    add-int/2addr v0, v13

    iget v13, v10, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v13

    add-int/2addr v5, v0

    .line 571
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 580
    .end local v1    # "child":Landroid/view/View;
    .end local v10    # "lp":Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;
    :cond_2
    move v6, v5

    .line 583
    .local v6, "alwaysShowHeight":I
    const/4 v9, 0x0

    :goto_1
    if-ge v9, v7, :cond_4

    .line 584
    invoke-virtual {p0, v9}, Lcom/android/internal/widget/ResolverDrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 585
    .restart local v1    # "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;

    .line 586
    .restart local v10    # "lp":Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;
    iget-boolean v0, v10, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;->alwaysShow:Z

    if-nez v0, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v13, 0x8

    if-eq v0, v13, :cond_3

    move-object v0, p0

    .line 587
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/ResolverDrawerLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 588
    iget v0, v10, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;->topMargin:I

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    add-int/2addr v0, v13

    iget v13, v10, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v13

    add-int/2addr v5, v0

    .line 583
    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 592
    .end local v1    # "child":Landroid/view/View;
    .end local v10    # "lp":Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;
    :cond_4
    const/4 v0, 0x0

    sub-int v13, v5, v6

    invoke-direct {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getMaxCollapsedHeight()I

    move-result v14

    sub-int/2addr v13, v14

    invoke-static {v0, v13}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    .line 595
    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->isLaidOut()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 596
    iget v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    iget v13, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    int-to-float v13, v13

    invoke-static {v0, v13}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    .line 602
    :goto_2
    const/4 v0, 0x0

    sub-int v13, v8, v5

    invoke-static {v0, v13}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v13, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    float-to-int v13, v13

    add-int/2addr v0, v13

    iput v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mTopOffset:I

    .line 604
    invoke-virtual {p0, v11, v8}, Lcom/android/internal/widget/ResolverDrawerLayout;->setMeasuredDimension(II)V

    .line 605
    return-void

    .line 599
    :cond_5
    iget-boolean v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mOpenOnLayout:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    :goto_3
    iput v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    goto :goto_2

    :cond_6
    iget v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    int-to-float v0, v0

    goto :goto_3
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .locals 3
    .param p1, "target"    # Landroid/view/View;
    .param p2, "velocityX"    # F
    .param p3, "velocityY"    # F
    .param p4, "consumed"    # Z

    .prologue
    const/4 v0, 0x0

    .line 545
    if-nez p4, :cond_0

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mMinFlingVelocity:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 546
    const/4 v1, 0x0

    cmpl-float v1, p3, v1

    if-lez v1, :cond_1

    :goto_0
    invoke-direct {p0, v0, p3}, Lcom/android/internal/widget/ResolverDrawerLayout;->smoothScrollTo(IF)V

    .line 547
    const/4 v0, 0x1

    .line 549
    :cond_0
    return v0

    .line 546
    :cond_1
    iget v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    goto :goto_0
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .locals 3
    .param p1, "target"    # Landroid/view/View;
    .param p2, "velocityX"    # F
    .param p3, "velocityY"    # F

    .prologue
    const/4 v0, 0x0

    .line 536
    iget v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mMinFlingVelocity:F

    cmpl-float v1, p3, v1

    if-lez v1, :cond_0

    iget v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    .line 537
    invoke-direct {p0, v0, p3}, Lcom/android/internal/widget/ResolverDrawerLayout;->smoothScrollTo(IF)V

    .line 538
    const/4 v0, 0x1

    .line 540
    :cond_0
    return v0
.end method

.method public onNestedPreScroll(Landroid/view/View;II[I)V
    .locals 2
    .param p1, "target"    # Landroid/view/View;
    .param p2, "dx"    # I
    .param p3, "dy"    # I
    .param p4, "consumed"    # [I

    .prologue
    .line 529
    if-lez p3, :cond_0

    .line 530
    const/4 v0, 0x1

    neg-int v1, p3

    int-to-float v1, v1

    invoke-direct {p0, v1}, Lcom/android/internal/widget/ResolverDrawerLayout;->performDrag(F)F

    move-result v1

    neg-float v1, v1

    float-to-int v1, v1

    aput v1, p4, v0

    .line 532
    :cond_0
    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .locals 1
    .param p1, "target"    # Landroid/view/View;
    .param p2, "dxConsumed"    # I
    .param p3, "dyConsumed"    # I
    .param p4, "dxUnconsumed"    # I
    .param p5, "dyUnconsumed"    # I

    .prologue
    .line 522
    if-gez p5, :cond_0

    .line 523
    neg-int v0, p5

    int-to-float v0, v0

    invoke-direct {p0, v0}, Lcom/android/internal/widget/ResolverDrawerLayout;->performDrag(F)F

    .line 525
    :cond_0
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "axes"    # I

    .prologue
    .line 508
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    .line 509
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 670
    move-object v0, p1

    check-cast v0, Lcom/android/internal/widget/ResolverDrawerLayout$SavedState;

    .line 671
    .local v0, "ss":Lcom/android/internal/widget/ResolverDrawerLayout$SavedState;
    invoke-virtual {v0}, Lcom/android/internal/widget/ResolverDrawerLayout$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 672
    iget-boolean v1, v0, Lcom/android/internal/widget/ResolverDrawerLayout$SavedState;->open:Z

    iput-boolean v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mOpenOnLayout:Z

    .line 673
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 663
    new-instance v0, Lcom/android/internal/widget/ResolverDrawerLayout$SavedState;

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/ResolverDrawerLayout$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 664
    .local v0, "ss":Lcom/android/internal/widget/ResolverDrawerLayout$SavedState;
    iget v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    if-lez v1, :cond_0

    iget v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, v0, Lcom/android/internal/widget/ResolverDrawerLayout$SavedState;->open:Z

    .line 665
    return-object v0

    .line 664
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "nestedScrollAxes"    # I

    .prologue
    .line 503
    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 513
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onStopNestedScroll(Landroid/view/View;)V

    .line 514
    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 515
    iget v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    iget v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/ResolverDrawerLayout;->smoothScrollTo(IF)V

    .line 517
    :cond_0
    return-void

    .line 515
    :cond_1
    iget v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v9, 0x1

    const/4 v13, 0x0

    const/4 v10, 0x0

    .line 210
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 212
    .local v0, "action":I
    iget-object v11, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v11, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 214
    const/4 v2, 0x0

    .line 215
    .local v2, "handled":Z
    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    move v9, v2

    .line 309
    :goto_1
    return v9

    .line 217
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    .line 218
    .local v6, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    .line 219
    .local v7, "y":F
    iput v6, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mInitialTouchX:F

    .line 220
    iput v7, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mLastTouchY:F

    iput v7, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mInitialTouchY:F

    .line 221
    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v11

    iput v11, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mActivePointerId:I

    .line 222
    iget v11, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mInitialTouchX:F

    iget v12, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mInitialTouchY:F

    invoke-direct {p0, v11, v12}, Lcom/android/internal/widget/ResolverDrawerLayout;->findChildUnder(FF)Landroid/view/View;

    move-result-object v11

    if-nez v11, :cond_0

    iget-object v11, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mClickOutsideListener:Landroid/view/View$OnClickListener;

    if-eqz v11, :cond_0

    .line 224
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mIsDragging:Z

    .line 226
    :cond_0
    iget v11, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    if-lez v11, :cond_1

    :goto_2
    or-int/2addr v2, v9

    .line 227
    iget-object v9, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v9}, Landroid/widget/OverScroller;->abortAnimation()V

    goto :goto_0

    :cond_1
    move v9, v10

    .line 226
    goto :goto_2

    .line 232
    .end local v6    # "x":F
    .end local v7    # "y":F
    :pswitch_2
    iget v9, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mActivePointerId:I

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    .line 233
    .local v3, "index":I
    if-gez v3, :cond_2

    .line 234
    const-string v9, "ResolverDrawerLayout"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Bad pointer id "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mActivePointerId:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", resetting"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    const/4 v3, 0x0

    .line 236
    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v9

    iput v9, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mActivePointerId:I

    .line 237
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    iput v9, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mInitialTouchX:F

    .line 238
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    iput v9, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mLastTouchY:F

    iput v9, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mInitialTouchY:F

    .line 240
    :cond_2
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    .line 241
    .restart local v6    # "x":F
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    .line 242
    .restart local v7    # "y":F
    iget-boolean v9, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mIsDragging:Z

    if-nez v9, :cond_3

    .line 243
    iget v9, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mInitialTouchY:F

    sub-float v1, v7, v9

    .line 244
    .local v1, "dy":F
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v9

    iget v10, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mTouchSlop:I

    int-to-float v10, v10

    cmpl-float v9, v9, v10

    if-lez v9, :cond_3

    invoke-direct {p0, v6, v7}, Lcom/android/internal/widget/ResolverDrawerLayout;->findChildUnder(FF)Landroid/view/View;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 245
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mIsDragging:Z

    .line 246
    iget v9, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mLastTouchY:F

    iget v10, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mTouchSlop:I

    int-to-float v10, v10

    sub-float/2addr v9, v10

    iget v10, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mLastTouchY:F

    add-float/2addr v10, v1

    iget v11, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mLastTouchY:F

    iget v12, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mTouchSlop:I

    int-to-float v12, v12

    add-float/2addr v11, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(FF)F

    move-result v9

    iput v9, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mLastTouchY:F

    .line 250
    .end local v1    # "dy":F
    :cond_3
    iget-boolean v9, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mIsDragging:Z

    if-eqz v9, :cond_4

    .line 251
    iget v9, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mLastTouchY:F

    sub-float v1, v7, v9

    .line 252
    .restart local v1    # "dy":F
    invoke-direct {p0, v1}, Lcom/android/internal/widget/ResolverDrawerLayout;->performDrag(F)F

    .line 254
    .end local v1    # "dy":F
    :cond_4
    iput v7, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mLastTouchY:F

    goto/16 :goto_0

    .line 259
    .end local v3    # "index":I
    .end local v6    # "x":F
    .end local v7    # "y":F
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v5

    .line 260
    .local v5, "pointerIndex":I
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    .line 261
    .local v4, "pointerId":I
    iput v4, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mActivePointerId:I

    .line 262
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    iput v9, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mInitialTouchX:F

    .line 263
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    iput v9, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mLastTouchY:F

    iput v9, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mInitialTouchY:F

    goto/16 :goto_0

    .line 268
    .end local v4    # "pointerId":I
    .end local v5    # "pointerIndex":I
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ResolverDrawerLayout;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 273
    :pswitch_5
    iput-boolean v10, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mIsDragging:Z

    .line 274
    iget-boolean v11, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mIsDragging:Z

    if-nez v11, :cond_5

    iget v11, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mInitialTouchX:F

    iget v12, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mInitialTouchY:F

    invoke-direct {p0, v11, v12}, Lcom/android/internal/widget/ResolverDrawerLayout;->findChildUnder(FF)Landroid/view/View;

    move-result-object v11

    if-nez v11, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v12

    invoke-direct {p0, v11, v12}, Lcom/android/internal/widget/ResolverDrawerLayout;->findChildUnder(FF)Landroid/view/View;

    move-result-object v11

    if-nez v11, :cond_5

    .line 276
    iget-object v11, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mClickOutsideListener:Landroid/view/View$OnClickListener;

    if-eqz v11, :cond_5

    .line 277
    iget-object v10, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mClickOutsideListener:Landroid/view/View$OnClickListener;

    invoke-interface {v10, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 278
    invoke-direct {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->resetTouch()V

    goto/16 :goto_1

    .line 282
    :cond_5
    iget-boolean v11, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mOpenOnClick:Z

    if-eqz v11, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    iget v12, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mInitialTouchX:F

    sub-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    iget v12, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mTouchSlop:I

    int-to-float v12, v12

    cmpg-float v11, v11, v12

    if-gez v11, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    iget v12, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mInitialTouchY:F

    sub-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    iget v12, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mTouchSlop:I

    int-to-float v12, v12

    cmpg-float v11, v11, v12

    if-gez v11, :cond_6

    .line 284
    invoke-direct {p0, v10, v13}, Lcom/android/internal/widget/ResolverDrawerLayout;->smoothScrollTo(IF)V

    goto/16 :goto_1

    .line 287
    :cond_6
    iget-object v9, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v11, 0x3e8

    invoke-virtual {v9, v11}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 288
    iget-object v9, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v11, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mActivePointerId:I

    invoke-virtual {v9, v11}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v8

    .line 289
    .local v8, "yvel":F
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v9

    iget v11, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mMinFlingVelocity:F

    cmpl-float v9, v9, v11

    if-lez v9, :cond_8

    .line 290
    cmpg-float v9, v8, v13

    if-gez v9, :cond_7

    :goto_3
    invoke-direct {p0, v10, v8}, Lcom/android/internal/widget/ResolverDrawerLayout;->smoothScrollTo(IF)V

    .line 295
    :goto_4
    invoke-direct {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->resetTouch()V

    goto/16 :goto_0

    .line 290
    :cond_7
    iget v10, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    goto :goto_3

    .line 292
    :cond_8
    iget v9, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    iget v11, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    div-int/lit8 v11, v11, 0x2

    int-to-float v11, v11

    cmpg-float v9, v9, v11

    if-gez v9, :cond_9

    :goto_5
    invoke-direct {p0, v10, v13}, Lcom/android/internal/widget/ResolverDrawerLayout;->smoothScrollTo(IF)V

    goto :goto_4

    :cond_9
    iget v10, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    goto :goto_5

    .line 300
    .end local v8    # "yvel":F
    :pswitch_6
    iget-boolean v11, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mIsDragging:Z

    if-eqz v11, :cond_a

    .line 301
    iget v11, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    iget v12, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    div-int/lit8 v12, v12, 0x2

    int-to-float v12, v12

    cmpg-float v11, v11, v12

    if-gez v11, :cond_b

    :goto_6
    invoke-direct {p0, v10, v13}, Lcom/android/internal/widget/ResolverDrawerLayout;->smoothScrollTo(IF)V

    .line 304
    :cond_a
    invoke-direct {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->resetTouch()V

    goto/16 :goto_1

    .line 301
    :cond_b
    iget v10, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    goto :goto_6

    .line 215
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_2
        :pswitch_6
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "focused"    # Landroid/view/View;

    .prologue
    .line 483
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 484
    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p2}, Lcom/android/internal/widget/ResolverDrawerLayout;->isDescendantClipped(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 485
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/ResolverDrawerLayout;->smoothScrollTo(IF)V

    .line 487
    :cond_0
    return-void
.end method

.method public setOnClickOutsideListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 148
    iput-object p1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mClickOutsideListener:Landroid/view/View$OnClickListener;

    .line 149
    return-void
.end method

.method public setSmallCollapsed(Z)V
    .locals 0
    .param p1, "smallCollapsed"    # Z

    .prologue
    .line 127
    iput-boolean p1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mSmallCollapsed:Z

    .line 128
    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->requestLayout()V

    .line 129
    return-void
.end method
