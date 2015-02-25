.class Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;
.super Ljava/lang/Object;
.source "MultiSelectPopupWindow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/MultiSelectPopupWindow$TextViewPositionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/MultiSelectPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MultiSelectQuickPopupWindow"
.end annotation


# static fields
.field private static final TW_QUICK_POPUP_DIVIDER_LAYOUT:I = 0x1090138

.field private static final TW_QUICK_POPUP_HORIZONTAL_SCROLL_LAYOUT:I = 0x109013a

.field private static final TW_QUICK_POPUP_ITEM_LAYOUT:I = 0x1090139


# instance fields
.field private COPY_DESCRIPTION:Ljava/lang/CharSequence;

.field private DICTIONARY_DESCRIPTION:Ljava/lang/CharSequence;

.field private final ITEM_WIDTH:I

.field private SELECTALL_DESCRIPTION:Ljava/lang/CharSequence;

.field private SHARE_VIA_DESCRIPTION:Ljava/lang/CharSequence;

.field private TRANSLATE_DESCRIPTION:Ljava/lang/CharSequence;

.field private mActionBarHeight:I

.field private mContentView:Landroid/view/ViewGroup;

.field private mContentViewHeight:I

.field private mContentViewWidth:I

.field private mCopyImageView:Landroid/widget/ImageView;

.field private mCopyLayout:Landroid/widget/FrameLayout;

.field private mCopyTextView:Landroid/widget/TextView;

.field private mDictionaryImageView:Landroid/widget/ImageView;

.field private mDictionaryLayout:Landroid/widget/FrameLayout;

.field private mDictionaryTextView:Landroid/widget/TextView;

.field private mDividerImageView1:Landroid/widget/ImageView;

.field private mDividerImageView2:Landroid/widget/ImageView;

.field private mDividerImageView3:Landroid/widget/ImageView;

.field private mDividerImageView4:Landroid/widget/ImageView;

.field private mDividerWidth:I

.field private mHandlerHeight:I

.field private mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

.field private mItemWidth:I

.field private mMenuItemCount:I

.field private mPopupBgPaddingHeight:I

.field private mPopupBgPaddingWidth:I

.field private mPopupWidthLandscape:I

.field private mPopupWidthPortrait:I

.field private mPopupWindow:Landroid/widget/PopupWindow;

.field mPositionX:I

.field mPositionY:I

.field private mSelectAllImageView:Landroid/widget/ImageView;

.field private mSelectAllLayout:Landroid/widget/FrameLayout;

.field private mSelectAllTextView:Landroid/widget/TextView;

.field private mSelectionEndPointOffset:I

.field private mSelectionStartPointOffset:I

.field private mShareImageView:Landroid/widget/ImageView;

.field private mShareLayout:Landroid/widget/FrameLayout;

.field private mShareTextView:Landroid/widget/TextView;

.field private mStatusbarHeight:I

.field private mTranslateImageView:Landroid/widget/ImageView;

.field private mTranslateLayout:Landroid/widget/FrameLayout;

.field private mTranslateTextView:Landroid/widget/TextView;

.field final synthetic this$0:Landroid/widget/MultiSelectPopupWindow;


