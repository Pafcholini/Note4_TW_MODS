.class Landroid/media/WFDUibcManager$EventDispatcher;
.super Landroid/media/WFDUibcManager$EventQueue;
.source "WFDUibcManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/WFDUibcManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EventDispatcher"
.end annotation


# instance fields
.field private final CAMERA_0:I

.field private final CAMERA_180:I

.field private final CAMERA_270:I

.field private final CAMERA_90:I

.field private Me_X:F

.field private Me_Y:F

.field private Mode:Landroid/media/WFDUibcManager$UIBC_Mode;

.field private Ratio_LCD:F

.field private Ratio_WFD:F

.field private aPointerProp:[Landroid/view/MotionEvent$PointerProperties;

.field private aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

.field private activityManager:Landroid/app/ActivityManager;

.field private bCap:Z

.field private bNum:Z

.field private bScroll:Z

.field private bSim:Z

.field private configuration:Landroid/content/res/Configuration;

.field private displayMetrics:Landroid/util/DisplayMetrics;

.field private ev:Landroid/view/InputEvent;

.field private foregroundCamera:Z

.field private kH:F

.field private kW:F

.field private kX:F

.field private kY:F

.field private ke:Landroid/view/KeyEvent;

.field private last_Ke:Landroid/view/KeyEvent;

.field private mBroadTime:J

.field private mFlag:I

.field private mKeyDownTime:J

.field private mKeyEvnt_Arr:[Landroid/media/WFDUibcManager$Keyevnt_arrC;

.field private mKeyUpTime:J

.field private mMetaFlag:I

.field private mRepeatCnt:I

.field private mTouchDownTime:J

.field private me:Landroid/view/MotionEvent;

.field public volatile running:Z

.field final synthetic this$0:Landroid/media/WFDUibcManager;

.field private wm:Landroid/view/WindowManager;


# direct methods
.method constructor <init>(Landroid/media/WFDUibcManager;)V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 242
    iput-object p1, p0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    invoke-direct {p0, p1, v1}, Landroid/media/WFDUibcManager$EventQueue;-><init>(Landroid/media/WFDUibcManager;Landroid/media/WFDUibcManager$1;)V

    .line 243
    iput-boolean v3, p0, Landroid/media/WFDUibcManager$EventDispatcher;->running:Z

    .line 245
    iput-object v1, p0, Landroid/media/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    .line 246
    iput-object v1, p0, Landroid/media/WFDUibcManager$EventDispatcher;->wm:Landroid/view/WindowManager;

    .line 256
    iput-object v1, p0, Landroid/media/WFDUibcManager$EventDispatcher;->me:Landroid/view/MotionEvent;

    .line 257
    iput-object v1, p0, Landroid/media/WFDUibcManager$EventDispatcher;->ke:Landroid/view/KeyEvent;

    .line 259
    iput-boolean v2, p0, Landroid/media/WFDUibcManager$EventDispatcher;->foregroundCamera:Z

    .line 260
    sget-object v0, Landroid/media/WFDUibcManager$UIBC_Mode;->NORMAL:Landroid/media/WFDUibcManager$UIBC_Mode;

    iput-object v0, p0, Landroid/media/WFDUibcManager$EventDispatcher;->Mode:Landroid/media/WFDUibcManager$UIBC_Mode;

    .line 261
    iput-object v1, p0, Landroid/media/WFDUibcManager$EventDispatcher;->ev:Landroid/view/InputEvent;

    .line 262
    iput-object v1, p0, Landroid/media/WFDUibcManager$EventDispatcher;->aPointerProp:[Landroid/view/MotionEvent$PointerProperties;

    .line 263
    iput-object v1, p0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 264
    iput-object v1, p0, Landroid/media/WFDUibcManager$EventDispatcher;->mKeyEvnt_Arr:[Landroid/media/WFDUibcManager$Keyevnt_arrC;

    .line 265
    iput-object v1, p0, Landroid/media/WFDUibcManager$EventDispatcher;->configuration:Landroid/content/res/Configuration;

    .line 267
    iput v2, p0, Landroid/media/WFDUibcManager$EventDispatcher;->CAMERA_0:I

    .line 268
    iput v3, p0, Landroid/media/WFDUibcManager$EventDispatcher;->CAMERA_90:I

    .line 269
    const/4 v0, 0x2

    iput v0, p0, Landroid/media/WFDUibcManager$EventDispatcher;->CAMERA_180:I

    .line 270
    const/4 v0, 0x3

    iput v0, p0, Landroid/media/WFDUibcManager$EventDispatcher;->CAMERA_270:I

    .line 273
    iput v2, p0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    .line 274
    iput-boolean v2, p0, Landroid/media/WFDUibcManager$EventDispatcher;->bCap:Z

    .line 275
    iput-boolean v2, p0, Landroid/media/WFDUibcManager$EventDispatcher;->bSim:Z

    .line 276
    iput-boolean v2, p0, Landroid/media/WFDUibcManager$EventDispatcher;->bNum:Z

    .line 277
    iput-boolean v2, p0, Landroid/media/WFDUibcManager$EventDispatcher;->bScroll:Z

    .line 278
    iput-wide v4, p0, Landroid/media/WFDUibcManager$EventDispatcher;->mBroadTime:J

    .line 279
    iput-wide v4, p0, Landroid/media/WFDUibcManager$EventDispatcher;->mTouchDownTime:J

    .line 280
    iput-wide v4, p0, Landroid/media/WFDUibcManager$EventDispatcher;->mKeyDownTime:J

    .line 281
    iput-wide v4, p0, Landroid/media/WFDUibcManager$EventDispatcher;->mKeyUpTime:J

    .line 282
    const/4 v0, -0x1

    iput v0, p0, Landroid/media/WFDUibcManager$EventDispatcher;->mRepeatCnt:I

    .line 283
    iput v2, p0, Landroid/media/WFDUibcManager$EventDispatcher;->mFlag:I

    .line 284
    iput-object v1, p0, Landroid/media/WFDUibcManager$EventDispatcher;->last_Ke:Landroid/view/KeyEvent;

    return-void
.end method

.method private handleCameraTouch(I)V
    .locals 14
    .param p1, "i"    # I

    .prologue
    const/16 v13, 0x2d

    const/4 v12, 0x0

    const/high16 v11, 0x40000000    # 2.0f

    const v9, 0x38d1b717    # 1.0E-4f

    const/4 v10, 0x1

    .line 300
    const/4 v0, -0x1

    .line 301
    .local v0, "mCameraOrientation":I
    iget-object v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->wm:Landroid/view/WindowManager;

    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Display;->getRotation()I

    move-result v6

    .line 305
    .local v6, "rotation":I
    iget-object v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mOrientation:I
    invoke-static {v7}, Landroid/media/WFDUibcManager;->access$100(Landroid/media/WFDUibcManager;)I

    move-result v7

    if-lez v7, :cond_0

    iget-object v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mOrientation:I
    invoke-static {v7}, Landroid/media/WFDUibcManager;->access$100(Landroid/media/WFDUibcManager;)I

    move-result v7

    if-lt v7, v13, :cond_1

    :cond_0
    iget-object v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mOrientation:I
    invoke-static {v7}, Landroid/media/WFDUibcManager;->access$100(Landroid/media/WFDUibcManager;)I

    move-result v7

    const/16 v8, 0x13b

    if-le v7, v8, :cond_4

    .line 307
    :cond_1
    const/4 v0, 0x0

    .line 321
    :goto_0
    add-int/2addr v0, v6

    .line 322
    rem-int/lit8 v0, v0, 0x4

    .line 323
    if-eqz v0, :cond_2

    const/4 v7, 0x2

    if-ne v0, v7, :cond_a

    .line 325
    :cond_2
    iget v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->Ratio_WFD:F

    iget v8, p0, Landroid/media/WFDUibcManager$EventDispatcher;->Ratio_LCD:F

    cmpg-float v7, v7, v8

    if-gez v7, :cond_7

    .line 327
    iget v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->kW:F

    iget-object v8, p0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mNegRs_Y:F
    invoke-static {v8}, Landroid/media/WFDUibcManager;->access$300(Landroid/media/WFDUibcManager;)F

    move-result v8

    mul-float/2addr v7, v8

    iget v8, p0, Landroid/media/WFDUibcManager$EventDispatcher;->kH:F

    div-float v2, v7, v8

    .line 328
    .local v2, "newWidth":F
    iget-object v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mNegRs_X:F
    invoke-static {v7}, Landroid/media/WFDUibcManager;->access$400(Landroid/media/WFDUibcManager;)F

    move-result v7

    sub-float/2addr v7, v2

    div-float v5, v7, v11

    .line 329
    .local v5, "pad":F
    iget-object v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mNegRs_X:F
    invoke-static {v7}, Landroid/media/WFDUibcManager;->access$400(Landroid/media/WFDUibcManager;)F

    move-result v7

    mul-float/2addr v7, v9

    iget-object v8, p0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v8, v8, p1

    iget v8, v8, Landroid/view/MotionEvent$PointerCoords;->x:F

    mul-float v3, v7, v8

    .line 332
    .local v3, "normX":F
    iget-object v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v7, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v7, v7

    sub-float v8, v3, v5

    div-float/2addr v8, v2

    mul-float/2addr v7, v8

    iput v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_X:F

    .line 333
    iget v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->kY:F

    iget-object v8, p0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v8, v8, p1

    iget v8, v8, Landroid/view/MotionEvent$PointerCoords;->y:F

    mul-float/2addr v7, v8

    iput v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_Y:F

    .line 351
    .end local v2    # "newWidth":F
    .end local v3    # "normX":F
    .end local v5    # "pad":F
    :goto_1
    if-nez v0, :cond_9

    .line 352
    iget-object v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v7, v7, p1

    iget v8, p0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_X:F

    invoke-virtual {v7, v12, v8}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 353
    iget-object v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v7, v7, p1

    iget v8, p0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_Y:F

    invoke-virtual {v7, v10, v8}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 388
    :cond_3
    :goto_2
    return-void

    .line 309
    :cond_4
    iget-object v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mOrientation:I
    invoke-static {v7}, Landroid/media/WFDUibcManager;->access$100(Landroid/media/WFDUibcManager;)I

    move-result v7

    if-lt v7, v13, :cond_5

    iget-object v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mOrientation:I
    invoke-static {v7}, Landroid/media/WFDUibcManager;->access$100(Landroid/media/WFDUibcManager;)I

    move-result v7

    const/16 v8, 0x73

    if-ge v7, v8, :cond_5

    .line 311
    const/4 v0, 0x1

    goto :goto_0

    .line 313
    :cond_5
    iget-object v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mOrientation:I
    invoke-static {v7}, Landroid/media/WFDUibcManager;->access$100(Landroid/media/WFDUibcManager;)I

    move-result v7

    const/16 v8, 0x73

    if-lt v7, v8, :cond_6

    iget-object v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mOrientation:I
    invoke-static {v7}, Landroid/media/WFDUibcManager;->access$100(Landroid/media/WFDUibcManager;)I

    move-result v7

    const/16 v8, 0xe1

    if-ge v7, v8, :cond_6

    .line 315
    const/4 v0, 0x2

    goto/16 :goto_0

    .line 319
    :cond_6
    const/4 v0, 0x3

    goto/16 :goto_0

    .line 336
    :cond_7
    iget v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->Ratio_WFD:F

    iget v8, p0, Landroid/media/WFDUibcManager$EventDispatcher;->Ratio_LCD:F

    cmpl-float v7, v7, v8

    if-lez v7, :cond_8

    .line 338
    iget v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->kH:F

    iget-object v8, p0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mNegRs_X:F
    invoke-static {v8}, Landroid/media/WFDUibcManager;->access$400(Landroid/media/WFDUibcManager;)F

    move-result v8

    mul-float/2addr v7, v8

    iget v8, p0, Landroid/media/WFDUibcManager$EventDispatcher;->kW:F

    div-float v1, v7, v8

    .line 339
    .local v1, "newHeight":F
    iget-object v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mNegRs_Y:F
    invoke-static {v7}, Landroid/media/WFDUibcManager;->access$300(Landroid/media/WFDUibcManager;)F

    move-result v7

    sub-float/2addr v7, v1

    div-float v5, v7, v11

    .line 340
    .restart local v5    # "pad":F
    iget-object v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mNegRs_Y:F
    invoke-static {v7}, Landroid/media/WFDUibcManager;->access$300(Landroid/media/WFDUibcManager;)F

    move-result v7

    mul-float/2addr v7, v9

    iget-object v8, p0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v8, v8, p1

    iget v8, v8, Landroid/view/MotionEvent$PointerCoords;->y:F

    mul-float v4, v7, v8

    .line 342
    .local v4, "normY":F
    iget v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->kX:F

    iget-object v8, p0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v8, v8, p1

    iget v8, v8, Landroid/view/MotionEvent$PointerCoords;->x:F

    mul-float/2addr v7, v8

    iput v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_X:F

    .line 343
    iget-object v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v7, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v7, v7

    sub-float v8, v4, v5

    div-float/2addr v8, v1

    mul-float/2addr v7, v8

    iput v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_Y:F

    goto/16 :goto_1

    .line 348
    .end local v1    # "newHeight":F
    .end local v4    # "normY":F
    .end local v5    # "pad":F
    :cond_8
    iget v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->kX:F

    iget-object v8, p0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v8, v8, p1

    iget v8, v8, Landroid/view/MotionEvent$PointerCoords;->x:F

    mul-float/2addr v7, v8

    iput v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_X:F

    .line 349
    iget v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->kY:F

    iget-object v8, p0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v8, v8, p1

    iget v8, v8, Landroid/view/MotionEvent$PointerCoords;->y:F

    mul-float/2addr v7, v8

    iput v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_Y:F

    goto/16 :goto_1

    .line 357
    :cond_9
    iget-object v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v7, v7, p1

    iget-object v8, p0, Landroid/media/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v8, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v8, v8

    iget v9, p0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_X:F

    sub-float/2addr v8, v9

    invoke-virtual {v7, v12, v8}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 358
    iget-object v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v7, v7, p1

    iget-object v8, p0, Landroid/media/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v8, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v8, v8

    iget v9, p0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_Y:F

    sub-float/2addr v8, v9

    invoke-virtual {v7, v10, v8}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 360
    iget-object v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v7, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v7, v7

    iget v8, p0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_X:F

    sub-float/2addr v7, v8

    iput v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_X:F

    .line 361
    iget-object v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v7, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v7, v7

    iget v8, p0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_Y:F

    sub-float/2addr v7, v8

    iput v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_Y:F

    goto/16 :goto_2

    .line 364
    :cond_a
    if-eq v0, v10, :cond_b

    const/4 v7, 0x3

    if-ne v0, v7, :cond_3

    .line 367
    :cond_b
    iget v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->kH:F

    iget-object v8, p0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mNegRs_Y:F
    invoke-static {v8}, Landroid/media/WFDUibcManager;->access$300(Landroid/media/WFDUibcManager;)F

    move-result v8

    mul-float/2addr v7, v8

    iget v8, p0, Landroid/media/WFDUibcManager$EventDispatcher;->kW:F

    div-float v2, v7, v8

    .line 368
    .restart local v2    # "newWidth":F
    iget-object v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mNegRs_X:F
    invoke-static {v7}, Landroid/media/WFDUibcManager;->access$400(Landroid/media/WFDUibcManager;)F

    move-result v7

    sub-float/2addr v7, v2

    div-float v5, v7, v11

    .line 369
    .restart local v5    # "pad":F
    iget-object v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mNegRs_X:F
    invoke-static {v7}, Landroid/media/WFDUibcManager;->access$400(Landroid/media/WFDUibcManager;)F

    move-result v7

    mul-float/2addr v7, v9

    iget-object v8, p0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v8, v8, p1

    iget v8, v8, Landroid/view/MotionEvent$PointerCoords;->x:F

    mul-float v3, v7, v8

    .line 372
    .restart local v3    # "normX":F
    if-ne v0, v10, :cond_c

    .line 373
    iget-object v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v7, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v7, v7

    iget-object v8, p0, Landroid/media/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v8, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v8, v8

    sub-float v9, v3, v5

    div-float/2addr v9, v2

    mul-float/2addr v8, v9

    sub-float/2addr v7, v8

    iput v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_Y:F

    .line 374
    iget v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->kX:F

    iget-object v8, p0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v8, v8, p1

    iget v8, v8, Landroid/view/MotionEvent$PointerCoords;->y:F

    mul-float/2addr v7, v8

    iput v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_X:F

    .line 382
    :goto_3
    iget-object v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v7, v7, p1

    iget v8, p0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_X:F

    invoke-virtual {v7, v12, v8}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 383
    iget-object v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v7, v7, p1

    iget v8, p0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_Y:F

    invoke-virtual {v7, v10, v8}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    goto/16 :goto_2

    .line 378
    :cond_c
    iget-object v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v7, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v7, v7

    sub-float v8, v3, v5

    div-float/2addr v8, v2

    mul-float/2addr v7, v8

    iput v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_Y:F

    .line 379
    iget-object v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v7, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v7, v7

    iget v8, p0, Landroid/media/WFDUibcManager$EventDispatcher;->kX:F

    iget-object v9, p0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v9, v9, p1

    iget v9, v9, Landroid/view/MotionEvent$PointerCoords;->y:F

    mul-float/2addr v8, v9

    sub-float/2addr v7, v8

    iput v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_X:F

    goto :goto_3
.end method

.method private handleKeyEvent()V
    .locals 26

    .prologue
    .line 686
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/WFDUibcManager$EventDispatcher;->ev:Landroid/view/InputEvent;

    move-object/from16 v16, v0

    check-cast v16, Landroid/view/KeyEvent;

    .line 687
    .local v16, "NewKE":Landroid/view/KeyEvent;
    const/16 v20, -0x1

    .local v20, "fndKyIndex":I
    const/16 v19, -0x1

    .line 688
    .local v19, "empKyIndex":I
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mFlag:I

    .line 689
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mKeyDownTime:J

    .line 690
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mRepeatCnt:I

    .line 694
    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getDisplayId()I

    move-result v13

    .line 695
    .local v13, "displayId":I
    if-gez v13, :cond_0

    .line 697
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v18

    .line 698
    .local v18, "dm":Landroid/hardware/display/DisplayManagerGlobal;
    invoke-virtual/range {v18 .. v18}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayIds()[I

    move-result-object v17

    .local v17, "arr$":[I
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v23, v0

    .local v23, "len$":I
    const/16 v21, 0x0

    .local v21, "i$":I
    :goto_0
    move/from16 v0, v21

    move/from16 v1, v23

    if-ge v0, v1, :cond_0

    aget v22, v17, v21

    .line 699
    .local v22, "id":I
    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v2

    iget v2, v2, Landroid/view/DisplayInfo;->type:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 700
    move/from16 v13, v22

    .line 710
    .end local v17    # "arr$":[I
    .end local v18    # "dm":Landroid/hardware/display/DisplayManagerGlobal;
    .end local v21    # "i$":I
    .end local v22    # "id":I
    .end local v23    # "len$":I
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mCoupleShot:Z
    invoke-static {v2}, Landroid/media/WFDUibcManager;->access$600(Landroid/media/WFDUibcManager;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    .line 874
    :goto_1
    return-void

    .line 698
    .restart local v17    # "arr$":[I
    .restart local v18    # "dm":Landroid/hardware/display/DisplayManagerGlobal;
    .restart local v21    # "i$":I
    .restart local v22    # "id":I
    .restart local v23    # "len$":I
    :cond_1
    add-int/lit8 v21, v21, 0x1

    goto :goto_0

    .line 715
    .end local v17    # "arr$":[I
    .end local v18    # "dm":Landroid/hardware/display/DisplayManagerGlobal;
    .end local v21    # "i$":I
    .end local v22    # "id":I
    .end local v23    # "len$":I
    :cond_2
    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_18

    .line 718
    const/16 v25, 0x0

    .local v25, "rCnt":I
    :goto_2
    const/16 v2, 0xf

    move/from16 v0, v25

    if-ge v0, v2, :cond_5

    .line 720
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mKeyEvnt_Arr:[Landroid/media/WFDUibcManager$Keyevnt_arrC;

    aget-object v2, v2, v25

    # getter for: Landroid/media/WFDUibcManager$Keyevnt_arrC;->mKyCod:I
    invoke-static {v2}, Landroid/media/WFDUibcManager$Keyevnt_arrC;->access$700(Landroid/media/WFDUibcManager$Keyevnt_arrC;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    .line 721
    move/from16 v19, v25

    .line 722
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mKeyEvnt_Arr:[Landroid/media/WFDUibcManager$Keyevnt_arrC;

    aget-object v2, v2, v25

    # getter for: Landroid/media/WFDUibcManager$Keyevnt_arrC;->mKyCod:I
    invoke-static {v2}, Landroid/media/WFDUibcManager$Keyevnt_arrC;->access$700(Landroid/media/WFDUibcManager$Keyevnt_arrC;)I

    move-result v2

    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    if-ne v2, v3, :cond_4

    .line 723
    move/from16 v20, v25

    .line 718
    :cond_4
    add-int/lit8 v25, v25, 0x1

    goto :goto_2

    .line 727
    :cond_5
    if-gez v20, :cond_16

    .line 728
    if-ltz v19, :cond_6

    .line 729
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mKeyEvnt_Arr:[Landroid/media/WFDUibcManager$Keyevnt_arrC;

    aget-object v2, v2, v19

    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    # setter for: Landroid/media/WFDUibcManager$Keyevnt_arrC;->mKyCod:I
    invoke-static {v2, v3}, Landroid/media/WFDUibcManager$Keyevnt_arrC;->access$702(Landroid/media/WFDUibcManager$Keyevnt_arrC;I)I

    .line 730
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mKeyEvnt_Arr:[Landroid/media/WFDUibcManager$Keyevnt_arrC;

    aget-object v2, v2, v19

    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v4

    # setter for: Landroid/media/WFDUibcManager$Keyevnt_arrC;->mKyDwnTime:J
    invoke-static {v2, v4, v5}, Landroid/media/WFDUibcManager$Keyevnt_arrC;->access$802(Landroid/media/WFDUibcManager$Keyevnt_arrC;J)J

    .line 731
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mKeyEvnt_Arr:[Landroid/media/WFDUibcManager$Keyevnt_arrC;

    aget-object v2, v2, v19

    const/4 v3, 0x0

    # setter for: Landroid/media/WFDUibcManager$Keyevnt_arrC;->mKyFlag:I
    invoke-static {v2, v3}, Landroid/media/WFDUibcManager$Keyevnt_arrC;->access$902(Landroid/media/WFDUibcManager$Keyevnt_arrC;I)I

    .line 732
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mKeyEvnt_Arr:[Landroid/media/WFDUibcManager$Keyevnt_arrC;

    aget-object v2, v2, v19

    const/4 v3, 0x0

    # setter for: Landroid/media/WFDUibcManager$Keyevnt_arrC;->mRepCnt:I
    invoke-static {v2, v3}, Landroid/media/WFDUibcManager$Keyevnt_arrC;->access$1002(Landroid/media/WFDUibcManager$Keyevnt_arrC;I)I

    .line 734
    :cond_6
    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mKeyDownTime:J

    .line 735
    move-object/from16 v0, p0

    iget v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mFlag:I

    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getFlags()I

    move-result v3

    or-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mFlag:I

    .line 736
    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mRepeatCnt:I

    .line 748
    :goto_3
    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x3b

    if-eq v2, v3, :cond_7

    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x3c

    if-ne v2, v3, :cond_9

    .line 749
    :cond_7
    move-object/from16 v0, p0

    iget v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    or-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    .line 750
    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x3b

    if-ne v2, v3, :cond_8

    .line 751
    move-object/from16 v0, p0

    iget v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    or-int/lit8 v2, v2, 0x40

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    .line 752
    :cond_8
    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x3c

    if-ne v2, v3, :cond_9

    .line 753
    move-object/from16 v0, p0

    iget v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    or-int/lit16 v2, v2, 0x80

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    .line 755
    :cond_9
    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x39

    if-eq v2, v3, :cond_a

    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x3a

    if-ne v2, v3, :cond_c

    .line 756
    :cond_a
    move-object/from16 v0, p0

    iget v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    or-int/lit8 v2, v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    .line 757
    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x39

    if-ne v2, v3, :cond_b

    .line 758
    move-object/from16 v0, p0

    iget v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    or-int/lit8 v2, v2, 0x10

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    .line 759
    :cond_b
    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x3a

    if-ne v2, v3, :cond_c

    .line 760
    move-object/from16 v0, p0

    iget v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    or-int/lit8 v2, v2, 0x20

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    .line 762
    :cond_c
    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x71

    if-eq v2, v3, :cond_d

    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x72

    if-ne v2, v3, :cond_f

    .line 763
    :cond_d
    move-object/from16 v0, p0

    iget v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    or-int/lit16 v2, v2, 0x1000

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    .line 764
    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x71

    if-ne v2, v3, :cond_e

    .line 765
    move-object/from16 v0, p0

    iget v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    or-int/lit16 v2, v2, 0x2000

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    .line 766
    :cond_e
    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x72

    if-ne v2, v3, :cond_f

    .line 767
    move-object/from16 v0, p0

    iget v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    or-int/lit16 v2, v2, 0x4000

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    .line 769
    :cond_f
    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x77

    if-ne v2, v3, :cond_10

    .line 770
    move-object/from16 v0, p0

    iget v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    or-int/lit8 v2, v2, 0x8

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    .line 834
    .end local v25    # "rCnt":I
    :cond_10
    :goto_4
    move-object/from16 v0, p0

    iget-wide v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mKeyDownTime:J

    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v4

    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getAction()I

    move-result v6

    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v7

    move-object/from16 v0, p0

    iget v8, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mRepeatCnt:I

    move-object/from16 v0, p0

    iget v9, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v10

    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v11

    move-object/from16 v0, p0

    iget v12, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mFlag:I

    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getSource()I

    move-result v14

    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getCharacters()Ljava/lang/String;

    move-result-object v15

    invoke-static/range {v2 .. v15}, Landroid/view/KeyEvent;->obtain(JJIIIIIIIIILjava/lang/String;)Landroid/view/KeyEvent;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->ke:Landroid/view/KeyEvent;

    .line 838
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->ke:Landroid/view/KeyEvent;

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_11

    .line 839
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->ke:Landroid/view/KeyEvent;

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->last_Ke:Landroid/view/KeyEvent;

    .line 841
    :cond_11
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/WFDUibcManager$EventDispatcher;->ke:Landroid/view/KeyEvent;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 845
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->ke:Landroid/view/KeyEvent;

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_15

    .line 847
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->ke:Landroid/view/KeyEvent;

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->ke:Landroid/view/KeyEvent;

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_14

    .line 850
    :cond_12
    new-instance v24, Landroid/content/Intent;

    const-string v2, "com.sec.android.app.PRESENTATION_FOCUS_CHANGED"

    move-object/from16 v0, v24

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 851
    .local v24, "mintent":Landroid/content/Intent;
    const-string v2, "app_name"

    const-string v3, "finish"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 852
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->ke:Landroid/view/KeyEvent;

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_27

    .line 854
    const-string/jumbo v2, "launch_home"

    const/4 v3, 0x1

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 863
    :cond_13
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/media/WFDUibcManager;->access$500(Landroid/media/WFDUibcManager;)Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 865
    .end local v24    # "mintent":Landroid/content/Intent;
    :cond_14
    if-ltz v20, :cond_15

    .line 867
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mKeyEvnt_Arr:[Landroid/media/WFDUibcManager$Keyevnt_arrC;

    aget-object v2, v2, v20

    const/4 v3, -0x1

    # setter for: Landroid/media/WFDUibcManager$Keyevnt_arrC;->mKyCod:I
    invoke-static {v2, v3}, Landroid/media/WFDUibcManager$Keyevnt_arrC;->access$702(Landroid/media/WFDUibcManager$Keyevnt_arrC;I)I

    .line 868
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mKeyEvnt_Arr:[Landroid/media/WFDUibcManager$Keyevnt_arrC;

    aget-object v2, v2, v20

    const-wide/16 v4, -0x1

    # setter for: Landroid/media/WFDUibcManager$Keyevnt_arrC;->mKyDwnTime:J
    invoke-static {v2, v4, v5}, Landroid/media/WFDUibcManager$Keyevnt_arrC;->access$802(Landroid/media/WFDUibcManager$Keyevnt_arrC;J)J

    .line 869
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mKeyEvnt_Arr:[Landroid/media/WFDUibcManager$Keyevnt_arrC;

    aget-object v2, v2, v20

    const/4 v3, 0x0

    # setter for: Landroid/media/WFDUibcManager$Keyevnt_arrC;->mKyFlag:I
    invoke-static {v2, v3}, Landroid/media/WFDUibcManager$Keyevnt_arrC;->access$902(Landroid/media/WFDUibcManager$Keyevnt_arrC;I)I

    .line 870
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mKeyEvnt_Arr:[Landroid/media/WFDUibcManager$Keyevnt_arrC;

    aget-object v2, v2, v20

    const/4 v3, 0x0

    # setter for: Landroid/media/WFDUibcManager$Keyevnt_arrC;->mRepCnt:I
    invoke-static {v2, v3}, Landroid/media/WFDUibcManager$Keyevnt_arrC;->access$1002(Landroid/media/WFDUibcManager$Keyevnt_arrC;I)I

    .line 873
    :cond_15
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->ke:Landroid/view/KeyEvent;

    goto/16 :goto_1

    .line 739
    .restart local v25    # "rCnt":I
    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mKeyEvnt_Arr:[Landroid/media/WFDUibcManager$Keyevnt_arrC;

    aget-object v2, v2, v20

    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getFlags()I

    move-result v3

    # |= operator for: Landroid/media/WFDUibcManager$Keyevnt_arrC;->mKyFlag:I
    invoke-static {v2, v3}, Landroid/media/WFDUibcManager$Keyevnt_arrC;->access$976(Landroid/media/WFDUibcManager$Keyevnt_arrC;I)I

    .line 740
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mKeyEvnt_Arr:[Landroid/media/WFDUibcManager$Keyevnt_arrC;

    aget-object v2, v2, v20

    # operator++ for: Landroid/media/WFDUibcManager$Keyevnt_arrC;->mRepCnt:I
    invoke-static {v2}, Landroid/media/WFDUibcManager$Keyevnt_arrC;->access$1008(Landroid/media/WFDUibcManager$Keyevnt_arrC;)I

    .line 741
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mKeyEvnt_Arr:[Landroid/media/WFDUibcManager$Keyevnt_arrC;

    aget-object v2, v2, v20

    # getter for: Landroid/media/WFDUibcManager$Keyevnt_arrC;->mRepCnt:I
    invoke-static {v2}, Landroid/media/WFDUibcManager$Keyevnt_arrC;->access$1000(Landroid/media/WFDUibcManager$Keyevnt_arrC;)I

    move-result v2

    const/4 v3, 0x1

    if-lt v2, v3, :cond_17

    .line 742
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mKeyEvnt_Arr:[Landroid/media/WFDUibcManager$Keyevnt_arrC;

    aget-object v2, v2, v20

    const/16 v3, 0x80

    # |= operator for: Landroid/media/WFDUibcManager$Keyevnt_arrC;->mKyFlag:I
    invoke-static {v2, v3}, Landroid/media/WFDUibcManager$Keyevnt_arrC;->access$976(Landroid/media/WFDUibcManager$Keyevnt_arrC;I)I

    .line 744
    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mKeyEvnt_Arr:[Landroid/media/WFDUibcManager$Keyevnt_arrC;

    aget-object v2, v2, v20

    # getter for: Landroid/media/WFDUibcManager$Keyevnt_arrC;->mKyDwnTime:J
    invoke-static {v2}, Landroid/media/WFDUibcManager$Keyevnt_arrC;->access$800(Landroid/media/WFDUibcManager$Keyevnt_arrC;)J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mKeyDownTime:J

    .line 745
    move-object/from16 v0, p0

    iget v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mFlag:I

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mKeyEvnt_Arr:[Landroid/media/WFDUibcManager$Keyevnt_arrC;

    aget-object v3, v3, v20

    # getter for: Landroid/media/WFDUibcManager$Keyevnt_arrC;->mKyFlag:I
    invoke-static {v3}, Landroid/media/WFDUibcManager$Keyevnt_arrC;->access$900(Landroid/media/WFDUibcManager$Keyevnt_arrC;)I

    move-result v3

    or-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mFlag:I

    .line 746
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mKeyEvnt_Arr:[Landroid/media/WFDUibcManager$Keyevnt_arrC;

    aget-object v2, v2, v20

    # getter for: Landroid/media/WFDUibcManager$Keyevnt_arrC;->mRepCnt:I
    invoke-static {v2}, Landroid/media/WFDUibcManager$Keyevnt_arrC;->access$1000(Landroid/media/WFDUibcManager$Keyevnt_arrC;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mRepeatCnt:I

    goto/16 :goto_3

    .line 775
    .end local v25    # "rCnt":I
    :cond_18
    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_10

    .line 777
    const/16 v25, 0x0

    .restart local v25    # "rCnt":I
    :goto_6
    const/16 v2, 0xf

    move/from16 v0, v25

    if-ge v0, v2, :cond_1a

    .line 779
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mKeyEvnt_Arr:[Landroid/media/WFDUibcManager$Keyevnt_arrC;

    aget-object v2, v2, v25

    # getter for: Landroid/media/WFDUibcManager$Keyevnt_arrC;->mKyCod:I
    invoke-static {v2}, Landroid/media/WFDUibcManager$Keyevnt_arrC;->access$700(Landroid/media/WFDUibcManager$Keyevnt_arrC;)I

    move-result v2

    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    if-ne v2, v3, :cond_19

    .line 780
    move/from16 v20, v25

    .line 777
    :cond_19
    add-int/lit8 v25, v25, 0x1

    goto :goto_6

    .line 785
    :cond_1a
    if-ltz v20, :cond_25

    .line 786
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mKeyEvnt_Arr:[Landroid/media/WFDUibcManager$Keyevnt_arrC;

    aget-object v2, v2, v20

    # getter for: Landroid/media/WFDUibcManager$Keyevnt_arrC;->mKyDwnTime:J
    invoke-static {v2}, Landroid/media/WFDUibcManager$Keyevnt_arrC;->access$800(Landroid/media/WFDUibcManager$Keyevnt_arrC;)J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mKeyDownTime:J

    .line 787
    move-object/from16 v0, p0

    iget v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mFlag:I

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mKeyEvnt_Arr:[Landroid/media/WFDUibcManager$Keyevnt_arrC;

    aget-object v3, v3, v20

    # getter for: Landroid/media/WFDUibcManager$Keyevnt_arrC;->mKyFlag:I
    invoke-static {v3}, Landroid/media/WFDUibcManager$Keyevnt_arrC;->access$900(Landroid/media/WFDUibcManager$Keyevnt_arrC;)I

    move-result v3

    or-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mFlag:I

    .line 788
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mRepeatCnt:I

    .line 795
    :goto_7
    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x3b

    if-eq v2, v3, :cond_1b

    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x3c

    if-ne v2, v3, :cond_1d

    .line 796
    :cond_1b
    move-object/from16 v0, p0

    iget v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    and-int/lit8 v2, v2, -0x2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    .line 797
    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x3b

    if-ne v2, v3, :cond_1c

    .line 798
    move-object/from16 v0, p0

    iget v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    and-int/lit8 v2, v2, -0x41

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    .line 799
    :cond_1c
    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x3c

    if-ne v2, v3, :cond_1d

    .line 800
    move-object/from16 v0, p0

    iget v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    and-int/lit16 v2, v2, -0x81

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    .line 802
    :cond_1d
    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x39

    if-eq v2, v3, :cond_1e

    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x3a

    if-ne v2, v3, :cond_20

    .line 803
    :cond_1e
    move-object/from16 v0, p0

    iget v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    and-int/lit8 v2, v2, -0x3

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    .line 804
    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x39

    if-ne v2, v3, :cond_1f

    .line 805
    move-object/from16 v0, p0

    iget v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    and-int/lit8 v2, v2, -0x11

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    .line 806
    :cond_1f
    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x3a

    if-ne v2, v3, :cond_20

    .line 807
    move-object/from16 v0, p0

    iget v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    and-int/lit8 v2, v2, -0x21

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    .line 809
    :cond_20
    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x71

    if-eq v2, v3, :cond_21

    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x72

    if-ne v2, v3, :cond_23

    .line 810
    :cond_21
    move-object/from16 v0, p0

    iget v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    and-int/lit16 v2, v2, -0x1001

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    .line 811
    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x71

    if-ne v2, v3, :cond_22

    .line 812
    move-object/from16 v0, p0

    iget v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    and-int/lit16 v2, v2, -0x2001

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    .line 813
    :cond_22
    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x72

    if-ne v2, v3, :cond_23

    .line 814
    move-object/from16 v0, p0

    iget v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    and-int/lit16 v2, v2, -0x4001

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    .line 816
    :cond_23
    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x77

    if-ne v2, v3, :cond_24

    .line 817
    move-object/from16 v0, p0

    iget v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    and-int/lit8 v2, v2, -0x9

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    .line 819
    :cond_24
    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x73

    if-ne v2, v3, :cond_10

    .line 820
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->bCap:Z

    if-nez v2, :cond_26

    .line 821
    move-object/from16 v0, p0

    iget v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    or-int/lit16 v2, v2, 0x100

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    .line 822
    move-object/from16 v0, p0

    iget v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    const/high16 v3, 0x100000

    or-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    .line 823
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->bCap:Z

    goto/16 :goto_4

    .line 791
    :cond_25
    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mKeyDownTime:J

    .line 792
    move-object/from16 v0, p0

    iget v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mFlag:I

    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getFlags()I

    move-result v3

    or-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mFlag:I

    .line 793
    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mRepeatCnt:I

    goto/16 :goto_7

    .line 825
    :cond_26
    move-object/from16 v0, p0

    iget v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    const v3, -0x100001

    and-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    .line 826
    move-object/from16 v0, p0

    iget v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    and-int/lit16 v2, v2, -0x101

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    .line 827
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->bCap:Z

    goto/16 :goto_4

    .line 856
    .end local v25    # "rCnt":I
    .restart local v24    # "mintent":Landroid/content/Intent;
    :cond_27
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->ke:Landroid/view/KeyEvent;

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_13

    .line 858
    const-string/jumbo v2, "launch_home"

    const/4 v3, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto/16 :goto_5
.end method

.method private handleMotionEvent()V
    .locals 45

    .prologue
    .line 410
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/WFDUibcManager$EventDispatcher;->ev:Landroid/view/InputEvent;

    move-object/from16 v34, v0

    check-cast v34, Landroid/view/MotionEvent;

    .line 412
    .local v34, "newEv":Landroid/view/MotionEvent;
    sget-object v4, Landroid/media/WFDUibcManager$UIBC_Mode;->NORMAL:Landroid/media/WFDUibcManager$UIBC_Mode;

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Mode:Landroid/media/WFDUibcManager$UIBC_Mode;

    .line 415
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->wm:Landroid/view/WindowManager;

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v4, v5}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 418
    invoke-virtual/range {v34 .. v34}, Landroid/view/MotionEvent;->getDisplayId()I

    move-result v14

    .line 419
    .local v14, "displayId":I
    const-string v4, "WFDUibcManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "displayId before: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    if-gez v14, :cond_0

    .line 421
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v24

    .line 422
    .local v24, "dm":Landroid/hardware/display/DisplayManagerGlobal;
    invoke-virtual/range {v24 .. v24}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayIds()[I

    move-result-object v21

    .local v21, "arr$":[I
    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v30, v0

    .local v30, "len$":I
    const/16 v27, 0x0

    .local v27, "i$":I
    :goto_0
    move/from16 v0, v27

    move/from16 v1, v30

    if-ge v0, v1, :cond_0

    aget v28, v21, v27

    .line 423
    .local v28, "id":I
    move-object/from16 v0, v24

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v4

    iget v4, v4, Landroid/view/DisplayInfo;->type:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    .line 424
    move/from16 v14, v28

    .line 429
    .end local v21    # "arr$":[I
    .end local v24    # "dm":Landroid/hardware/display/DisplayManagerGlobal;
    .end local v27    # "i$":I
    .end local v28    # "id":I
    .end local v30    # "len$":I
    :cond_0
    if-gez v14, :cond_2

    .line 430
    const-string v4, "WFDUibcManager"

    const-string v5, "displayId not found"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    :goto_1
    return-void

    .line 422
    .restart local v21    # "arr$":[I
    .restart local v24    # "dm":Landroid/hardware/display/DisplayManagerGlobal;
    .restart local v27    # "i$":I
    .restart local v28    # "id":I
    .restart local v30    # "len$":I
    :cond_1
    add-int/lit8 v27, v27, 0x1

    goto :goto_0

    .line 436
    .end local v21    # "arr$":[I
    .end local v24    # "dm":Landroid/hardware/display/DisplayManagerGlobal;
    .end local v27    # "i$":I
    .end local v28    # "id":I
    .end local v30    # "len$":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mContext:Landroid/content/Context;
    invoke-static {v4}, Landroid/media/WFDUibcManager;->access$500(Landroid/media/WFDUibcManager;)Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mContext:Landroid/content/Context;
    invoke-static {v5}, Landroid/media/WFDUibcManager;->access$500(Landroid/media/WFDUibcManager;)Landroid/content/Context;

    const-string v5, "activity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager;

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->activityManager:Landroid/app/ActivityManager;

    .line 437
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->activityManager:Landroid/app/ActivityManager;

    const/16 v5, 0x14

    invoke-virtual {v4, v5}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v29

    .line 438
    .local v29, "info":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface/range {v29 .. v29}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 439
    const/4 v4, 0x0

    move-object/from16 v0, v29

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 440
    .local v43, "runningTaskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    move-object/from16 v0, v43

    iget-object v4, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.sec.android.app.camera"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->foregroundCamera:Z

    .line 442
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->foregroundCamera:Z

    if-eqz v4, :cond_3

    sget-object v4, Landroid/media/WFDUibcManager$UIBC_Mode;->CAMERA:Landroid/media/WFDUibcManager$UIBC_Mode;

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Mode:Landroid/media/WFDUibcManager$UIBC_Mode;

    .line 446
    .end local v43    # "runningTaskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mContext:Landroid/content/Context;
    invoke-static {v4}, Landroid/media/WFDUibcManager;->access$500(Landroid/media/WFDUibcManager;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "sidesync_source_connect"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mCoupleShot:Z
    invoke-static {v4}, Landroid/media/WFDUibcManager;->access$600(Landroid/media/WFDUibcManager;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 448
    :cond_4
    sget-object v4, Landroid/media/WFDUibcManager$UIBC_Mode;->FORCE_VALUE:Landroid/media/WFDUibcManager$UIBC_Mode;

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Mode:Landroid/media/WFDUibcManager$UIBC_Mode;

    .line 482
    :cond_5
    :goto_2
    invoke-virtual/range {v34 .. v34}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_9

    .line 483
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mTouchDownTime:J

    .line 487
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPointerProp:[Landroid/view/MotionEvent$PointerProperties;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroid/view/MotionEvent$PointerProperties;->clear()V

    .line 488
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroid/view/MotionEvent$PointerCoords;->clear()V

    .line 489
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPointerProp:[Landroid/view/MotionEvent$PointerProperties;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    move-object/from16 v0, v34

    invoke-virtual {v0, v4, v5}, Landroid/view/MotionEvent;->getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V

    .line 490
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    move-object/from16 v0, v34

    invoke-virtual {v0, v4, v5}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    .line 492
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPointerProp:[Landroid/view/MotionEvent$PointerProperties;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, Landroid/view/MotionEvent$PointerProperties;->id:I

    .line 493
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPointerProp:[Landroid/view/MotionEvent$PointerProperties;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x3

    iput v5, v4, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    .line 495
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/16 v5, 0x9

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    iget v6, v6, Landroid/view/MotionEvent$PointerCoords;->y:F

    invoke-virtual {v4, v5, v6}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 496
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/16 v5, 0xa

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    iget v6, v6, Landroid/view/MotionEvent$PointerCoords;->x:F

    invoke-virtual {v4, v5, v6}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 497
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v5, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    shr-int/lit8 v5, v5, 0x1

    int-to-float v5, v5

    iput v5, v4, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 498
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    shr-int/lit8 v5, v5, 0x1

    int-to-float v5, v5

    iput v5, v4, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 500
    move-object/from16 v0, p0

    iget-wide v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mTouchDownTime:J

    const-wide/16 v6, 0xa

    sub-long/2addr v4, v6

    move-object/from16 v0, p0

    iget-wide v6, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mTouchDownTime:J

    const-wide/16 v8, 0xa

    sub-long/2addr v6, v8

    const/16 v8, 0x8

    const/4 v9, 0x1

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPointerProp:[Landroid/view/MotionEvent$PointerProperties;

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/high16 v15, 0x3f800000    # 1.0f

    const/high16 v16, 0x3f800000    # 1.0f

    const/16 v17, 0xa

    const/16 v18, 0x0

    const/16 v19, 0x2002

    const/16 v20, 0x0

    invoke-static/range {v4 .. v20}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIIFFIIII)Landroid/view/MotionEvent;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->me:Landroid/view/MotionEvent;

    .line 501
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->me:Landroid/view/MotionEvent;

    const/16 v5, 0x2002

    invoke-virtual {v4, v5}, Landroid/view/MotionEvent;->setSource(I)V

    .line 503
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->me:Landroid/view/MotionEvent;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 504
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->me:Landroid/view/MotionEvent;

    goto/16 :goto_1

    .line 452
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mContext:Landroid/content/Context;
    invoke-static {v4}, Landroid/media/WFDUibcManager;->access$500(Landroid/media/WFDUibcManager;)Landroid/content/Context;

    move-result-object v4

    const-string v5, "display"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/hardware/display/DisplayManager;

    .line 453
    .local v31, "mDm":Landroid/hardware/display/DisplayManager;
    invoke-virtual/range {v31 .. v31}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object v40

    .line 454
    .local v40, "presentationDisplays":[Landroid/view/Display;
    const-string v4, "WFDUibcManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Received displays amount: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v40

    array-length v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    const/16 v26, 0x0

    .local v26, "i":I
    :goto_3
    move-object/from16 v0, v40

    array-length v4, v0

    move/from16 v0, v26

    if-ge v0, v4, :cond_5

    .line 457
    aget-object v23, v40, v26

    .line 458
    .local v23, "display":Landroid/view/Display;
    invoke-virtual/range {v23 .. v23}, Landroid/view/Display;->getDisplayId()I

    move-result v4

    if-ne v14, v4, :cond_8

    .line 459
    const-string v4, "WFDUibcManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "presentation display found, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    const/16 v41, -0x1

    .line 462
    .local v41, "presentationId":I
    :try_start_0
    # getter for: Landroid/media/WFDUibcManager;->DISPLAY_MAP:Ljava/util/HashMap;
    invoke-static {}, Landroid/media/WFDUibcManager;->access$000()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual/range {v23 .. v23}, Landroid/view/Display;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 463
    # getter for: Landroid/media/WFDUibcManager;->DISPLAY_MAP:Ljava/util/HashMap;
    invoke-static {}, Landroid/media/WFDUibcManager;->access$000()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual/range {v23 .. v23}, Landroid/view/Display;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v41

    .line 469
    :cond_7
    :goto_4
    const/4 v4, -0x1

    move/from16 v0, v41

    if-eq v0, v4, :cond_5

    .line 470
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 473
    sget-object v4, Landroid/media/WFDUibcManager$UIBC_Mode;->PRESENTATION:Landroid/media/WFDUibcManager$UIBC_Mode;

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Mode:Landroid/media/WFDUibcManager$UIBC_Mode;

    goto/16 :goto_2

    .line 464
    :catch_0
    move-exception v25

    .line 465
    .local v25, "e":Ljava/lang/IllegalArgumentException;
    const-string v4, "WFDUibcManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Display name too long: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v23 .. v23}, Landroid/view/Display;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Use default UIBC."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    const/16 v41, -0x1

    goto :goto_4

    .line 456
    .end local v25    # "e":Ljava/lang/IllegalArgumentException;
    .end local v41    # "presentationId":I
    :cond_8
    add-int/lit8 v26, v26, 0x1

    goto/16 :goto_3

    .line 508
    .end local v23    # "display":Landroid/view/Display;
    .end local v26    # "i":I
    .end local v31    # "mDm":Landroid/hardware/display/DisplayManager;
    .end local v40    # "presentationDisplays":[Landroid/view/Display;
    :cond_9
    const v4, 0x38d1b717    # 1.0E-4f

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->kX:F

    .line 509
    const v4, 0x38d1b717    # 1.0E-4f

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v5, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->kY:F

    .line 510
    const/high16 v4, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v5, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->kH:F

    .line 511
    const/high16 v4, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->kW:F

    .line 512
    const/high16 v4, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iput v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_X:F

    .line 513
    const/high16 v4, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iput v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_Y:F

    .line 514
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v5, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Ratio_WFD:F

    .line 515
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mNegRs_X:F
    invoke-static {v4}, Landroid/media/WFDUibcManager;->access$400(Landroid/media/WFDUibcManager;)F

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mNegRs_Y:F
    invoke-static {v5}, Landroid/media/WFDUibcManager;->access$300(Landroid/media/WFDUibcManager;)F

    move-result v5

    div-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Ratio_LCD:F

    .line 519
    invoke-virtual/range {v34 .. v34}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v22

    .line 520
    .local v22, "count":I
    const/16 v26, 0x0

    .restart local v26    # "i":I
    :goto_5
    move/from16 v0, v26

    move/from16 v1, v22

    if-ge v0, v1, :cond_12

    .line 521
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPointerProp:[Landroid/view/MotionEvent$PointerProperties;

    aget-object v4, v4, v26

    invoke-virtual {v4}, Landroid/view/MotionEvent$PointerProperties;->clear()V

    .line 522
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v4, v4, v26

    invoke-virtual {v4}, Landroid/view/MotionEvent$PointerCoords;->clear()V

    .line 523
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPointerProp:[Landroid/view/MotionEvent$PointerProperties;

    aget-object v4, v4, v26

    move-object/from16 v0, v34

    move/from16 v1, v26

    invoke-virtual {v0, v1, v4}, Landroid/view/MotionEvent;->getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V

    .line 524
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v4, v4, v26

    move-object/from16 v0, v34

    move/from16 v1, v26

    invoke-virtual {v0, v1, v4}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    .line 527
    sget-object v4, Landroid/media/WFDUibcManager$3;->$SwitchMap$android$media$WFDUibcManager$UIBC_Mode:[I

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Mode:Landroid/media/WFDUibcManager$UIBC_Mode;

    invoke-virtual {v5}, Landroid/media/WFDUibcManager$UIBC_Mode;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 576
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mContext:Landroid/content/Context;
    invoke-static {v4}, Landroid/media/WFDUibcManager;->access$500(Landroid/media/WFDUibcManager;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->configuration:Landroid/content/res/Configuration;

    .line 577
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->configuration:Landroid/content/res/Configuration;

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_10

    .line 578
    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Ratio_WFD:F

    move-object/from16 v0, p0

    iget v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Ratio_LCD:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_e

    .line 580
    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->kW:F

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mNegRs_Y:F
    invoke-static {v5}, Landroid/media/WFDUibcManager;->access$300(Landroid/media/WFDUibcManager;)F

    move-result v5

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->kH:F

    div-float v36, v4, v5

    .line 581
    .local v36, "newWidth":F
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mNegRs_X:F
    invoke-static {v4}, Landroid/media/WFDUibcManager;->access$400(Landroid/media/WFDUibcManager;)F

    move-result v4

    sub-float v4, v4, v36

    const/high16 v5, 0x40000000    # 2.0f

    div-float v39, v4, v5

    .line 582
    .local v39, "pad":F
    const v4, 0x38d1b717    # 1.0E-4f

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mNegRs_X:F
    invoke-static {v5}, Landroid/media/WFDUibcManager;->access$400(Landroid/media/WFDUibcManager;)F

    move-result v5

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v5, v5, v26

    iget v5, v5, Landroid/view/MotionEvent$PointerCoords;->x:F

    mul-float v37, v4, v5

    .line 586
    .local v37, "normX":F
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v4, v4

    sub-float v5, v37, v39

    div-float v5, v5, v36

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_X:F

    .line 587
    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->kY:F

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v5, v5, v26

    iget v5, v5, Landroid/view/MotionEvent$PointerCoords;->y:F

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_Y:F

    .line 589
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v4, v4, v26

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_X:F

    invoke-virtual {v4, v5, v6}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 590
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v4, v4, v26

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget v6, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_Y:F

    invoke-virtual {v4, v5, v6}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 520
    .end local v36    # "newWidth":F
    .end local v37    # "normX":F
    .end local v39    # "pad":F
    :cond_a
    :goto_6
    add-int/lit8 v26, v26, 0x1

    goto/16 :goto_5

    .line 529
    :pswitch_0
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v1}, Landroid/media/WFDUibcManager$EventDispatcher;->handleCameraTouch(I)V

    goto :goto_6

    .line 535
    :pswitch_1
    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->kX:F

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v5, v5, v26

    iget v5, v5, Landroid/view/MotionEvent$PointerCoords;->x:F

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_X:F

    .line 536
    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->kY:F

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v5, v5, v26

    iget v5, v5, Landroid/view/MotionEvent$PointerCoords;->y:F

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_Y:F

    .line 537
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v4, v4, v26

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_X:F

    invoke-virtual {v4, v5, v6}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 538
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v4, v4, v26

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget v6, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_Y:F

    invoke-virtual {v4, v5, v6}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    goto :goto_6

    .line 543
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->wm:Landroid/view/WindowManager;

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getRotation()I

    move-result v42

    .line 545
    .local v42, "rotation":I
    if-nez v42, :cond_b

    .line 546
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->kX:F

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v6, v6, v26

    iget v6, v6, Landroid/view/MotionEvent$PointerCoords;->y:F

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_X:F

    .line 547
    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->kY:F

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v5, v5, v26

    iget v5, v5, Landroid/view/MotionEvent$PointerCoords;->x:F

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_Y:F

    .line 560
    :goto_7
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v4, v4, v26

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_X:F

    invoke-virtual {v4, v5, v6}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 561
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v4, v4, v26

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget v6, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_Y:F

    invoke-virtual {v4, v5, v6}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    goto/16 :goto_6

    .line 548
    :cond_b
    const/4 v4, 0x3

    move/from16 v0, v42

    if-ne v0, v4, :cond_c

    .line 549
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->kX:F

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v6, v6, v26

    iget v6, v6, Landroid/view/MotionEvent$PointerCoords;->x:F

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_X:F

    .line 550
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->kY:F

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v6, v6, v26

    iget v6, v6, Landroid/view/MotionEvent$PointerCoords;->y:F

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_Y:F

    goto :goto_7

    .line 552
    :cond_c
    const/4 v4, 0x2

    move/from16 v0, v42

    if-ne v0, v4, :cond_d

    .line 553
    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->kX:F

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v5, v5, v26

    iget v5, v5, Landroid/view/MotionEvent$PointerCoords;->y:F

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_X:F

    .line 554
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->kY:F

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v6, v6, v26

    iget v6, v6, Landroid/view/MotionEvent$PointerCoords;->x:F

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_Y:F

    goto/16 :goto_7

    .line 556
    :cond_d
    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->kX:F

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v5, v5, v26

    iget v5, v5, Landroid/view/MotionEvent$PointerCoords;->x:F

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_X:F

    .line 557
    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->kY:F

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v5, v5, v26

    iget v5, v5, Landroid/view/MotionEvent$PointerCoords;->y:F

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_Y:F

    goto/16 :goto_7

    .line 567
    .end local v42    # "rotation":I
    :pswitch_3
    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->kX:F

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v5, v5, v26

    iget v5, v5, Landroid/view/MotionEvent$PointerCoords;->x:F

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_X:F

    .line 568
    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->kY:F

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v5, v5, v26

    iget v5, v5, Landroid/view/MotionEvent$PointerCoords;->y:F

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_Y:F

    .line 569
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v4, v4, v26

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_X:F

    invoke-virtual {v4, v5, v6}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 570
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v4, v4, v26

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget v6, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_Y:F

    invoke-virtual {v4, v5, v6}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    goto/16 :goto_6

    .line 593
    :cond_e
    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Ratio_WFD:F

    move-object/from16 v0, p0

    iget v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Ratio_LCD:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_f

    .line 595
    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->kH:F

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mNegRs_X:F
    invoke-static {v5}, Landroid/media/WFDUibcManager;->access$400(Landroid/media/WFDUibcManager;)F

    move-result v5

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->kW:F

    div-float v35, v4, v5

    .line 596
    .local v35, "newHeight":F
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mNegRs_Y:F
    invoke-static {v4}, Landroid/media/WFDUibcManager;->access$300(Landroid/media/WFDUibcManager;)F

    move-result v4

    sub-float v4, v4, v35

    const/high16 v5, 0x40000000    # 2.0f

    div-float v39, v4, v5

    .line 597
    .restart local v39    # "pad":F
    const v4, 0x38d1b717    # 1.0E-4f

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mNegRs_Y:F
    invoke-static {v5}, Landroid/media/WFDUibcManager;->access$300(Landroid/media/WFDUibcManager;)F

    move-result v5

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v5, v5, v26

    iget v5, v5, Landroid/view/MotionEvent$PointerCoords;->y:F

    mul-float v38, v4, v5

    .line 600
    .local v38, "normY":F
    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->kX:F

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v5, v5, v26

    iget v5, v5, Landroid/view/MotionEvent$PointerCoords;->x:F

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_X:F

    .line 601
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v4, v4

    sub-float v5, v38, v39

    div-float v5, v5, v35

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_Y:F

    .line 602
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v4, v4, v26

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_X:F

    invoke-virtual {v4, v5, v6}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 603
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v4, v4, v26

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget v6, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_Y:F

    invoke-virtual {v4, v5, v6}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    goto/16 :goto_6

    .line 608
    .end local v35    # "newHeight":F
    .end local v38    # "normY":F
    .end local v39    # "pad":F
    :cond_f
    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->kX:F

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v5, v5, v26

    iget v5, v5, Landroid/view/MotionEvent$PointerCoords;->x:F

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_X:F

    .line 609
    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->kY:F

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v5, v5, v26

    iget v5, v5, Landroid/view/MotionEvent$PointerCoords;->y:F

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_Y:F

    .line 610
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v4, v4, v26

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Landroid/media/WFDUibcManager$EventDispatcher;->kX:F

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v7, v7, v26

    iget v7, v7, Landroid/view/MotionEvent$PointerCoords;->x:F

    mul-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 611
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v4, v4, v26

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget v6, v0, Landroid/media/WFDUibcManager$EventDispatcher;->kY:F

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v7, v7, v26

    iget v7, v7, Landroid/view/MotionEvent$PointerCoords;->y:F

    mul-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    goto/16 :goto_6

    .line 615
    :cond_10
    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Ratio_WFD:F

    move-object/from16 v0, p0

    iget v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Ratio_LCD:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_11

    .line 617
    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->kW:F

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mNegRs_Y:F
    invoke-static {v5}, Landroid/media/WFDUibcManager;->access$300(Landroid/media/WFDUibcManager;)F

    move-result v5

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->kH:F

    div-float v36, v4, v5

    .line 618
    .restart local v36    # "newWidth":F
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mNegRs_X:F
    invoke-static {v4}, Landroid/media/WFDUibcManager;->access$400(Landroid/media/WFDUibcManager;)F

    move-result v4

    sub-float v4, v4, v36

    const/high16 v5, 0x40000000    # 2.0f

    div-float v39, v4, v5

    .line 619
    .restart local v39    # "pad":F
    const v4, 0x38d1b717    # 1.0E-4f

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mNegRs_X:F
    invoke-static {v5}, Landroid/media/WFDUibcManager;->access$400(Landroid/media/WFDUibcManager;)F

    move-result v5

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v5, v5, v26

    iget v5, v5, Landroid/view/MotionEvent$PointerCoords;->x:F

    mul-float v37, v4, v5

    .line 622
    .restart local v37    # "normX":F
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v4, v4

    sub-float v5, v37, v39

    mul-float/2addr v4, v5

    div-float v4, v4, v36

    move-object/from16 v0, p0

    iput v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_X:F

    .line 623
    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->kY:F

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v5, v5, v26

    iget v5, v5, Landroid/view/MotionEvent$PointerCoords;->y:F

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_Y:F

    .line 625
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v4, v4, v26

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v6, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v6, v6

    sub-float v7, v37, v39

    mul-float/2addr v6, v7

    div-float v6, v6, v36

    invoke-virtual {v4, v5, v6}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 626
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v4, v4, v26

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget v6, v0, Landroid/media/WFDUibcManager$EventDispatcher;->kY:F

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v7, v7, v26

    iget v7, v7, Landroid/view/MotionEvent$PointerCoords;->y:F

    mul-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    goto/16 :goto_6

    .line 628
    .end local v36    # "newWidth":F
    .end local v37    # "normX":F
    .end local v39    # "pad":F
    :cond_11
    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Ratio_WFD:F

    move-object/from16 v0, p0

    iget v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Ratio_LCD:F

    cmpl-float v4, v4, v5

    if-nez v4, :cond_a

    .line 629
    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->kX:F

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v5, v5, v26

    iget v5, v5, Landroid/view/MotionEvent$PointerCoords;->x:F

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_X:F

    .line 630
    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->kY:F

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v5, v5, v26

    iget v5, v5, Landroid/view/MotionEvent$PointerCoords;->y:F

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_Y:F

    .line 631
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v4, v4, v26

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Landroid/media/WFDUibcManager$EventDispatcher;->kX:F

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v7, v7, v26

    iget v7, v7, Landroid/view/MotionEvent$PointerCoords;->x:F

    mul-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 632
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v4, v4, v26

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget v6, v0, Landroid/media/WFDUibcManager$EventDispatcher;->kY:F

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v7, v7, v26

    iget v7, v7, Landroid/view/MotionEvent$PointerCoords;->y:F

    mul-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    goto/16 :goto_6

    .line 641
    :cond_12
    invoke-virtual/range {v34 .. v34}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_13

    .line 643
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mTouchDownTime:J

    .line 647
    :cond_13
    move-object/from16 v0, p0

    iget-wide v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mTouchDownTime:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-virtual/range {v34 .. v34}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    invoke-virtual/range {v34 .. v34}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v9

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPointerProp:[Landroid/view/MotionEvent$PointerProperties;

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/high16 v15, 0x3f800000    # 1.0f

    const/high16 v16, 0x3f800000    # 1.0f

    invoke-virtual/range {v34 .. v34}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v17

    const/16 v18, 0x0

    invoke-virtual/range {v34 .. v34}, Landroid/view/MotionEvent;->getSource()I

    move-result v19

    const/16 v20, 0x0

    invoke-static/range {v4 .. v20}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIIFFIIII)Landroid/view/MotionEvent;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->me:Landroid/view/MotionEvent;

    .line 652
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v32

    .line 654
    .local v32, "mlTempTime":J
    move-object/from16 v0, p0

    iget-wide v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mBroadTime:J

    sub-long v4, v32, v4

    const-wide/16 v6, 0x3e8

    cmp-long v4, v4, v6

    if-lez v4, :cond_14

    .line 656
    new-instance v44, Landroid/content/Intent;

    const-string v4, "android.intent.action.SEC_UIBC_GET_FOCUS"

    move-object/from16 v0, v44

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 657
    .local v44, "virtualKey_Intent":Landroid/content/Intent;
    const-string v4, "UIBC_X"

    move-object/from16 v0, p0

    iget v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_X:F

    float-to-int v5, v5

    move-object/from16 v0, v44

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 658
    const-string v4, "UIBC_Y"

    move-object/from16 v0, p0

    iget v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_Y:F

    float-to-int v5, v5

    move-object/from16 v0, v44

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 659
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mContext:Landroid/content/Context;
    invoke-static {v4}, Landroid/media/WFDUibcManager;->access$500(Landroid/media/WFDUibcManager;)Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, v44

    invoke-virtual {v4, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 660
    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/media/WFDUibcManager$EventDispatcher;->mBroadTime:J

    .line 663
    .end local v44    # "virtualKey_Intent":Landroid/content/Intent;
    :cond_14
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->me:Landroid/view/MotionEvent;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 665
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->me:Landroid/view/MotionEvent;

    goto/16 :goto_1

    .line 527
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0xf

    const/16 v3, 0xa

    .line 887
    new-array v1, v3, [Landroid/view/MotionEvent$PointerProperties;

    iput-object v1, p0, Landroid/media/WFDUibcManager$EventDispatcher;->aPointerProp:[Landroid/view/MotionEvent$PointerProperties;

    .line 888
    new-array v1, v3, [Landroid/view/MotionEvent$PointerCoords;

    iput-object v1, p0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 890
    new-array v1, v4, [Landroid/media/WFDUibcManager$Keyevnt_arrC;

    iput-object v1, p0, Landroid/media/WFDUibcManager$EventDispatcher;->mKeyEvnt_Arr:[Landroid/media/WFDUibcManager$Keyevnt_arrC;

    .line 893
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 894
    iget-object v1, p0, Landroid/media/WFDUibcManager$EventDispatcher;->aPointerProp:[Landroid/view/MotionEvent$PointerProperties;

    new-instance v2, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v2}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    aput-object v2, v1, v0

    .line 895
    iget-object v1, p0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    new-instance v2, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v2}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v2, v1, v0

    .line 893
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 897
    :cond_0
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v4, :cond_1

    .line 898
    iget-object v1, p0, Landroid/media/WFDUibcManager$EventDispatcher;->mKeyEvnt_Arr:[Landroid/media/WFDUibcManager$Keyevnt_arrC;

    new-instance v2, Landroid/media/WFDUibcManager$Keyevnt_arrC;

    iget-object v3, p0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    invoke-direct {v2, v3}, Landroid/media/WFDUibcManager$Keyevnt_arrC;-><init>(Landroid/media/WFDUibcManager;)V

    aput-object v2, v1, v0

    .line 897
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 900
    :cond_1
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v4, :cond_2

    .line 901
    iget-object v1, p0, Landroid/media/WFDUibcManager$EventDispatcher;->mKeyEvnt_Arr:[Landroid/media/WFDUibcManager$Keyevnt_arrC;

    aget-object v1, v1, v0

    const/4 v2, -0x1

    # setter for: Landroid/media/WFDUibcManager$Keyevnt_arrC;->mKyCod:I
    invoke-static {v1, v2}, Landroid/media/WFDUibcManager$Keyevnt_arrC;->access$702(Landroid/media/WFDUibcManager$Keyevnt_arrC;I)I

    .line 902
    iget-object v1, p0, Landroid/media/WFDUibcManager$EventDispatcher;->mKeyEvnt_Arr:[Landroid/media/WFDUibcManager$Keyevnt_arrC;

    aget-object v1, v1, v0

    const-wide/16 v2, -0x1

    # setter for: Landroid/media/WFDUibcManager$Keyevnt_arrC;->mKyDwnTime:J
    invoke-static {v1, v2, v3}, Landroid/media/WFDUibcManager$Keyevnt_arrC;->access$802(Landroid/media/WFDUibcManager$Keyevnt_arrC;J)J

    .line 903
    iget-object v1, p0, Landroid/media/WFDUibcManager$EventDispatcher;->mKeyEvnt_Arr:[Landroid/media/WFDUibcManager$Keyevnt_arrC;

    aget-object v1, v1, v0

    # setter for: Landroid/media/WFDUibcManager$Keyevnt_arrC;->mRepCnt:I
    invoke-static {v1, v5}, Landroid/media/WFDUibcManager$Keyevnt_arrC;->access$1002(Landroid/media/WFDUibcManager$Keyevnt_arrC;I)I

    .line 904
    iget-object v1, p0, Landroid/media/WFDUibcManager$EventDispatcher;->mKeyEvnt_Arr:[Landroid/media/WFDUibcManager$Keyevnt_arrC;

    aget-object v1, v1, v0

    # setter for: Landroid/media/WFDUibcManager$Keyevnt_arrC;->mKyFlag:I
    invoke-static {v1, v5}, Landroid/media/WFDUibcManager$Keyevnt_arrC;->access$902(Landroid/media/WFDUibcManager$Keyevnt_arrC;I)I

    .line 900
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 906
    :cond_2
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v1, p0, Landroid/media/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    .line 907
    iget-object v1, p0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/media/WFDUibcManager;->access$500(Landroid/media/WFDUibcManager;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Landroid/media/WFDUibcManager$EventDispatcher;->wm:Landroid/view/WindowManager;

    .line 909
    :cond_3
    :goto_3
    iget-boolean v1, p0, Landroid/media/WFDUibcManager$EventDispatcher;->running:Z

    if-eqz v1, :cond_5

    .line 910
    invoke-virtual {p0}, Landroid/media/WFDUibcManager$EventDispatcher;->getNextEvent()Landroid/view/InputEvent;

    move-result-object v1

    iput-object v1, p0, Landroid/media/WFDUibcManager$EventDispatcher;->ev:Landroid/view/InputEvent;

    .line 911
    iget-object v1, p0, Landroid/media/WFDUibcManager$EventDispatcher;->ev:Landroid/view/InputEvent;

    if-eqz v1, :cond_3

    .line 918
    iget-object v1, p0, Landroid/media/WFDUibcManager$EventDispatcher;->ev:Landroid/view/InputEvent;

    instance-of v1, v1, Landroid/view/MotionEvent;

    if-eqz v1, :cond_4

    .line 919
    invoke-direct {p0}, Landroid/media/WFDUibcManager$EventDispatcher;->handleMotionEvent()V

    goto :goto_3

    .line 921
    :cond_4
    iget-object v1, p0, Landroid/media/WFDUibcManager$EventDispatcher;->ev:Landroid/view/InputEvent;

    instance-of v1, v1, Landroid/view/KeyEvent;

    if-eqz v1, :cond_3

    .line 922
    invoke-direct {p0}, Landroid/media/WFDUibcManager$EventDispatcher;->handleKeyEvent()V

    goto :goto_3

    .line 925
    :cond_5
    return-void
.end method
