.class abstract Landroid/widget/MultiSelectPopupWindow$HandleView;
.super Landroid/view/View;
.source "MultiSelectPopupWindow.java"

# interfaces
.implements Landroid/widget/MultiSelectPopupWindow$TextViewPositionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/MultiSelectPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "HandleView"
.end annotation


# static fields
.field static final HANDLE_TYPE_END:I = 0x2

.field static final HANDLE_TYPE_NONE:I = 0x0

.field static final HANDLE_TYPE_START:I = 0x1


# instance fields
.field protected mBaselineY:I

.field private final mContainer:Landroid/widget/PopupWindow;

.field protected mCurCursorPosTop:Z

.field protected mDrawable:Landroid/graphics/drawable/Drawable;

.field protected mDrawableLtr:Landroid/graphics/drawable/Drawable;

.field protected mDrawableRtl:Landroid/graphics/drawable/Drawable;

.field public mHandleType:I

.field protected mHotspotX:I

.field private mIdealVerticalOffset:F

.field private mInitPositionX:I

.field private mInitPositionY:I

.field private mInitRawY:F

.field protected mIsDragging:Z

.field private mLastParentX:I

.field private mLastParentY:I

.field protected mPositionHasChanged:Z

.field protected mPositionX:I

.field protected mPositionY:I

.field private mPreviousOffset:I

.field private mStatusbarHeight:I

.field private mTouchOffsetY:F

.field private mTouchToWindowOffsetX:F

.field private mTouchToWindowOffsetY:F

.field protected mbFlipCursor:Z

.field protected mbSwitchCursor:Z

.field final synthetic this$0:Landroid/widget/MultiSelectPopupWindow;


# direct methods
.method public constructor <init>(Landroid/widget/MultiSelectPopupWindow;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 6
    .param p2, "drawableLtr"    # Landroid/graphics/drawable/Drawable;
    .param p3, "drawableRtl"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1106
    iput-object p1, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->this$0:Landroid/widget/MultiSelectPopupWindow;

    .line 1107
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1087
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mPreviousOffset:I

    .line 1088
    iput-boolean v5, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mPositionHasChanged:Z

    .line 1094
    const/high16 v0, 0x41c80000    # 25.0f

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mStatusbarHeight:I

    .line 1096
    iput v4, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mHandleType:I

    .line 1434
    iput-boolean v4, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mbFlipCursor:Z

    .line 1435
    iput-boolean v4, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mCurCursorPosTop:Z

    .line 1108
    new-instance v0, Landroid/widget/PopupWindow;

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x10102c8

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mContainer:Landroid/widget/PopupWindow;

    .line 1109
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v5}, Landroid/widget/PopupWindow;->setSplitTouchEnabled(Z)V

    .line 1110
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 1111
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mContainer:Landroid/widget/PopupWindow;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    .line 1112
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 1114
    iput-object p2, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mDrawableLtr:Landroid/graphics/drawable/Drawable;

    .line 1115
    iput-object p3, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mDrawableRtl:Landroid/graphics/drawable/Drawable;

    .line 1117
    invoke-virtual {p0}, Landroid/widget/MultiSelectPopupWindow$HandleView;->updateDrawable()V

    .line 1118
    invoke-virtual {p0}, Landroid/widget/MultiSelectPopupWindow$HandleView;->recalHandleView()V

    .line 1119
    return-void
.end method

.method private isVisible()Z
    .locals 6

    .prologue
    .line 1209
    iget-boolean v3, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mIsDragging:Z

    if-eqz v3, :cond_0

    .line 1210
    const/4 v3, 0x1

    .line 1220
    :goto_0
    return v3

    .line 1213
    :cond_0
    const/4 v0, 0x0

    .line 1214
    .local v0, "compensation":F
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    .line 1215
    .local v1, "layout":Landroid/text/Layout;
    if-eqz v1, :cond_1

    .line 1216
    invoke-virtual {p0}, Landroid/widget/MultiSelectPopupWindow$HandleView;->getCurrentCursorOffset()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v2

    .line 1217
    .local v2, "line":I
    invoke-virtual {v1, v2}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    const/high16 v0, 0x3f000000    # 0.5f

    .line 1220
    .end local v2    # "line":I
    :cond_1
    :goto_1
    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->this$0:Landroid/widget/MultiSelectPopupWindow;

    iget v4, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mPositionX:I

    iget v5, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mHotspotX:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    sub-float/2addr v4, v0

    float-to-int v4, v4

    iget v5, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mBaselineY:I

    # invokes: Landroid/widget/MultiSelectPopupWindow;->isPositionVisible(II)Z
    invoke-static {v3, v4, v5}, Landroid/widget/MultiSelectPopupWindow;->access$1100(Landroid/widget/MultiSelectPopupWindow;II)Z

    move-result v3

    goto :goto_0

    .line 1217
    .restart local v2    # "line":I
    :cond_2
    const/high16 v0, -0x41000000    # -0.5f

    goto :goto_1
