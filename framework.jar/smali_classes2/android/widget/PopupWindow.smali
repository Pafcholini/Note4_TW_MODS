.class public Landroid/widget/PopupWindow;
.super Ljava/lang/Object;
.source "PopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/PopupWindow$PopupViewContainer;,
        Landroid/widget/PopupWindow$OnDismissListener;
    }
.end annotation


# static fields
.field private static final ABOVE_ANCHOR_STATE_SET:[I

.field private static final DEFAULT_ANCHORED_GRAVITY:I = 0x800033

.field public static final INPUT_METHOD_FROM_FOCUSABLE:I = 0x0

.field public static final INPUT_METHOD_NEEDED:I = 0x1

.field public static final INPUT_METHOD_NOT_NEEDED:I = 0x2


# instance fields
.field private mAboveAnchor:Z

.field private mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mAllowScrollingAnchorParent:Z

.field private mAnchor:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mAnchorRelativeX:I

.field private mAnchorRelativeY:I

.field private mAnchorXoff:I

.field private mAnchorYoff:I

.field private mAnchoredGravity:I

.field private mAnimationStyle:I

.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mBelowAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mClipToScreen:Z

.field private mClippingEnabled:Z

.field private mContentView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mDimAmount:F

.field private mDimBehind:Z

.field private mDrawingLocation:[I

.field private mElevation:F

.field private mFocusable:Z

.field private mHeight:I

.field private mHeightMode:I

.field private mIgnoreCheekPress:Z

.field private mInputMethodMode:I

.field private mIsDropdown:Z

.field private mIsShowing:Z

.field private mIsWindowPopupOutsideBound:Z

.field private mLastHeight:I

.field private mLastWidth:I

.field private mLayoutInScreen:Z

.field private mLayoutInsetDecor:Z

.field private mNotTouchModal:Z

.field private mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

.field private final mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field private mOutsideTouchable:Z

.field private mOverlapAnchor:Z

.field private mPopupHeight:I

.field private mPopupView:Landroid/view/View;

.field private mPopupViewInitialLayoutDirectionInherited:Z

.field private mPopupWidth:I

.field private mScreenLocation:[I

.field private mShowForAllUsers:Z

.field private mSoftInputMode:I

.field private mSplitTouchEnabled:I

.field private mStatusBarHeight:I

.field private mTempRect:Landroid/graphics/Rect;

.field private mTouchInterceptor:Landroid/view/View$OnTouchListener;

.field private mTouchable:Z

.field private mWidth:I

.field private mWidthMode:I

.field private mWindowLayoutType:I

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 154
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100aa

    aput v2, v0, v1

    sput-object v0, Landroid/widget/PopupWindow;->ABOVE_ANCHOR_STATE_SET:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 275
    const/4 v0, 0x0

    invoke-direct {p0, v0, v1, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 276
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 302
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 303
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 187
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 188
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 196
    const v0, 0x1010076

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 197
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 205
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 206
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    const/4 v7, 0x0

    iput v7, p0, Landroid/widget/PopupWindow;->mInputMethodMode:I

    .line 103
    const/4 v7, 0x1

    iput v7, p0, Landroid/widget/PopupWindow;->mSoftInputMode:I

    .line 104
    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/widget/PopupWindow;->mTouchable:Z

    .line 105
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/widget/PopupWindow;->mOutsideTouchable:Z

    .line 106
    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/widget/PopupWindow;->mClippingEnabled:Z

    .line 107
    const/4 v7, -0x1

    iput v7, p0, Landroid/widget/PopupWindow;->mSplitTouchEnabled:I

    .line 110
    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/widget/PopupWindow;->mAllowScrollingAnchorParent:Z

    .line 111
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/widget/PopupWindow;->mLayoutInsetDecor:Z

    .line 128
    const/4 v7, 0x2

    new-array v7, v7, [I

    iput-object v7, p0, Landroid/widget/PopupWindow;->mDrawingLocation:[I

    .line 129
    const/4 v7, 0x2

    new-array v7, v7, [I

    iput-object v7, p0, Landroid/widget/PopupWindow;->mScreenLocation:[I

    .line 130
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, p0, Landroid/widget/PopupWindow;->mTempRect:Landroid/graphics/Rect;

    .line 141
    const/16 v7, 0x3e8

    iput v7, p0, Landroid/widget/PopupWindow;->mWindowLayoutType:I

    .line 144
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/widget/PopupWindow;->mIgnoreCheekPress:Z

    .line 145
    const/4 v7, 0x0

    iput v7, p0, Landroid/widget/PopupWindow;->mStatusBarHeight:I

    .line 146
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/widget/PopupWindow;->mIsWindowPopupOutsideBound:Z

    .line 148
    const/4 v7, -0x1

    iput v7, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    .line 151
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/widget/PopupWindow;->mShowForAllUsers:Z

    .line 160
    new-instance v7, Landroid/widget/PopupWindow$1;

    invoke-direct {v7, p0}, Landroid/widget/PopupWindow$1;-><init>(Landroid/widget/PopupWindow;)V

    iput-object v7, p0, Landroid/widget/PopupWindow;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 1821
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/widget/PopupWindow;->mDimBehind:Z

    .line 1822
    const/4 v7, 0x0

    iput v7, p0, Landroid/widget/PopupWindow;->mDimAmount:F

    .line 214
    iput-object p1, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    .line 215
    const-string/jumbo v7, "window"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/WindowManager;

    iput-object v7, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    .line 217
    sget-object v7, Lcom/android/internal/R$styleable;->PopupWindow:[I

    invoke-virtual {p1, p2, v7, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 220
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 221
    const/4 v7, 0x3

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v7

    iput v7, p0, Landroid/widget/PopupWindow;->mElevation:F

    .line 222
    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, p0, Landroid/widget/PopupWindow;->mOverlapAnchor:Z

    .line 224
    const/4 v7, 0x1

    const/4 v8, -0x1

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 225
    .local v2, "animStyle":I
    const v7, 0x10302e4

    if-ne v2, v7, :cond_0

    const/4 v2, -0x1

    .end local v2    # "animStyle":I
    :cond_0
    iput v2, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    .line 237
    iget-object v7, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    instance-of v7, v7, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v7, :cond_2

    .line 238
    iget-object v3, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    check-cast v3, Landroid/graphics/drawable/StateListDrawable;

    .line 241
    .local v3, "background":Landroid/graphics/drawable/StateListDrawable;
    sget-object v7, Landroid/widget/PopupWindow;->ABOVE_ANCHOR_STATE_SET:[I

    invoke-virtual {v3, v7}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawableIndex([I)I

    move-result v1

    .line 245
    .local v1, "aboveAnchorStateIndex":I
    invoke-virtual {v3}, Landroid/graphics/drawable/StateListDrawable;->getStateCount()I

    move-result v5

    .line 246
    .local v5, "count":I
    const/4 v4, -0x1

    .line 247
    .local v4, "belowAnchorStateIndex":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v5, :cond_1

    .line 248
    if-eq v6, v1, :cond_3

    .line 249
    move v4, v6

    .line 256
    :cond_1
    const/4 v7, -0x1

    if-eq v1, v7, :cond_4

    const/4 v7, -0x1

    if-eq v4, v7, :cond_4

    .line 257
    invoke-virtual {v3, v1}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, p0, Landroid/widget/PopupWindow;->mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 258
    invoke-virtual {v3, v4}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, p0, Landroid/widget/PopupWindow;->mBelowAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 265
    .end local v1    # "aboveAnchorStateIndex":I
    .end local v3    # "background":Landroid/graphics/drawable/StateListDrawable;
    .end local v4    # "belowAnchorStateIndex":I
    .end local v5    # "count":I
    .end local v6    # "i":I
    :cond_2
    :goto_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 266
    return-void

    .line 247
    .restart local v1    # "aboveAnchorStateIndex":I
    .restart local v3    # "background":Landroid/graphics/drawable/StateListDrawable;
    .restart local v4    # "belowAnchorStateIndex":I
    .restart local v5    # "count":I
    .restart local v6    # "i":I
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 260
    :cond_4
    const/4 v7, 0x0

    iput-object v7, p0, Landroid/widget/PopupWindow;->mBelowAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 261
    const/4 v7, 0x0

    iput-object v7, p0, Landroid/widget/PopupWindow;->mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_1
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "contentView"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 288
    invoke-direct {p0, p1, v0, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 289
    return-void
.end method

.method public constructor <init>(Landroid/view/View;II)V
    .locals 1
    .param p1, "contentView"    # Landroid/view/View;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 318
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    .line 319
    return-void
.end method

.method public constructor <init>(Landroid/view/View;IIZ)V
    .locals 4
    .param p1, "contentView"    # Landroid/view/View;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "focusable"    # Z

    .prologue
    const/4 v3, 0x2

    const/4 v2, -0x1

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 333
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput v1, p0, Landroid/widget/PopupWindow;->mInputMethodMode:I

    .line 103
    iput v0, p0, Landroid/widget/PopupWindow;->mSoftInputMode:I

    .line 104
    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mTouchable:Z

    .line 105
    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mOutsideTouchable:Z

    .line 106
    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mClippingEnabled:Z

    .line 107
    iput v2, p0, Landroid/widget/PopupWindow;->mSplitTouchEnabled:I

    .line 110
    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mAllowScrollingAnchorParent:Z

    .line 111
    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mLayoutInsetDecor:Z

    .line 128
    new-array v0, v3, [I

    iput-object v0, p0, Landroid/widget/PopupWindow;->mDrawingLocation:[I

    .line 129
    new-array v0, v3, [I

    iput-object v0, p0, Landroid/widget/PopupWindow;->mScreenLocation:[I

    .line 130
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/PopupWindow;->mTempRect:Landroid/graphics/Rect;

    .line 141
    const/16 v0, 0x3e8

    iput v0, p0, Landroid/widget/PopupWindow;->mWindowLayoutType:I

    .line 144
    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mIgnoreCheekPress:Z

    .line 145
    iput v1, p0, Landroid/widget/PopupWindow;->mStatusBarHeight:I

    .line 146
    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mIsWindowPopupOutsideBound:Z

    .line 148
    iput v2, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    .line 151
    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mShowForAllUsers:Z

    .line 160
    new-instance v0, Landroid/widget/PopupWindow$1;

    invoke-direct {v0, p0}, Landroid/widget/PopupWindow$1;-><init>(Landroid/widget/PopupWindow;)V

    iput-object v0, p0, Landroid/widget/PopupWindow;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 1821
    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mDimBehind:Z

    .line 1822
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/PopupWindow;->mDimAmount:F

    .line 334
    if-eqz p1, :cond_0

    .line 335
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    .line 336
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    .line 338
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 339
    invoke-virtual {p0, p2}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 340
    invoke-virtual {p0, p3}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 341
    invoke-virtual {p0, p4}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 342
    return-void
.end method

.method static synthetic access$000(Landroid/widget/PopupWindow;)Ljava/lang/ref/WeakReference;
    .locals 1
    .param p0, "x0"    # Landroid/widget/PopupWindow;

    .prologue
    .line 66
    iget-object v0, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$100(Landroid/widget/PopupWindow;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Landroid/widget/PopupWindow;

    .prologue
    .line 66
    iget-object v0, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/widget/PopupWindow;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Landroid/widget/PopupWindow;

    .prologue
    .line 66
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Landroid/widget/PopupWindow;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/PopupWindow;

    .prologue
    .line 66
    iget v0, p0, Landroid/widget/PopupWindow;->mAnchorXoff:I

    return v0
.end method

.method static synthetic access$300(Landroid/widget/PopupWindow;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/PopupWindow;

    .prologue
    .line 66
    iget v0, p0, Landroid/widget/PopupWindow;->mAnchorYoff:I

    return v0
.end method

.method static synthetic access$400(Landroid/widget/PopupWindow;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/PopupWindow;

    .prologue
    .line 66
    iget v0, p0, Landroid/widget/PopupWindow;->mAnchoredGravity:I

    return v0
.end method

.method static synthetic access$500(Landroid/widget/PopupWindow;Landroid/view/View;Landroid/view/WindowManager$LayoutParams;III)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/PopupWindow;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Landroid/view/WindowManager$LayoutParams;
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # I

    .prologue
    .line 66
    invoke-direct/range {p0 .. p5}, Landroid/widget/PopupWindow;->findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;III)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Landroid/widget/PopupWindow;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/PopupWindow;
    .param p1, "x1"    # Z

    .prologue
    .line 66
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;->updateAboveAnchor(Z)V

    return-void
.end method

.method static synthetic access$700(Landroid/widget/PopupWindow;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/PopupWindow;

    .prologue
    .line 66
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mAboveAnchor:Z

    return v0
.end method

.method static synthetic access$800()[I
    .locals 1

    .prologue
    .line 66
    sget-object v0, Landroid/widget/PopupWindow;->ABOVE_ANCHOR_STATE_SET:[I

    return-object v0
.end method

.method static synthetic access$900(Landroid/widget/PopupWindow;)Landroid/view/View$OnTouchListener;
    .locals 1
    .param p0, "x0"    # Landroid/widget/PopupWindow;

    .prologue
    .line 66
    iget-object v0, p0, Landroid/widget/PopupWindow;->mTouchInterceptor:Landroid/view/View$OnTouchListener;

    return-object v0
.end method

.method private computeAnimationResource()I
    .locals 2

    .prologue
    .line 1206
    iget v0, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 1207
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mIsDropdown:Z

    if-eqz v0, :cond_1

    .line 1208
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mAboveAnchor:Z

    if-eqz v0, :cond_0

    const v0, 0x10302dc

    .line 1214
    :goto_0
    return v0

    .line 1208
    :cond_0
    const v0, 0x10302db

    goto :goto_0

    .line 1212
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1214
    :cond_2
    iget v0, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    goto :goto_0
.end method

.method private computeFlags(I)I
    .locals 3
    .param p1, "curFlags"    # I

    .prologue
    const/high16 v2, 0x20000

    .line 1159
    const v0, -0x868219

    and-int/2addr p1, v0

    .line 1167
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mIgnoreCheekPress:Z

    if-eqz v0, :cond_0

    .line 1168
    const v0, 0x8000

    or-int/2addr p1, v0

    .line 1170
    :cond_0
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mFocusable:Z

    if-nez v0, :cond_a

    .line 1171
    or-int/lit8 p1, p1, 0x8

    .line 1172
    iget v0, p0, Landroid/widget/PopupWindow;->mInputMethodMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1173
    or-int/2addr p1, v2

    .line 1178
    :cond_1
    :goto_0
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mTouchable:Z

    if-nez v0, :cond_2

    .line 1179
    or-int/lit8 p1, p1, 0x10

    .line 1181
    :cond_2
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mOutsideTouchable:Z

    if-eqz v0, :cond_3

    .line 1182
    const/high16 v0, 0x40000

    or-int/2addr p1, v0

    .line 1184
    :cond_3
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mClippingEnabled:Z

    if-nez v0, :cond_4

    .line 1185
    or-int/lit16 p1, p1, 0x200

    .line 1187
    :cond_4
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isSplitTouchEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1188
    const/high16 v0, 0x800000

    or-int/2addr p1, v0

    .line 1190
    :cond_5
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mLayoutInScreen:Z

    if-eqz v0, :cond_6

    .line 1191
    or-int/lit16 p1, p1, 0x100

    .line 1193
    :cond_6
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mLayoutInsetDecor:Z

    if-eqz v0, :cond_7

    .line 1194
    const/high16 v0, 0x10000

    or-int/2addr p1, v0

    .line 1196
    :cond_7
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mNotTouchModal:Z

    if-eqz v0, :cond_8

    .line 1197
    or-int/lit8 p1, p1, 0x20

    .line 1199
    :cond_8
    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1200
    const/high16 v0, 0x1000000

    or-int/2addr p1, v0

    .line 1202
    :cond_9
    return p1

    .line 1175
    :cond_a
    iget v0, p0, Landroid/widget/PopupWindow;->mInputMethodMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1176
    or-int/2addr p1, v2

    goto :goto_0
.end method

.method private createPopupLayout(Landroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 1130
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 1135
    .local v0, "p":Landroid/view/WindowManager$LayoutParams;
    const v1, 0x800033

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1136
    iget v1, p0, Landroid/widget/PopupWindow;->mWidth:I

    iput v1, p0, Landroid/widget/PopupWindow;->mLastWidth:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1137
    iget v1, p0, Landroid/widget/PopupWindow;->mHeight:I

    iput v1, p0, Landroid/widget/PopupWindow;->mLastHeight:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1138
    iget-object v1, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 1139
    iget-object v1, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 1143
    :goto_0
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-direct {p0, v1}, Landroid/widget/PopupWindow;->computeFlags(I)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1145
    iget-boolean v1, p0, Landroid/widget/PopupWindow;->mDimBehind:Z

    if-eqz v1, :cond_0

    .line 1146
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1147
    iget v1, p0, Landroid/widget/PopupWindow;->mDimAmount:F

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 1150
    :cond_0
    iget v1, p0, Landroid/widget/PopupWindow;->mWindowLayoutType:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1151
    iput-object p1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 1152
    iget v1, p0, Landroid/widget/PopupWindow;->mSoftInputMode:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 1153
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PopupWindow:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 1155
    return-object v0

    .line 1141
    :cond_1
    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    goto :goto_0
.end method

.method private findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;III)Z
    .locals 27
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "p"    # Landroid/view/WindowManager$LayoutParams;
    .param p3, "xoff"    # I
    .param p4, "yoff"    # I
    .param p5, "gravity"    # I

    .prologue
    .line 1235
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v4

    .line 1236
    .local v4, "anchorHeight":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v5

    .line 1237
    .local v5, "anchorWidth":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/PopupWindow;->mOverlapAnchor:Z

    move/from16 v24, v0

    if-eqz v24, :cond_0

    .line 1238
    sub-int p4, p4, v4

    .line 1241
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/PopupWindow;->mDrawingLocation:[I

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 1242
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/PopupWindow;->mDrawingLocation:[I

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aget v24, v24, v25

    add-int v24, v24, p3

    move/from16 v0, v24

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1243
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/PopupWindow;->mDrawingLocation:[I

    move-object/from16 v24, v0

    const/16 v25, 0x1

    aget v24, v24, v25

    add-int v24, v24, v4

    add-int v24, v24, p4

    move/from16 v0, v24

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1245
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutDirection()I

    move-result v24

    move/from16 v0, p5

    move/from16 v1, v24

    invoke-static {v0, v1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v24

    and-int/lit8 v12, v24, 0x7

    .line 1247
    .local v12, "hgrav":I
    const/16 v24, 0x5

    move/from16 v0, v24

    if-ne v12, v0, :cond_1

    .line 1250
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/PopupWindow;->mPopupWidth:I

    move/from16 v25, v0

    sub-int v25, v25, v5

    sub-int v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1253
    :cond_1
    const/4 v13, 0x0

    .line 1255
    .local v13, "onTop":Z
    const/16 v24, 0x33

    move/from16 v0, v24

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1257
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/PopupWindow;->mScreenLocation:[I

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1258
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 1259
    .local v7, "displayFrame":Landroid/graphics/Rect;
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 1261
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/PopupWindow;->mScreenLocation:[I

    move-object/from16 v24, v0

    const/16 v25, 0x1

    aget v24, v24, v25

    add-int v24, v24, v4

    add-int v19, v24, p4

    .line 1262
    .local v19, "screenY":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v17

    .line 1263
    .local v17, "root":Landroid/view/View;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/PopupWindow;->mPopupHeight:I

    move/from16 v24, v0

    add-int v24, v24, v19

    iget v0, v7, Landroid/graphics/Rect;->bottom:I

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-gt v0, v1, :cond_2

    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/PopupWindow;->mPopupWidth:I

    move/from16 v25, v0

    add-int v24, v24, v25

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getWidth()I

    move-result v25

    sub-int v24, v24, v25

    if-lez v24, :cond_5

    .line 1268
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/PopupWindow;->mAllowScrollingAnchorParent:Z

    move/from16 v24, v0

    if-eqz v24, :cond_3

    .line 1269
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollX()I

    move-result v20

    .line 1270
    .local v20, "scrollX":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollY()I

    move-result v21

    .line 1271
    .local v21, "scrollY":I
    new-instance v15, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/PopupWindow;->mPopupWidth:I

    move/from16 v24, v0

    add-int v24, v24, v20

    add-int v24, v24, p3

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/PopupWindow;->mPopupHeight:I

    move/from16 v25, v0

    add-int v25, v25, v21

    add-int v25, v25, v4

    add-int v25, v25, p4

    move/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-direct {v15, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1273
    .local v15, "r":Landroid/graphics/Rect;
    const/16 v24, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v15, v1}, Landroid/view/View;->requestRectangleOnScreen(Landroid/graphics/Rect;Z)Z

    .line 1278
    .end local v15    # "r":Landroid/graphics/Rect;
    .end local v20    # "scrollX":I
    .end local v21    # "scrollY":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/PopupWindow;->mDrawingLocation:[I

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 1279
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/PopupWindow;->mDrawingLocation:[I

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aget v24, v24, v25

    add-int v24, v24, p3

    move/from16 v0, v24

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1280
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/PopupWindow;->mDrawingLocation:[I

    move-object/from16 v24, v0

    const/16 v25, 0x1

    aget v24, v24, v25

    add-int v24, v24, v4

    add-int v24, v24, p4

    move/from16 v0, v24

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1283
    const/16 v24, 0x5

    move/from16 v0, v24

    if-ne v12, v0, :cond_4

    .line 1284
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/PopupWindow;->mPopupWidth:I

    move/from16 v25, v0

    sub-int v25, v25, v5

    sub-int v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1288
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/PopupWindow;->mScreenLocation:[I

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1289
    iget v0, v7, Landroid/graphics/Rect;->bottom:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/PopupWindow;->mScreenLocation:[I

    move-object/from16 v25, v0

    const/16 v26, 0x1

    aget v25, v25, v26

    sub-int v24, v24, v25

    sub-int v24, v24, v4

    sub-int v24, v24, p4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/PopupWindow;->mScreenLocation:[I

    move-object/from16 v25, v0

    const/16 v26, 0x1

    aget v25, v25, v26

    sub-int v25, v25, p4

    iget v0, v7, Landroid/graphics/Rect;->top:I

    move/from16 v26, v0

    sub-int v25, v25, v26

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_b

    const/4 v13, 0x1

    .line 1291
    :goto_0
    if-eqz v13, :cond_c

    .line 1292
    const/16 v24, 0x53

    move/from16 v0, v24

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1293
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getHeight()I

    move-result v24

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/PopupWindow;->mDrawingLocation:[I

    move-object/from16 v25, v0

    const/16 v26, 0x1

    aget v25, v25, v26

    sub-int v24, v24, v25

    add-int v24, v24, p4

    move/from16 v0, v24

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1300
    :goto_1
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/PopupWindow;->mPopupWidth:I

    move/from16 v25, v0

    add-int v24, v24, v25

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getWidth()I

    move-result v25

    sub-int v24, v24, v25

    if-lez v24, :cond_5

    .line 1301
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/PopupWindow;->mPopupWidth:I

    move/from16 v25, v0

    add-int v24, v24, v25

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getWidth()I

    move-result v25

    sub-int v6, v24, v25

    .line 1302
    .local v6, "diff":I
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v24, v0

    sub-int v24, v24, v6

    move/from16 v0, v24

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1303
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v24, v0

    if-gtz v24, :cond_5

    .line 1304
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1310
    .end local v6    # "diff":I
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/PopupWindow;->mClipToScreen:Z

    move/from16 v24, v0

    if-eqz v24, :cond_e

    invoke-direct/range {p0 .. p0}, Landroid/widget/PopupWindow;->isCascadeTypeMultiWindow()Z

    move-result v24

    if-nez v24, :cond_e

    .line 1311
    iget v0, v7, Landroid/graphics/Rect;->right:I

    move/from16 v24, v0

    iget v0, v7, Landroid/graphics/Rect;->left:I

    move/from16 v25, v0

    sub-int v10, v24, v25

    .line 1312
    .local v10, "displayFrameWidth":I
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v24, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    move/from16 v25, v0

    add-int v16, v24, v25

    .line 1314
    .local v16, "right":I
    iget v8, v7, Landroid/graphics/Rect;->left:I

    .line 1315
    .local v8, "displayFrameLeft":I
    iget v9, v7, Landroid/graphics/Rect;->top:I

    .line 1317
    .local v9, "displayFrameTop":I
    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [I

    move-object/from16 v18, v0

    .line 1318
    .local v18, "rootLocation":[I
    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1319
    const/16 v24, 0x0

    aget v24, v18, v24

    sub-int v8, v8, v24

    .line 1320
    const/16 v24, 0x1

    aget v24, v18, v24

    sub-int v9, v9, v24

    .line 1324
    move/from16 v0, v16

    if-le v0, v10, :cond_6

    .line 1325
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v24, v0

    sub-int v25, v16, v10

    sub-int v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1328
    :cond_6
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v0, v8, :cond_7

    .line 1329
    move-object/from16 v0, p2

    iput v8, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1330
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    move/from16 v24, v0

    move/from16 v0, v24

    invoke-static {v0, v10}, Ljava/lang/Math;->min(II)I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1333
    :cond_7
    if-eqz v13, :cond_d

    .line 1334
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/PopupWindow;->mScreenLocation:[I

    move-object/from16 v24, v0

    const/16 v25, 0x1

    aget v24, v24, v25

    sub-int v24, v24, p4

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/PopupWindow;->mPopupHeight:I

    move/from16 v25, v0

    sub-int v14, v24, v25

    .line 1339
    .local v14, "popupTop":I
    const/16 v22, 0x0

    .line 1340
    .local v22, "statusBarHeight":I
    const-string/jumbo v24, "window"

    invoke-static/range {v24 .. v24}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v23

    .line 1342
    .local v23, "wm":Landroid/view/IWindowManager;
    :try_start_0
    invoke-interface/range {v23 .. v23}, Landroid/view/IWindowManager;->isStatusBarVisible()Z

    move-result v24

    if-eqz v24, :cond_8

    .line 1343
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x1050010

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v22

    .line 1350
    :cond_8
    :goto_2
    move/from16 v0, v22

    if-ge v14, v0, :cond_9

    .line 1351
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    move/from16 v24, v0

    sub-int v25, v22, v14

    sub-int v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1376
    .end local v8    # "displayFrameLeft":I
    .end local v9    # "displayFrameTop":I
    .end local v10    # "displayFrameWidth":I
    .end local v14    # "popupTop":I
    .end local v16    # "right":I
    .end local v18    # "rootLocation":[I
    .end local v22    # "statusBarHeight":I
    .end local v23    # "wm":Landroid/view/IWindowManager;
    :cond_9
    :goto_3
    invoke-direct/range {p0 .. p0}, Landroid/widget/PopupWindow;->isMultiWindow()Z

    move-result v24

    if-eqz v24, :cond_a

    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    move/from16 v24, v0

    iget v0, v7, Landroid/graphics/Rect;->bottom:I

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_a

    if-nez v13, :cond_a

    .line 1378
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/PopupWindow;->mScreenLocation:[I

    move-object/from16 v24, v0

    const/16 v25, 0x1

    aget v24, v24, v25

    add-int v24, v24, p4

    move/from16 v0, v24

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1383
    :cond_a
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    move/from16 v24, v0

    const/high16 v25, 0x10000000

    or-int v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1386
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/PopupWindow;->mDrawingLocation:[I

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aget v24, v24, v25

    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v25, v0

    sub-int v24, v24, v25

    div-int/lit8 v25, v4, 0x2

    add-int v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/PopupWindow;->mAnchorRelativeX:I

    .line 1387
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/PopupWindow;->mDrawingLocation:[I

    move-object/from16 v24, v0

    const/16 v25, 0x1

    aget v24, v24, v25

    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    move/from16 v25, v0

    sub-int v24, v24, v25

    div-int/lit8 v25, v5, 0x2

    add-int v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/PopupWindow;->mAnchorRelativeY:I

    .line 1389
    return v13

    .line 1289
    :cond_b
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 1295
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/PopupWindow;->mDrawingLocation:[I

    move-object/from16 v24, v0

    const/16 v25, 0x1

    aget v24, v24, v25

    add-int v24, v24, v4

    add-int v24, v24, p4

    move/from16 v0, v24

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    goto/16 :goto_1

    .line 1345
    .restart local v8    # "displayFrameLeft":I
    .restart local v9    # "displayFrameTop":I
    .restart local v10    # "displayFrameWidth":I
    .restart local v14    # "popupTop":I
    .restart local v16    # "right":I
    .restart local v18    # "rootLocation":[I
    .restart local v22    # "statusBarHeight":I
    .restart local v23    # "wm":Landroid/view/IWindowManager;
    :catch_0
    move-exception v11

    .line 1346
    .local v11, "e":Landroid/os/RemoteException;
    const-string v24, "PopupWindow"

    invoke-virtual {v11}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1355
    .end local v11    # "e":Landroid/os/RemoteException;
    .end local v14    # "popupTop":I
    .end local v22    # "statusBarHeight":I
    .end local v23    # "wm":Landroid/view/IWindowManager;
    :cond_d
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    move/from16 v24, v0

    move/from16 v0, v24

    invoke-static {v0, v9}, Ljava/lang/Math;->max(II)I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    goto/16 :goto_3

    .line 1358
    .end local v8    # "displayFrameLeft":I
    .end local v9    # "displayFrameTop":I
    .end local v10    # "displayFrameWidth":I
    .end local v16    # "right":I
    .end local v18    # "rootLocation":[I
    :cond_e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/PopupWindow;->mClipToScreen:Z

    move/from16 v24, v0

    if-eqz v24, :cond_9

    invoke-direct/range {p0 .. p0}, Landroid/widget/PopupWindow;->isCascadeTypeMultiWindow()Z

    move-result v24

    if-eqz v24, :cond_9

    .line 1361
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v24, v0

    if-gez v24, :cond_f

    .line 1362
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    move/from16 v24, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v25, v0

    sub-int v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1363
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1365
    :cond_f
    iget v0, v7, Landroid/graphics/Rect;->right:I

    move/from16 v24, v0

    iget v0, v7, Landroid/graphics/Rect;->left:I

    move/from16 v25, v0

    sub-int v10, v24, v25

    .line 1366
    .restart local v10    # "displayFrameWidth":I
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v24, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    move/from16 v25, v0

    add-int v24, v24, v25

    move/from16 v0, v24

    if-le v0, v10, :cond_9

    .line 1367
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v24, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    move/from16 v25, v0

    add-int v24, v24, v25

    sub-int v6, v24, v10

    .line 1368
    .restart local v6    # "diff":I
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    move/from16 v24, v0

    sub-int v24, v24, v6

    move/from16 v0, v24

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    goto/16 :goto_3
.end method

.method private getVisibleDisplayRect(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 10
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "outRect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v8, 0x0

    .line 1394
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1442
    :cond_0
    :goto_0
    return-void

    .line 1398
    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1399
    .local v0, "displayFrame":Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 1401
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v2

    .line 1403
    .local v2, "root":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 1404
    .local v5, "vlp":Landroid/view/ViewGroup$LayoutParams;
    const/4 v6, 0x0

    .line 1406
    .local v6, "wlp":Landroid/view/WindowManager$LayoutParams;
    instance-of v7, v5, Landroid/view/WindowManager$LayoutParams;

    if-eqz v7, :cond_2

    move-object v6, v5

    .line 1407
    check-cast v6, Landroid/view/WindowManager$LayoutParams;

    .line 1409
    iget v7, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v7, v7, 0x200

    if-nez v7, :cond_5

    move v7, v8

    :goto_1
    iput-boolean v7, p0, Landroid/widget/PopupWindow;->mIsWindowPopupOutsideBound:Z

    .line 1412
    :cond_2
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 1413
    .local v4, "visibleDisplayFrame":Landroid/graphics/Rect;
    iput v8, p0, Landroid/widget/PopupWindow;->mStatusBarHeight:I

    .line 1414
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1415
    .local v1, "dm":Landroid/util/DisplayMetrics;
    iget-object v7, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1417
    if-eqz v6, :cond_3

    iget-object v7, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    if-eqz v7, :cond_3

    .line 1418
    iget v7, v6, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    iget v9, v6, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    or-int v3, v7, v9

    .line 1419
    .local v3, "systemUiVisibility":I
    and-int/lit16 v7, v3, 0x404

    if-nez v7, :cond_3

    .line 1421
    iget-object v7, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x1050010

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, p0, Landroid/widget/PopupWindow;->mStatusBarHeight:I

    .line 1425
    .end local v3    # "systemUiVisibility":I
    :cond_3
    invoke-direct {p0}, Landroid/widget/PopupWindow;->isCascadeTypeMultiWindow()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1426
    iput v8, v4, Landroid/graphics/Rect;->left:I

    .line 1427
    iput v8, v4, Landroid/graphics/Rect;->top:I

    .line 1428
    iget v7, v4, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v8

    add-int/2addr v7, v8

    iput v7, v4, Landroid/graphics/Rect;->right:I

    .line 1429
    iget v7, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v8

    add-int/2addr v7, v8

    iput v7, v4, Landroid/graphics/Rect;->bottom:I

    .line 1437
    :goto_2
    iget-boolean v7, p0, Landroid/widget/PopupWindow;->mIsWindowPopupOutsideBound:Z

    if-eqz v7, :cond_4

    .line 1438
    invoke-virtual {v0, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1441
    :cond_4
    invoke-virtual {p2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 1409
    .end local v1    # "dm":Landroid/util/DisplayMetrics;
    .end local v4    # "visibleDisplayFrame":Landroid/graphics/Rect;
    :cond_5
    const/4 v7, 0x1

    goto :goto_1

    .line 1431
    .restart local v1    # "dm":Landroid/util/DisplayMetrics;
    .restart local v4    # "visibleDisplayFrame":Landroid/graphics/Rect;
    :cond_6
    iput v8, v4, Landroid/graphics/Rect;->left:I

    .line 1432
    iget v7, p0, Landroid/widget/PopupWindow;->mStatusBarHeight:I

    iput v7, v4, Landroid/graphics/Rect;->top:I

    .line 1433
    iget v7, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v7, v4, Landroid/graphics/Rect;->right:I

    .line 1434
    iget v7, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v7, v4, Landroid/graphics/Rect;->bottom:I

    goto :goto_2
.end method

.method private invokePopup(Landroid/view/WindowManager$LayoutParams;)V
    .locals 2
    .param p1, "p"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 1094
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 1095
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 1100
    :cond_0
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mShowForAllUsers:Z

    if-eqz v0, :cond_1

    .line 1101
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 1106
    :cond_1
    iget-object v0, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    iget-boolean v1, p0, Landroid/widget/PopupWindow;->mLayoutInsetDecor:Z

    invoke-virtual {v0, v1}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 1107
    invoke-direct {p0}, Landroid/widget/PopupWindow;->setLayoutDirectionFromAnchor()V

    .line 1108
    iget-object v0, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    invoke-interface {v0, v1, p1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1109
    return-void
.end method

.method private isCascadeTypeMultiWindow()Z
    .locals 2

    .prologue
    .line 1841
    iget-object v1, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 1842
    iget-object v1, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAppMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    .line 1843
    .local v0, "mwStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1844
    const/4 v1, 0x1

    .line 1846
    .end local v0    # "mwStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isMultiWindow()Z
    .locals 2

    .prologue
    .line 1833
    iget-object v1, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAppMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    .line 1834
    .local v0, "mwStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isNormal()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1835
    const/4 v1, 0x1

    .line 1837
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private preparePopup(Landroid/view/WindowManager$LayoutParams;)V
    .locals 9
    .param p1, "p"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    const/4 v7, 0x0

    .line 1038
    iget-object v6, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-eqz v6, :cond_0

    iget-object v6, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    if-eqz v6, :cond_0

    iget-object v6, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    if-nez v6, :cond_1

    .line 1039
    :cond_0
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "You must specify a valid content view by calling setContentView() before attempting to show the popup."

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1043
    :cond_1
    iget-object v6, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_4

    .line 1044
    iget-object v6, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 1045
    .local v2, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    const/4 v0, -0x1

    .line 1046
    .local v0, "height":I
    if-eqz v2, :cond_2

    iget v6, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v8, -0x2

    if-ne v6, v8, :cond_2

    .line 1048
    const/4 v0, -0x2

    .line 1053
    :cond_2
    new-instance v4, Landroid/widget/PopupWindow$PopupViewContainer;

    iget-object v6, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-direct {v4, p0, v6}, Landroid/widget/PopupWindow$PopupViewContainer;-><init>(Landroid/widget/PopupWindow;Landroid/content/Context;)V

    .line 1054
    .local v4, "popupViewContainer":Landroid/widget/PopupWindow$PopupViewContainer;
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v6, -0x1

    invoke-direct {v3, v6, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1057
    .local v3, "listParams":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v6, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v6}, Landroid/widget/PopupWindow$PopupViewContainer;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1058
    iget-object v6, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v4, v6, v3}, Landroid/widget/PopupWindow$PopupViewContainer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1060
    iput-object v4, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    .line 1065
    .end local v0    # "height":I
    .end local v2    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v3    # "listParams":Landroid/widget/FrameLayout$LayoutParams;
    .end local v4    # "popupViewContainer":Landroid/widget/PopupWindow$PopupViewContainer;
    :goto_0
    iget-object v6, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    iget v8, p0, Landroid/widget/PopupWindow;->mElevation:F

    invoke-virtual {v6, v8}, Landroid/view/View;->setElevation(F)V

    .line 1066
    iget-object v6, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getRawLayoutDirection()I

    move-result v6

    const/4 v8, 0x2

    if-ne v6, v8, :cond_5

    const/4 v6, 0x1

    :goto_1
    iput-boolean v6, p0, Landroid/widget/PopupWindow;->mPopupViewInitialLayoutDirectionInherited:Z

    .line 1068
    iget v6, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v6, p0, Landroid/widget/PopupWindow;->mPopupWidth:I

    .line 1069
    iget v6, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    iput v6, p0, Landroid/widget/PopupWindow;->mPopupHeight:I

    .line 1073
    iget v6, p0, Landroid/widget/PopupWindow;->mPopupWidth:I

    if-nez v6, :cond_3

    iget-object v6, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    if-eqz v6, :cond_3

    iget-object v6, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    if-eqz v6, :cond_3

    .line 1074
    invoke-direct {p0}, Landroid/widget/PopupWindow;->isCascadeTypeMultiWindow()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1075
    invoke-static {v7, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 1076
    .local v5, "widthMeasureSpec":I
    invoke-static {v7, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1077
    .local v1, "heightMeasureSpec":I
    iget-object v6, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    invoke-virtual {v6, v5, v1}, Landroid/view/View;->measure(II)V

    .line 1078
    iget-object v6, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    iput v6, p0, Landroid/widget/PopupWindow;->mPopupWidth:I

    .line 1083
    .end local v1    # "heightMeasureSpec":I
    .end local v5    # "widthMeasureSpec":I
    :cond_3
    return-void

    .line 1062
    :cond_4
    iget-object v6, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    iput-object v6, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    goto :goto_0

    :cond_5
    move v6, v7

    .line 1066
    goto :goto_1
.end method

.method private registerForScrollChanged(Landroid/view/View;III)V
    .locals 2
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "xoff"    # I
    .param p3, "yoff"    # I
    .param p4, "gravity"    # I

    .prologue
    .line 1800
    invoke-direct {p0}, Landroid/widget/PopupWindow;->unregisterForScrollChanged()V

    .line 1802
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    .line 1803
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 1804
    .local v0, "vto":Landroid/view/ViewTreeObserver;
    if-eqz v0, :cond_0

    .line 1805
    iget-object v1, p0, Landroid/widget/PopupWindow;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 1808
    :cond_0
    iput p2, p0, Landroid/widget/PopupWindow;->mAnchorXoff:I

    .line 1809
    iput p3, p0, Landroid/widget/PopupWindow;->mAnchorYoff:I

    .line 1810
    iput p4, p0, Landroid/widget/PopupWindow;->mAnchoredGravity:I

    .line 1811
    return-void
.end method

.method private setLayoutDirectionFromAnchor()V
    .locals 3

    .prologue
    .line 1112
    iget-object v1, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    .line 1113
    iget-object v1, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1114
    .local v0, "anchor":Landroid/view/View;
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Landroid/widget/PopupWindow;->mPopupViewInitialLayoutDirectionInherited:Z

    if-eqz v1, :cond_0

    .line 1115
    iget-object v1, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutDirection()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutDirection(I)V

    .line 1118
    .end local v0    # "anchor":Landroid/view/View;
    :cond_0
    return-void
.end method

.method private unregisterForScrollChanged()V
    .locals 4

    .prologue
    .line 1787
    iget-object v1, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    .line 1788
    .local v1, "anchorRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/View;>;"
    const/4 v0, 0x0

    .line 1789
    .local v0, "anchor":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 1790
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "anchor":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 1792
    .restart local v0    # "anchor":Landroid/view/View;
    :cond_0
    if-eqz v0, :cond_1

    .line 1793
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    .line 1794
    .local v2, "vto":Landroid/view/ViewTreeObserver;
    iget-object v3, p0, Landroid/widget/PopupWindow;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 1796
    .end local v2    # "vto":Landroid/view/ViewTreeObserver;
    :cond_1
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    .line 1797
    return-void
.end method

.method private update(Landroid/view/View;ZIIZIII)V
    .locals 18
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "updateLocation"    # Z
    .param p3, "xoff"    # I
    .param p4, "yoff"    # I
    .param p5, "updateDimension"    # Z
    .param p6, "width"    # I
    .param p7, "height"    # I
    .param p8, "gravity"    # I

    .prologue
    .line 1732
    invoke-virtual/range {p0 .. p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-nez v5, :cond_1

    .line 1774
    :cond_0
    :goto_0
    return-void

    .line 1736
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    .line 1737
    .local v15, "oldAnchor":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/View;>;"
    if-eqz p2, :cond_7

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/PopupWindow;->mAnchorXoff:I

    move/from16 v0, p3

    if-ne v5, v0, :cond_2

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/PopupWindow;->mAnchorYoff:I

    move/from16 v0, p4

    if-eq v5, v0, :cond_7

    :cond_2
    const/4 v14, 0x1

    .line 1739
    .local v14, "needsUpdate":Z
    :goto_1
    if-eqz v15, :cond_3

    invoke-virtual {v15}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v0, p1

    if-ne v5, v0, :cond_3

    if-eqz v14, :cond_8

    move-object/from16 v0, p0

    iget-boolean v5, v0, Landroid/widget/PopupWindow;->mIsDropdown:Z

    if-nez v5, :cond_8

    .line 1740
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p8

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->registerForScrollChanged(Landroid/view/View;III)V

    .line 1748
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/view/WindowManager$LayoutParams;

    .line 1750
    .local v7, "p":Landroid/view/WindowManager$LayoutParams;
    if-eqz p5, :cond_5

    .line 1751
    const/4 v5, -0x1

    move/from16 v0, p6

    if-ne v0, v5, :cond_9

    .line 1752
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/PopupWindow;->mPopupWidth:I

    move/from16 p6, v0

    .line 1756
    :goto_3
    const/4 v5, -0x1

    move/from16 v0, p7

    if-ne v0, v5, :cond_a

    .line 1757
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/PopupWindow;->mPopupHeight:I

    move/from16 p7, v0

    .line 1763
    :cond_5
    :goto_4
    iget v0, v7, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v16, v0

    .line 1764
    .local v16, "x":I
    iget v0, v7, Landroid/view/WindowManager$LayoutParams;->y:I

    move/from16 v17, v0

    .line 1766
    .local v17, "y":I
    if-eqz p2, :cond_b

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p8

    .line 1767
    invoke-direct/range {v5 .. v10}, Landroid/widget/PopupWindow;->findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;III)Z

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Landroid/widget/PopupWindow;->updateAboveAnchor(Z)V

    .line 1773
    :goto_5
    iget v9, v7, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v10, v7, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v5, v7, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v0, v16

    if-ne v0, v5, :cond_6

    iget v5, v7, Landroid/view/WindowManager$LayoutParams;->y:I

    move/from16 v0, v17

    if-eq v0, v5, :cond_c

    :cond_6
    const/4 v13, 0x1

    :goto_6
    move-object/from16 v8, p0

    move/from16 v11, p6

    move/from16 v12, p7

    invoke-virtual/range {v8 .. v13}, Landroid/widget/PopupWindow;->update(IIIIZ)V

    goto/16 :goto_0

    .line 1737
    .end local v7    # "p":Landroid/view/WindowManager$LayoutParams;
    .end local v14    # "needsUpdate":Z
    .end local v16    # "x":I
    .end local v17    # "y":I
    :cond_7
    const/4 v14, 0x0

    goto :goto_1

    .line 1741
    .restart local v14    # "needsUpdate":Z
    :cond_8
    if-eqz v14, :cond_4

    .line 1743
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/PopupWindow;->mAnchorXoff:I

    .line 1744
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/PopupWindow;->mAnchorYoff:I

    .line 1745
    move/from16 v0, p8

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/PopupWindow;->mAnchoredGravity:I

    goto :goto_2

    .line 1754
    .restart local v7    # "p":Landroid/view/WindowManager$LayoutParams;
    :cond_9
    move/from16 v0, p6

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/PopupWindow;->mPopupWidth:I

    goto :goto_3

    .line 1759
    :cond_a
    move/from16 v0, p7

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/PopupWindow;->mPopupHeight:I

    goto :goto_4

    .line 1769
    .restart local v16    # "x":I
    .restart local v17    # "y":I
    :cond_b
    move-object/from16 v0, p0

    iget v8, v0, Landroid/widget/PopupWindow;->mAnchorXoff:I

    move-object/from16 v0, p0

    iget v9, v0, Landroid/widget/PopupWindow;->mAnchorYoff:I

    move-object/from16 v0, p0

    iget v10, v0, Landroid/widget/PopupWindow;->mAnchoredGravity:I

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    invoke-direct/range {v5 .. v10}, Landroid/widget/PopupWindow;->findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;III)Z

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Landroid/widget/PopupWindow;->updateAboveAnchor(Z)V

    goto :goto_5

    .line 1773
    :cond_c
    const/4 v13, 0x0

    goto :goto_6
.end method

.method private updateAboveAnchor(Z)V
    .locals 2
    .param p1, "aboveAnchor"    # Z

    .prologue
    .line 994
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mAboveAnchor:Z

    if-eq p1, v0, :cond_0

    .line 995
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mAboveAnchor:Z

    .line 997
    iget-object v0, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1001
    iget-object v0, p0, Landroid/widget/PopupWindow;->mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 1002
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mAboveAnchor:Z

    if-eqz v0, :cond_1

    .line 1003
    iget-object v0, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    iget-object v1, p0, Landroid/widget/PopupWindow;->mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1012
    :cond_0
    :goto_0
    return-void

    .line 1005
    :cond_1
    iget-object v0, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    iget-object v1, p0, Landroid/widget/PopupWindow;->mBelowAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1008
    :cond_2
    iget-object v0, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->refreshDrawableState()V

    goto :goto_0
.end method


# virtual methods
.method public dismiss()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1528
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1529
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mIsShowing:Z

    .line 1531
    invoke-direct {p0}, Landroid/widget/PopupWindow;->unregisterForScrollChanged()V

    .line 1534
    :try_start_0
    iget-object v0, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1535
    iget-object v0, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1540
    :goto_0
    iget-object v0, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    iget-object v1, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 1541
    iget-object v0, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1543
    :cond_0
    iput-object v3, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    .line 1545
    iget-object v0, p0, Landroid/widget/PopupWindow;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    if-eqz v0, :cond_1

    .line 1546
    iget-object v0, p0, Landroid/widget/PopupWindow;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-interface {v0}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    .line 1550
    :cond_1
    return-void

    .line 1537
    :cond_2
    :try_start_1
    const-string v0, "PopupWindow"

    const-string v1, "mPopupView\'s parent already removed. so we don\'t remove this view."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1540
    :catchall_0
    move-exception v0

    move-object v1, v0

    iget-object v0, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    iget-object v2, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-eq v0, v2, :cond_3

    iget-object v0, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    .line 1541
    iget-object v0, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v2, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1543
    :cond_3
    iput-object v3, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    .line 1545
    iget-object v0, p0, Landroid/widget/PopupWindow;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    if-eqz v0, :cond_4

    .line 1546
    iget-object v0, p0, Landroid/widget/PopupWindow;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-interface {v0}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    :cond_4
    throw v1
.end method

.method public getAnimationStyle()I
    .locals 1

    .prologue
    .line 393
    iget v0, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    return v0
.end method

.method public getBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 352
    iget-object v0, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getContentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 437
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method public getElevation()F
    .locals 1

    .prologue
    .line 373
    iget v0, p0, Landroid/widget/PopupWindow;->mElevation:F

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 806
    iget v0, p0, Landroid/widget/PopupWindow;->mHeight:I

    return v0
.end method

.method public getInputMethodMode()I
    .locals 1

    .prologue
    .line 512
    iget v0, p0, Landroid/widget/PopupWindow;->mInputMethodMode:I

    return v0
.end method

.method public getMaxAvailableHeight(Landroid/view/View;)I
    .locals 1
    .param p1, "anchor"    # Landroid/view/View;

    .prologue
    .line 1454
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/widget/PopupWindow;->getMaxAvailableHeight(Landroid/view/View;I)I

    move-result v0

    return v0
.end method

.method public getMaxAvailableHeight(Landroid/view/View;I)I
    .locals 1
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "yOffset"    # I

    .prologue
    .line 1469
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/widget/PopupWindow;->getMaxAvailableHeight(Landroid/view/View;IZ)I

    move-result v0

    return v0
.end method

.method public getMaxAvailableHeight(Landroid/view/View;IZ)I
    .locals 10
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "yOffset"    # I
    .param p3, "ignoreBottomDecorations"    # Z

    .prologue
    const/4 v9, 0x1

    .line 1490
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 1491
    .local v3, "displayFrame":Landroid/graphics/Rect;
    invoke-virtual {p1, v3}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 1492
    invoke-direct {p0, p1, v3}, Landroid/widget/PopupWindow;->getVisibleDisplayRect(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1494
    iget-object v1, p0, Landroid/widget/PopupWindow;->mDrawingLocation:[I

    .line 1495
    .local v1, "anchorPos":[I
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1497
    iget v2, v3, Landroid/graphics/Rect;->bottom:I

    .line 1498
    .local v2, "bottomEdge":I
    if-eqz p3, :cond_0

    invoke-direct {p0}, Landroid/widget/PopupWindow;->isCascadeTypeMultiWindow()Z

    move-result v8

    if-nez v8, :cond_0

    .line 1500
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 1501
    .local v6, "res":Landroid/content/res/Resources;
    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v2, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 1504
    .end local v6    # "res":Landroid/content/res/Resources;
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 1505
    .local v0, "anchorHeight":I
    iget-boolean v8, p0, Landroid/widget/PopupWindow;->mOverlapAnchor:Z

    if-eqz v8, :cond_1

    .line 1506
    const/4 v0, 0x0

    .line 1507
    :cond_1
    aget v8, v1, v9

    add-int/2addr v8, v0

    sub-int v8, v2, v8

    sub-int v4, v8, p2

    .line 1508
    .local v4, "distanceToBottom":I
    aget v8, v1, v9

    iget v9, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v9

    add-int v5, v8, p2

    .line 1511
    .local v5, "distanceToTop":I
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1512
    .local v7, "returnedHeight":I
    iget-object v8, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_2

    .line 1513
    iget-object v8, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    iget-object v9, p0, Landroid/widget/PopupWindow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1514
    iget-object v8, p0, Landroid/widget/PopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    iget-object v9, p0, Landroid/widget/PopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v8, v9

    sub-int/2addr v7, v8

    .line 1517
    :cond_2
    return v7
.end method

.method public getSoftInputMode()I
    .locals 1

    .prologue
    .line 553
    iget v0, p0, Landroid/widget/PopupWindow;->mSoftInputMode:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 832
    iget v0, p0, Landroid/widget/PopupWindow;->mWidth:I

    return v0
.end method

.method public getWindowLayoutType()I
    .locals 1

    .prologue
    .line 759
    iget v0, p0, Landroid/widget/PopupWindow;->mWindowLayoutType:I

    return v0
.end method

.method public isAboveAnchor()Z
    .locals 1

    .prologue
    .line 1026
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mAboveAnchor:Z

    return v0
.end method

.method public isClippingEnabled()Z
    .locals 1

    .prologue
    .line 627
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mClippingEnabled:Z

    return v0
.end method

.method public isFocusable()Z
    .locals 1

    .prologue
    .line 483
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mFocusable:Z

    return v0
.end method

.method public isLayoutInScreenEnabled()Z
    .locals 1

    .prologue
    .line 708
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mLayoutInScreen:Z

    return v0
.end method

.method public isOutsideTouchable()Z
    .locals 1

    .prologue
    .line 595
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mOutsideTouchable:Z

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 856
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mIsShowing:Z

    return v0
.end method

.method public isSplitTouchEnabled()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 677
    iget v2, p0, Landroid/widget/PopupWindow;->mSplitTouchEnabled:I

    if-gez v2, :cond_2

    iget-object v2, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_2

    .line 678
    iget-object v2, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_1

    .line 680
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 678
    goto :goto_0

    .line 680
    :cond_2
    iget v2, p0, Landroid/widget/PopupWindow;->mSplitTouchEnabled:I

    if-eq v2, v0, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public isTouchable()Z
    .locals 1

    .prologue
    .line 564
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mTouchable:Z

    return v0
.end method

.method setAllowScrollingAnchorParent(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 666
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mAllowScrollingAnchorParent:Z

    .line 667
    return-void
.end method

.method public setAnimationStyle(I)V
    .locals 0
    .param p1, "animationStyle"    # I

    .prologue
    .line 426
    iput p1, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    .line 427
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 364
    iput-object p1, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 365
    return-void
.end method

.method public setClipToScreenEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 655
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mClipToScreen:Z

    .line 656
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 657
    return-void

    .line 656
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setClippingEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 645
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mClippingEnabled:Z

    .line 646
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 2
    .param p1, "contentView"    # Landroid/view/View;

    .prologue
    .line 452
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 465
    :cond_0
    :goto_0
    return-void

    .line 456
    :cond_1
    iput-object p1, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    .line 458
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 459
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    .line 462
    :cond_2
    iget-object v0, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 463
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    goto :goto_0
.end method

.method public setDimBehind(ZF)V
    .locals 0
    .param p1, "dimBehind"    # Z
    .param p2, "dimAmount"    # F

    .prologue
    .line 1827
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mDimBehind:Z

    .line 1828
    iput p2, p0, Landroid/widget/PopupWindow;->mDimAmount:F

    .line 1829
    return-void
.end method

.method public setElevation(F)V
    .locals 0
    .param p1, "elevation"    # F

    .prologue
    .line 384
    iput p1, p0, Landroid/widget/PopupWindow;->mElevation:F

    .line 385
    return-void
.end method

.method public setFocusable(Z)V
    .locals 0
    .param p1, "focusable"    # Z

    .prologue
    .line 503
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mFocusable:Z

    .line 504
    return-void
.end method

.method public setHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 821
    iput p1, p0, Landroid/widget/PopupWindow;->mHeight:I

    .line 822
    return-void
.end method

.method public setIgnoreCheekPress()V
    .locals 1

    .prologue
    .line 408
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mIgnoreCheekPress:Z

    .line 409
    return-void
.end method

.method public setInputMethodMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 529
    iput p1, p0, Landroid/widget/PopupWindow;->mInputMethodMode:I

    .line 530
    return-void
.end method

.method public setLayoutInScreenEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 721
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mLayoutInScreen:Z

    .line 722
    return-void
.end method

.method public setLayoutInsetDecor(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 738
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mLayoutInsetDecor:Z

    .line 739
    return-void
.end method

.method public setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 0
    .param p1, "onDismissListener"    # Landroid/widget/PopupWindow$OnDismissListener;

    .prologue
    .line 1558
    iput-object p1, p0, Landroid/widget/PopupWindow;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    .line 1559
    return-void
.end method

.method public setOutsideTouchable(Z)V
    .locals 0
    .param p1, "touchable"    # Z

    .prologue
    .line 616
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mOutsideTouchable:Z

    .line 617
    return-void
.end method

.method public setShowForAllUsers(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 1818
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mShowForAllUsers:Z

    .line 1819
    return-void
.end method

.method public setSoftInputMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 543
    iput p1, p0, Landroid/widget/PopupWindow;->mSoftInputMode:I

    .line 544
    return-void
.end method

.method public setSplitTouchEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 697
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Landroid/widget/PopupWindow;->mSplitTouchEnabled:I

    .line 698
    return-void

    .line 697
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTouchInterceptor(Landroid/view/View$OnTouchListener;)V
    .locals 0
    .param p1, "l"    # Landroid/view/View$OnTouchListener;

    .prologue
    .line 472
    iput-object p1, p0, Landroid/widget/PopupWindow;->mTouchInterceptor:Landroid/view/View$OnTouchListener;

    .line 473
    return-void
.end method

.method public setTouchModal(Z)V
    .locals 1
    .param p1, "touchModal"    # Z

    .prologue
    .line 768
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mNotTouchModal:Z

    .line 769
    return-void

    .line 768
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTouchable(Z)V
    .locals 0
    .param p1, "touchable"    # Z

    .prologue
    .line 583
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mTouchable:Z

    .line 584
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 847
    iput p1, p0, Landroid/widget/PopupWindow;->mWidth:I

    .line 848
    return-void
.end method

.method public setWindowLayoutMode(II)V
    .locals 0
    .param p1, "widthSpec"    # I
    .param p2, "heightSpec"    # I

    .prologue
    .line 794
    iput p1, p0, Landroid/widget/PopupWindow;->mWidthMode:I

    .line 795
    iput p2, p0, Landroid/widget/PopupWindow;->mHeightMode:I

    .line 796
    return-void
.end method

.method public setWindowLayoutType(I)V
    .locals 0
    .param p1, "layoutType"    # I

    .prologue
    .line 750
    iput p1, p0, Landroid/widget/PopupWindow;->mWindowLayoutType:I

    .line 751
    return-void
.end method

.method public showAsDropDown(Landroid/view/View;)V
    .locals 1
    .param p1, "anchor"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 930
    invoke-virtual {p0, p1, v0, v0}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 931
    return-void
.end method

.method public showAsDropDown(Landroid/view/View;II)V
    .locals 1
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "xoff"    # I
    .param p3, "yoff"    # I

    .prologue
    .line 950
    const v0, 0x800033

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;III)V

    .line 951
    return-void
.end method

.method public showAsDropDown(Landroid/view/View;III)V
    .locals 6
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "xoff"    # I
    .param p3, "yoff"    # I
    .param p4, "gravity"    # I

    .prologue
    const/4 v1, 0x1

    .line 971
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 991
    :cond_0
    :goto_0
    return-void

    .line 975
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;->registerForScrollChanged(Landroid/view/View;III)V

    .line 977
    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mIsShowing:Z

    .line 978
    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mIsDropdown:Z

    .line 980
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/PopupWindow;->createPopupLayout(Landroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 981
    .local v2, "p":Landroid/view/WindowManager$LayoutParams;
    invoke-direct {p0, v2}, Landroid/widget/PopupWindow;->preparePopup(Landroid/view/WindowManager$LayoutParams;)V

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 983
    invoke-direct/range {v0 .. v5}, Landroid/widget/PopupWindow;->findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;III)Z

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/PopupWindow;->updateAboveAnchor(Z)V

    .line 985
    iget v0, p0, Landroid/widget/PopupWindow;->mHeightMode:I

    if-gez v0, :cond_2

    iget v0, p0, Landroid/widget/PopupWindow;->mHeightMode:I

    iput v0, p0, Landroid/widget/PopupWindow;->mLastHeight:I

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 986
    :cond_2
    iget v0, p0, Landroid/widget/PopupWindow;->mWidthMode:I

    if-gez v0, :cond_3

    iget v0, p0, Landroid/widget/PopupWindow;->mWidthMode:I

    iput v0, p0, Landroid/widget/PopupWindow;->mLastWidth:I

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 988
    :cond_3
    invoke-direct {p0}, Landroid/widget/PopupWindow;->computeAnimationResource()I

    move-result v0

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 990
    invoke-direct {p0, v2}, Landroid/widget/PopupWindow;->invokePopup(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_0
.end method

.method public showAtLocation(Landroid/os/IBinder;III)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "gravity"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I

    .prologue
    .line 889
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-nez v1, :cond_1

    .line 916
    :cond_0
    :goto_0
    return-void

    .line 893
    :cond_1
    invoke-direct {p0}, Landroid/widget/PopupWindow;->unregisterForScrollChanged()V

    .line 895
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mIsShowing:Z

    .line 896
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mIsDropdown:Z

    .line 898
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;->createPopupLayout(Landroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 899
    .local v0, "p":Landroid/view/WindowManager$LayoutParams;
    invoke-direct {p0}, Landroid/widget/PopupWindow;->computeAnimationResource()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 901
    invoke-direct {p0, v0}, Landroid/widget/PopupWindow;->preparePopup(Landroid/view/WindowManager$LayoutParams;)V

    .line 902
    if-nez p2, :cond_2

    .line 903
    const p2, 0x800033

    .line 905
    :cond_2
    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 906
    iput p3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 907
    iput p4, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 910
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    or-int/lit8 v1, v1, 0x20

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    .line 913
    iget v1, p0, Landroid/widget/PopupWindow;->mHeightMode:I

    if-gez v1, :cond_3

    iget v1, p0, Landroid/widget/PopupWindow;->mHeightMode:I

    iput v1, p0, Landroid/widget/PopupWindow;->mLastHeight:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 914
    :cond_3
    iget v1, p0, Landroid/widget/PopupWindow;->mWidthMode:I

    if-gez v1, :cond_4

    iget v1, p0, Landroid/widget/PopupWindow;->mWidthMode:I

    iput v1, p0, Landroid/widget/PopupWindow;->mLastWidth:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 915
    :cond_4
    invoke-direct {p0, v0}, Landroid/widget/PopupWindow;->invokePopup(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_0
.end method

.method public showAtLocation(Landroid/view/View;III)V
    .locals 1
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "gravity"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I

    .prologue
    .line 874
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3, p4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/os/IBinder;III)V

    .line 875
    return-void
.end method

.method public update()V
    .locals 6

    .prologue
    .line 1569
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-nez v4, :cond_1

    .line 1594
    :cond_0
    :goto_0
    return-void

    .line 1573
    :cond_1
    iget-object v4, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager$LayoutParams;

    .line 1576
    .local v2, "p":Landroid/view/WindowManager$LayoutParams;
    const/4 v3, 0x0

    .line 1578
    .local v3, "update":Z
    invoke-direct {p0}, Landroid/widget/PopupWindow;->computeAnimationResource()I

    move-result v0

    .line 1579
    .local v0, "newAnim":I
    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eq v0, v4, :cond_2

    .line 1580
    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1581
    const/4 v3, 0x1

    .line 1584
    :cond_2
    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-direct {p0, v4}, Landroid/widget/PopupWindow;->computeFlags(I)I

    move-result v1

    .line 1585
    .local v1, "newFlags":I
    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    if-eq v1, v4, :cond_3

    .line 1586
    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1587
    const/4 v3, 0x1

    .line 1590
    :cond_3
    if-eqz v3, :cond_0

    .line 1591
    invoke-direct {p0}, Landroid/widget/PopupWindow;->setLayoutDirectionFromAnchor()V

    .line 1592
    iget-object v4, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v5, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    invoke-interface {v4, v5, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public update(II)V
    .locals 7
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 1605
    iget-object v0, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager$LayoutParams;

    .line 1607
    .local v6, "p":Landroid/view/WindowManager$LayoutParams;
    iget v1, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v2, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    const/4 v5, 0x0

    move-object v0, p0

    move v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/PopupWindow;->update(IIIIZ)V

    .line 1608
    return-void
.end method

.method public update(IIII)V
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 1622
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/widget/PopupWindow;->update(IIIIZ)V

    .line 1623
    return-void
.end method

.method public update(IIIIZ)V
    .locals 8
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "force"    # Z

    .prologue
    const/4 v7, -0x1

    .line 1639
    if-eq p3, v7, :cond_0

    .line 1640
    iput p3, p0, Landroid/widget/PopupWindow;->mLastWidth:I

    .line 1641
    invoke-virtual {p0, p3}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 1644
    :cond_0
    if-eq p4, v7, :cond_1

    .line 1645
    iput p4, p0, Landroid/widget/PopupWindow;->mLastHeight:I

    .line 1646
    invoke-virtual {p0, p4}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 1649
    :cond_1
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-nez v6, :cond_3

    .line 1695
    :cond_2
    :goto_0
    return-void

    .line 1653
    :cond_3
    iget-object v6, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager$LayoutParams;

    .line 1655
    .local v4, "p":Landroid/view/WindowManager$LayoutParams;
    move v5, p5

    .line 1657
    .local v5, "update":Z
    iget v6, p0, Landroid/widget/PopupWindow;->mWidthMode:I

    if-gez v6, :cond_a

    iget v1, p0, Landroid/widget/PopupWindow;->mWidthMode:I

    .line 1658
    .local v1, "finalWidth":I
    :goto_1
    if-eq p3, v7, :cond_4

    iget v6, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    if-eq v6, v1, :cond_4

    .line 1659
    iput v1, p0, Landroid/widget/PopupWindow;->mLastWidth:I

    iput v1, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1660
    const/4 v5, 0x1

    .line 1663
    :cond_4
    iget v6, p0, Landroid/widget/PopupWindow;->mHeightMode:I

    if-gez v6, :cond_b

    iget v0, p0, Landroid/widget/PopupWindow;->mHeightMode:I

    .line 1664
    .local v0, "finalHeight":I
    :goto_2
    if-eq p4, v7, :cond_5

    iget v6, v4, Landroid/view/WindowManager$LayoutParams;->height:I

    if-eq v6, v0, :cond_5

    .line 1665
    iput v0, p0, Landroid/widget/PopupWindow;->mLastHeight:I

    iput v0, v4, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1666
    const/4 v5, 0x1

    .line 1669
    :cond_5
    iget v6, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    if-eq v6, p1, :cond_6

    .line 1670
    iput p1, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1671
    const/4 v5, 0x1

    .line 1674
    :cond_6
    iget v6, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    if-eq v6, p2, :cond_7

    .line 1675
    iput p2, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1676
    const/4 v5, 0x1

    .line 1679
    :cond_7
    invoke-direct {p0}, Landroid/widget/PopupWindow;->computeAnimationResource()I

    move-result v2

    .line 1680
    .local v2, "newAnim":I
    iget v6, v4, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eq v2, v6, :cond_8

    .line 1681
    iput v2, v4, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1682
    const/4 v5, 0x1

    .line 1685
    :cond_8
    iget v6, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-direct {p0, v6}, Landroid/widget/PopupWindow;->computeFlags(I)I

    move-result v3

    .line 1686
    .local v3, "newFlags":I
    iget v6, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    if-eq v3, v6, :cond_9

    .line 1687
    iput v3, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1688
    const/4 v5, 0x1

    .line 1691
    :cond_9
    if-eqz v5, :cond_2

    .line 1692
    invoke-direct {p0}, Landroid/widget/PopupWindow;->setLayoutDirectionFromAnchor()V

    .line 1693
    iget-object v6, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v7, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    invoke-interface {v6, v7, v4}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 1657
    .end local v0    # "finalHeight":I
    .end local v1    # "finalWidth":I
    .end local v2    # "newAnim":I
    .end local v3    # "newFlags":I
    :cond_a
    iget v1, p0, Landroid/widget/PopupWindow;->mLastWidth:I

    goto :goto_1

    .line 1663
    .restart local v1    # "finalWidth":I
    :cond_b
    iget v0, p0, Landroid/widget/PopupWindow;->mLastHeight:I

    goto :goto_2
.end method

.method public update(Landroid/view/View;II)V
    .locals 9
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v2, 0x0

    .line 1707
    const/4 v5, 0x1

    iget v8, p0, Landroid/widget/PopupWindow;->mAnchoredGravity:I

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move v4, v2

    move v6, p2

    move v7, p3

    invoke-direct/range {v0 .. v8}, Landroid/widget/PopupWindow;->update(Landroid/view/View;ZIIZIII)V

    .line 1708
    return-void
.end method

.method public update(Landroid/view/View;IIII)V
    .locals 9
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "xoff"    # I
    .param p3, "yoff"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    const/4 v2, 0x1

    .line 1726
    iget v8, p0, Landroid/widget/PopupWindow;->mAnchoredGravity:I

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, v2

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v8}, Landroid/widget/PopupWindow;->update(Landroid/view/View;ZIIZIII)V

    .line 1727
    return-void
.end method
