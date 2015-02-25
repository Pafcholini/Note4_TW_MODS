.class Landroid/widget/Editor$NewActionPopupWindow;
.super Landroid/widget/Editor$NewPinnedPopupWindow;
.source "Editor.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NewActionPopupWindow"
.end annotation


# static fields
.field private static final TW_POPUP_DIVIDER_LAYOUT:I = 0x109014d

.field private static final TW_POPUP_HORIZONTAL_SCROLL_LAYOUT:I = 0x109014e

.field private static final TW_POPUP_TEXT_LAYOUT:I = 0x109014f


# instance fields
.field private mActionBarHeight:I

.field private mClipboardDivider:Landroid/widget/ImageView;

.field private mClipboardTextView:Landroid/widget/TextView;

.field private mContentViewHeight:I

.field private mContentViewWidth:I

.field private mCopyDivider:Landroid/widget/ImageView;

.field private mCopyTextView:Landroid/widget/TextView;

.field private mCutDivider:Landroid/widget/ImageView;

.field private mCutTextView:Landroid/widget/TextView;

.field private mDictionaryDivider:Landroid/widget/ImageView;

.field private mDictionaryTextView:Landroid/widget/TextView;

.field private mHandlerHeight:I

.field private mPasteDivider:Landroid/widget/ImageView;

.field private mPasteTextView:Landroid/widget/TextView;

.field private mSelectAllDivider:Landroid/widget/ImageView;

.field private mSelectAllTextView:Landroid/widget/TextView;

.field private mShareDivider:Landroid/widget/ImageView;

.field private mShareTextView:Landroid/widget/TextView;

.field private mStatusbarHeight:I

.field private mTranslateTextView:Landroid/widget/TextView;

.field private mWebSearchDivider:Landroid/widget/ImageView;

.field private mWebSearchTextView:Landroid/widget/TextView;

.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method private constructor <init>(Landroid/widget/Editor;)V
    .locals 0

    .prologue
    .line 3639
    iput-object p1, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-direct {p0, p1}, Landroid/widget/Editor$NewPinnedPopupWindow;-><init>(Landroid/widget/Editor;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/Editor;Landroid/widget/Editor$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/Editor;
    .param p2, "x1"    # Landroid/widget/Editor$1;

    .prologue
    .line 3639
    invoke-direct {p0, p1}, Landroid/widget/Editor$NewActionPopupWindow;-><init>(Landroid/widget/Editor;)V

    return-void
.end method


# virtual methods
.method protected createPopupWindow()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 3676
    iget-object v2, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x105010a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Landroid/widget/Editor$NewActionPopupWindow;->mItemWidth:I

    .line 3677
    iget-object v2, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1080b24

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 3679
    .local v0, "bgRes":Landroid/graphics/drawable/Drawable;
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 3680
    .local v1, "bgResPadding":Landroid/graphics/Rect;
    if-eqz v1, :cond_0

    .line 3681
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 3682
    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    iput v2, p0, Landroid/widget/Editor$NewActionPopupWindow;->mPopupBgPaddingWidth:I

    .line 3683
    iget v2, v1, Landroid/graphics/Rect;->top:I

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    iput v2, p0, Landroid/widget/Editor$NewActionPopupWindow;->mPopupBgPaddingHeight:I

    .line 3684
    const/4 v1, 0x0

    .line 3689
    :goto_0
    iget-object v2, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1080b22

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iput v2, p0, Landroid/widget/Editor$NewActionPopupWindow;->mDividerWidth:I

    .line 3690
    iget v2, p0, Landroid/widget/Editor$NewActionPopupWindow;->mItemWidth:I

    mul-int/lit8 v2, v2, 0x4

    iget v3, p0, Landroid/widget/Editor$NewActionPopupWindow;->mDividerWidth:I

    mul-int/lit8 v3, v3, 0x3

    add-int/2addr v2, v3

    iget v3, p0, Landroid/widget/Editor$NewActionPopupWindow;->mPopupBgPaddingWidth:I

    add-int/2addr v2, v3

    iput v2, p0, Landroid/widget/Editor$NewActionPopupWindow;->mPopupWidthPortrait:I

    .line 3691
    iget v2, p0, Landroid/widget/Editor$NewActionPopupWindow;->mItemWidth:I

    mul-int/lit8 v2, v2, 0x6

    iget v3, p0, Landroid/widget/Editor$NewActionPopupWindow;->mDividerWidth:I

    mul-int/lit8 v3, v3, 0x5

    add-int/2addr v2, v3

    iget v3, p0, Landroid/widget/Editor$NewActionPopupWindow;->mPopupBgPaddingWidth:I

    add-int/2addr v2, v3

    iput v2, p0, Landroid/widget/Editor$NewActionPopupWindow;->mPopupWidthLandscape:I

    .line 3693
    new-instance v2, Landroid/widget/PopupWindow;

    iget-object v3, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v2, p0, Landroid/widget/Editor$NewActionPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 3694
    iget-object v2, p0, Landroid/widget/Editor$NewActionPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v5}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 3695
    iget-object v2, p0, Landroid/widget/Editor$NewActionPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v0}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3697
    return-void

    .line 3686
    :cond_0
    iput v5, p0, Landroid/widget/Editor$NewActionPopupWindow;->mPopupBgPaddingWidth:I

    goto :goto_0
.end method