.end method


# virtual methods
.method protected calculateForSwitchingCursor()Z
    .locals 1

    .prologue
    .line 1438
    const/4 v0, 0x1

    return v0
.end method

.method protected dismiss()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1187
    iput-boolean v1, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mIsDragging:Z

    .line 1188
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1189
    invoke-virtual {p0}, Landroid/widget/MultiSelectPopupWindow$HandleView;->onDetached()V

    .line 1190
    iput-boolean v1, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mbSwitchCursor:Z

    .line 1191
    return-void
.end method

.method public abstract getCurrentCursorOffset()I
.end method

.method protected abstract getHotspotX(Landroid/graphics/drawable/Drawable;Z)I
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 1194
    invoke-virtual {p0}, Landroid/widget/MultiSelectPopupWindow$HandleView;->dismiss()V

    .line 1195
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->this$0:Landroid/widget/MultiSelectPopupWindow;

    # invokes: Landroid/widget/MultiSelectPopupWindow;->getPositionListener()Landroid/widget/MultiSelectPopupWindow$PositionListener;
    invoke-static {v0}, Landroid/widget/MultiSelectPopupWindow;->access$400(Landroid/widget/MultiSelectPopupWindow;)Landroid/widget/MultiSelectPopupWindow$PositionListener;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/MultiSelectPopupWindow$PositionListener;->removeSubscriber(Landroid/widget/MultiSelectPopupWindow$TextViewPositionListener;)V

    .line 1196
    return-void
.end method

.method hideMultiSelectQuickPopupWindow()V
    .locals 1

    .prologue
    .line 1199
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->this$0:Landroid/widget/MultiSelectPopupWindow;

    invoke-virtual {v0}, Landroid/widget/MultiSelectPopupWindow;->getMultiSelectQuickPopupWindow()Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1200
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->this$0:Landroid/widget/MultiSelectPopupWindow;

    invoke-virtual {v0}, Landroid/widget/MultiSelectPopupWindow;->getMultiSelectQuickPopupWindow()Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->hide()V

    .line 1202
    :cond_0
    return-void
.end method

.method public initPreviousOffset()V
    .locals 1

    .prologue
    .line 1446
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mPreviousOffset:I

    .line 1447
    return-void
.end method

.method public isDragging()Z
    .locals 1

    .prologue
    .line 1422
    iget-boolean v0, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mIsDragging:Z

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 1205
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method public onDetached()V
    .locals 0

    .prologue
    .line 1430
    invoke-virtual {p0}, Landroid/widget/MultiSelectPopupWindow$HandleView;->hideMultiSelectQuickPopupWindow()V

    .line 1431
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v4, 0x0

    .line 1317
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mRight:I

    iget v2, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mLeft:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mBottom:I

    iget v3, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mTop:I

    sub-int/2addr v2, v3

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1318
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1319
    return-void
.end method