# direct methods
.method public constructor <init>(Landroid/widget/MultiSelectPopupWindow;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 167
    iput-object p1, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->this$0:Landroid/widget/MultiSelectPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    const/16 v0, 0x47

    iput v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->ITEM_WIDTH:I

    .line 108
    iput v1, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mItemWidth:I

    .line 110
    iput v1, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupWidthPortrait:I

    .line 111
    iput v1, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupWidthLandscape:I

    .line 112
    iput v1, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupBgPaddingWidth:I

    .line 113
    iput v1, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupBgPaddingHeight:I

    .line 114
    iput v1, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mDividerWidth:I

    .line 115
    iput v1, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mMenuItemCount:I

    .line 122
    iput v1, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mSelectionStartPointOffset:I

    .line 123
    iput v1, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mSelectionEndPointOffset:I

    .line 158
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x104000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->SELECTALL_DESCRIPTION:Ljava/lang/CharSequence;

    .line 159
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->COPY_DESCRIPTION:Ljava/lang/CharSequence;

    .line 160
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10408b4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->DICTIONARY_DESCRIPTION:Ljava/lang/CharSequence;

    .line 161
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10408b6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->TRANSLATE_DESCRIPTION:Ljava/lang/CharSequence;

    .line 162
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10408b5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->SHARE_VIA_DESCRIPTION:Ljava/lang/CharSequence;

    .line 168
    invoke-direct {p0}, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->createPopupWindow()V

    .line 169
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    .line 170
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    iget v1, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupWidthPortrait:I

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 171
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 173
    invoke-direct {p0}, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->initContentView()V

    .line 174
    invoke-direct {p0}, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->setHeight()V

    .line 175
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 176
    return-void
.end method

.method static synthetic access$500(Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;)Landroid/widget/HorizontalScrollView;
    .locals 1
    .param p0, "x0"    # Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;

    .prologue
    .line 106
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    return-object v0
.end method

.method private computeLocalPosition()V
    .locals 2

    .prologue
    .line 402
    invoke-virtual {p0}, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->measureContent()V

    .line 403
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 404
    .local v0, "position":[I
    invoke-direct {p0, v0}, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->getMultiSelectQuickPopupPosition([I)V

    .line 405
    const/4 v1, 0x0

    aget v1, v0, v1

    iput v1, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPositionX:I

    .line 406
    const/4 v1, 0x1

    aget v1, v0, v1

    iput v1, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPositionY:I

    .line 407
    return-void
.end method

.method private createPopupWindow()V
    .locals 7

    .prologue
    const v6, 0x1080aeb

    const/4 v5, 0x0

    .line 203
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1050158

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mItemWidth:I

    .line 206
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 207
    .local v0, "bgRes":Landroid/graphics/drawable/Drawable;
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 208
    .local v1, "bgResPadding":Landroid/graphics/Rect;
    if-eqz v1, :cond_0

    .line 209
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 210
    iget v3, v1, Landroid/graphics/Rect;->left:I

    iget v4, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    iput v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupBgPaddingWidth:I

    .line 211
    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v4

    iput v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupBgPaddingHeight:I

    .line 212
    const/4 v1, 0x0

    .line 217
    :goto_0
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1080721

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    iput v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mDividerWidth:I

    .line 218
    iget v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mItemWidth:I

    mul-int/lit8 v3, v3, 0x4

    iget v4, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mDividerWidth:I

    mul-int/lit8 v4, v4, 0x3

    add-int/2addr v3, v4

    iget v4, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupBgPaddingWidth:I

    add-int/2addr v3, v4

    iput v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupWidthPortrait:I

    .line 219
    iget v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mItemWidth:I

    mul-int/lit8 v3, v3, 0x4

    iget v4, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mDividerWidth:I

    mul-int/lit8 v4, v4, 0x3

    add-int/2addr v3, v4

    iget v4, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupBgPaddingWidth:I

    add-int/2addr v3, v4

    iput v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupWidthLandscape:I

    .line 220
    new-instance v3, Landroid/widget/PopupWindow;

    invoke-direct {v3}, Landroid/widget/PopupWindow;-><init>()V

    iput-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 221
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 222
    .local v2, "nullBackgrond":Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v3, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 223
    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v3, v5}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 224
    return-void

    .line 214
    .end local v2    # "nullBackgrond":Landroid/graphics/drawable/Drawable;
    :cond_0
    iput v5, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupBgPaddingWidth:I

    goto :goto_0
.end method

.method private getMenuLimit()I
    .locals 2

    .prologue
    .line 672
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 673
    const/4 v0, 0x4

    .line 675
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x6

    goto :goto_0
.end method

.method private getMultiSelectQuickPopupPosition([I)V
    .locals 36
    .param p1, "position"    # [I

    .prologue
    .line 534
    if-nez p1, :cond_0

    .line 535
    const/16 v32, 0x2

    move/from16 v0, v32

    new-array v0, v0, [I

    move-object/from16 p1, v0

    .line 538
    :cond_0
    move-object/from16 v0, p0

    iget v12, v0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mMenuItemCount:I

    .line 539
    .local v12, "menuItemCount":I
    const/4 v13, 0x0

    .line 541
    .local v13, "menuLimit":I
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v32

    move-object/from16 v0, v32

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v32, v0

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_e

    .line 542
    const/4 v13, 0x4

    .line 547
    :goto_0
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/widget/TextView;->getTextForMultiSelection()Ljava/lang/CharSequence;

    move-result-object v28

    .line 548
    .local v28, "text":Ljava/lang/CharSequence;
    if-nez v28, :cond_1

    .line 549
    const-string v32, "MultiSelectPopupWindow"

    const-string v33, "getTextFormultiSelection() text is null"

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    :cond_1
    invoke-static/range {v28 .. v28}, Landroid/text/MultiSelection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v32

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mSelectionStartPointOffset:I

    .line 553
    invoke-static/range {v28 .. v28}, Landroid/text/MultiSelection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v32

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mSelectionEndPointOffset:I

    .line 555
    const/16 v32, 0x2

    move/from16 v0, v32

    new-array v0, v0, [I

    move-object/from16 v18, v0

    .line 556
    .local v18, "screen":[I
    const/16 v32, 0x2

    move/from16 v0, v32

    new-array v0, v0, [I

    move-object/from16 v31, v0

    .line 557
    .local v31, "window":[I
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->getLocationInWindow([I)V

    .line 558
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    .line 559
    const/16 v32, 0x0

    aget v32, v18, v32

    const/16 v33, 0x0

    aget v33, v31, v33

    sub-int v16, v32, v33

    .line 560
    .local v16, "parentViewPositionX":I
    const/16 v32, 0x1

    aget v32, v18, v32

    const/16 v33, 0x1

    aget v33, v31, v33

    sub-int v17, v32, v33

    .line 561
    .local v17, "parentViewPositionY":I
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v30

    .line 562
    .local v30, "viewportToContentVerticalOffset":I
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v29

    .line 563
    .local v29, "viewportToContentHorizontalOffset":I
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v32

    move-object/from16 v0, v32

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v22, v0

    .line 564
    .local v22, "screenWidth":I
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v32

    move-object/from16 v0, v32

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v20, v0

    .line 565
    .local v20, "screenHeight":I
    move/from16 v8, v20

    .line 566
    .local v8, "fullScreenHeight":I
    const/16 v21, 0x0

    .line 567
    .local v21, "screenTop":I
    move/from16 v19, v20

    .line 568
    .local v19, "screenBottom":I
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v32

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mSelectionStartPointOffset:I

    move/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v24

    .line 569
    .local v24, "startLine":I
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v32

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mSelectionEndPointOffset:I

    move/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v4

    .line 570
    .local v4, "endLine":I
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v32

    const/16 v33, 0x1

    aget v33, v31, v33

    add-int v32, v32, v33

    add-int v26, v32, v30

    .line 571
    .local v26, "startLineTop":I
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v32

    const/16 v33, 0x1

    aget v33, v31, v33

    add-int v32, v32, v33

    add-int v25, v32, v30

    .line 572
    .local v25, "startLineBottom":I
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Landroid/text/Layout;->getLineTop(I)I

    move-result v32

    const/16 v33, 0x1

    aget v33, v31, v33

    add-int v32, v32, v33

    add-int v6, v32, v30

    .line 573
    .local v6, "endLineTop":I
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v32

    const/16 v33, 0x1

    aget v33, v31, v33

    add-int v32, v32, v33

    add-int v5, v32, v30

    .line 574
    .local v5, "endLineBottom":I
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v32

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mSelectionStartPointOffset:I

    move/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v32

    move/from16 v0, v32

    float-to-int v0, v0

    move/from16 v32, v0

    const/16 v33, 0x0

    aget v33, v31, v33

    add-int v32, v32, v33

    add-int v27, v32, v29

    .line 575
    .local v27, "startX":I
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v32

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mSelectionEndPointOffset:I

    move/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v32

    move/from16 v0, v32

    float-to-int v0, v0

    move/from16 v32, v0

    const/16 v33, 0x0

    aget v33, v31, v33

    add-int v32, v32, v33

    add-int v7, v32, v29

    .line 576
    .local v7, "endX":I
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/text/Layout;->getWidth()I

    move-result v11

    .line 577
    .local v11, "maxWidth":I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mActionBarHeight:I

    .line 578
    .local v2, "actionBarHeight":I
    move-object/from16 v0, p0

    iget v9, v0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mHandlerHeight:I

    .line 579
    .local v9, "handlerHeight":I
    const/4 v10, 0x1

    .line 580
    .local v10, "isStatusBarVisible":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v32

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupBgPaddingHeight:I

    move/from16 v33, v0

    add-int v32, v32, v33

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mContentViewHeight:I

    .line 583
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v32

    invoke-interface/range {v32 .. v32}, Landroid/view/IWindowManager;->isStatusBarVisible()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    .line 587
    :goto_1
    if-nez v10, :cond_2

    .line 588
    const/16 v32, 0x0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mStatusbarHeight:I

    .line 591
    :cond_2
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/widget/TextView;->isMultiWindow()Z

    move-result v32

    if-eqz v32, :cond_6

    .line 592
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v32

    const-string/jumbo v33, "multiwindow_facade"

    invoke-virtual/range {v32 .. v33}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/samsung/android/multiwindow/MultiWindowFacade;

    .line 593
    .local v15, "multiWindowFacade":Lcom/samsung/android/multiwindow/MultiWindowFacade;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/content/Context;->getBaseActivityToken()Landroid/os/IBinder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v15, v0}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getStackBound(Landroid/os/IBinder;)Landroid/graphics/Rect;

    move-result-object v23

    .line 594
    .local v23, "stackBoxBound":Landroid/graphics/Rect;
    if-eqz v23, :cond_3

    .line 595
    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    .line 596
    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v19, v0

    .line 597
    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Rect;->height()I

    move-result v20

    .line 600
    :cond_3
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/widget/TextView;->isScaleWindow()Z

    move-result v32

    if-eqz v32, :cond_4

    .line 601
    const/16 v21, 0x0

    .line 604
    :cond_4
    const/16 v32, 0x1

    aget v32, v18, v32

    move/from16 v0, v32

    move/from16 v1, v21

    if-lt v0, v1, :cond_5

    const/16 v32, 0x1

    aget v32, v18, v32

    move/from16 v0, v32

    move/from16 v1, v19

    if-le v0, v1, :cond_6

    :cond_5
    const/16 v32, 0x1

    aget v32, v18, v32

    if-lez v32, :cond_6

    const/16 v32, 0x1

    aget v32, v18, v32

    move/from16 v0, v32

    if-ge v0, v8, :cond_6

    .line 605
    const/16 v21, 0x0

    .line 606
    move/from16 v19, v8

    .line 610
    .end local v15    # "multiWindowFacade":Lcom/samsung/android/multiwindow/MultiWindowFacade;
    .end local v23    # "stackBoxBound":Landroid/graphics/Rect;
    :cond_6
    if-ge v12, v13, :cond_f

    .line 611
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mDividerWidth:I

    move/from16 v32, v0

    add-int/lit8 v33, v12, -0x1

    mul-int v32, v32, v33

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mItemWidth:I

    move/from16 v33, v0

    mul-int v33, v33, v12

    add-int v32, v32, v33

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupBgPaddingWidth:I

    move/from16 v33, v0

    add-int v32, v32, v33

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mContentViewWidth:I

    .line 620
    :goto_2
    move/from16 v0, v24

    if-ne v0, v4, :cond_11

    .line 621
    const/16 v32, 0x0

    sub-int v33, v7, v27

    div-int/lit8 v33, v33, 0x2

    add-int v33, v33, v27

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mContentViewWidth:I

    move/from16 v34, v0

    div-int/lit8 v34, v34, 0x2

    sub-int v33, v33, v34

    aput v33, p1, v32

    .line 626
    :goto_3
    const/16 v32, 0x0

    aget v32, p1, v32

    if-gez v32, :cond_13

    .line 627
    const/16 v32, 0x0

    aget v32, p1, v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Math;->abs(I)I

    move-result v32

    move/from16 v0, v16

    move/from16 v1, v32

    if-ge v0, v1, :cond_12

    .line 628
    const/16 v32, 0x0

    aget v33, p1, v32

    const/16 v34, 0x0

    aget v34, p1, v34

    invoke-static/range {v34 .. v34}, Ljava/lang/Math;->abs(I)I

    move-result v34

    sub-int v34, v34, v16

    add-int v33, v33, v34

    aput v33, p1, v32

    .line 633
    :cond_7
    :goto_4
    const/16 v32, 0x0

    aget v32, p1, v32

    if-gez v32, :cond_8

    .line 634
    const/16 v32, 0x0

    const/16 v33, 0x0

    aput v33, p1, v32

    .line 635
    const/16 v32, 0x0

    aget v32, p1, v32

    add-int v32, v32, v16

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mContentViewWidth:I

    move/from16 v33, v0

    add-int v32, v32, v33

    move/from16 v0, v32

    move/from16 v1, v22

    if-le v0, v1, :cond_8

    .line 636
    const/16 v32, 0x0

    aget v33, p1, v32

    const/16 v34, 0x0

    aget v34, p1, v34

    add-int v34, v34, v16

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mContentViewWidth:I

    move/from16 v35, v0

    add-int v34, v34, v35

    sub-int v34, v34, v22

    sub-int v33, v33, v34

    aput v33, p1, v32

    .line 643
    :cond_8
    :goto_5
    const/16 v32, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mContentViewHeight:I

    move/from16 v33, v0

    sub-int v33, v26, v33

    aput v33, p1, v32

    .line 645
    const/16 v32, 0x1

    aget v32, p1, v32

    add-int v32, v32, v17

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mStatusbarHeight:I

    move/from16 v33, v0

    add-int v33, v33, v2

    add-int v33, v33, v21

    move/from16 v0, v32

    move/from16 v1, v33

    if-gt v0, v1, :cond_9

    .line 646
    const/16 v32, 0x1

    add-int v33, v5, v9

    aput v33, p1, v32

    .line 649
    :cond_9
    const/16 v32, 0x1

    aget v32, p1, v32

    add-int v32, v32, v17

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mContentViewHeight:I

    move/from16 v33, v0

    add-int v32, v32, v33

    move/from16 v0, v32

    move/from16 v1, v19

    if-le v0, v1, :cond_b

    .line 650
    move/from16 v0, v19

    if-le v5, v0, :cond_14

    move/from16 v14, v19

    .line 651
    .local v14, "middlePosition":I
    :goto_6
    if-gez v25, :cond_a

    .line 652
    const/16 v25, 0x0

    .line 654
    :cond_a
    add-int v32, v25, v9

    sub-int v32, v14, v32

    div-int/lit8 v14, v32, 0x2

    .line 655
    add-int v32, v25, v9

    sub-int v32, v5, v32

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mContentViewHeight:I

    move/from16 v33, v0

    move/from16 v0, v32

    move/from16 v1, v33

    if-le v0, v1, :cond_15

    .line 656
    const/16 v32, 0x1

    add-int v33, v25, v9

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mContentViewHeight:I

    move/from16 v34, v0

    div-int/lit8 v34, v34, 0x2

    sub-int v34, v14, v34

    add-int v33, v33, v34

    aput v33, p1, v32

    .line 662
    .end local v14    # "middlePosition":I
    :cond_b
    :goto_7
    const/16 v32, 0x1

    aget v32, p1, v32

    add-int v32, v32, v17

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mContentViewHeight:I

    move/from16 v33, v0

    add-int v32, v32, v33

    move/from16 v0, v32

    move/from16 v1, v19

    if-gt v0, v1, :cond_c

    const/16 v32, 0x1

    aget v32, p1, v32

    add-int v32, v32, v17

    move/from16 v0, v32

    move/from16 v1, v21

    if-ge v0, v1, :cond_d

    .line 663
    :cond_c
    const/16 v32, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mContentViewHeight:I

    move/from16 v33, v0

    sub-int v33, v19, v33

    aput v33, p1, v32

    .line 664
    const/16 v32, 0x1

    aget v33, p1, v32

    sub-int v33, v33, v21

    aput v33, p1, v32

    .line 666
    :cond_d
    return-void

    .line 544
    .end local v2    # "actionBarHeight":I
    .end local v4    # "endLine":I
    .end local v5    # "endLineBottom":I
    .end local v6    # "endLineTop":I
    .end local v7    # "endX":I
    .end local v8    # "fullScreenHeight":I
    .end local v9    # "handlerHeight":I
    .end local v10    # "isStatusBarVisible":Z
    .end local v11    # "maxWidth":I
    .end local v16    # "parentViewPositionX":I
    .end local v17    # "parentViewPositionY":I
    .end local v18    # "screen":[I
    .end local v19    # "screenBottom":I
    .end local v20    # "screenHeight":I
    .end local v21    # "screenTop":I
    .end local v22    # "screenWidth":I
    .end local v24    # "startLine":I
    .end local v25    # "startLineBottom":I
    .end local v26    # "startLineTop":I
    .end local v27    # "startX":I
    .end local v28    # "text":Ljava/lang/CharSequence;
    .end local v29    # "viewportToContentHorizontalOffset":I
    .end local v30    # "viewportToContentVerticalOffset":I
    .end local v31    # "window":[I
    :cond_e
    const/4 v13, 0x6

    goto/16 :goto_0

    .line 584
    .restart local v2    # "actionBarHeight":I
    .restart local v4    # "endLine":I
    .restart local v5    # "endLineBottom":I
    .restart local v6    # "endLineTop":I
    .restart local v7    # "endX":I
    .restart local v8    # "fullScreenHeight":I
    .restart local v9    # "handlerHeight":I
    .restart local v10    # "isStatusBarVisible":Z
    .restart local v11    # "maxWidth":I
    .restart local v16    # "parentViewPositionX":I
    .restart local v17    # "parentViewPositionY":I
    .restart local v18    # "screen":[I
    .restart local v19    # "screenBottom":I
    .restart local v20    # "screenHeight":I
    .restart local v21    # "screenTop":I
    .restart local v22    # "screenWidth":I
    .restart local v24    # "startLine":I
    .restart local v25    # "startLineBottom":I
    .restart local v26    # "startLineTop":I
    .restart local v27    # "startX":I
    .restart local v28    # "text":Ljava/lang/CharSequence;
    .restart local v29    # "viewportToContentHorizontalOffset":I
    .restart local v30    # "viewportToContentVerticalOffset":I
    .restart local v31    # "window":[I
    :catch_0
    move-exception v3

    .line 585
    .local v3, "e":Landroid/os/RemoteException;
    const-string v32, "MultiSelectPopupWindow"

    const-string v33, "Remote exception while to check isStatusBarVisible"

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 613
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_f
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v32

    move-object/from16 v0, v32

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v32, v0

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_10

    .line 614
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupWidthPortrait:I

    move/from16 v32, v0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mContentViewWidth:I

    goto/16 :goto_2

    .line 616
    :cond_10
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupWidthLandscape:I

    move/from16 v32, v0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mContentViewWidth:I

    goto/16 :goto_2

    .line 623
    :cond_11
    const/16 v32, 0x0

    const/16 v33, 0x0

    aget v33, v31, v33

    div-int/lit8 v34, v11, 0x2

    add-int v33, v33, v34

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mContentViewWidth:I

    move/from16 v34, v0

    div-int/lit8 v34, v34, 0x2

    sub-int v33, v33, v34

    aput v33, p1, v32

    goto/16 :goto_3

    .line 629
    :cond_12
    const/16 v32, 0x0

    aget v32, p1, v32

    add-int v32, v32, v16

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mContentViewWidth:I

    move/from16 v33, v0

    add-int v32, v32, v33

    move/from16 v0, v32

    move/from16 v1, v22

    if-le v0, v1, :cond_7

    .line 630
    const/16 v32, 0x0

    aget v33, p1, v32

    const/16 v34, 0x0

    aget v34, p1, v34

    add-int v34, v34, v16

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mContentViewWidth:I

    move/from16 v35, v0

    add-int v34, v34, v35

    sub-int v34, v34, v22

    sub-int v33, v33, v34

    aput v33, p1, v32

    goto/16 :goto_4

    .line 639
    :cond_13
    const/16 v32, 0x0

    aget v32, p1, v32

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mContentViewWidth:I

    move/from16 v33, v0

    add-int v32, v32, v33

    add-int v32, v32, v16

    move/from16 v0, v32

    move/from16 v1, v22

    if-le v0, v1, :cond_8

    .line 640
    const/16 v32, 0x0

    aget v33, p1, v32

    const/16 v34, 0x0

    aget v34, p1, v34

    add-int v34, v34, v16

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mContentViewWidth:I

    move/from16 v35, v0

    add-int v34, v34, v35

    sub-int v34, v34, v22

    sub-int v33, v33, v34

    aput v33, p1, v32

    goto/16 :goto_5

    :cond_14
    move v14, v5

    .line 650
    goto/16 :goto_6

    .line 658
    .restart local v14    # "middlePosition":I
    :cond_15
    const/16 v32, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mContentViewHeight:I

    move/from16 v33, v0

    sub-int v33, v19, v33

    aput v33, p1, v32

    goto/16 :goto_7
.end method

.method private getTextOffset()I
    .locals 3

    .prologue
    .line 522
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextForMultiSelection()Ljava/lang/CharSequence;

    move-result-object v0

    .line 523
    .local v0, "text":Ljava/lang/CharSequence;
    if-nez v0, :cond_0

    .line 524
    const-string v1, "MultiSelectPopupWindow"

    const-string v2, "getTextFormultiSelection() text is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    :cond_0
    invoke-static {v0}, Landroid/text/MultiSelection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    invoke-static {v0}, Landroid/text/MultiSelection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v2

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    return v1
.end method

.method private initContentView()V
    .locals 11

    .prologue
    const v10, 0x1090139

    const v9, 0x1080ae5

    const v8, 0x1020050

    const v7, 0x102004f

    const/4 v6, 0x0

    .line 230
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 231
    .local v0, "inflater":Landroid/view/LayoutInflater;
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 233
    .local v2, "wrapContent":Landroid/view/ViewGroup$LayoutParams;
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 234
    .local v1, "linearLayout":Landroid/widget/LinearLayout;
    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 235
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 236
    const/16 v3, 0x11

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 238
    iput-object v1, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mContentView:Landroid/view/ViewGroup;

    .line 239
    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 240
    const v3, 0x109013a

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/HorizontalScrollView;

    iput-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    .line 241
    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 242
    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 245
    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v10, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    iput-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mSelectAllLayout:Landroid/widget/FrameLayout;

    .line 246
    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mSelectAllLayout:Landroid/widget/FrameLayout;

    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 247
    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mSelectAllLayout:Landroid/widget/FrameLayout;

    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    const v4, 0x1020051

    invoke-virtual {v3, v4}, Landroid/view/View;->setId(I)V

    .line 248
    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mSelectAllLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 249
    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mSelectAllLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mSelectAllImageView:Landroid/widget/ImageView;

    .line 250
    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mSelectAllImageView:Landroid/widget/ImageView;

    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1080ae8

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 251
    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mSelectAllLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mSelectAllTextView:Landroid/widget/TextView;

    .line 252
    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mSelectAllTextView:Landroid/widget/TextView;

    iget-object v4, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->SELECTALL_DESCRIPTION:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 253
    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mContentView:Landroid/view/ViewGroup;

    iget-object v4, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mSelectAllLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 255
    const v3, 0x1090138

    iget-object v4, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mDividerImageView1:Landroid/widget/ImageView;

    .line 256
    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mContentView:Landroid/view/ViewGroup;

    iget-object v4, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mDividerImageView1:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 259
    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v10, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    iput-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mCopyLayout:Landroid/widget/FrameLayout;

    .line 260
    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mCopyLayout:Landroid/widget/FrameLayout;

    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 261
    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mCopyLayout:Landroid/widget/FrameLayout;

    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    const v4, 0x1020052

    invoke-virtual {v3, v4}, Landroid/view/View;->setId(I)V

    .line 262
    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mCopyLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 263
    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mCopyLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mCopyImageView:Landroid/widget/ImageView;

    .line 264
    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mCopyImageView:Landroid/widget/ImageView;

    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1080ae6

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 265
    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mCopyLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mCopyTextView:Landroid/widget/TextView;

    .line 266
    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mCopyTextView:Landroid/widget/TextView;

    iget-object v4, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->COPY_DESCRIPTION:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 267
    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mContentView:Landroid/view/ViewGroup;

    iget-object v4, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mCopyLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 269
    const v3, 0x1090138

    iget-object v4, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mDividerImageView2:Landroid/widget/ImageView;

    .line 270
    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mContentView:Landroid/view/ViewGroup;

    iget-object v4, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mDividerImageView2:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 271
    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mDividerImageView2:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 274
    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v10, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    iput-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mShareLayout:Landroid/widget/FrameLayout;

    .line 275
    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mShareLayout:Landroid/widget/FrameLayout;

    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 276
    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mShareLayout:Landroid/widget/FrameLayout;

    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    const v4, 0x1020055

    invoke-virtual {v3, v4}, Landroid/view/View;->setId(I)V

    .line 277
    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mShareLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 278
    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mShareLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mShareImageView:Landroid/widget/ImageView;

    .line 279
    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mShareImageView:Landroid/widget/ImageView;

    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1080ae9

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 280
    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mShareLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mShareTextView:Landroid/widget/TextView;

    .line 281
    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mShareTextView:Landroid/widget/TextView;

    iget-object v4, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->SHARE_VIA_DESCRIPTION:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 282
    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mContentView:Landroid/view/ViewGroup;

    iget-object v4, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mShareLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 283
    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mShareLayout:Landroid/widget/FrameLayout;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 285
    const v3, 0x1090138

    iget-object v4, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mDividerImageView3:Landroid/widget/ImageView;

    .line 286
    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mContentView:Landroid/view/ViewGroup;

    iget-object v4, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mDividerImageView3:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 289
    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v10, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    iput-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mDictionaryLayout:Landroid/widget/FrameLayout;

    .line 290
    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mDictionaryLayout:Landroid/widget/FrameLayout;

    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 291
    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mDictionaryLayout:Landroid/widget/FrameLayout;

    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    const v4, 0x1020053

    invoke-virtual {v3, v4}, Landroid/view/View;->setId(I)V

    .line 292
    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mDictionaryLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 293
    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mDictionaryLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mDictionaryImageView:Landroid/widget/ImageView;

    .line 294
    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mDictionaryImageView:Landroid/widget/ImageView;

    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1080ae7

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 295
    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mDictionaryLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mDictionaryTextView:Landroid/widget/TextView;

    .line 296
    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mDictionaryTextView:Landroid/widget/TextView;

    iget-object v4, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->DICTIONARY_DESCRIPTION:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 297
    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mContentView:Landroid/view/ViewGroup;

    iget-object v4, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mDictionaryLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 299
    const v3, 0x1090138

    iget-object v4, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mDividerImageView4:Landroid/widget/ImageView;

    .line 300
    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mContentView:Landroid/view/ViewGroup;

    iget-object v4, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mDividerImageView4:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 301
    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mDividerImageView4:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 304
    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v10, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    iput-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mTranslateLayout:Landroid/widget/FrameLayout;

    .line 305
    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mTranslateLayout:Landroid/widget/FrameLayout;

    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 306
    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mTranslateLayout:Landroid/widget/FrameLayout;

    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    const v4, 0x1020054

    invoke-virtual {v3, v4}, Landroid/view/View;->setId(I)V

    .line 307
    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mTranslateLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 308
    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mTranslateLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mTranslateImageView:Landroid/widget/ImageView;

    .line 309
    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mTranslateImageView:Landroid/widget/ImageView;

    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1080aea

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 310
    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mTranslateLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mTranslateTextView:Landroid/widget/TextView;

    .line 311
    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mTranslateTextView:Landroid/widget/TextView;

    iget-object v4, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->TRANSLATE_DESCRIPTION:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 312
    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mTranslateLayout:Landroid/widget/FrameLayout;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 313
    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mContentView:Landroid/view/ViewGroup;

    iget-object v4, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mTranslateLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 315
    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 316
    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    iget-object v4, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v3, v4}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;)V

    .line 317
    return-void
.end method

.method private setHeight()V
    .locals 7

    .prologue
    .line 505
    const/4 v0, 0x0

    .line 507
    .local v0, "a":Landroid/content/res/TypedArray;
    :try_start_0
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    sget-object v4, Landroid/R$styleable;->ActionBar:[I

    const v5, 0x10102ce

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 509
    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v2

    iput v2, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mActionBarHeight:I

    .line 510
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v3

    iget v3, v3, Landroid/widget/TextView;->mTextSelectHandleRes:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    iput v2, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mHandlerHeight:I

    .line 511
    const/high16 v2, 0x41c80000    # 25.0f

    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mStatusbarHeight:I

    .line 512
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 516
    :goto_0
    return-void

    .line 513
    :catch_0
    move-exception v1

    .line 514
    .local v1, "e":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0
.end method

.method private setPopupWindowWidth(I)V
    .locals 4
    .param p1, "menuLimit"    # I

    .prologue
    .line 490
    iget v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mMenuItemCount:I

    if-ge v0, p1, :cond_0

    .line 491
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    iget v1, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mDividerWidth:I

    iget v2, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mMenuItemCount:I

    add-int/lit8 v2, v2, -0x1

    mul-int/2addr v1, v2

    iget v2, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mItemWidth:I

    iget v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mMenuItemCount:I

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    iget v2, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupBgPaddingWidth:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 499
    :goto_0
    return-void

    .line 493
    :cond_0
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 494
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    iget v1, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupWidthPortrait:I

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    goto :goto_0

    .line 496
    :cond_1
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    iget v1, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupWidthLandscape:I

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    goto :goto_0
.end method

.method private updateMultiSelectQuickPopupPosition()V
    .locals 10

    .prologue
    const/4 v5, 0x2

    const/4 v8, -0x1

    const/4 v7, 0x1

    const/4 v9, 0x0

    .line 413
    new-array v4, v5, [I

    .line 414
    .local v4, "window":[I
    new-array v3, v5, [I

    .line 415
    .local v3, "screen":[I
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->getLocationInWindow([I)V

    .line 416
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    .line 417
    aget v5, v3, v9

    aget v6, v4, v9

    sub-int v1, v5, v6

    .line 418
    .local v1, "gapX":I
    aget v5, v3, v7

    aget v6, v4, v7

    sub-int v2, v5, v6

    .line 420
    .local v2, "gapY":I
    invoke-virtual {p0}, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 421
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v6

    if-eq v5, v6, :cond_1

    .line 422
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->isScaleWindow()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 423
    iget-object v5, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v5, v9}, Landroid/widget/PopupWindow;->setLayoutInScreenEnabled(Z)V

    .line 425
    :cond_0
    iget v5, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPositionX:I

    add-int/2addr v5, v1

    iput v5, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPositionX:I

    .line 426
    iget v5, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPositionY:I

    add-int/2addr v5, v2

    iput v5, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPositionY:I

    .line 428
    :cond_1
    iget-object v5, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    iget v6, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPositionX:I

    iget v7, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPositionY:I

    invoke-virtual {v5, v6, v7, v8, v8}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 450
    :goto_0
    return-void

    .line 430
    :cond_2
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v6

    if-eq v5, v6, :cond_4

    .line 431
    iget-object v5, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v5, v7}, Landroid/widget/PopupWindow;->setLayoutInScreenEnabled(Z)V

    .line 432
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->isScaleWindow()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 433
    iget-object v5, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v5, v9}, Landroid/widget/PopupWindow;->setLayoutInScreenEnabled(Z)V

    .line 436
    :cond_3
    iget v5, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPositionX:I

    add-int/2addr v5, v1

    iput v5, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPositionX:I

    .line 437
    iget v5, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPositionY:I

    add-int/2addr v5, v2

    iput v5, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPositionY:I

    .line 438
    iget-object v5, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v6

    iget v7, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPositionX:I

    iget v8, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPositionY:I

    invoke-virtual {v5, v6, v9, v7, v8}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/os/IBinder;III)V

    goto :goto_0

    .line 441
    :cond_4
    iget-object v5, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v5, v9}, Landroid/widget/PopupWindow;->setLayoutInScreenEnabled(Z)V

    .line 443
    :try_start_0
    iget-object v5, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v6

    const/4 v7, 0x0

    iget v8, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPositionX:I

    iget v9, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPositionY:I

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 444
    :catch_0
    move-exception v0

    .line 445
    .local v0, "e":Landroid/view/WindowManager$BadTokenException;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->clearAllMultiSelection()Z

    .line 446
    const-string v5, "MultiSelectPopupWindow"

    const-string/jumbo v6, "showAtLocation occur BadTokenException"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public hide()V
    .locals 1

    .prologue
    .line 475
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 476
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->this$0:Landroid/widget/MultiSelectPopupWindow;

    invoke-static {v0}, Landroid/widget/MultiSelectPopupWindow;->access$400(Landroid/widget/MultiSelectPopupWindow;)Landroid/widget/MultiSelectPopupWindow$PositionListener;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/MultiSelectPopupWindow$PositionListener;->removeSubscriber(Landroid/widget/MultiSelectPopupWindow$TextViewPositionListener;)V

    .line 477
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 483
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method protected measureContent()V
    .locals 5

    .prologue
    const/high16 v4, -0x80000000

    .line 394
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 395
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    iget-object v1, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/HorizontalScrollView;->measure(II)V

    .line 396
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 468
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->onMultiSelectMenuItem(I)Z

    .line 469
    return-void
.end method

.method public refreshResource()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 179
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x104000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->SELECTALL_DESCRIPTION:Ljava/lang/CharSequence;

    .line 180
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->COPY_DESCRIPTION:Ljava/lang/CharSequence;

    .line 181
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10408b4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->DICTIONARY_DESCRIPTION:Ljava/lang/CharSequence;

    .line 182
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10408b6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->TRANSLATE_DESCRIPTION:Ljava/lang/CharSequence;

    .line 183
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10408b5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->SHARE_VIA_DESCRIPTION:Ljava/lang/CharSequence;

    .line 185
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mSelectAllTextView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->SELECTALL_DESCRIPTION:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mCopyTextView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->COPY_DESCRIPTION:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mDictionaryTextView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->DICTIONARY_DESCRIPTION:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mTranslateTextView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->TRANSLATE_DESCRIPTION:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mShareTextView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->SHARE_VIA_DESCRIPTION:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mSelectAllTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->enableMultiSelection(Z)V

    .line 192
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mCopyTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->enableMultiSelection(Z)V

    .line 193
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mDictionaryTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->enableMultiSelection(Z)V

    .line 194
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mTranslateTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->enableMultiSelection(Z)V

    .line 195
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mShareTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->enableMultiSelection(Z)V

    .line 196
    invoke-direct {p0}, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->setHeight()V

    .line 197
    return-void
.end method

.method public relocateMultiSelectQuickPopupWindow(I)V
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 456
    if-ltz p1, :cond_0

    .line 457
    invoke-direct {p0}, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->computeLocalPosition()V

    .line 458
    invoke-direct {p0}, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->getMenuLimit()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->setPopupWindowWidth(I)V

    .line 459
    invoke-direct {p0}, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->updateMultiSelectQuickPopupPosition()V

    .line 461
    :cond_0
    return-void
.end method

.method public show()V
    .locals 8

    .prologue
    const/16 v5, 0x8

    const/4 v7, 0x0

    .line 323
    invoke-virtual {p0}, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->refreshResource()V

    .line 325
    const/4 v0, 0x2

    .line 327
    .local v0, "menuItemCount":I
    iget-object v4, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mShareLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 328
    iget-object v4, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mDictionaryLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 329
    iget-object v4, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mTranslateLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 330
    iget-object v4, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mDividerImageView2:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 331
    iget-object v4, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mDividerImageView3:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 332
    iget-object v4, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mDividerImageView4:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 334
    iget-object v4, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->this$0:Landroid/widget/MultiSelectPopupWindow;

    invoke-static {v4}, Landroid/widget/MultiSelectPopupWindow;->access$100(Landroid/widget/MultiSelectPopupWindow;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 335
    iget-object v4, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mShareLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 336
    iget-object v4, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mDividerImageView2:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 337
    add-int/lit8 v0, v0, 0x1

    .line 340
    :cond_0
    iget-object v4, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->this$0:Landroid/widget/MultiSelectPopupWindow;

    invoke-static {v4}, Landroid/widget/MultiSelectPopupWindow;->access$200(Landroid/widget/MultiSelectPopupWindow;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 341
    iget-object v4, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mDictionaryLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 342
    iget-object v4, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mDividerImageView3:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 343
    add-int/lit8 v0, v0, 0x1

    .line 346
    :cond_1
    iget-object v4, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->this$0:Landroid/widget/MultiSelectPopupWindow;

    invoke-static {v4}, Landroid/widget/MultiSelectPopupWindow;->access$300(Landroid/widget/MultiSelectPopupWindow;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 347
    iget-object v4, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mTranslateLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 348
    iget-object v4, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mDividerImageView3:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 349
    add-int/lit8 v0, v0, 0x1

    .line 352
    :cond_2
    iget-object v4, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v4, v7, v7}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    .line 354
    invoke-direct {p0}, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->getMenuLimit()I

    move-result v2

    .line 355
    .local v2, "menuLimit":I
    iput v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mMenuItemCount:I

    .line 356
    invoke-direct {p0, v2}, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->setPopupWindowWidth(I)V

    .line 358
    invoke-direct {p0}, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->computeLocalPosition()V

    .line 359
    iget-object v4, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->update()V

    .line 360
    invoke-direct {p0}, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->updateMultiSelectQuickPopupPosition()V

    .line 361
    iget-object v4, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->this$0:Landroid/widget/MultiSelectPopupWindow;

    invoke-static {v4}, Landroid/widget/MultiSelectPopupWindow;->access$400(Landroid/widget/MultiSelectPopupWindow;)Landroid/widget/MultiSelectPopupWindow$PositionListener;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, p0, v5}, Landroid/widget/MultiSelectPopupWindow$PositionListener;->addSubscriber(Landroid/widget/MultiSelectPopupWindow$TextViewPositionListener;Z)V

    .line 363
    if-le v0, v2, :cond_3

    .line 364
    sub-int v1, v0, v2

    .line 365
    .local v1, "menuItemDiff":I
    iget-object v4, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    mul-int/lit8 v6, v1, 0x64

    int-to-float v6, v6

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {v4, v5, v7}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    .line 366
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow$1;

    invoke-direct {v4, p0, v1}, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow$1;-><init>(Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;I)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 386
    .local v3, "thread":Ljava/lang/Thread;
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 388
    .end local v1    # "menuItemDiff":I
    .end local v3    # "thread":Ljava/lang/Thread;
    :cond_3
    return-void
.end method

.method public updatePosition(IIZZ)V
    .locals 2
    .param p1, "parentPositionX"    # I
    .param p2, "parentPositionY"    # I
    .param p3, "parentPositionChanged"    # Z
    .param p4, "parentScrolled"    # Z

    .prologue
    .line 682
    invoke-virtual {p0}, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->this$0:Landroid/widget/MultiSelectPopupWindow;

    invoke-direct {p0}, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->getTextOffset()I

    move-result v1

    invoke-static {v0, v1}, Landroid/widget/MultiSelectPopupWindow;->access$600(Landroid/widget/MultiSelectPopupWindow;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 683
    if-eqz p4, :cond_0

    .line 684
    invoke-direct {p0}, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->computeLocalPosition()V

    .line 685
    :cond_0
    invoke-direct {p0}, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->updateMultiSelectQuickPopupPosition()V

    .line 687
    :cond_1
    return-void
.end method