.method protected getNewActionPopupPosition([I)V
    .locals 41
    .param p1, "position"    # [I

    .prologue
    .line 3992
    if-nez p1, :cond_0

    .line 3993
    const/16 v37, 0x2

    move/from16 v0, v37

    new-array v0, v0, [I

    move-object/from16 p1, v0

    .line 3996
    :cond_0
    const/16 v18, 0x1

    .line 3997
    .local v18, "menuItemCount":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v37, v0

    invoke-static/range {v37 .. v37}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Landroid/widget/TextView;->canCut()Z

    move-result v5

    .line 3998
    .local v5, "canCut":Z
    if-eqz v5, :cond_1

    add-int/lit8 v18, v18, 0x1

    .line 3999
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v37, v0

    invoke-static/range {v37 .. v37}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Landroid/widget/TextView;->canCopy()Z

    move-result v4

    .line 4000
    .local v4, "canCopy":Z
    if-eqz v4, :cond_2

    add-int/lit8 v18, v18, 0x1

    .line 4001
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v37, v0

    invoke-static/range {v37 .. v37}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Landroid/widget/TextView;->canPaste()Z

    move-result v7

    .line 4002
    .local v7, "canPaste":Z
    if-eqz v7, :cond_3

    add-int/lit8 v18, v18, 0x1

    .line 4003
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v37, v0

    invoke-static/range {v37 .. v37}, Landroid/widget/Editor;->access$2800(Landroid/widget/Editor;)Z

    move-result v37

    if-eqz v37, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v37, v0

    invoke-static/range {v37 .. v37}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v37

    move-object/from16 v0, v37

    instance-of v0, v0, Landroid/text/Editable;

    move/from16 v37, v0

    if-eqz v37, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v37, v0

    invoke-static/range {v37 .. v37}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Landroid/widget/TextView;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v37

    if-eqz v37, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v37, v0

    invoke-static/range {v37 .. v37}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Landroid/widget/TextView;->getClipboardExManager()Landroid/sec/clipboard/ClipboardExManager;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Landroid/sec/clipboard/ClipboardExManager;->getDataListSize()I

    move-result v37

    if-lez v37, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-boolean v0, v0, Landroid/widget/Editor;->mClipboardEnable:Z

    move/from16 v37, v0

    if-eqz v37, :cond_12

    const/4 v3, 0x1

    .line 4006
    .local v3, "canClipboard":Z
    :goto_0
    if-eqz v3, :cond_4

    add-int/lit8 v18, v18, 0x1

    .line 4007
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v37, v0

    invoke-static/range {v37 .. v37}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Landroid/widget/TextView;->canTranslate()Z

    move-result v37

    if-eqz v37, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-boolean v0, v0, Landroid/widget/Editor;->mCurrentTranslateEnable:Z

    move/from16 v37, v0

    if-eqz v37, :cond_13

    const/4 v8, 0x1

    .line 4008
    .local v8, "canTranslate":Z
    :goto_1
    if-eqz v8, :cond_5

    add-int/lit8 v18, v18, 0x1

    .line 4009
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-boolean v0, v0, Landroid/widget/Editor;->mShareEnable:Z

    move/from16 v37, v0

    if-eqz v37, :cond_6

    add-int/lit8 v18, v18, 0x1

    .line 4010
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-boolean v0, v0, Landroid/widget/Editor;->mWebSearchEnable:Z

    move/from16 v37, v0

    if-eqz v37, :cond_7

    add-int/lit8 v18, v18, 0x1

    .line 4011
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v37, v0

    invoke-static/range {v37 .. v37}, Landroid/widget/Editor;->access$2900(Landroid/widget/Editor;)Z

    move-result v6

    .line 4012
    .local v6, "canDictionary":Z
    if-eqz v6, :cond_8

    add-int/lit8 v18, v18, 0x1

    .line 4014
    :cond_8
    const/16 v19, 0x0

    .line 4015
    .local v19, "menuLimit":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v37, v0

    invoke-static/range {v37 .. v37}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v37

    move-object/from16 v0, v37

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v37, v0

    const/16 v38, 0x1

    move/from16 v0, v37

    move/from16 v1, v38

    if-ne v0, v1, :cond_14

    .line 4016
    const/16 v19, 0x4

    .line 4021
    :goto_2
    const/16 v37, 0x2

    move/from16 v0, v37

    new-array v0, v0, [I

    move-object/from16 v23, v0

    .line 4022
    .local v23, "screen":[I
    const/16 v37, 0x2

    move/from16 v0, v37

    new-array v0, v0, [I

    move-object/from16 v36, v0

    .line 4023
    .local v36, "window":[I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v37, v0

    invoke-static/range {v37 .. v37}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->getLocationInWindow([I)V

    .line 4024
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v37, v0

    invoke-static/range {v37 .. v37}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    .line 4025
    const/16 v37, 0x0

    aget v37, v23, v37

    const/16 v38, 0x0

    aget v38, v36, v38

    sub-int v21, v37, v38

    .line 4026
    .local v21, "parentViewPositionX":I
    const/16 v37, 0x1

    aget v37, v23, v37

    const/16 v38, 0x1

    aget v38, v36, v38

    sub-int v22, v37, v38

    .line 4027
    .local v22, "parentViewPositionY":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v37, v0

    invoke-static/range {v37 .. v37}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v35

    .line 4028
    .local v35, "viewportToContentVerticalOffset":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v37, v0

    invoke-static/range {v37 .. v37}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v34

    .line 4029
    .local v34, "viewportToContentHorizontalOffset":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v37, v0

    invoke-static/range {v37 .. v37}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v37

    move-object/from16 v0, v37

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v27, v0

    .line 4030
    .local v27, "screenWidth":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v37, v0

    invoke-static/range {v37 .. v37}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v37

    move-object/from16 v0, v37

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v25, v0

    .line 4031
    .local v25, "screenHeight":I
    move/from16 v14, v25

    .line 4032
    .local v14, "fullScreenHeight":I
    const/16 v26, 0x0

    .line 4033
    .local v26, "screenTop":I
    move/from16 v24, v25

    .line 4034
    .local v24, "screenBottom":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v37, v0

    invoke-static/range {v37 .. v37}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v29

    .line 4035
    .local v29, "selStart":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v37, v0

    invoke-static/range {v37 .. v37}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v28

    .line 4036
    .local v28, "selEnd":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v37, v0

    invoke-static/range {v37 .. v37}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v37

    move-object/from16 v0, v37

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v30

    .line 4037
    .local v30, "startLine":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v37, v0

    invoke-static/range {v37 .. v37}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v37

    move-object/from16 v0, v37

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v10

    .line 4038
    .local v10, "endLine":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v37, v0

    invoke-static/range {v37 .. v37}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v37

    move-object/from16 v0, v37

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v37

    const/16 v38, 0x1

    aget v38, v36, v38

    add-int v37, v37, v38

    add-int v32, v37, v35

    .line 4039
    .local v32, "startLineTop":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v37, v0

    invoke-static/range {v37 .. v37}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v37

    move-object/from16 v0, v37

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v37

    const/16 v38, 0x1

    aget v38, v36, v38

    add-int v37, v37, v38

    add-int v31, v37, v35

    .line 4040
    .local v31, "startLineBottom":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v37, v0

    invoke-static/range {v37 .. v37}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v0, v10}, Landroid/text/Layout;->getLineTop(I)I

    move-result v37

    const/16 v38, 0x1

    aget v38, v36, v38

    add-int v37, v37, v38

    add-int v12, v37, v35

    .line 4041
    .local v12, "endLineTop":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v37, v0

    invoke-static/range {v37 .. v37}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v0, v10}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v37

    const/16 v38, 0x1

    aget v38, v36, v38

    add-int v37, v37, v38

    add-int v11, v37, v35

    .line 4042
    .local v11, "endLineBottom":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v37, v0

    invoke-static/range {v37 .. v37}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v37

    move-object/from16 v0, v37

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v37

    move/from16 v0, v37

    float-to-int v0, v0

    move/from16 v37, v0

    const/16 v38, 0x0

    aget v38, v36, v38

    add-int v37, v37, v38

    add-int v33, v37, v34

    .line 4043
    .local v33, "startX":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v37, v0

    invoke-static/range {v37 .. v37}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v37

    move-object/from16 v0, v37

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v37

    move/from16 v0, v37

    float-to-int v0, v0

    move/from16 v37, v0

    const/16 v38, 0x0

    aget v38, v36, v38

    add-int v37, v37, v38

    add-int v13, v37, v34

    .line 4044
    .local v13, "endX":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v37, v0

    invoke-static/range {v37 .. v37}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Landroid/text/Layout;->getWidth()I

    move-result v17

    .line 4045
    .local v17, "maxWidth":I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/Editor$NewActionPopupWindow;->mActionBarHeight:I

    .line 4046
    .local v2, "actionBarHeight":I
    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/Editor$NewActionPopupWindow;->mHandlerHeight:I

    .line 4047
    .local v15, "handlerHeight":I
    const/16 v16, 0x1

    .line 4048
    .local v16, "isStatusBarVisible":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v37

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mPopupBgPaddingHeight:I

    move/from16 v38, v0

    add-int v37, v37, v38

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$NewActionPopupWindow;->mContentViewHeight:I

    .line 4051
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v37

    invoke-interface/range {v37 .. v37}, Landroid/view/IWindowManager;->isStatusBarVisible()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v16

    .line 4055
    :goto_3
    if-nez v16, :cond_9

    .line 4056
    const/16 v37, 0x0

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$NewActionPopupWindow;->mStatusbarHeight:I

    .line 4059
    :cond_9
    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_15

    .line 4060
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mDividerWidth:I

    move/from16 v37, v0

    add-int/lit8 v38, v18, -0x1

    mul-int v37, v37, v38

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mItemWidth:I

    move/from16 v38, v0

    mul-int v38, v38, v18

    add-int v37, v37, v38

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mPopupBgPaddingWidth:I

    move/from16 v38, v0

    add-int v37, v37, v38

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$NewActionPopupWindow;->mContentViewWidth:I

    .line 4069
    :goto_4
    move/from16 v0, v30

    if-ne v0, v10, :cond_17

    .line 4070
    const/16 v37, 0x0

    sub-int v38, v13, v33

    div-int/lit8 v38, v38, 0x2

    add-int v38, v38, v33

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mContentViewWidth:I

    move/from16 v39, v0

    div-int/lit8 v39, v39, 0x2

    sub-int v38, v38, v39

    aput v38, p1, v37

    .line 4075
    :goto_5
    const/16 v37, 0x0

    aget v37, p1, v37

    if-gez v37, :cond_19

    .line 4076
    const/16 v37, 0x0

    aget v37, p1, v37

    invoke-static/range {v37 .. v37}, Ljava/lang/Math;->abs(I)I

    move-result v37

    move/from16 v0, v21

    move/from16 v1, v37

    if-ge v0, v1, :cond_18

    .line 4077
    const/16 v37, 0x0

    aget v38, p1, v37

    const/16 v39, 0x0

    aget v39, p1, v39

    invoke-static/range {v39 .. v39}, Ljava/lang/Math;->abs(I)I

    move-result v39

    sub-int v39, v39, v21

    add-int v38, v38, v39

    aput v38, p1, v37

    .line 4082
    :cond_a
    :goto_6
    const/16 v37, 0x0

    aget v37, p1, v37

    if-gez v37, :cond_b

    .line 4083
    const/16 v37, 0x0

    const/16 v38, 0x0

    aput v38, p1, v37

    .line 4084
    const/16 v37, 0x0

    aget v37, p1, v37

    add-int v37, v37, v21

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mContentViewWidth:I

    move/from16 v38, v0

    add-int v37, v37, v38

    move/from16 v0, v37

    move/from16 v1, v27

    if-le v0, v1, :cond_b

    .line 4085
    const/16 v37, 0x0

    aget v38, p1, v37

    const/16 v39, 0x0

    aget v39, p1, v39

    add-int v39, v39, v21

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mContentViewWidth:I

    move/from16 v40, v0

    add-int v39, v39, v40

    sub-int v39, v39, v27

    sub-int v38, v38, v39

    aput v38, p1, v37

    .line 4092
    :cond_b
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v37, v0

    invoke-static/range {v37 .. v37}, Landroid/widget/Editor;->access$3100(Landroid/widget/Editor;)Z

    move-result v37

    if-eqz v37, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v37, v0

    invoke-static/range {v37 .. v37}, Landroid/widget/Editor;->access$2800(Landroid/widget/Editor;)Z

    move-result v37

    if-eqz v37, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v37

    if-eqz v37, :cond_11

    .line 4093
    const/16 v37, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mContentViewHeight:I

    move/from16 v38, v0

    sub-int v38, v32, v38

    aput v38, p1, v37

    .line 4095
    const/16 v37, 0x1

    aget v37, p1, v37

    add-int v37, v37, v22

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mStatusbarHeight:I

    move/from16 v38, v0

    add-int v38, v38, v2

    add-int v38, v38, v26

    move/from16 v0, v37

    move/from16 v1, v38

    if-gt v0, v1, :cond_c

    .line 4096
    const/16 v37, 0x1

    add-int v38, v11, v15

    aput v38, p1, v37

    .line 4099
    :cond_c
    const/16 v37, 0x1

    aget v37, p1, v37

    add-int v37, v37, v22

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mContentViewHeight:I

    move/from16 v38, v0

    add-int v37, v37, v38

    move/from16 v0, v37

    move/from16 v1, v24

    if-le v0, v1, :cond_e

    .line 4100
    move/from16 v0, v24

    if-le v11, v0, :cond_1a

    move/from16 v20, v24

    .line 4101
    .local v20, "middlePosition":I
    :goto_8
    if-gez v31, :cond_d

    .line 4102
    const/16 v31, 0x0

    .line 4104
    :cond_d
    add-int v37, v31, v15

    sub-int v37, v20, v37

    div-int/lit8 v20, v37, 0x2

    .line 4105
    add-int v37, v31, v15

    sub-int v37, v11, v37

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mContentViewHeight:I

    move/from16 v38, v0

    move/from16 v0, v37

    move/from16 v1, v38

    if-le v0, v1, :cond_1b

    .line 4106
    const/16 v37, 0x1

    add-int v38, v31, v15

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mContentViewHeight:I

    move/from16 v39, v0

    div-int/lit8 v39, v39, 0x2

    sub-int v39, v20, v39

    add-int v38, v38, v39

    aput v38, p1, v37

    .line 4112
    .end local v20    # "middlePosition":I
    :cond_e
    :goto_9
    const/16 v37, 0x1

    aget v37, p1, v37

    add-int v37, v37, v22

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mContentViewHeight:I

    move/from16 v38, v0

    add-int v37, v37, v38

    move/from16 v0, v37

    move/from16 v1, v24

    if-gt v0, v1, :cond_f

    const/16 v37, 0x1

    aget v37, p1, v37

    add-int v37, v37, v22

    move/from16 v0, v37

    move/from16 v1, v26

    if-ge v0, v1, :cond_10

    .line 4113
    :cond_f
    const/16 v37, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mContentViewHeight:I

    move/from16 v38, v0

    sub-int v38, v24, v38

    aput v38, p1, v37

    .line 4114
    const/16 v37, 0x1

    aget v38, p1, v37

    sub-int v38, v38, v26

    aput v38, p1, v37

    .line 4118
    :cond_10
    const/16 v37, 0x1

    aget v37, p1, v37

    add-int v37, v37, v22

    move/from16 v0, v25

    move/from16 v1, v37

    if-gt v0, v1, :cond_11

    .line 4119
    const/16 v37, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mContentViewHeight:I

    move/from16 v38, v0

    sub-int v38, v25, v38

    sub-int v38, v38, v22

    aput v38, p1, v37

    .line 4122
    :cond_11
    return-void

    .line 4003
    .end local v2    # "actionBarHeight":I
    .end local v3    # "canClipboard":Z
    .end local v6    # "canDictionary":Z
    .end local v8    # "canTranslate":Z
    .end local v10    # "endLine":I
    .end local v11    # "endLineBottom":I
    .end local v12    # "endLineTop":I
    .end local v13    # "endX":I
    .end local v14    # "fullScreenHeight":I
    .end local v15    # "handlerHeight":I
    .end local v16    # "isStatusBarVisible":Z
    .end local v17    # "maxWidth":I
    .end local v19    # "menuLimit":I
    .end local v21    # "parentViewPositionX":I
    .end local v22    # "parentViewPositionY":I
    .end local v23    # "screen":[I
    .end local v24    # "screenBottom":I
    .end local v25    # "screenHeight":I
    .end local v26    # "screenTop":I
    .end local v27    # "screenWidth":I
    .end local v28    # "selEnd":I
    .end local v29    # "selStart":I
    .end local v30    # "startLine":I
    .end local v31    # "startLineBottom":I
    .end local v32    # "startLineTop":I
    .end local v33    # "startX":I
    .end local v34    # "viewportToContentHorizontalOffset":I
    .end local v35    # "viewportToContentVerticalOffset":I
    .end local v36    # "window":[I
    :cond_12
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 4007
    .restart local v3    # "canClipboard":Z
    :cond_13
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 4018
    .restart local v6    # "canDictionary":Z
    .restart local v8    # "canTranslate":Z
    .restart local v19    # "menuLimit":I
    :cond_14
    const/16 v19, 0x6

    goto/16 :goto_2

    .line 4052
    .restart local v2    # "actionBarHeight":I
    .restart local v10    # "endLine":I
    .restart local v11    # "endLineBottom":I
    .restart local v12    # "endLineTop":I
    .restart local v13    # "endX":I
    .restart local v14    # "fullScreenHeight":I
    .restart local v15    # "handlerHeight":I
    .restart local v16    # "isStatusBarVisible":Z
    .restart local v17    # "maxWidth":I
    .restart local v21    # "parentViewPositionX":I
    .restart local v22    # "parentViewPositionY":I
    .restart local v23    # "screen":[I
    .restart local v24    # "screenBottom":I
    .restart local v25    # "screenHeight":I
    .restart local v26    # "screenTop":I
    .restart local v27    # "screenWidth":I
    .restart local v28    # "selEnd":I
    .restart local v29    # "selStart":I
    .restart local v30    # "startLine":I
    .restart local v31    # "startLineBottom":I
    .restart local v32    # "startLineTop":I
    .restart local v33    # "startX":I
    .restart local v34    # "viewportToContentHorizontalOffset":I
    .restart local v35    # "viewportToContentVerticalOffset":I
    .restart local v36    # "window":[I
    :catch_0
    move-exception v9

    .line 4053
    .local v9, "e":Landroid/os/RemoteException;
    const-string v37, "Editor"

    const-string v38, "Remote exception while to check isStatusBarVisible"

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 4062
    .end local v9    # "e":Landroid/os/RemoteException;
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v37, v0

    invoke-static/range {v37 .. v37}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v37

    move-object/from16 v0, v37

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v37, v0

    const/16 v38, 0x1

    move/from16 v0, v37

    move/from16 v1, v38

    if-ne v0, v1, :cond_16

    .line 4063
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mPopupWidthPortrait:I

    move/from16 v37, v0

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$NewActionPopupWindow;->mContentViewWidth:I

    goto/16 :goto_4

    .line 4065
    :cond_16
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mPopupWidthLandscape:I

    move/from16 v37, v0

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$NewActionPopupWindow;->mContentViewWidth:I

    goto/16 :goto_4

    .line 4072
    :cond_17
    const/16 v37, 0x0

    const/16 v38, 0x0

    aget v38, v36, v38

    div-int/lit8 v39, v17, 0x2

    add-int v38, v38, v39

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mContentViewWidth:I

    move/from16 v39, v0

    div-int/lit8 v39, v39, 0x2

    sub-int v38, v38, v39

    aput v38, p1, v37

    goto/16 :goto_5

    .line 4078
    :cond_18
    const/16 v37, 0x0

    aget v37, p1, v37

    add-int v37, v37, v21

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mContentViewWidth:I

    move/from16 v38, v0

    add-int v37, v37, v38

    move/from16 v0, v37

    move/from16 v1, v27

    if-le v0, v1, :cond_a

    .line 4079
    const/16 v37, 0x0

    aget v38, p1, v37

    const/16 v39, 0x0

    aget v39, p1, v39

    add-int v39, v39, v21

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mContentViewWidth:I

    move/from16 v40, v0

    add-int v39, v39, v40

    sub-int v39, v39, v27

    sub-int v38, v38, v39

    aput v38, p1, v37

    goto/16 :goto_6

    .line 4088
    :cond_19
    const/16 v37, 0x0

    aget v37, p1, v37

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mContentViewWidth:I

    move/from16 v38, v0

    add-int v37, v37, v38

    add-int v37, v37, v21

    move/from16 v0, v37

    move/from16 v1, v27

    if-le v0, v1, :cond_b

    .line 4089
    const/16 v37, 0x0

    aget v38, p1, v37

    const/16 v39, 0x0

    aget v39, p1, v39

    add-int v39, v39, v21

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mContentViewWidth:I

    move/from16 v40, v0

    add-int v39, v39, v40

    sub-int v39, v39, v27

    sub-int v38, v38, v39

    aput v38, p1, v37

    goto/16 :goto_7

    :cond_1a
    move/from16 v20, v11

    .line 4100
    goto/16 :goto_8

    .line 4108
    .restart local v20    # "middlePosition":I
    :cond_1b
    const/16 v37, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mContentViewHeight:I

    move/from16 v38, v0

    sub-int v38, v24, v38

    aput v38, p1, v37

    goto/16 :goto_9
.end method

.method protected getTextOffset()I
    .locals 2

    .prologue
    .line 3969
    iget-object v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    iget-object v1, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method protected initContentView()V
    .locals 23

    .prologue
    .line 3701
    new-instance v9, Landroid/view/ViewGroup$LayoutParams;

    const/16 v19, -0x2

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v9, v0, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 3704
    .local v9, "dividerImageViewLayout":Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v19

    const-string/jumbo v20, "layout_inflater"

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/LayoutInflater;

    .line 3707
    .local v10, "inflater":Landroid/view/LayoutInflater;
    new-instance v15, Landroid/view/ViewGroup$LayoutParams;

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$NewPinnedPopupWindow;->mItemWidth:I

    move/from16 v19, v0

    const/16 v20, -0x2

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v15, v0, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 3709
    .local v15, "textLayout":Landroid/view/ViewGroup$LayoutParams;
    new-instance v18, Landroid/view/ViewGroup$LayoutParams;

    const/16 v19, -0x2

    const/16 v20, -0x2

    invoke-direct/range {v18 .. v20}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 3712
    .local v18, "wrapContent":Landroid/view/ViewGroup$LayoutParams;
    new-instance v11, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v11, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 3713
    .local v11, "linearLayout":Landroid/widget/LinearLayout;
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 3714
    const/16 v19, 0x11

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 3715
    move-object/from16 v0, p0

    iput-object v11, v0, Landroid/widget/Editor$NewPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    .line 3716
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3718
    const v19, 0x109014e

    const/16 v20, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v10, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/HorizontalScrollView;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/Editor$NewPinnedPopupWindow;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    .line 3719
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewPinnedPopupWindow;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 3722
    const v19, 0x109014f

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v10, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/Editor$NewActionPopupWindow;->mSelectAllTextView:Landroid/widget/TextView;

    .line 3723
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mSelectAllTextView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const v20, 0x104000d

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(I)V

    .line 3724
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mSelectAllTextView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3725
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x1080b27

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    .line 3726
    .local v13, "selectAllDrawable":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mSelectAllTextView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v13, v2, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 3727
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mSelectAllTextView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 3731
    const v19, 0x109014d

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v10, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/ImageView;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/Editor$NewActionPopupWindow;->mSelectAllDivider:Landroid/widget/ImageView;

    .line 3732
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mSelectAllDivider:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3733
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mSelectAllDivider:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 3737
    const v19, 0x109014f

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v10, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/Editor$NewActionPopupWindow;->mCutTextView:Landroid/widget/TextView;

    .line 3738
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mCutTextView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const v20, 0x1040003

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(I)V

    .line 3739
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mCutTextView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3740
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x1080b20

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 3741
    .local v7, "cutDrawable":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mCutTextView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v7, v2, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 3742
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mCutTextView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 3745
    const v19, 0x109014d

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v10, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/ImageView;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/Editor$NewActionPopupWindow;->mCutDivider:Landroid/widget/ImageView;

    .line 3746
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mCutDivider:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3747
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mCutDivider:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 3750
    const v19, 0x109014f

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v10, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/Editor$NewActionPopupWindow;->mCopyTextView:Landroid/widget/TextView;

    .line 3751
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mCopyTextView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const v20, 0x1040001

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(I)V

    .line 3752
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mCopyTextView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3753
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x1080b1f

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 3754
    .local v6, "copyDrawable":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mCopyTextView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v6, v2, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 3755
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mCopyTextView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 3758
    const v19, 0x109014d

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v10, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/ImageView;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/Editor$NewActionPopupWindow;->mCopyDivider:Landroid/widget/ImageView;

    .line 3759
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mCopyDivider:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3760
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mCopyDivider:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 3763
    const v19, 0x109014f

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v10, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/Editor$NewActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    .line 3764
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const v20, 0x104000b

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(I)V

    .line 3765
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3766
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x1080b26

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    .line 3767
    .local v12, "pasteDrawable":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v12, v2, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 3768
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 3771
    const v19, 0x109014d

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v10, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/ImageView;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/Editor$NewActionPopupWindow;->mPasteDivider:Landroid/widget/ImageView;

    .line 3772
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mPasteDivider:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3773
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mPasteDivider:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 3775
    const v19, 0x109014f

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v10, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/Editor$NewActionPopupWindow;->mClipboardTextView:Landroid/widget/TextView;

    .line 3776
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mClipboardTextView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const v20, 0x104072d

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(I)V

    .line 3777
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mClipboardTextView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3778
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x1080b1e

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 3779
    .local v5, "clipboardDrawable":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mClipboardTextView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v5, v2, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 3780
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mClipboardTextView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 3782
    const v19, 0x109014d

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v10, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/ImageView;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/Editor$NewActionPopupWindow;->mClipboardDivider:Landroid/widget/ImageView;

    .line 3783
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mClipboardDivider:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3784
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mClipboardDivider:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 3786
    const v19, 0x109014f

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v10, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/Editor$NewActionPopupWindow;->mShareTextView:Landroid/widget/TextView;

    .line 3787
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mShareTextView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const v20, 0x10408b5

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(I)V

    .line 3788
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mShareTextView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3789
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x1080b28

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    .line 3790
    .local v14, "shareDrawable":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mShareTextView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v14, v2, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 3791
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mShareTextView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 3793
    const v19, 0x109014d

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v10, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/ImageView;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/Editor$NewActionPopupWindow;->mShareDivider:Landroid/widget/ImageView;

    .line 3794
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mShareDivider:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3795
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mShareDivider:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 3797
    const v19, 0x109014f

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v10, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/Editor$NewActionPopupWindow;->mDictionaryTextView:Landroid/widget/TextView;

    .line 3798
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mDictionaryTextView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const v20, 0x10408b4

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(I)V

    .line 3799
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mDictionaryTextView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3800
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x1080b21

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 3801
    .local v8, "dictionaryDrawable":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mDictionaryTextView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v8, v2, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 3802
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mDictionaryTextView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 3804
    const v19, 0x109014d

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v10, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/ImageView;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/Editor$NewActionPopupWindow;->mDictionaryDivider:Landroid/widget/ImageView;

    .line 3805
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mDictionaryDivider:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3806
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mDictionaryDivider:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 3808
    const v19, 0x109014f

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v10, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/Editor$NewActionPopupWindow;->mWebSearchTextView:Landroid/widget/TextView;

    .line 3809
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mWebSearchTextView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const v20, 0x104056f

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(I)V

    .line 3810
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mWebSearchTextView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3811
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x1080b2a

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v17

    .line 3812
    .local v17, "webSearchDrawable":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mWebSearchTextView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v17

    move-object/from16 v3, v21

    move-object/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 3813
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mWebSearchTextView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 3815
    const v19, 0x109014d

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v10, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/ImageView;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/Editor$NewActionPopupWindow;->mWebSearchDivider:Landroid/widget/ImageView;

    .line 3816
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mWebSearchDivider:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3817
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mWebSearchDivider:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 3819
    const v19, 0x109014f

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v10, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/Editor$NewActionPopupWindow;->mTranslateTextView:Landroid/widget/TextView;

    .line 3820
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mTranslateTextView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3821
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mTranslateTextView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const v20, 0x10408b6

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(I)V

    .line 3822
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mTranslateTextView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3823
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x1080b29

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v16

    .line 3824
    .local v16, "translateDrawable":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mTranslateTextView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v16

    move-object/from16 v3, v21

    move-object/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 3825
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mTranslateTextView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 3827
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewPinnedPopupWindow;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;)V

    .line 3828
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setLayoutDirection(I)V

    .line 3829
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 3911
    iget-object v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->mSelectAllTextView:Landroid/widget/TextView;

    if-ne p1, v0, :cond_1

    .line 3912
    iget-object v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x102001f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    .line 3937
    :cond_0
    :goto_0
    return-void

    .line 3913
    :cond_1
    iget-object v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->mCutTextView:Landroid/widget/TextView;

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->canCut()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3914
    iget-object v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x1020020

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    .line 3915
    invoke-virtual {p0}, Landroid/widget/Editor$NewActionPopupWindow;->hide()V

    goto :goto_0

    .line 3916
    :cond_2
    iget-object v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->mCopyTextView:Landroid/widget/TextView;

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->canCopy()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3917
    iget-object v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x1020021

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    .line 3918
    invoke-virtual {p0}, Landroid/widget/Editor$NewActionPopupWindow;->hide()V

    goto :goto_0

    .line 3919
    :cond_3
    iget-object v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    if-ne p1, v0, :cond_4

    iget-object v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->canPaste()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3920
    iget-object v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x1020022

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    .line 3921
    invoke-virtual {p0}, Landroid/widget/Editor$NewActionPopupWindow;->hide()V

    goto :goto_0

    .line 3922
    :cond_4
    iget-object v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->mClipboardTextView:Landroid/widget/TextView;

    if-ne p1, v0, :cond_5

    .line 3923
    iget-object v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x102004a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    goto :goto_0

    .line 3924
    :cond_5
    iget-object v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->mTranslateTextView:Landroid/widget/TextView;

    if-ne p1, v0, :cond_6

    iget-object v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->canTranslate()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    iget-boolean v0, v0, Landroid/widget/Editor;->mCurrentTranslateEnable:Z

    if-eqz v0, :cond_6

    .line 3925
    iget-object v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x1020049

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    .line 3926
    invoke-virtual {p0}, Landroid/widget/Editor$NewActionPopupWindow;->hide()V

    goto/16 :goto_0

    .line 3927
    :cond_6
    iget-object v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->mShareTextView:Landroid/widget/TextView;

    if-ne p1, v0, :cond_7

    iget-object v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    iget-boolean v0, v0, Landroid/widget/Editor;->mShareEnable:Z

    if-eqz v0, :cond_7

    .line 3928
    iget-object v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x10204d7

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    .line 3929
    invoke-virtual {p0}, Landroid/widget/Editor$NewActionPopupWindow;->hide()V

    goto/16 :goto_0

    .line 3930
    :cond_7
    iget-object v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->mWebSearchTextView:Landroid/widget/TextView;

    if-ne p1, v0, :cond_8

    iget-object v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    iget-boolean v0, v0, Landroid/widget/Editor;->mWebSearchEnable:Z

    if-eqz v0, :cond_8

    .line 3931
    iget-object v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x10204d9

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    .line 3932
    invoke-virtual {p0}, Landroid/widget/Editor$NewActionPopupWindow;->hide()V

    goto/16 :goto_0

    .line 3933
    :cond_8
    iget-object v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->mDictionaryTextView:Landroid/widget/TextView;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->access$2900(Landroid/widget/Editor;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3934
    iget-object v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x1020048

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    .line 3935
    invoke-virtual {p0}, Landroid/widget/Editor$NewActionPopupWindow;->hide()V

    goto/16 :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 3941
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 3964
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 3943
    :pswitch_0
    iget-object v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->access$3100(Landroid/widget/Editor;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->access$2800(Landroid/widget/Editor;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3944
    iget-object v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3945
    iget-object v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionModifierCursorController;->removeAllNewActionPopupHider()V

    goto :goto_0

    .line 3951
    :pswitch_1
    iget-object v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->access$3100(Landroid/widget/Editor;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->access$2800(Landroid/widget/Editor;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3952
    iget-object v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->access$3100(Landroid/widget/Editor;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->access$2800(Landroid/widget/Editor;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3953
    iget-object v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3954
    iget-object v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v0

    # getter for: Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;
    invoke-static {v0}, Landroid/widget/Editor$SelectionModifierCursorController;->access$200(Landroid/widget/Editor$SelectionModifierCursorController;)Landroid/widget/Editor$SelectionStartHandleView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v0

    # getter for: Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;
    invoke-static {v0}, Landroid/widget/Editor$SelectionModifierCursorController;->access$200(Landroid/widget/Editor$SelectionModifierCursorController;)Landroid/widget/Editor$SelectionStartHandleView;

    move-result-object v0

    iget-object v0, v0, Landroid/widget/Editor$SelectionStartHandleView;->mNewActionPopupWindow:Landroid/widget/Editor$NewActionPopupWindow;

    if-eqz v0, :cond_0

    .line 3955
    iget-object v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v0

    # getter for: Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;
    invoke-static {v0}, Landroid/widget/Editor$SelectionModifierCursorController;->access$200(Landroid/widget/Editor$SelectionModifierCursorController;)Landroid/widget/Editor$SelectionStartHandleView;

    move-result-object v0

    iget-object v0, v0, Landroid/widget/Editor$SelectionStartHandleView;->mNewActionPopupWindow:Landroid/widget/Editor$NewActionPopupWindow;

    invoke-virtual {v0}, Landroid/widget/Editor$NewActionPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3941
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected setHeight()V
    .locals 7

    .prologue
    .line 3974
    const/4 v0, 0x0

    .line 3977
    .local v0, "a":Landroid/content/res/TypedArray;
    :try_start_0
    iget-object v2, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    sget-object v4, Landroid/R$styleable;->ActionBar:[I

    const v5, 0x10102ce

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 3980
    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v2

    iput v2, p0, Landroid/widget/Editor$NewActionPopupWindow;->mActionBarHeight:I

    .line 3982
    iget-object v2, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    iget v3, v3, Landroid/widget/TextView;->mTextSelectHandleRes:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    iput v2, p0, Landroid/widget/Editor$NewActionPopupWindow;->mHandlerHeight:I

    .line 3983
    const/high16 v2, 0x41c80000    # 25.0f

    iget-object v3, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Landroid/widget/Editor$NewActionPopupWindow;->mStatusbarHeight:I

    .line 3984
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3988
    :goto_0
    return-void

    .line 3985
    :catch_0
    move-exception v1

    .line 3986
    .local v1, "e":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0
.end method

.method public show()V
    .locals 12

    .prologue
    const/4 v7, 0x1

    const/16 v9, 0x8

    const/4 v8, 0x0

    .line 3833
    iget-object v10, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v10}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v10

    instance-of v10, v10, Landroid/inputmethodservice/ExtractEditText;

    if-eqz v10, :cond_0

    .line 3907
    :goto_0
    return-void

    .line 3837
    :cond_0
    iget-object v10, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    iget-object v11, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-virtual {v11}, Landroid/widget/Editor;->isTranslatorEnabled()Z

    move-result v11

    iput-boolean v11, v10, Landroid/widget/Editor;->mCurrentTranslateEnable:Z

    .line 3839
    iget-object v10, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v10}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/TextView;->canCut()Z

    move-result v2

    .line 3840
    .local v2, "canCut":Z
    iget-object v10, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v10}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/TextView;->canCopy()Z

    move-result v1

    .line 3841
    .local v1, "canCopy":Z
    iget-object v10, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v10}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/TextView;->canPaste()Z

    move-result v4

    .line 3842
    .local v4, "canPaste":Z
    iget-object v10, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v10}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/TextView;->canTranslate()Z

    move-result v10

    if-eqz v10, :cond_b

    iget-object v10, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    iget-boolean v10, v10, Landroid/widget/Editor;->mCurrentTranslateEnable:Z

    if-eqz v10, :cond_b

    move v6, v7

    .line 3843
    .local v6, "canTranslate":Z
    :goto_1
    iget-object v10, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v10}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/TextView;->isSuggestionsEnabled()Z

    move-result v10

    if-eqz v10, :cond_c

    iget-object v10, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v10}, Landroid/widget/Editor;->access$3200(Landroid/widget/Editor;)Z

    move-result v10

    if-eqz v10, :cond_c

    move v5, v7

    .line 3844
    .local v5, "canSuggest":Z
    :goto_2
    iget-object v10, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v10}, Landroid/widget/Editor;->access$2800(Landroid/widget/Editor;)Z

    move-result v10

    if-eqz v10, :cond_d

    iget-object v10, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v10}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    instance-of v10, v10, Landroid/text/Editable;

    if-eqz v10, :cond_d

    iget-object v10, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v10}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/TextView;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v10

    if-eqz v10, :cond_d

    iget-object v10, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v10}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/TextView;->getClipboardExManager()Landroid/sec/clipboard/ClipboardExManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/sec/clipboard/ClipboardExManager;->getDataListSize()I

    move-result v10

    if-lez v10, :cond_d

    iget-object v10, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    iget-boolean v10, v10, Landroid/widget/Editor;->mClipboardEnable:Z

    if-eqz v10, :cond_d

    move v0, v7

    .line 3847
    .local v0, "canClipboard":Z
    :goto_3
    iget-object v7, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v7}, Landroid/widget/Editor;->access$2900(Landroid/widget/Editor;)Z

    move-result v3

    .line 3850
    .local v3, "canDictionary":Z
    iget-object v7, p0, Landroid/widget/Editor$NewActionPopupWindow;->mSelectAllTextView:Landroid/widget/TextView;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3851
    iget-object v7, p0, Landroid/widget/Editor$NewActionPopupWindow;->mSelectAllTextView:Landroid/widget/TextView;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->enableMultiSelection(Z)V

    .line 3852
    iget-object v7, p0, Landroid/widget/Editor$NewActionPopupWindow;->mSelectAllTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 3853
    iget-object v7, p0, Landroid/widget/Editor$NewActionPopupWindow;->mSelectAllTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/widget/HoverPopupWindow;->setEnabled(Z)V

    .line 3856
    :cond_1
    iget-object v10, p0, Landroid/widget/Editor$NewActionPopupWindow;->mSelectAllDivider:Landroid/widget/ImageView;

    if-eqz v2, :cond_e

    move v7, v8

    :goto_4
    invoke-virtual {v10, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3857
    iget-object v10, p0, Landroid/widget/Editor$NewActionPopupWindow;->mCutTextView:Landroid/widget/TextView;

    if-eqz v2, :cond_f

    move v7, v8

    :goto_5
    invoke-virtual {v10, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3858
    iget-object v7, p0, Landroid/widget/Editor$NewActionPopupWindow;->mCutTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 3859
    iget-object v7, p0, Landroid/widget/Editor$NewActionPopupWindow;->mCutTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/widget/HoverPopupWindow;->setEnabled(Z)V

    .line 3862
    :cond_2
    iget-object v10, p0, Landroid/widget/Editor$NewActionPopupWindow;->mCutDivider:Landroid/widget/ImageView;

    if-eqz v1, :cond_10

    move v7, v8

    :goto_6
    invoke-virtual {v10, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3863
    iget-object v10, p0, Landroid/widget/Editor$NewActionPopupWindow;->mCopyTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_11

    move v7, v8

    :goto_7
    invoke-virtual {v10, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3864
    iget-object v7, p0, Landroid/widget/Editor$NewActionPopupWindow;->mCopyTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 3865
    iget-object v7, p0, Landroid/widget/Editor$NewActionPopupWindow;->mCopyTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/widget/HoverPopupWindow;->setEnabled(Z)V

    .line 3868
    :cond_3
    iget-object v10, p0, Landroid/widget/Editor$NewActionPopupWindow;->mCopyDivider:Landroid/widget/ImageView;

    if-eqz v4, :cond_12

    move v7, v8

    :goto_8
    invoke-virtual {v10, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3869
    iget-object v10, p0, Landroid/widget/Editor$NewActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    if-eqz v4, :cond_13

    move v7, v8

    :goto_9
    invoke-virtual {v10, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3870
    iget-object v7, p0, Landroid/widget/Editor$NewActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 3871
    iget-object v7, p0, Landroid/widget/Editor$NewActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/widget/HoverPopupWindow;->setEnabled(Z)V

    .line 3874
    :cond_4
    iget-object v10, p0, Landroid/widget/Editor$NewActionPopupWindow;->mPasteDivider:Landroid/widget/ImageView;

    if-eqz v0, :cond_14

    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/sec/enterprise/RestrictionPolicy;

    move-result-object v7

    invoke-virtual {v7}, Landroid/sec/enterprise/RestrictionPolicy;->isClipboardShareAllowed()Z

    move-result v7

    if-eqz v7, :cond_14

    move v7, v8

    :goto_a
    invoke-virtual {v10, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3875
    iget-object v10, p0, Landroid/widget/Editor$NewActionPopupWindow;->mClipboardTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_15

    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/sec/enterprise/RestrictionPolicy;

    move-result-object v7

    invoke-virtual {v7}, Landroid/sec/enterprise/RestrictionPolicy;->isClipboardShareAllowed()Z

    move-result v7

    if-eqz v7, :cond_15

    move v7, v8

    :goto_b
    invoke-virtual {v10, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3876
    iget-object v7, p0, Landroid/widget/Editor$NewActionPopupWindow;->mClipboardTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 3877
    iget-object v7, p0, Landroid/widget/Editor$NewActionPopupWindow;->mClipboardTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/widget/HoverPopupWindow;->setEnabled(Z)V

    .line 3880
    :cond_5
    iget-object v10, p0, Landroid/widget/Editor$NewActionPopupWindow;->mClipboardDivider:Landroid/widget/ImageView;

    iget-object v7, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    iget-boolean v7, v7, Landroid/widget/Editor;->mShareEnable:Z

    if-eqz v7, :cond_16

    move v7, v8

    :goto_c
    invoke-virtual {v10, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3881
    iget-object v10, p0, Landroid/widget/Editor$NewActionPopupWindow;->mShareTextView:Landroid/widget/TextView;

    iget-object v7, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    iget-boolean v7, v7, Landroid/widget/Editor;->mShareEnable:Z

    if-eqz v7, :cond_17

    move v7, v8

    :goto_d
    invoke-virtual {v10, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3882
    iget-object v7, p0, Landroid/widget/Editor$NewActionPopupWindow;->mShareTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v7

    if-eqz v7, :cond_6

    .line 3883
    iget-object v7, p0, Landroid/widget/Editor$NewActionPopupWindow;->mShareTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/widget/HoverPopupWindow;->setEnabled(Z)V

    .line 3886
    :cond_6
    iget-object v10, p0, Landroid/widget/Editor$NewActionPopupWindow;->mShareDivider:Landroid/widget/ImageView;

    if-eqz v3, :cond_18

    move v7, v8

    :goto_e
    invoke-virtual {v10, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3887
    iget-object v10, p0, Landroid/widget/Editor$NewActionPopupWindow;->mDictionaryTextView:Landroid/widget/TextView;

    if-eqz v3, :cond_19

    move v7, v8

    :goto_f
    invoke-virtual {v10, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3888
    iget-object v7, p0, Landroid/widget/Editor$NewActionPopupWindow;->mDictionaryTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v7

    if-eqz v7, :cond_7

    .line 3889
    iget-object v7, p0, Landroid/widget/Editor$NewActionPopupWindow;->mDictionaryTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/widget/HoverPopupWindow;->setEnabled(Z)V

    .line 3892
    :cond_7
    iget-object v10, p0, Landroid/widget/Editor$NewActionPopupWindow;->mDictionaryDivider:Landroid/widget/ImageView;

    iget-object v7, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    iget-boolean v7, v7, Landroid/widget/Editor;->mWebSearchEnable:Z

    if-eqz v7, :cond_1a

    move v7, v8

    :goto_10
    invoke-virtual {v10, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3893
    iget-object v10, p0, Landroid/widget/Editor$NewActionPopupWindow;->mWebSearchTextView:Landroid/widget/TextView;

    iget-object v7, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    iget-boolean v7, v7, Landroid/widget/Editor;->mWebSearchEnable:Z

    if-eqz v7, :cond_1b

    move v7, v8

    :goto_11
    invoke-virtual {v10, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3894
    iget-object v7, p0, Landroid/widget/Editor$NewActionPopupWindow;->mWebSearchTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v7

    if-eqz v7, :cond_8

    .line 3895
    iget-object v7, p0, Landroid/widget/Editor$NewActionPopupWindow;->mWebSearchTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/widget/HoverPopupWindow;->setEnabled(Z)V

    .line 3898
    :cond_8
    iget-object v10, p0, Landroid/widget/Editor$NewActionPopupWindow;->mWebSearchDivider:Landroid/widget/ImageView;

    if-eqz v6, :cond_1c

    move v7, v8

    :goto_12
    invoke-virtual {v10, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3899
    iget-object v7, p0, Landroid/widget/Editor$NewActionPopupWindow;->mTranslateTextView:Landroid/widget/TextView;

    if-eqz v6, :cond_9

    move v9, v8

    :cond_9
    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3900
    iget-object v7, p0, Landroid/widget/Editor$NewActionPopupWindow;->mTranslateTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v7

    if-eqz v7, :cond_a

    .line 3901
    iget-object v7, p0, Landroid/widget/Editor$NewActionPopupWindow;->mTranslateTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/widget/HoverPopupWindow;->setEnabled(Z)V

    .line 3904
    :cond_a
    iget-object v7, p0, Landroid/widget/Editor$NewActionPopupWindow;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v7, v8, v8}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    .line 3906
    invoke-super {p0}, Landroid/widget/Editor$NewPinnedPopupWindow;->show()V

    goto/16 :goto_0

    .end local v0    # "canClipboard":Z
    .end local v3    # "canDictionary":Z
    .end local v5    # "canSuggest":Z
    .end local v6    # "canTranslate":Z
    :cond_b
    move v6, v8

    .line 3842
    goto/16 :goto_1

    .restart local v6    # "canTranslate":Z
    :cond_c
    move v5, v8

    .line 3843
    goto/16 :goto_2

    .restart local v5    # "canSuggest":Z
    :cond_d
    move v0, v8

    .line 3844
    goto/16 :goto_3

    .restart local v0    # "canClipboard":Z
    .restart local v3    # "canDictionary":Z
    :cond_e
    move v7, v9

    .line 3856
    goto/16 :goto_4

    :cond_f
    move v7, v9

    .line 3857
    goto/16 :goto_5

    :cond_10
    move v7, v9

    .line 3862
    goto/16 :goto_6

    :cond_11
    move v7, v9

    .line 3863
    goto/16 :goto_7

    :cond_12
    move v7, v9

    .line 3868
    goto/16 :goto_8

    :cond_13
    move v7, v9

    .line 3869
    goto/16 :goto_9

    :cond_14
    move v7, v9

    .line 3874
    goto/16 :goto_a

    :cond_15
    move v7, v9

    .line 3875
    goto/16 :goto_b

    :cond_16
    move v7, v9

    .line 3880
    goto/16 :goto_c

    :cond_17
    move v7, v9

    .line 3881
    goto/16 :goto_d

    :cond_18
    move v7, v9

    .line 3886
    goto/16 :goto_e

    :cond_19
    move v7, v9

    .line 3887
    goto/16 :goto_f

    :cond_1a
    move v7, v9

    .line 3892
    goto :goto_10

    :cond_1b
    move v7, v9

    .line 3893
    goto :goto_11

    :cond_1c
    move v7, v9

    .line 3898
    goto :goto_12
.end method
