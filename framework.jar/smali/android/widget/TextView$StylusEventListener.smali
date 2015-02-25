.class Landroid/widget/TextView$StylusEventListener;
.super Ljava/lang/Object;
.source "TextView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnStylusButtonEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StylusEventListener"
.end annotation


# instance fields
.field private mDirLTR:Z

.field private mEndCurPosition:I

.field private mIsSelectableTextView:Z

.field private mMaxX:F

.field private mPressed:Z

.field private mStartCurPosition:I

.field private mStartX:F

.field private mStartY:F

.field private mTextView:Landroid/widget/TextView;

.field private oldEndPos:I

.field private selectRange:[I

.field final synthetic this$0:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 3
    .param p2, "textView"    # Landroid/widget/TextView;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 12673
    iput-object p1, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12660
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/TextView$StylusEventListener;->mDirLTR:Z

    .line 12661
    iput-boolean v1, p0, Landroid/widget/TextView$StylusEventListener;->mPressed:Z

    .line 12662
    iput-boolean v1, p0, Landroid/widget/TextView$StylusEventListener;->mIsSelectableTextView:Z

    .line 12663
    iput v1, p0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    .line 12664
    iput v1, p0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    .line 12665
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/TextView$StylusEventListener;->oldEndPos:I

    .line 12666
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/widget/TextView$StylusEventListener;->selectRange:[I

    .line 12668
    iput v2, p0, Landroid/widget/TextView$StylusEventListener;->mStartX:F

    .line 12669
    iput v2, p0, Landroid/widget/TextView$StylusEventListener;->mStartY:F

    .line 12670
    iput v2, p0, Landroid/widget/TextView$StylusEventListener;->mMaxX:F

    .line 12671
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/TextView$StylusEventListener;->mTextView:Landroid/widget/TextView;

    .line 12674
    iput-object p2, p0, Landroid/widget/TextView$StylusEventListener;->mTextView:Landroid/widget/TextView;

    .line 12675
    return-void
.end method


# virtual methods
.method public onStylusButtonEvent(Landroid/view/MotionEvent;I)V
    .locals 20
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "clipboardId"    # I

    .prologue
    .line 12678
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    .line 12680
    .local v2, "action":I
    const/16 v16, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v16

    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Landroid/widget/TextView;->access$2900(Landroid/widget/TextView;)Z

    move-result v16

    if-nez v16, :cond_1

    .line 12937
    :cond_0
    :goto_0
    return-void

    .line 12684
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v11

    .line 12685
    .local v11, "rawX":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v12

    .line 12687
    .local v12, "rawY":F
    if-nez v2, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v16

    and-int/lit8 v16, v16, 0x2

    if-nez v16, :cond_3

    :cond_2
    const/16 v16, 0xd3

    move/from16 v0, v16

    if-ne v2, v0, :cond_12

    .line 12690
    :cond_3
    invoke-static {}, Landroid/widget/TextView;->access$3000()Z

    move-result v16

    if-nez v16, :cond_6

    .line 12691
    invoke-static {}, Landroid/widget/TextView;->access$3100()Landroid/widget/TextView;

    move-result-object v16

    if-eqz v16, :cond_4

    .line 12692
    invoke-static {}, Landroid/widget/TextView;->access$3100()Landroid/widget/TextView;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->clearMultiSelection()Z

    .line 12693
    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Landroid/widget/TextView;->access$3102(Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 12695
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Landroid/widget/TextView;->access$3200(Landroid/widget/TextView;)Z

    move-result v16

    if-eqz v16, :cond_5

    .line 12701
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 12702
    .local v4, "curTime":J
    invoke-static {}, Landroid/widget/TextView;->access$3300()Landroid/widget/TextView;

    move-result-object v16

    if-eqz v16, :cond_5

    invoke-static {}, Landroid/widget/TextView;->access$3400()J

    move-result-wide v16

    sub-long v16, v4, v16

    const-wide/16 v18, 0x64

    cmp-long v16, v16, v18

    if-gez v16, :cond_5

    .line 12703
    invoke-static {}, Landroid/widget/TextView;->access$3300()Landroid/widget/TextView;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroid/widget/TextView;->access$3102(Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 12706
    .end local v4    # "curTime":J
    :cond_5
    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Landroid/widget/TextView;->access$3302(Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 12707
    const/16 v16, 0x1

    invoke-static/range {v16 .. v16}, Landroid/widget/TextView;->access$3002(Z)Z

    .line 12709
    :cond_6
    invoke-static {}, Landroid/widget/TextView;->access$3000()Z

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_7

    invoke-static {}, Landroid/widget/TextView;->access$3100()Landroid/widget/TextView;

    move-result-object v16

    if-eqz v16, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->mTextView:Landroid/widget/TextView;

    move-object/from16 v16, v0

    if-eqz v16, :cond_0

    .line 12712
    :cond_7
    invoke-static {}, Landroid/widget/TextView;->access$3100()Landroid/widget/TextView;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->mTextView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-eq v0, v1, :cond_8

    .line 12713
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Landroid/widget/TextView;->access$3500(Landroid/widget/TextView;)Landroid/widget/Editor;

    move-result-object v16

    if-eqz v16, :cond_0

    .line 12714
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Landroid/widget/TextView;->access$3500(Landroid/widget/TextView;)Landroid/widget/Editor;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/widget/Editor;->hideControllers()V

    goto/16 :goto_0

    .line 12719
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Landroid/widget/TextView;->access$3600(Landroid/widget/TextView;)Landroid/widget/TextView$Marquee;

    move-result-object v16

    if-eqz v16, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Landroid/widget/TextView;->access$3600(Landroid/widget/TextView;)Landroid/widget/TextView$Marquee;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView$Marquee;->isStopped()Z

    move-result v16

    if-eqz v16, :cond_0

    .line 12722
    :cond_9
    invoke-static {}, Landroid/widget/TextView;->access$3100()Landroid/widget/TextView;

    move-result-object v16

    move-object/from16 v0, v16

    instance-of v0, v0, Landroid/widget/EditText;

    move/from16 v16, v0

    if-eqz v16, :cond_11

    .line 12723
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Landroid/widget/TextView;->access$3500(Landroid/widget/TextView;)Landroid/widget/Editor;

    move-result-object v16

    if-eqz v16, :cond_a

    .line 12724
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Landroid/widget/TextView;->access$3500(Landroid/widget/TextView;)Landroid/widget/Editor;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/widget/Editor;->hideControllers()V

    .line 12726
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v16, v0

    float-to-int v0, v11

    move/from16 v17, v0

    float-to-int v0, v12

    move/from16 v18, v0

    const/16 v19, 0x0

    invoke-static/range {v16 .. v19}, Landroid/widget/TextView;->access$3700(Landroid/widget/TextView;III)Z

    move-result v16

    if-eqz v16, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Landroid/widget/TextView;->access$3800(Landroid/widget/TextView;)Z

    move-result v16

    if-eqz v16, :cond_0

    .line 12742
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->getTextForMultiSelection()Ljava/lang/CharSequence;

    move-result-object v15

    .line 12743
    .local v15, "text":Ljava/lang/CharSequence;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_0

    .line 12745
    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_0

    .line 12749
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Landroid/widget/TextView;->access$4000(Landroid/widget/TextView;)V

    .line 12750
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->isTextSelectable()Z

    move-result v16

    if-nez v16, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->mTextView:Landroid/widget/TextView;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    instance-of v0, v0, Landroid/widget/EditText;

    move/from16 v16, v0

    if-eqz v16, :cond_13

    :cond_c
    const/16 v16, 0x1

    :goto_1
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView$StylusEventListener;->mIsSelectableTextView:Z

    .line 12752
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->mTextView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    invoke-static/range {v16 .. v17}, Landroid/widget/TextView;->access$4100(Landroid/widget/TextView;Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v13

    .line 12753
    .local v13, "startPos":Landroid/graphics/Point;
    iget v0, v13, Landroid/graphics/Point;->x:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    sub-float v16, v11, v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView$StylusEventListener;->mStartX:F

    .line 12754
    iget v0, v13, Landroid/graphics/Point;->y:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    sub-float v16, v12, v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView$StylusEventListener;->mStartY:F

    .line 12755
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView$StylusEventListener;->mMaxX:F

    .line 12757
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$StylusEventListener;->mStartX:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$StylusEventListener;->mStartY:F

    move/from16 v18, v0

    invoke-virtual/range {v16 .. v18}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    .line 12758
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    move/from16 v16, v0

    if-ltz v16, :cond_10

    .line 12759
    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView$StylusEventListener;->mPressed:Z

    .line 12760
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput-boolean v0, v1, Landroid/widget/TextView;->mIsTouchDown:Z

    .line 12761
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Landroid/widget/TextView;->access$4200(Landroid/widget/TextView;)Z

    move-result v16

    if-eqz v16, :cond_f

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView$StylusEventListener;->mIsSelectableTextView:Z

    move/from16 v16, v0

    if-nez v16, :cond_f

    .line 12762
    const/16 v16, 0x1

    invoke-static/range {v16 .. v16}, Landroid/text/MultiSelection;->setIsMultiSelectingText(Z)V

    .line 12764
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->selectRange:[I

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->getVisibleTextRange([I)Z

    move-result v7

    .line 12765
    .local v7, "flag":Z
    if-nez v7, :cond_d

    .line 12766
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->selectRange:[I

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const/16 v18, 0x0

    aput v18, v16, v17

    .line 12767
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->selectRange:[I

    move-object/from16 v16, v0

    const/16 v17, 0x1

    invoke-interface {v15}, Ljava/lang/CharSequence;->length()I

    move-result v18

    aput v18, v16, v17

    .line 12769
    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->selectRange:[I

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget v17, v17, v18

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_14

    .line 12770
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->selectRange:[I

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aget v16, v16, v17

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    .line 12775
    :cond_e
    :goto_2
    const-string v16, "TextView"

    const-string v17, "Pen down with side button! : start text selection"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12777
    .end local v7    # "flag":Z
    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    move/from16 v16, v0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView$StylusEventListener;->oldEndPos:I

    .line 12779
    :cond_10
    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Landroid/text/MultiSelection;->setNeedToScroll(Z)V

    goto/16 :goto_0

    .line 12730
    .end local v13    # "startPos":Landroid/graphics/Point;
    .end local v15    # "text":Ljava/lang/CharSequence;
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v16, v0

    float-to-int v0, v11

    move/from16 v17, v0

    float-to-int v0, v12

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/widget/TextView;->access$2600(Landroid/widget/TextView;)F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    invoke-static/range {v16 .. v19}, Landroid/widget/TextView;->access$3900(Landroid/widget/TextView;III)Z

    move-result v16

    if-nez v16, :cond_b

    goto/16 :goto_0

    .line 12736
    :cond_12
    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Landroid/widget/TextView;->access$3002(Z)Z

    .line 12737
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView$StylusEventListener;->mPressed:Z

    move/from16 v16, v0

    if-eqz v16, :cond_0

    invoke-static {}, Landroid/widget/TextView;->access$3100()Landroid/widget/TextView;

    move-result-object v16

    if-nez v16, :cond_b

    goto/16 :goto_0

    .line 12750
    .restart local v15    # "text":Ljava/lang/CharSequence;
    :cond_13
    const/16 v16, 0x0

    goto/16 :goto_1

    .line 12772
    .restart local v7    # "flag":Z
    .restart local v13    # "startPos":Landroid/graphics/Point;
    :cond_14
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->selectRange:[I

    move-object/from16 v17, v0

    const/16 v18, 0x1

    aget v17, v17, v18

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_e

    .line 12773
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->selectRange:[I

    move-object/from16 v16, v0

    const/16 v17, 0x1

    aget v16, v16, v17

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    goto :goto_2

    .line 12785
    .end local v7    # "flag":Z
    .end local v13    # "startPos":Landroid/graphics/Point;
    :sswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v16

    and-int/lit8 v16, v16, 0x2

    if-eqz v16, :cond_1b

    .line 12786
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Landroid/widget/TextView;->access$4300(Landroid/widget/TextView;)Z

    move-result v16

    if-eqz v16, :cond_0

    .line 12787
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->mTextView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    invoke-static/range {v16 .. v17}, Landroid/widget/TextView;->access$4100(Landroid/widget/TextView;Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v13

    .line 12788
    .restart local v13    # "startPos":Landroid/graphics/Point;
    iget v0, v13, Landroid/graphics/Point;->x:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    sub-float v3, v11, v16

    .line 12789
    .local v3, "endX":F
    iget v0, v13, Landroid/graphics/Point;->y:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    sub-float v6, v12, v16

    .line 12791
    .local v6, "endY":F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v16, v0

    float-to-int v0, v11

    move/from16 v17, v0

    float-to-int v0, v12

    move/from16 v18, v0

    const/16 v19, 0x0

    invoke-static/range {v16 .. v19}, Landroid/widget/TextView;->access$3700(Landroid/widget/TextView;III)Z

    move-result v16

    invoke-static/range {v16 .. v16}, Landroid/text/MultiSelection;->setNeedToScroll(Z)V

    .line 12793
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$StylusEventListener;->mMaxX:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$StylusEventListener;->mStartX:F

    move/from16 v17, v0

    sub-float v17, v17, v3

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(F)F

    move-result v17

    cmpg-float v16, v16, v17

    if-gez v16, :cond_15

    .line 12794
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$StylusEventListener;->mStartX:F

    move/from16 v16, v0

    sub-float v16, v16, v3

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(F)F

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView$StylusEventListener;->mMaxX:F

    .line 12797
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v6}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    .line 12798
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView$StylusEventListener;->mIsSelectableTextView:Z

    move/from16 v16, v0

    if-nez v16, :cond_16

    .line 12799
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->selectRange:[I

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget v17, v17, v18

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_17

    .line 12800
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->selectRange:[I

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aget v16, v16, v17

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    .line 12807
    :cond_16
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_18

    .line 12808
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView$StylusEventListener;->mIsSelectableTextView:Z

    move/from16 v16, v0

    if-nez v16, :cond_0

    .line 12809
    check-cast v15, Landroid/text/Spannable;

    .end local v15    # "text":Ljava/lang/CharSequence;
    invoke-static {v15}, Landroid/text/MultiSelection;->removeCurSelection(Landroid/text/Spannable;)V

    goto/16 :goto_0

    .line 12802
    .restart local v15    # "text":Ljava/lang/CharSequence;
    :cond_17
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->selectRange:[I

    move-object/from16 v17, v0

    const/16 v18, 0x1

    aget v17, v17, v18

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_16

    .line 12803
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->selectRange:[I

    move-object/from16 v16, v0

    const/16 v17, 0x1

    aget v16, v16, v17

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    goto :goto_3

    .line 12814
    :cond_18
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$StylusEventListener;->oldEndPos:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    move/from16 v16, v0

    if-ltz v16, :cond_0

    .line 12815
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    move/from16 v16, v0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView$StylusEventListener;->oldEndPos:I

    .line 12816
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    invoke-static/range {v16 .. v17}, Landroid/widget/TextView;->access$4402(Landroid/widget/TextView;Z)Z

    .line 12817
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->playPenSelectionVibrator()Z

    .line 12818
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView$StylusEventListener;->mIsSelectableTextView:Z

    move/from16 v16, v0

    if-nez v16, :cond_19

    .line 12819
    check-cast v15, Landroid/text/Spannable;

    .end local v15    # "text":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    move/from16 v17, v0

    invoke-static/range {v15 .. v17}, Landroid/text/MultiSelection;->setSelection(Landroid/text/Spannable;II)V

    .line 12820
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    invoke-static/range {v16 .. v17}, Landroid/widget/TextView;->access$4502(Landroid/widget/TextView;Z)Z

    goto/16 :goto_0

    .line 12822
    .restart local v15    # "text":Ljava/lang/CharSequence;
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->mTextView:Landroid/widget/TextView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->isFocused()Z

    move-result v16

    if-nez v16, :cond_1a

    .line 12823
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->mTextView:Landroid/widget/TextView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->requestFocus()Z

    .line 12825
    :cond_1a
    check-cast v15, Landroid/text/Spannable;

    .end local v15    # "text":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    move/from16 v17, v0

    invoke-static/range {v15 .. v17}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    goto/16 :goto_0

    .line 12838
    .end local v3    # "endX":F
    .end local v6    # "endY":F
    .end local v13    # "startPos":Landroid/graphics/Point;
    .restart local v15    # "text":Ljava/lang/CharSequence;
    :cond_1b
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->mTextView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    invoke-static/range {v16 .. v17}, Landroid/widget/TextView;->access$4100(Landroid/widget/TextView;Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v13

    .line 12839
    .restart local v13    # "startPos":Landroid/graphics/Point;
    iget v0, v13, Landroid/graphics/Point;->x:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    sub-float v3, v11, v16

    .line 12840
    .restart local v3    # "endX":F
    iget v0, v13, Landroid/graphics/Point;->y:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    sub-float v6, v12, v16

    .line 12842
    .restart local v6    # "endY":F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$StylusEventListener;->mMaxX:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$StylusEventListener;->mStartX:F

    move/from16 v17, v0

    sub-float v17, v17, v3

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(F)F

    move-result v17

    cmpg-float v16, v16, v17

    if-gez v16, :cond_1c

    .line 12843
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$StylusEventListener;->mStartX:F

    move/from16 v16, v0

    sub-float v16, v16, v3

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(F)F

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView$StylusEventListener;->mMaxX:F

    .line 12845
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v6}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    .line 12846
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView$StylusEventListener;->mIsSelectableTextView:Z

    move/from16 v16, v0

    if-nez v16, :cond_1d

    .line 12847
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->selectRange:[I

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget v17, v17, v18

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_20

    .line 12848
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->selectRange:[I

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aget v16, v16, v17

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    .line 12855
    :cond_1d
    :goto_4
    const/4 v10, 0x0

    .line 12856
    .local v10, "isSameLine":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Landroid/widget/TextView;->access$1000(Landroid/widget/TextView;)Landroid/text/Layout;

    move-result-object v16

    if-eqz v16, :cond_1e

    .line 12857
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$StylusEventListener;->mStartY:F

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->getLineAtCoordinate(F)I

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->getLineAtCoordinate(F)I

    move-result v17

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_21

    const/4 v10, 0x1

    .line 12859
    :cond_1e
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView$StylusEventListener;->mIsSelectableTextView:Z

    move/from16 v16, v0

    if-nez v16, :cond_1f

    if-eqz v10, :cond_1f

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$StylusEventListener;->mMaxX:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/widget/TextView;->access$2600(Landroid/widget/TextView;)F

    move-result v17

    cmpg-float v16, v16, v17

    if-gez v16, :cond_1f

    .line 12860
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    move/from16 v18, v0

    invoke-static/range {v16 .. v18}, Landroid/widget/TextView;->access$4600(Landroid/widget/TextView;II)Z

    move-object/from16 v16, v15

    .line 12861
    check-cast v16, Landroid/text/Spannable;

    invoke-static/range {v16 .. v16}, Landroid/text/MultiSelection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    move-object/from16 v16, v15

    .line 12862
    check-cast v16, Landroid/text/Spannable;

    invoke-static/range {v16 .. v16}, Landroid/text/MultiSelection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    .line 12864
    :cond_1f
    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Landroid/text/MultiSelection;->setNeedToScroll(Z)V

    .line 12865
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_24

    .line 12866
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView$StylusEventListener;->mPressed:Z

    .line 12867
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView$StylusEventListener;->mIsSelectableTextView:Z

    move/from16 v16, v0

    if-nez v16, :cond_23

    .line 12868
    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Landroid/text/MultiSelection;->setIsMultiSelectingText(Z)V

    move-object/from16 v16, v15

    .line 12869
    check-cast v16, Landroid/text/Spannable;

    invoke-static/range {v16 .. v16}, Landroid/text/MultiSelection;->removeCurSelection(Landroid/text/Spannable;)V

    .line 12870
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v17, v0

    check-cast v15, Landroid/text/Spannable;

    .end local v15    # "text":Ljava/lang/CharSequence;
    invoke-static {v15}, Landroid/text/MultiSelection;->getMultiSelectionCount(Landroid/text/Spannable;)I

    move-result v16

    if-lez v16, :cond_22

    const/16 v16, 0x1

    :goto_6
    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-static {v0, v1}, Landroid/widget/TextView;->access$4502(Landroid/widget/TextView;Z)Z

    goto/16 :goto_0

    .line 12850
    .end local v10    # "isSameLine":Z
    .restart local v15    # "text":Ljava/lang/CharSequence;
    :cond_20
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->selectRange:[I

    move-object/from16 v17, v0

    const/16 v18, 0x1

    aget v17, v17, v18

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_1d

    .line 12851
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->selectRange:[I

    move-object/from16 v16, v0

    const/16 v17, 0x1

    aget v16, v16, v17

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    goto/16 :goto_4

    .line 12857
    .restart local v10    # "isSameLine":Z
    :cond_21
    const/4 v10, 0x0

    goto/16 :goto_5

    .line 12870
    .end local v15    # "text":Ljava/lang/CharSequence;
    :cond_22
    const/16 v16, 0x0

    goto :goto_6

    .line 12872
    .restart local v15    # "text":Ljava/lang/CharSequence;
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-static/range {v16 .. v17}, Landroid/widget/TextView;->access$4502(Landroid/widget/TextView;Z)Z

    goto/16 :goto_0

    .line 12877
    :cond_24
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_25

    .line 12878
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    .line 12879
    .local v14, "temp":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    move/from16 v16, v0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    .line 12880
    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    .line 12882
    .end local v14    # "temp":I
    :cond_25
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView$StylusEventListener;->mIsSelectableTextView:Z

    move/from16 v16, v0

    if-nez v16, :cond_27

    move-object/from16 v16, v15

    .line 12883
    check-cast v16, Landroid/text/Spannable;

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    move/from16 v18, v0

    invoke-static/range {v16 .. v18}, Landroid/text/MultiSelection;->setSelection(Landroid/text/Spannable;II)V

    .line 12884
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Landroid/widget/TextView;->access$4700(Landroid/widget/TextView;)V

    .line 12888
    :try_start_0
    new-instance v8, Lcom/samsung/android/hermes/HermesServiceManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v8, v0}, Lcom/samsung/android/hermes/HermesServiceManager;-><init>(Landroid/content/Context;)V

    .line 12889
    .local v8, "hermesManager":Lcom/samsung/android/hermes/HermesServiceManager;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    move/from16 v17, v0

    invoke-interface/range {v15 .. v17}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Lcom/samsung/android/hermes/HermesServiceManager;->training(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12893
    .end local v8    # "hermesManager":Lcom/samsung/android/hermes/HermesServiceManager;
    :goto_7
    const-string v16, "TextView"

    const-string v17, "Pen up with side button! : end text selection"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12896
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->registerForTouchMonitorListener()V

    .line 12898
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    invoke-static/range {v16 .. v17}, Landroid/widget/TextView;->access$4502(Landroid/widget/TextView;Z)Z

    .line 12899
    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Landroid/text/MultiSelection;->setIsMultiSelectingText(Z)V

    .line 12916
    .end local v15    # "text":Ljava/lang/CharSequence;
    :cond_26
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput-boolean v0, v1, Landroid/widget/TextView;->mIsTouchDown:Z

    .line 12917
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView$StylusEventListener;->mPressed:Z

    goto/16 :goto_0

    .line 12890
    .restart local v15    # "text":Ljava/lang/CharSequence;
    :catch_0
    move-exception v9

    .line 12891
    .local v9, "ie":Ljava/lang/IllegalStateException;
    const-string v16, "TextView"

    const-string v17, "** skip HERMES Service by IllegalStateException **"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 12900
    .end local v9    # "ie":Ljava/lang/IllegalStateException;
    :cond_27
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    move/from16 v16, v0

    if-ltz v16, :cond_26

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    move/from16 v16, v0

    if-ltz v16, :cond_26

    .line 12901
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Landroid/widget/TextView;->access$4800(Landroid/widget/TextView;)Z

    move-result v16

    if-nez v16, :cond_28

    if-eqz v10, :cond_26

    .line 12902
    :cond_28
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v16, v0

    const/16 v17, 0x16

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->performHapticFeedback(I)Z

    .line 12903
    check-cast v15, Landroid/text/Spannable;

    .end local v15    # "text":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    move/from16 v17, v0

    invoke-static/range {v15 .. v17}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 12904
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Landroid/widget/TextView;->access$3500(Landroid/widget/TextView;)Landroid/widget/Editor;

    move-result-object v16

    if-eqz v16, :cond_29

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Landroid/widget/TextView;->access$3500(Landroid/widget/TextView;)Landroid/widget/Editor;

    move-result-object v16

    move-object/from16 v0, v16

    iget-boolean v0, v0, Landroid/widget/Editor;->mCreatedWithASelection:Z

    move/from16 v16, v0

    if-eqz v16, :cond_29

    .line 12905
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Landroid/widget/TextView;->access$3500(Landroid/widget/TextView;)Landroid/widget/Editor;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/widget/Editor;->stopSelectionActionMode()V

    .line 12907
    :cond_29
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Landroid/widget/TextView;->access$3500(Landroid/widget/TextView;)Landroid/widget/Editor;

    move-result-object v16

    if-eqz v16, :cond_26

    .line 12908
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Landroid/widget/TextView;->access$3500(Landroid/widget/TextView;)Landroid/widget/Editor;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/widget/Editor;->startSelectionActionMode()Z

    move-result v16

    if-eqz v16, :cond_2a

    .line 12909
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Landroid/widget/TextView;->access$3500(Landroid/widget/TextView;)Landroid/widget/Editor;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/widget/Editor;->updateSelectionHandler()V

    .line 12911
    :cond_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Landroid/widget/TextView;->access$3500(Landroid/widget/TextView;)Landroid/widget/Editor;

    move-result-object v16

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput-boolean v0, v1, Landroid/widget/Editor;->mCreatedWithASelection:Z

    goto/16 :goto_8

    .line 12923
    .end local v3    # "endX":F
    .end local v6    # "endY":F
    .end local v10    # "isSameLine":Z
    .end local v13    # "startPos":Landroid/graphics/Point;
    .restart local v15    # "text":Ljava/lang/CharSequence;
    :sswitch_3
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView$StylusEventListener;->mPressed:Z

    .line 12925
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView$StylusEventListener;->mIsSelectableTextView:Z

    move/from16 v16, v0

    if-nez v16, :cond_2c

    .line 12926
    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Landroid/text/MultiSelection;->setIsMultiSelectingText(Z)V

    move-object/from16 v16, v15

    .line 12927
    check-cast v16, Landroid/text/Spannable;

    invoke-static/range {v16 .. v16}, Landroid/text/MultiSelection;->removeCurSelection(Landroid/text/Spannable;)V

    .line 12928
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v17, v0

    check-cast v15, Landroid/text/Spannable;

    .end local v15    # "text":Ljava/lang/CharSequence;
    invoke-static {v15}, Landroid/text/MultiSelection;->getMultiSelectionCount(Landroid/text/Spannable;)I

    move-result v16

    if-lez v16, :cond_2b

    const/16 v16, 0x1

    :goto_9
    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-static {v0, v1}, Landroid/widget/TextView;->access$4502(Landroid/widget/TextView;Z)Z

    goto/16 :goto_0

    :cond_2b
    const/16 v16, 0x0

    goto :goto_9

    .line 12930
    .restart local v15    # "text":Ljava/lang/CharSequence;
    :cond_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-static/range {v16 .. v17}, Landroid/widget/TextView;->access$4502(Landroid/widget/TextView;Z)Z

    .line 12931
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    move/from16 v16, v0

    if-ltz v16, :cond_0

    .line 12932
    check-cast v15, Landroid/text/Spannable;

    .end local v15    # "text":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    move/from16 v16, v0

    invoke-static/range {v15 .. v16}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    goto/16 :goto_0

    .line 12745
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_2
        0x2 -> :sswitch_1
        0x3 -> :sswitch_3
        0xd3 -> :sswitch_0
        0xd4 -> :sswitch_2
        0xd5 -> :sswitch_1
        0xd6 -> :sswitch_3
    .end sparse-switch
.end method
