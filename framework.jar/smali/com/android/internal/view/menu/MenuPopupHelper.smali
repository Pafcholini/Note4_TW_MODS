.class public Lcom/android/internal/view/menu/MenuPopupHelper;
.super Ljava/lang/Object;
.source "MenuPopupHelper.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/PopupWindow$OnDismissListener;
.implements Lcom/android/internal/view/menu/MenuPresenter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;
    }
.end annotation


# static fields
.field static final ITEM_LAYOUT:I = 0x10900ac

.field private static final TAG:Ljava/lang/String; = "MenuPopupHelper"

.field static final TW_ITEM_LAYOUT:I = 0x1090121


# instance fields
.field private final mAdapter:Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;

.field private mAnchorView:Landroid/view/View;

.field private mContentWidth:I

.field private final mContext:Landroid/content/Context;

.field private mDropDownGravity:I

.field mForceShowIcon:Z

.field private mHasContentWidth:Z

.field private final mInflater:Landroid/view/LayoutInflater;

.field private mIsParentThemeDeviceDefault:Z

.field private mMeasureParent:Landroid/view/ViewGroup;

.field private final mMenu:Lcom/android/internal/view/menu/MenuBuilder;

.field private final mOverflowOnly:Z

.field private mPopup:Landroid/widget/ListPopupWindow;

.field private final mPopupMaxWidth:I

.field private final mPopupStyleAttr:I

.field public mPopupWindowLayout:I

.field private mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

.field private mTreeObserver:Landroid/view/ViewTreeObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;

    .prologue
    .line 84
    const/4 v3, 0x0

    const/4 v4, 0x0

    const v5, 0x1010300

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/View;ZI)V

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/View;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p3, "anchorView"    # Landroid/view/View;

    .prologue
    .line 88
    const/4 v4, 0x0

    const v5, 0x1010300

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/View;ZI)V

    .line 89
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/View;ZI)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p3, "anchorView"    # Landroid/view/View;
    .param p4, "overflowOnly"    # Z
    .param p5, "popupStyleAttr"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput v3, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mDropDownGravity:I

    .line 80
    iput v3, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopupWindowLayout:I

    .line 93
    iput-object p1, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    .line 94
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mInflater:Landroid/view/LayoutInflater;

    .line 95
    iput-object p2, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 96
    new-instance v4, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;

    iget-object v5, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-direct {v4, p0, v5}, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;-><init>(Lcom/android/internal/view/menu/MenuPopupHelper;Lcom/android/internal/view/menu/MenuBuilder;)V

    iput-object v4, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mAdapter:Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;

    .line 97
    iput-boolean p4, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mOverflowOnly:Z

    .line 98
    iput p5, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopupStyleAttr:I

    .line 100
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 101
    .local v0, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    const v5, 0x10105a2

    invoke-virtual {v4, v5, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 102
    iget v4, v0, Landroid/util/TypedValue;->data:I

    if-eqz v4, :cond_0

    :goto_0
    iput-boolean v2, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mIsParentThemeDeviceDefault:Z

    .line 104
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 105
    .local v1, "res":Landroid/content/res/Resources;
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v2, v2, 0x2

    const v3, 0x1050009

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopupMaxWidth:I

    .line 108
    iput-object p3, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    .line 111
    invoke-virtual {p2, p0, p1}, Lcom/android/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;Landroid/content/Context;)V

    .line 112
    return-void

    .end local v1    # "res":Landroid/content/res/Resources;
    :cond_0
    move v2, v3

    .line 102
    goto :goto_0
.end method

.method static synthetic access$100(Lcom/android/internal/view/menu/MenuPopupHelper;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/view/menu/MenuPopupHelper;

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mOverflowOnly:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/internal/view/menu/MenuPopupHelper;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/view/menu/MenuPopupHelper;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/internal/view/menu/MenuPopupHelper;->twIsPopupMenuDisplay()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/internal/view/menu/MenuPopupHelper;)Landroid/view/LayoutInflater;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/view/menu/MenuPopupHelper;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/view/menu/MenuPopupHelper;)Lcom/android/internal/view/menu/MenuBuilder;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/view/menu/MenuPopupHelper;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    return-object v0
.end method