.method onHandleMoved()V
    .locals 0

    .prologue
    .line 1426
    invoke-virtual {p0}, Landroid/widget/MultiSelectPopupWindow$HandleView;->hideMultiSelectQuickPopupWindow()V

    .line 1427
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 1131
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget-object v1, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/MultiSelectPopupWindow$HandleView;->setMeasuredDimension(II)V

    .line 1132
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 15
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1330
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v13

    packed-switch v13, :pswitch_data_0

    .line 1418
    :cond_0
    :goto_0
    const/4 v13, 0x1

    return v13

    .line 1332
    :pswitch_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawXForScaledWindow()F

    move-result v13

    iget v14, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mPositionX:I

    int-to-float v14, v14

    sub-float/2addr v13, v14

    iput v13, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mTouchToWindowOffsetX:F

    .line 1333
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawYForScaledWindow()F

    move-result v13

    iget v14, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mPositionY:I

    int-to-float v14, v14

    sub-float/2addr v13, v14

    iput v13, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mTouchToWindowOffsetY:F

    .line 1336
    iget v13, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mPositionX:I

    iput v13, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mInitPositionX:I

    .line 1337
    iget v13, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mPositionY:I

    iput v13, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mInitPositionY:I

    .line 1338
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawYForScaledWindow()F

    move-result v13

    iput v13, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mInitRawY:F

    .line 1341
    iget-object v13, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->this$0:Landroid/widget/MultiSelectPopupWindow;

    # invokes: Landroid/widget/MultiSelectPopupWindow;->getPositionListener()Landroid/widget/MultiSelectPopupWindow$PositionListener;
    invoke-static {v13}, Landroid/widget/MultiSelectPopupWindow;->access$400(Landroid/widget/MultiSelectPopupWindow;)Landroid/widget/MultiSelectPopupWindow$PositionListener;

    move-result-object v4

    .line 1342
    .local v4, "positionListener":Landroid/widget/MultiSelectPopupWindow$PositionListener;
    invoke-virtual {v4}, Landroid/widget/MultiSelectPopupWindow$PositionListener;->getPositionX()I

    move-result v13

    iput v13, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mLastParentX:I

    .line 1343
    invoke-virtual {v4}, Landroid/widget/MultiSelectPopupWindow$PositionListener;->getPositionY()I

    move-result v13

    iput v13, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mLastParentY:I

    .line 1344
    const/4 v13, 0x1

    iput-boolean v13, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mIsDragging:Z

    .line 1345
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v13

    const/4 v14, 0x1

    iput-boolean v14, v13, Landroid/widget/TextView;->mIsTouchDown:Z

    goto :goto_0

    .line 1350
    .end local v4    # "positionListener":Landroid/widget/MultiSelectPopupWindow$PositionListener;
    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawXForScaledWindow()F

    move-result v6

    .line 1351
    .local v6, "rawX":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawYForScaledWindow()F

    move-result v7

    .line 1353
    .local v7, "rawY":F
    iget v13, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mTouchToWindowOffsetY:F

    iget v14, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mLastParentY:I

    int-to-float v14, v14

    sub-float v5, v13, v14

    .line 1354
    .local v5, "previousVerticalOffset":F
    iget v13, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mPositionY:I

    int-to-float v13, v13

    sub-float v13, v7, v13

    iget v14, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mLastParentY:I

    int-to-float v14, v14

    sub-float v0, v13, v14

    .line 1356
    .local v0, "currentVerticalOffset":F
    iget v13, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mIdealVerticalOffset:F

    cmpg-float v13, v5, v13

    if-gez v13, :cond_3

    .line 1357
    iget v13, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mIdealVerticalOffset:F

    invoke-static {v0, v13}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 1358
    .local v3, "newVerticalOffset":F
    invoke-static {v3, v5}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 1368
    :goto_1
    iget v13, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mLastParentY:I

    int-to-float v13, v13

    add-float/2addr v13, v3

    iput v13, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mTouchToWindowOffsetY:F

    .line 1370
    iget v13, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mTouchToWindowOffsetX:F

    sub-float v13, v6, v13

    iget v14, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mHotspotX:I

    int-to-float v14, v14

    add-float v1, v13, v14

    .line 1371
    .local v1, "newPosX":F
    iget v13, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mTouchToWindowOffsetY:F

    sub-float v13, v7, v13

    iget v14, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mTouchOffsetY:F

    add-float v2, v13, v14

    .line 1374
    .local v2, "newPosY":F
    invoke-virtual {p0}, Landroid/widget/MultiSelectPopupWindow$HandleView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v13

    if-eqz v13, :cond_2

    .line 1375
    invoke-virtual {p0}, Landroid/widget/MultiSelectPopupWindow$HandleView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/ViewRootImpl;->getMultiWindowScale()Landroid/graphics/PointF;

    move-result-object v8

    .line 1376
    .local v8, "scaleRatio":Landroid/graphics/PointF;
    iget v13, v8, Landroid/graphics/PointF;->x:F

    const/high16 v14, 0x3f800000    # 1.0f

    cmpl-float v13, v13, v14

    if-eqz v13, :cond_1

    .line 1377
    iget v13, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mTouchToWindowOffsetX:F

    iget v14, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mInitPositionX:I

    int-to-float v14, v14

    add-float v11, v13, v14

    .line 1378
    .local v11, "tempX":F
    sub-float v13, v6, v11

    iget v14, v8, Landroid/graphics/PointF;->x:F

    div-float/2addr v13, v14

    iget v14, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mInitPositionX:I

    int-to-float v14, v14

    add-float/2addr v13, v14

    iget v14, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mHotspotX:I

    int-to-float v14, v14

    add-float v1, v13, v14

    .line 1380
    .end local v11    # "tempX":F
    :cond_1
    iget v13, v8, Landroid/graphics/PointF;->y:F

    const/high16 v14, 0x3f800000    # 1.0f

    cmpl-float v13, v13, v14

    if-eqz v13, :cond_2

    .line 1381
    iget v13, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mInitRawY:F

    sub-float v13, v7, v13

    iget v14, v8, Landroid/graphics/PointF;->y:F

    div-float/2addr v13, v14

    iget v14, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mInitPositionY:I

    int-to-float v14, v14

    add-float/2addr v13, v14

    iget v14, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mTouchOffsetY:F

    add-float v2, v13, v14

    .line 1386
    .end local v8    # "scaleRatio":Landroid/graphics/PointF;
    :cond_2
    invoke-virtual {p0, v1, v2}, Landroid/widget/MultiSelectPopupWindow$HandleView;->updatePosition(FF)V

    goto/16 :goto_0

    .line 1360
    .end local v1    # "newPosX":F
    .end local v2    # "newPosY":F
    .end local v3    # "newVerticalOffset":F
    :cond_3
    cmpg-float v13, v0, v5

    if-gez v13, :cond_4

    .line 1361
    iget v13, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mIdealVerticalOffset:F

    invoke-static {v0, v13}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 1362
    .restart local v3    # "newVerticalOffset":F
    invoke-static {v3, v5}, Ljava/lang/Math;->max(FF)F

    move-result v3

    goto :goto_1

    .line 1365
    .end local v3    # "newVerticalOffset":F
    :cond_4
    iget v13, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mIdealVerticalOffset:F

    invoke-static {v0, v13}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 1366
    .restart local v3    # "newVerticalOffset":F
    invoke-static {v3, v5}, Ljava/lang/Math;->min(FF)F

    move-result v3

    goto :goto_1

    .line 1391
    .end local v0    # "currentVerticalOffset":F
    .end local v3    # "newVerticalOffset":F
    .end local v5    # "previousVerticalOffset":F
    .end local v6    # "rawX":F
    .end local v7    # "rawY":F
    :pswitch_2
    const/4 v13, 0x0

    iput-boolean v13, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mIsDragging:Z

    .line 1392
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v13

    const/4 v14, 0x0

    iput-boolean v14, v13, Landroid/widget/TextView;->mIsTouchDown:Z

    .line 1393
    invoke-virtual {p0}, Landroid/widget/MultiSelectPopupWindow$HandleView;->refreshForSwitchingCursor()Z

    .line 1395
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/TextView;->getTextForMultiSelection()Ljava/lang/CharSequence;

    move-result-object v12

    .line 1396
    .local v12, "text":Ljava/lang/CharSequence;
    if-nez v12, :cond_5

    .line 1397
    const-string v13, "MultiSelectPopupWindow"

    const-string v14, "getTextFormultiSelection() text is null"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1400
    :cond_5
    invoke-static {v12}, Landroid/text/MultiSelection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v10

    .line 1401
    .local v10, "selStart":I
    invoke-static {v12}, Landroid/text/MultiSelection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v9

    .line 1403
    .local v9, "selEnd":I
    if-le v10, v9, :cond_6

    .line 1404
    check-cast v12, Landroid/text/Spannable;

    .end local v12    # "text":Ljava/lang/CharSequence;
    invoke-static {v12, v9, v10}, Landroid/text/MultiSelection;->setSelection(Landroid/text/Spannable;II)V

    .line 1407
    :cond_6
    iget-object v13, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->this$0:Landroid/widget/MultiSelectPopupWindow;

    invoke-virtual {v13}, Landroid/widget/MultiSelectPopupWindow;->getMultiSelectQuickPopupWindow()Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;

    move-result-object v13

    if-eqz v13, :cond_0

    .line 1408
    iget-object v13, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->this$0:Landroid/widget/MultiSelectPopupWindow;

    invoke-virtual {v13}, Landroid/widget/MultiSelectPopupWindow;->getMultiSelectQuickPopupWindow()Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->isShowing()Z

    move-result v13

    if-nez v13, :cond_0

    .line 1409
    iget-object v13, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->this$0:Landroid/widget/MultiSelectPopupWindow;

    invoke-virtual {v13}, Landroid/widget/MultiSelectPopupWindow;->getMultiSelectQuickPopupWindow()Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->show()V

    goto/16 :goto_0

    .line 1415
    .end local v9    # "selEnd":I
    .end local v10    # "selStart":I
    :pswitch_3
    const/4 v13, 0x0

    iput-boolean v13, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mIsDragging:Z

    goto/16 :goto_0

    .line 1330
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method protected positionAtCursorOffset(IZZ)V
    .locals 7
    .param p1, "offset"    # I
    .param p2, "parentPositionChanged"    # Z
    .param p3, "parentScrolled"    # Z

    .prologue
    const/4 v4, 0x1

    .line 1224
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    .line 1225
    .local v1, "layout":Landroid/text/Layout;
    if-nez v1, :cond_1

    .line 1247
    :cond_0
    :goto_0
    return-void

    .line 1228
    :cond_1
    iget v5, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mPreviousOffset:I

    if-eq p1, v5, :cond_4

    move v3, v4

    .line 1229
    .local v3, "offsetChanged":Z
    :goto_1
    if-nez v3, :cond_2

    if-nez p2, :cond_2

    if-eqz p3, :cond_0

    .line 1230
    :cond_2
    if-eqz v3, :cond_3

    .line 1231
    invoke-virtual {p0, p1}, Landroid/widget/MultiSelectPopupWindow$HandleView;->updateSelection(I)V

    .line 1233
    :cond_3
    invoke-virtual {v1, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v2

    .line 1234
    .local v2, "line":I
    invoke-virtual {v1, v2}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_5

    const/high16 v0, 0x3f000000    # 0.5f

    .line 1236
    .local v0, "compensation":F
    :goto_2
    invoke-virtual {v1, p1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v5

    add-float/2addr v5, v0

    iget v6, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mHotspotX:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mPositionX:I

    .line 1237
    invoke-virtual {v1, v2}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v5

    iput v5, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mPositionY:I

    .line 1238
    invoke-virtual {v1, v2}, Landroid/text/Layout;->getLineBaseline(I)I

    move-result v5

    iput v5, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mBaselineY:I

    .line 1240
    iget v5, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mPositionX:I

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v6

    add-int/2addr v5, v6

    iput v5, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mPositionX:I

    .line 1241
    iget v5, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mPositionY:I

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v6

    add-int/2addr v5, v6

    iput v5, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mPositionY:I

    .line 1242
    iget v5, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mBaselineY:I

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v6

    add-int/2addr v5, v6

    iput v5, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mBaselineY:I

    .line 1244
    iput p1, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mPreviousOffset:I

    .line 1245
    iput-boolean v4, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mPositionHasChanged:Z

    goto :goto_0

    .line 1228
    .end local v0    # "compensation":F
    .end local v2    # "line":I
    .end local v3    # "offsetChanged":Z
    :cond_4
    const/4 v3, 0x0

    goto :goto_1

    .line 1234
    .restart local v2    # "line":I
    .restart local v3    # "offsetChanged":Z
    :cond_5
    const/high16 v0, -0x41000000    # -0.5f

    goto :goto_2
.end method

.method public recalHandleView()V
    .locals 3

    .prologue
    .line 1450
    iget-object v1, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 1451
    .local v0, "handleHeight":I
    const v1, -0x41666666    # -0.3f

    int-to-float v2, v0

    mul-float/2addr v1, v2

    iput v1, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mTouchOffsetY:F

    .line 1452
    const v1, 0x3f333333    # 0.7f

    int-to-float v2, v0

    mul-float/2addr v1, v2

    iput v1, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mIdealVerticalOffset:F

    .line 1453
    return-void
.end method

.method public refreshForSwitchingCursor()Z
    .locals 1

    .prologue
    .line 1442
    const/4 v0, 0x1

    return v0
.end method

.method public show()V
    .locals 12

    .prologue
    const/4 v8, 0x2

    const/4 v11, -0x1

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1135
    invoke-virtual {p0}, Landroid/widget/MultiSelectPopupWindow$HandleView;->isShowing()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1184
    :goto_0
    return-void

    .line 1138
    :cond_0
    iget-object v7, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->this$0:Landroid/widget/MultiSelectPopupWindow;

    # invokes: Landroid/widget/MultiSelectPopupWindow;->getPositionListener()Landroid/widget/MultiSelectPopupWindow$PositionListener;
    invoke-static {v7}, Landroid/widget/MultiSelectPopupWindow;->access$400(Landroid/widget/MultiSelectPopupWindow;)Landroid/widget/MultiSelectPopupWindow$PositionListener;

    move-result-object v7

    invoke-virtual {v7, p0, v10}, Landroid/widget/MultiSelectPopupWindow$PositionListener;->addSubscriber(Landroid/widget/MultiSelectPopupWindow$TextViewPositionListener;Z)V

    .line 1139
    iput v11, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mPreviousOffset:I

    .line 1140
    invoke-virtual {p0}, Landroid/widget/MultiSelectPopupWindow$HandleView;->getCurrentCursorOffset()I

    move-result v7

    invoke-virtual {p0, v7, v9, v9}, Landroid/widget/MultiSelectPopupWindow$HandleView;->positionAtCursorOffset(IZZ)V

    .line 1142
    new-array v6, v8, [I

    .line 1143
    .local v6, "window":[I
    new-array v5, v8, [I

    .line 1144
    .local v5, "screen":[I
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->getLocationInWindow([I)V

    .line 1145
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    .line 1146
    iget v7, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mPositionX:I

    aget v8, v6, v9

    add-int v3, v7, v8

    .line 1147
    .local v3, "positionX":I
    iget v7, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mPositionY:I

    aget v8, v6, v10

    add-int v4, v7, v8

    .line 1148
    .local v4, "positionY":I
    aget v7, v5, v9

    aget v8, v6, v9

    sub-int v1, v7, v8

    .line 1149
    .local v1, "gapX":I
    aget v7, v5, v10

    aget v8, v6, v10

    sub-int v2, v7, v8

    .line 1151
    .local v2, "gapY":I
    invoke-virtual {p0}, Landroid/widget/MultiSelectPopupWindow$HandleView;->isShowing()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1155
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v7

    if-eqz v7, :cond_2

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v7

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v8

    if-eq v7, v8, :cond_2

    .line 1156
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->isScaleWindow()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1157
    iget-object v7, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v7, v9}, Landroid/widget/PopupWindow;->setLayoutInScreenEnabled(Z)V

    .line 1159
    :cond_1
    add-int/2addr v3, v1

    .line 1160
    add-int/2addr v4, v2

    .line 1163
    :cond_2
    iget-object v7, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v7, v3, v4, v11, v11}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_0

    .line 1165
    :cond_3
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v7

    if-eqz v7, :cond_5

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v7

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v8

    if-eq v7, v8, :cond_5

    .line 1166
    iget-object v7, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v7, v10}, Landroid/widget/PopupWindow;->setLayoutInScreenEnabled(Z)V

    .line 1167
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->isScaleWindow()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1168
    iget-object v7, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v7, v9}, Landroid/widget/PopupWindow;->setLayoutInScreenEnabled(Z)V

    .line 1171
    :cond_4
    add-int/2addr v3, v1

    .line 1172
    add-int/2addr v4, v2

    .line 1173
    iget-object v7, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mContainer:Landroid/widget/PopupWindow;

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/TextView;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v8

    invoke-virtual {v7, v8, v9, v3, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/os/IBinder;III)V

    goto/16 :goto_0

    .line 1175
    :cond_5
    iget-object v7, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v7, v9}, Landroid/widget/PopupWindow;->setLayoutInScreenEnabled(Z)V

    .line 1177
    :try_start_0
    iget-object v7, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mContainer:Landroid/widget/PopupWindow;

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9, v3, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1178
    :catch_0
    move-exception v0

    .line 1179
    .local v0, "e":Landroid/view/WindowManager$BadTokenException;
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->clearAllMultiSelection()Z

    .line 1180
    const-string v7, "MultiSelectPopupWindow"

    const-string/jumbo v8, "showAtLocation occur BadTokenException"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method protected updateDrawable()V
    .locals 3

    .prologue
    .line 1122
    invoke-virtual {p0}, Landroid/widget/MultiSelectPopupWindow$HandleView;->getCurrentCursorOffset()I

    move-result v1

    .line 1123
    .local v1, "offset":I
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v0

    .line 1125
    .local v0, "isRtlCharAtOffset":Z
    if-eqz v0, :cond_0

    iget-object v2, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mDrawableRtl:Landroid/graphics/drawable/Drawable;

    :goto_0
    iput-object v2, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 1126
    iget-object v2, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2, v0}, Landroid/widget/MultiSelectPopupWindow$HandleView;->getHotspotX(Landroid/graphics/drawable/Drawable;Z)I

    move-result v2

    iput v2, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mHotspotX:I

    .line 1127
    return-void

    .line 1125
    :cond_0
    iget-object v2, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mDrawableLtr:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public abstract updatePosition(FF)V
.end method

.method public updatePosition(IIZZ)V
    .locals 10
    .param p1, "parentPositionX"    # I
    .param p2, "parentPositionY"    # I
    .param p3, "parentPositionChanged"    # Z
    .param p4, "parentScrolled"    # Z

    .prologue
    .line 1250
    invoke-virtual {p0}, Landroid/widget/MultiSelectPopupWindow$HandleView;->getCurrentCursorOffset()I

    move-result v7

    invoke-virtual {p0, v7, p3, p4}, Landroid/widget/MultiSelectPopupWindow$HandleView;->positionAtCursorOffset(IZZ)V

    .line 1251
    if-nez p3, :cond_0

    iget-boolean v7, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mPositionHasChanged:Z

    if-eqz v7, :cond_7

    .line 1252
    :cond_0
    iget-boolean v7, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mIsDragging:Z

    if-eqz v7, :cond_3

    .line 1253
    iget v7, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mLastParentX:I

    if-ne p1, v7, :cond_1

    iget v7, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mLastParentY:I

    if-eq p2, v7, :cond_2

    .line 1254
    :cond_1
    iget v7, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mTouchToWindowOffsetX:F

    iget v8, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mLastParentX:I

    sub-int v8, p1, v8

    int-to-float v8, v8

    add-float/2addr v7, v8

    iput v7, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mTouchToWindowOffsetX:F

    .line 1255
    iget v7, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mTouchToWindowOffsetY:F

    iget v8, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mLastParentY:I

    sub-int v8, p2, v8

    int-to-float v8, v8

    add-float/2addr v7, v8

    iput v7, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mTouchToWindowOffsetY:F

    .line 1256
    iput p1, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mLastParentX:I

    .line 1257
    iput p2, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mLastParentY:I

    .line 1259
    :cond_2
    invoke-virtual {p0}, Landroid/widget/MultiSelectPopupWindow$HandleView;->onHandleMoved()V

    .line 1262
    :cond_3
    invoke-direct {p0}, Landroid/widget/MultiSelectPopupWindow$HandleView;->isVisible()Z

    move-result v7

    if-eqz v7, :cond_b

    if-nez p3, :cond_b

    .line 1263
    const/4 v7, 0x2

    new-array v6, v7, [I

    .line 1264
    .local v6, "window":[I
    const/4 v7, 0x2

    new-array v5, v7, [I

    .line 1265
    .local v5, "screen":[I
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->getLocationInWindow([I)V

    .line 1266
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    .line 1267
    const/4 v7, 0x0

    aget v7, v5, v7

    const/4 v8, 0x0

    aget v8, v6, v8

    sub-int v1, v7, v8

    .line 1268
    .local v1, "gapX":I
    const/4 v7, 0x1

    aget v7, v5, v7

    const/4 v8, 0x1

    aget v8, v6, v8

    sub-int v2, v7, v8

    .line 1269
    .local v2, "gapY":I
    iget v7, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mPositionX:I

    add-int v3, p1, v7

    .line 1270
    .local v3, "positionX":I
    iget v7, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mPositionY:I

    add-int v4, p2, v7

    .line 1272
    .local v4, "positionY":I
    invoke-virtual {p0}, Landroid/widget/MultiSelectPopupWindow$HandleView;->isShowing()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 1277
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v7

    if-eqz v7, :cond_5

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v7

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v8

    if-eq v7, v8, :cond_5

    .line 1278
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->isScaleWindow()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1279
    iget-object v7, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mContainer:Landroid/widget/PopupWindow;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/PopupWindow;->setLayoutInScreenEnabled(Z)V

    .line 1281
    :cond_4
    add-int/2addr v3, v1

    .line 1282
    add-int/2addr v4, v2

    .line 1284
    :cond_5
    iget-object v7, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mContainer:Landroid/widget/PopupWindow;

    const/4 v8, -0x1

    const/4 v9, -0x1

    invoke-virtual {v7, v3, v4, v8, v9}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 1310
    .end local v1    # "gapX":I
    .end local v2    # "gapY":I
    .end local v3    # "positionX":I
    .end local v4    # "positionY":I
    .end local v5    # "screen":[I
    .end local v6    # "window":[I
    :cond_6
    :goto_0
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mPositionHasChanged:Z

    .line 1311
    iget-object v7, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->this$0:Landroid/widget/MultiSelectPopupWindow;

    invoke-virtual {v7}, Landroid/widget/MultiSelectPopupWindow;->relocateMultiSelectQuickPopupWindow()V

    .line 1313
    :cond_7
    return-void

    .line 1287
    .restart local v1    # "gapX":I
    .restart local v2    # "gapY":I
    .restart local v3    # "positionX":I
    .restart local v4    # "positionY":I
    .restart local v5    # "screen":[I
    .restart local v6    # "window":[I
    :cond_8
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v7

    if-eqz v7, :cond_a

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v7

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v8

    if-eq v7, v8, :cond_a

    .line 1288
    iget-object v7, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mContainer:Landroid/widget/PopupWindow;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/PopupWindow;->setLayoutInScreenEnabled(Z)V

    .line 1289
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->isScaleWindow()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 1290
    iget-object v7, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mContainer:Landroid/widget/PopupWindow;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/PopupWindow;->setLayoutInScreenEnabled(Z)V

    .line 1292
    :cond_9
    add-int/2addr v3, v1

    .line 1293
    add-int/2addr v4, v2

    .line 1295
    iget-object v7, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mContainer:Landroid/widget/PopupWindow;

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/TextView;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9, v3, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/os/IBinder;III)V

    goto :goto_0

    .line 1297
    :cond_a
    iget-object v7, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mContainer:Landroid/widget/PopupWindow;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/PopupWindow;->setLayoutInScreenEnabled(Z)V

    .line 1299
    :try_start_0
    iget-object v7, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mContainer:Landroid/widget/PopupWindow;

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9, v3, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1300
    :catch_0
    move-exception v0

    .line 1301
    .local v0, "e":Landroid/view/WindowManager$BadTokenException;
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->clearAllMultiSelection()Z

    .line 1302
    const-string v7, "MultiSelectPopupWindow"

    const-string/jumbo v8, "showAtLocation occur BadTokenException"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1307
    .end local v0    # "e":Landroid/view/WindowManager$BadTokenException;
    .end local v1    # "gapX":I
    .end local v2    # "gapY":I
    .end local v3    # "positionX":I
    .end local v4    # "positionY":I
    .end local v5    # "screen":[I
    .end local v6    # "window":[I
    :cond_b
    invoke-virtual {p0}, Landroid/widget/MultiSelectPopupWindow$HandleView;->isShowing()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1308
    invoke-virtual {p0}, Landroid/widget/MultiSelectPopupWindow$HandleView;->dismiss()V

    goto :goto_0
.end method

.method protected abstract updateSelection(I)V
.end method