.method private measureContentWidth()I
    .locals 12

    .prologue
    const/4 v10, 0x0

    .line 235
    const/4 v7, 0x0

    .line 236
    .local v7, "maxWidth":I
    const/4 v5, 0x0

    .line 237
    .local v5, "itemView":Landroid/view/View;
    const/4 v4, 0x0

    .line 239
    .local v4, "itemType":I
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mAdapter:Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;

    .line 240
    .local v0, "adapter":Landroid/widget/ListAdapter;
    invoke-static {v10, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 241
    .local v9, "widthMeasureSpec":I
    invoke-static {v10, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 242
    .local v2, "heightMeasureSpec":I
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    .line 243
    .local v1, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_2

    .line 244
    invoke-interface {v0, v3}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v8

    .line 245
    .local v8, "positionType":I
    if-eq v8, v4, :cond_0

    .line 246
    move v4, v8

    .line 247
    const/4 v5, 0x0

    .line 250
    :cond_0
    iget-object v10, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mMeasureParent:Landroid/view/ViewGroup;

    if-nez v10, :cond_1

    .line 251
    new-instance v10, Landroid/widget/FrameLayout;

    iget-object v11, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    invoke-direct {v10, v11}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mMeasureParent:Landroid/view/ViewGroup;

    .line 254
    :cond_1
    iget-object v10, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mMeasureParent:Landroid/view/ViewGroup;

    invoke-interface {v0, v3, v5, v10}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 255
    invoke-virtual {v5, v9, v2}, Landroid/view/View;->measure(II)V

    .line 257
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    .line 258
    .local v6, "itemWidth":I
    iget v10, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopupMaxWidth:I

    if-lt v6, v10, :cond_3

    .line 259
    iget v7, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopupMaxWidth:I

    .line 265
    .end local v6    # "itemWidth":I
    .end local v7    # "maxWidth":I
    .end local v8    # "positionType":I
    :cond_2
    return v7

    .line 260
    .restart local v6    # "itemWidth":I
    .restart local v7    # "maxWidth":I
    .restart local v8    # "positionType":I
    :cond_3
    if-le v6, v7, :cond_4

    .line 261
    move v7, v6

    .line 243
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private twIsPopupMenuDisplay()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 191
    iget-boolean v2, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mIsParentThemeDeviceDefault:Z

    if-nez v2, :cond_1

    .line 195
    :cond_0
    :goto_0
    return v1

    .line 192
    :cond_1
    iget-object v2, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x112009a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 195
    .local v0, "mIsDisableHWKeyOptionMenu":Z
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public collapseItemActionView(Lcom/android/internal/view/menu/MenuBuilder;Lcom/android/internal/view/menu/MenuItemImpl;)Z
    .locals 1
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p2, "item"    # Lcom/android/internal/view/menu/MenuItemImpl;

    .prologue
    .line 367
    const/4 v0, 0x0

    return v0
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 199
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuPopupHelper;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 202
    :cond_0
    return-void
.end method

.method public expandItemActionView(Lcom/android/internal/view/menu/MenuBuilder;Lcom/android/internal/view/menu/MenuItemImpl;)Z
    .locals 1
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p2, "item"    # Lcom/android/internal/view/menu/MenuItemImpl;

    .prologue
    .line 363
    const/4 v0, 0x0

    return v0
.end method

.method public flagActionItems()Z
    .locals 1

    .prologue
    .line 359
    const/4 v0, 0x0

    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 372
    const/4 v0, 0x0

    return v0
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView;
    .locals 2
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 301
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "MenuPopupHelpers manage their own views"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPopup()Landroid/widget/ListPopupWindow;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    return-object v0
.end method

.method public initForMenu(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;

    .prologue
    .line 297
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCloseMenu(Lcom/android/internal/view/menu/MenuBuilder;Z)V
    .locals 1
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .prologue
    .line 349
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eq p1, v0, :cond_1

    .line 355
    :cond_0
    :goto_0
    return-void

    .line 351
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuPopupHelper;->dismiss()V

    .line 352
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/view/menu/MenuPresenter$Callback;->onCloseMenu(Lcom/android/internal/view/menu/MenuBuilder;Z)V

    goto :goto_0
.end method

.method public onDismiss()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 205
    iput-object v1, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    .line 206
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuBuilder;->close()V

    .line 207
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_1

    .line 208
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 210
    iput-object v1, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    .line 212
    :cond_1
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 213
    return-void
.end method

.method public onGlobalLayout()V
    .locals 2

    .prologue
    .line 270
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuPopupHelper;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 271
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    .line 272
    .local v0, "anchor":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v1

    if-nez v1, :cond_2

    .line 273
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuPopupHelper;->dismiss()V

    .line 279
    .end local v0    # "anchor":Landroid/view/View;
    :cond_1
    :goto_0
    return-void

    .line 274
    .restart local v0    # "anchor":Landroid/view/View;
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuPopupHelper;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 276
    iget-object v1, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v1}, Landroid/widget/ListPopupWindow;->show()V

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 221
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mAdapter:Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;

    .line 222
    .local v0, "adapter":Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;
    # getter for: Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->mAdapterMenu:Lcom/android/internal/view/menu/MenuBuilder;
    invoke-static {v0}, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->access$000(Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;)Lcom/android/internal/view/menu/MenuBuilder;

    move-result-object v1

    invoke-virtual {v0, p3}, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->getItem(I)Lcom/android/internal/view/menu/MenuItemImpl;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    .line 223
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 226
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/16 v1, 0x52

    if-ne p2, v1, :cond_0

    .line 227
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuPopupHelper;->dismiss()V

    .line 230
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 382
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 377
    const/4 v0, 0x0

    return-object v0
.end method

.method public onSubMenuSelected(Lcom/android/internal/view/menu/SubMenuBuilder;)Z
    .locals 7
    .param p1, "subMenu"    # Lcom/android/internal/view/menu/SubMenuBuilder;

    .prologue
    .line 320
    invoke-virtual {p1}, Lcom/android/internal/view/menu/SubMenuBuilder;->hasVisibleItems()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 321
    new-instance v4, Lcom/android/internal/view/menu/MenuPopupHelper;

    iget-object v5, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    invoke-direct {v4, v5, p1, v6}, Lcom/android/internal/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/View;)V

    .line 322
    .local v4, "subPopup":Lcom/android/internal/view/menu/MenuPopupHelper;
    iget-object v5, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    invoke-virtual {v4, v5}, Lcom/android/internal/view/menu/MenuPopupHelper;->setCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    .line 324
    const/4 v3, 0x0

    .line 325
    .local v3, "preserveIconSpacing":Z
    invoke-virtual {p1}, Lcom/android/internal/view/menu/SubMenuBuilder;->size()I

    move-result v1

    .line 326
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 327
    invoke-virtual {p1, v2}, Lcom/android/internal/view/menu/SubMenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 328
    .local v0, "childItem":Landroid/view/MenuItem;
    invoke-interface {v0}, Landroid/view/MenuItem;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 329
    const/4 v3, 0x1

    .line 333
    .end local v0    # "childItem":Landroid/view/MenuItem;
    :cond_0
    invoke-virtual {v4, v3}, Lcom/android/internal/view/menu/MenuPopupHelper;->setForceShowIcon(Z)V

    .line 336
    invoke-virtual {v4}, Lcom/android/internal/view/menu/MenuPopupHelper;->tryShow()Z

    move-result v5

    if-nez v5, :cond_3

    .line 337
    iget-object v5, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    if-eqz v5, :cond_1

    .line 338
    iget-object v5, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    invoke-interface {v5, p1}, Lcom/android/internal/view/menu/MenuPresenter$Callback;->onOpenSubMenu(Lcom/android/internal/view/menu/MenuBuilder;)Z

    .line 340
    :cond_1
    const/4 v5, 0x1

    .line 343
    .end local v1    # "count":I
    .end local v2    # "i":I
    .end local v3    # "preserveIconSpacing":Z
    .end local v4    # "subPopup":Lcom/android/internal/view/menu/MenuPopupHelper;
    :goto_1
    return v5

    .line 326
    .restart local v0    # "childItem":Landroid/view/MenuItem;
    .restart local v1    # "count":I
    .restart local v2    # "i":I
    .restart local v3    # "preserveIconSpacing":Z
    .restart local v4    # "subPopup":Lcom/android/internal/view/menu/MenuPopupHelper;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 343
    .end local v0    # "childItem":Landroid/view/MenuItem;
    .end local v1    # "count":I
    .end local v2    # "i":I
    .end local v3    # "preserveIconSpacing":Z
    .end local v4    # "subPopup":Lcom/android/internal/view/menu/MenuPopupHelper;
    :cond_3
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 283
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 287
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_1

    .line 288
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    .line 289
    :cond_0
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 291
    :cond_1
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 292
    return-void
.end method

.method public setAnchorView(Landroid/view/View;)V
    .locals 0
    .param p1, "anchor"    # Landroid/view/View;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    .line 116
    return-void
.end method

.method public setCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V
    .locals 0
    .param p1, "cb"    # Lcom/android/internal/view/menu/MenuPresenter$Callback;

    .prologue
    .line 315
    iput-object p1, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    .line 316
    return-void
.end method

.method public setForceShowIcon(Z)V
    .locals 0
    .param p1, "forceShow"    # Z

    .prologue
    .line 119
    iput-boolean p1, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mForceShowIcon:Z

    .line 120
    return-void
.end method

.method public setGravity(I)V
    .locals 0
    .param p1, "gravity"    # I

    .prologue
    .line 123
    iput p1, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mDropDownGravity:I

    .line 124
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuPopupHelper;->tryShow()Z

    move-result v0

    if-nez v0, :cond_0

    .line 128
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "MenuPopupHelper cannot be used without an anchor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :cond_0
    return-void
.end method

.method public tryShow()Z
    .locals 9

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x1

    .line 137
    new-instance v5, Landroid/widget/ListPopupWindow;

    iget-object v6, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    iget v8, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopupStyleAttr:I

    invoke-direct {v5, v6, v7, v8}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v5, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    .line 138
    iget-object v5, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v5, p0}, Landroid/widget/ListPopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 139
    iget-object v5, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v5, p0}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 140
    iget-object v5, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    iget-object v6, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mAdapter:Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;

    invoke-virtual {v5, v6}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 141
    iget-object v5, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v5, v4}, Landroid/widget/ListPopupWindow;->setModal(Z)V

    .line 143
    iget-object v1, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    .line 144
    .local v1, "anchor":Landroid/view/View;
    if-eqz v1, :cond_6

    .line 145
    iget-object v5, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    if-nez v5, :cond_0

    move v0, v4

    .line 146
    .local v0, "addGlobalListener":Z
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    .line 147
    if-eqz v0, :cond_1

    iget-object v5, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v5, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 148
    :cond_1
    invoke-virtual {v1, p0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 149
    iget-object v5, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v5, v1}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 150
    iget-object v5, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    iget v6, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mDropDownGravity:I

    invoke-virtual {v5, v6}, Landroid/widget/ListPopupWindow;->setDropDownGravity(I)V

    .line 153
    iget-object v5, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/pm/ApplicationInfo;->hasRtlSupport()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->isLayoutDirectionResolved()Z

    move-result v5

    if-nez v5, :cond_2

    .line 155
    invoke-virtual {v1}, Landroid/view/View;->resolveLayoutDirection()Z

    .line 161
    :cond_2
    iget-boolean v5, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mHasContentWidth:Z

    if-nez v5, :cond_3

    .line 162
    invoke-direct {p0}, Lcom/android/internal/view/menu/MenuPopupHelper;->measureContentWidth()I

    move-result v5

    iput v5, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mContentWidth:I

    .line 163
    iput-boolean v4, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mHasContentWidth:Z

    .line 166
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/view/menu/MenuPopupHelper;->twIsPopupMenuDisplay()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 167
    iget-object v5, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10e00b2

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 169
    .local v2, "mItemMaxCount":I
    iget-object v5, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mAdapter:Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;

    invoke-virtual {v5}, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->getCount()I

    move-result v5

    if-le v5, v2, :cond_4

    .line 170
    iget-object v5, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10500f9

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 172
    .local v3, "mVisibleMaxHeight":I
    iget-object v5, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v5, v3}, Landroid/widget/ListPopupWindow;->setHeight(I)V

    .line 176
    .end local v2    # "mItemMaxCount":I
    .end local v3    # "mVisibleMaxHeight":I
    :cond_4
    iget-object v5, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    iget v6, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mContentWidth:I

    invoke-virtual {v5, v6}, Landroid/widget/ListPopupWindow;->setContentWidth(I)V

    .line 177
    iget-object v5, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/widget/ListPopupWindow;->setInputMethodMode(I)V

    .line 179
    iget v5, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopupWindowLayout:I

    if-eqz v5, :cond_5

    .line 180
    iget-object v5, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    iget v6, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopupWindowLayout:I

    invoke-virtual {v5, v6}, Landroid/widget/ListPopupWindow;->setWindowLayoutType(I)V

    .line 184
    :cond_5
    iget-object v5, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v5}, Landroid/widget/ListPopupWindow;->show()V

    .line 185
    iget-object v5, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v5}, Landroid/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5, p0}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 186
    .end local v0    # "addGlobalListener":Z
    :goto_0
    return v4

    :cond_6
    move v4, v0

    .line 158
    goto :goto_0
.end method

.method public updateMenuView(Z)V
    .locals 1
    .param p1, "cleared"    # Z

    .prologue
    .line 306
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mHasContentWidth:Z

    .line 308
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mAdapter:Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mAdapter:Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->notifyDataSetChanged()V

    .line 311
    :cond_0
    return-void
.end method
