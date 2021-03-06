.class public Lcom/android/internal/widget/BeautySignView;
.super Lcom/android/internal/widget/SignView;
.source "BeautySignView.java"


# static fields
.field protected static final DBG_BEAUTY:Z = false

.field protected static final DBG_TOUCH:Z

.field private static final MID:F = 0.5f

.field private static SPEED_MAX:F = 0.0f

.field private static SPEED_MIN:F = 0.0f

.field protected static final TAG:Ljava/lang/String; = "BeautySignView"

.field protected static final TOUCH_TOLERANCE_AGAIN:F = 10.0f

.field private static VELOCITY_FILTER_WEIGHT:F


# instance fields
.field private MAX_WIDTH:I

.field private mBeautyEffectInputData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/widget/SignView$SignatureInput;",
            ">;"
        }
    .end annotation
.end field

.field private mBezierEnabled:Z

.field protected mBezierX:F

.field protected mBezierY:F

.field private mCurrentEndPoint:Landroid/graphics/Point;

.field private mCurrentPointTime:J

.field private mCurrentStrokeWidth:F

.field private mInitWidthVarRatio:Z

.field private mLastDrawPoint:Landroid/graphics/Point;

.field private mLastPointTime:J

.field private mLastStrokeWidth:F

.field private mLastVelocity:F

.field private mMidControlPoint:Landroid/graphics/Point;

.field private mOrignialLineSmooth:Z

.field private mPrevious:Landroid/graphics/Point;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 32
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Lcom/android/internal/widget/BeautySignView;->DBG_TOUCH:Z

    .line 34
    const v0, 0x3e4ccccd    # 0.2f

    sput v0, Lcom/android/internal/widget/BeautySignView;->VELOCITY_FILTER_WEIGHT:F

    .line 35
    const/high16 v0, 0x40a00000    # 5.0f

    sput v0, Lcom/android/internal/widget/BeautySignView;->SPEED_MAX:F

    .line 36
    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Lcom/android/internal/widget/BeautySignView;->SPEED_MIN:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/android/internal/widget/SignView;-><init>(Landroid/content/Context;)V

    .line 39
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/internal/widget/BeautySignView;->MAX_WIDTH:I

    .line 62
    return-void
.end method

.method private addToPathForDrawing(I)V
    .locals 17
    .param p1, "prevArraySize"    # I

    .prologue
    .line 278
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/widget/BeautySignView;->mX:F

    .line 279
    .local v4, "drawX":F
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/widget/BeautySignView;->mY:F

    .line 280
    .local v5, "drawY":F
    const/4 v10, 0x0

    .line 282
    .local v10, "velocity":F
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/BeautySignView;->mBeautyEffectInputData:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 284
    .local v3, "currentArraySize":I
    sget-boolean v13, Lcom/android/internal/widget/BeautySignView;->DBG_TOUCH:Z

    if-eqz v13, :cond_0

    .line 285
    const-string v13, "BeautySignView"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "addToPathForDrawing from "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " to "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    :cond_0
    move/from16 v8, p1

    .local v8, "i":I
    :goto_0
    if-ge v8, v3, :cond_8

    .line 289
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/BeautySignView;->mBeautyEffectInputData:Ljava/util/ArrayList;

    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/SignView$SignatureInput;

    .line 291
    .local v2, "addedPoint":Lcom/android/internal/widget/SignView$SignatureInput;
    iget v11, v2, Lcom/android/internal/widget/SignView$SignatureInput;->mX:F

    .line 292
    .local v11, "x":F
    iget v12, v2, Lcom/android/internal/widget/SignView$SignatureInput;->mY:F

    .line 293
    .local v12, "y":F
    sub-float v13, v11, v4

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v6

    .line 294
    .local v6, "dx":F
    sub-float v13, v12, v5

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v7

    .line 295
    .local v7, "dy":F
    iget-wide v14, v2, Lcom/android/internal/widget/SignView$SignatureInput;->mTime:J

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/android/internal/widget/BeautySignView;->mCurrentPointTime:J

    .line 297
    const/high16 v13, 0x41200000    # 10.0f

    cmpl-float v13, v6, v13

    if-gez v13, :cond_1

    const/high16 v13, 0x41200000    # 10.0f

    cmpl-float v13, v7, v13

    if-ltz v13, :cond_6

    .line 298
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/BeautySignView;->mCurrentEndPoint:Landroid/graphics/Point;

    add-float v14, v11, v4

    float-to-int v14, v14

    div-int/lit8 v14, v14, 0x2

    add-float v15, v12, v5

    float-to-int v15, v15

    div-int/lit8 v15, v15, 0x2

    invoke-virtual {v13, v14, v15}, Landroid/graphics/Point;->set(II)V

    .line 299
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/BeautySignView;->mMidControlPoint:Landroid/graphics/Point;

    float-to-int v14, v4

    float-to-int v15, v5

    invoke-virtual {v13, v14, v15}, Landroid/graphics/Point;->set(II)V

    .line 305
    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/BeautySignView;->mCurrentEndPoint:Landroid/graphics/Point;

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/internal/widget/BeautySignView;->getVelocityFrom(Landroid/graphics/Point;)F

    move-result v10

    .line 306
    sget v13, Lcom/android/internal/widget/BeautySignView;->VELOCITY_FILTER_WEIGHT:F

    mul-float/2addr v13, v10

    const/high16 v14, 0x3f800000    # 1.0f

    sget v15, Lcom/android/internal/widget/BeautySignView;->VELOCITY_FILTER_WEIGHT:F

    sub-float/2addr v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/widget/BeautySignView;->mLastVelocity:F

    mul-float/2addr v14, v15

    add-float v10, v13, v14

    .line 310
    sget v13, Lcom/android/internal/widget/BeautySignView;->SPEED_MAX:F

    cmpl-float v13, v10, v13

    if-lez v13, :cond_2

    .line 311
    sget v10, Lcom/android/internal/widget/BeautySignView;->SPEED_MAX:F

    .line 313
    :cond_2
    sget v13, Lcom/android/internal/widget/BeautySignView;->SPEED_MIN:F

    cmpg-float v13, v10, v13

    if-gez v13, :cond_3

    .line 314
    sget v10, Lcom/android/internal/widget/BeautySignView;->SPEED_MIN:F

    .line 317
    :cond_3
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/internal/widget/BeautySignView;->getStrokeWidth(F)F

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/internal/widget/BeautySignView;->mCurrentStrokeWidth:F

    .line 318
    const v9, 0x3e4ccccd    # 0.2f

    .line 319
    .local v9, "varLimit":F
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/widget/BeautySignView;->mCurrentStrokeWidth:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/widget/BeautySignView;->mLastStrokeWidth:F

    sub-float/2addr v13, v14

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v13

    const v14, 0x3e4ccccd    # 0.2f

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/widget/BeautySignView;->mLastStrokeWidth:F

    mul-float/2addr v14, v15

    cmpl-float v13, v13, v14

    if-lez v13, :cond_4

    .line 320
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/widget/BeautySignView;->mCurrentStrokeWidth:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/widget/BeautySignView;->mLastStrokeWidth:F

    cmpl-float v13, v13, v14

    if-lez v13, :cond_7

    .line 321
    const v13, 0x3f99999a    # 1.2f

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/widget/BeautySignView;->mLastStrokeWidth:F

    mul-float/2addr v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/internal/widget/BeautySignView;->mCurrentStrokeWidth:F

    .line 329
    :cond_4
    :goto_2
    move v4, v11

    .line 330
    move v5, v12

    .line 332
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/internal/widget/BeautySignView;->mInitWidthVarRatio:Z

    if-nez v13, :cond_5

    .line 333
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/widget/BeautySignView;->mCurrentStrokeWidth:F

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/internal/widget/BeautySignView;->mLastStrokeWidth:F

    .line 336
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/BeautySignView;->mCanvas:Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/BeautySignView;->mSignPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/widget/BeautySignView;->mLastStrokeWidth:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/BeautySignView;->mCurrentStrokeWidth:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v13, v14, v15, v1}, Lcom/android/internal/widget/BeautySignView;->drawBeautyEffect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V

    .line 338
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/internal/widget/BeautySignView;->mInitWidthVarRatio:Z

    .line 339
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/BeautySignView;->mLastDrawPoint:Landroid/graphics/Point;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/BeautySignView;->mCurrentEndPoint:Landroid/graphics/Point;

    iget v14, v14, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/widget/BeautySignView;->mCurrentEndPoint:Landroid/graphics/Point;

    iget v15, v15, Landroid/graphics/Point;->y:I

    invoke-virtual {v13, v14, v15}, Landroid/graphics/Point;->set(II)V

    .line 340
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/internal/widget/BeautySignView;->mCurrentPointTime:J

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/android/internal/widget/BeautySignView;->mLastPointTime:J

    .line 341
    move-object/from16 v0, p0

    iput v10, v0, Lcom/android/internal/widget/BeautySignView;->mLastVelocity:F

    .line 342
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/widget/BeautySignView;->mCurrentStrokeWidth:F

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/internal/widget/BeautySignView;->mLastStrokeWidth:F

    .line 288
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 301
    .end local v9    # "varLimit":F
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/BeautySignView;->mCurrentEndPoint:Landroid/graphics/Point;

    float-to-int v14, v11

    float-to-int v15, v12

    invoke-virtual {v13, v14, v15}, Landroid/graphics/Point;->set(II)V

    .line 302
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/BeautySignView;->mMidControlPoint:Landroid/graphics/Point;

    add-float v14, v11, v4

    float-to-int v14, v14

    div-int/lit8 v14, v14, 0x2

    add-float v15, v12, v5

    float-to-int v15, v15

    div-int/lit8 v15, v15, 0x2

    invoke-virtual {v13, v14, v15}, Landroid/graphics/Point;->set(II)V

    goto/16 :goto_1

    .line 323
    .restart local v9    # "varLimit":F
    :cond_7
    const v13, 0x3f4ccccd    # 0.8f

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/widget/BeautySignView;->mLastStrokeWidth:F

    mul-float/2addr v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/internal/widget/BeautySignView;->mCurrentStrokeWidth:F

    goto/16 :goto_2

    .line 345
    .end local v2    # "addedPoint":Lcom/android/internal/widget/SignView$SignatureInput;
    .end local v6    # "dx":F
    .end local v7    # "dy":F
    .end local v9    # "varLimit":F
    .end local v11    # "x":F
    .end local v12    # "y":F
    :cond_8
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/widget/BeautySignView;->mBezierX:F

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/internal/widget/BeautySignView;->mX:F

    .line 346
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/widget/BeautySignView;->mBezierY:F

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/internal/widget/BeautySignView;->mY:F

    .line 347
    return-void
.end method

.method private distanceTo(Landroid/graphics/Point;)F
    .locals 4
    .param p1, "end"    # Landroid/graphics/Point;

    .prologue
    .line 360
    iget v0, p1, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/android/internal/widget/BeautySignView;->mLastDrawPoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    sub-int/2addr v0, v1

    iget v1, p1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/android/internal/widget/BeautySignView;->mLastDrawPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    sub-int/2addr v1, v2

    mul-int/2addr v0, v1

    iget v1, p1, Landroid/graphics/Point;->y:I

    iget-object v2, p0, Lcom/android/internal/widget/BeautySignView;->mLastDrawPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    sub-int/2addr v1, v2

    iget v2, p1, Landroid/graphics/Point;->y:I

    iget-object v3, p0, Lcom/android/internal/widget/BeautySignView;->mLastDrawPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    sub-int/2addr v2, v3

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method private drawBeautyEffect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;
    .param p3, "startWidth"    # F
    .param p4, "endWidth"    # F

    .prologue
    .line 376
    invoke-virtual {p2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v2

    .line 377
    .local v2, "originalWidth":F
    sub-float v7, p4, p3

    .line 379
    .local v7, "widthDelta":F
    iget-object v10, p0, Lcom/android/internal/widget/BeautySignView;->mMidControlPoint:Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->x:I

    iget-object v11, p0, Lcom/android/internal/widget/BeautySignView;->mLastDrawPoint:Landroid/graphics/Point;

    iget v11, v11, Landroid/graphics/Point;->x:I

    sub-int/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    iget-object v11, p0, Lcom/android/internal/widget/BeautySignView;->mMidControlPoint:Landroid/graphics/Point;

    iget v11, v11, Landroid/graphics/Point;->y:I

    iget-object v12, p0, Lcom/android/internal/widget/BeautySignView;->mLastDrawPoint:Landroid/graphics/Point;

    iget v12, v12, Landroid/graphics/Point;->y:I

    sub-int/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    add-int/2addr v10, v11

    int-to-float v0, v10

    .line 381
    .local v0, "drawSteps":F
    iget-object v10, p0, Lcom/android/internal/widget/BeautySignView;->mMidControlPoint:Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->x:I

    iget-object v11, p0, Lcom/android/internal/widget/BeautySignView;->mCurrentEndPoint:Landroid/graphics/Point;

    iget v11, v11, Landroid/graphics/Point;->x:I

    sub-int/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    iget-object v11, p0, Lcom/android/internal/widget/BeautySignView;->mMidControlPoint:Landroid/graphics/Point;

    iget v11, v11, Landroid/graphics/Point;->y:I

    iget-object v12, p0, Lcom/android/internal/widget/BeautySignView;->mCurrentEndPoint:Landroid/graphics/Point;

    iget v12, v12, Landroid/graphics/Point;->y:I

    sub-int/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    add-int/2addr v10, v11

    int-to-float v10, v10

    add-float/2addr v0, v10

    .line 383
    const/high16 v10, 0x3f000000    # 0.5f

    add-float/2addr v0, v10

    .line 389
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    float-to-int v10, v0

    if-ge v1, v10, :cond_0

    .line 391
    int-to-float v10, v1

    div-float v3, v10, v0

    .line 392
    .local v3, "t":F
    mul-float v4, v3, v3

    .line 393
    .local v4, "tt":F
    const/high16 v10, 0x3f800000    # 1.0f

    sub-float v5, v10, v3

    .line 394
    .local v5, "u":F
    mul-float v6, v5, v5

    .line 396
    .local v6, "uu":F
    iget-object v10, p0, Lcom/android/internal/widget/BeautySignView;->mLastDrawPoint:Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->x:I

    int-to-float v10, v10

    mul-float v8, v6, v10

    .line 397
    .local v8, "x":F
    const/high16 v10, 0x40000000    # 2.0f

    mul-float/2addr v10, v5

    mul-float/2addr v10, v3

    iget-object v11, p0, Lcom/android/internal/widget/BeautySignView;->mMidControlPoint:Landroid/graphics/Point;

    iget v11, v11, Landroid/graphics/Point;->x:I

    int-to-float v11, v11

    mul-float/2addr v10, v11

    add-float/2addr v8, v10

    .line 398
    iget-object v10, p0, Lcom/android/internal/widget/BeautySignView;->mCurrentEndPoint:Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->x:I

    int-to-float v10, v10

    mul-float/2addr v10, v4

    add-float/2addr v8, v10

    .line 400
    iget-object v10, p0, Lcom/android/internal/widget/BeautySignView;->mLastDrawPoint:Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->y:I

    int-to-float v10, v10

    mul-float v9, v6, v10

    .line 401
    .local v9, "y":F
    const/high16 v10, 0x40000000    # 2.0f

    mul-float/2addr v10, v5

    mul-float/2addr v10, v3

    iget-object v11, p0, Lcom/android/internal/widget/BeautySignView;->mMidControlPoint:Landroid/graphics/Point;

    iget v11, v11, Landroid/graphics/Point;->y:I

    int-to-float v11, v11

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    .line 402
    iget-object v10, p0, Lcom/android/internal/widget/BeautySignView;->mCurrentEndPoint:Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->y:I

    int-to-float v10, v10

    mul-float/2addr v10, v4

    add-float/2addr v9, v10

    .line 405
    mul-float v10, v3, v7

    add-float v10, v10, p3

    invoke-virtual {p2, v10}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 409
    invoke-virtual {p1, v8, v9, p2}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    .line 389
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 412
    .end local v3    # "t":F
    .end local v4    # "tt":F
    .end local v5    # "u":F
    .end local v6    # "uu":F
    .end local v8    # "x":F
    .end local v9    # "y":F
    :cond_0
    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 413
    return-void
.end method

.method private getStrokeWidth(F)F
    .locals 8
    .param p1, "velocity"    # F

    .prologue
    .line 367
    iget v5, p0, Lcom/android/internal/widget/BeautySignView;->MAX_WIDTH:I

    int-to-float v5, v5

    const/high16 v6, 0x3f800000    # 1.0f

    mul-float v0, v5, v6

    .line 368
    .local v0, "WidthMax":F
    iget v5, p0, Lcom/android/internal/widget/BeautySignView;->MAX_WIDTH:I

    int-to-float v5, v5

    const v6, 0x3e4ccccd    # 0.2f

    mul-float v1, v5, v6

    .line 369
    .local v1, "WidthMin":F
    sub-float v5, v1, v0

    sget v6, Lcom/android/internal/widget/BeautySignView;->SPEED_MAX:F

    sget v7, Lcom/android/internal/widget/BeautySignView;->SPEED_MIN:F

    sub-float/2addr v6, v7

    div-float v2, v5, v6

    .line 370
    .local v2, "a":F
    sget v5, Lcom/android/internal/widget/BeautySignView;->SPEED_MIN:F

    mul-float/2addr v5, v2

    sub-float v3, v0, v5

    .line 371
    .local v3, "b":F
    mul-float v5, v2, p1

    add-float v4, v5, v3

    .line 372
    .local v4, "retValue":F
    return v4
.end method

.method private getVelocityFrom(Landroid/graphics/Point;)F
    .locals 6
    .param p1, "end"    # Landroid/graphics/Point;

    .prologue
    .line 350
    const/4 v0, 0x0

    .line 351
    .local v0, "retVal":F
    iget-wide v2, p0, Lcom/android/internal/widget/BeautySignView;->mCurrentPointTime:J

    iget-wide v4, p0, Lcom/android/internal/widget/BeautySignView;->mLastPointTime:J

    sub-long/2addr v2, v4

    long-to-float v1, v2

    .line 352
    .local v1, "time":F
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_0

    .line 353
    invoke-direct {p0, p1}, Lcom/android/internal/widget/BeautySignView;->distanceTo(Landroid/graphics/Point;)F

    move-result v2

    div-float v0, v2, v1

    .line 355
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/widget/BeautySignView;->mLastPointTime:J

    .line 356
    return v0
.end method


# virtual methods
.method protected clearInDoAddSign()V
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/internal/widget/BeautySignView;->mBeautyEffectInputData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 182
    return-void
.end method

.method protected clearInDoVerifySign()V
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/internal/widget/BeautySignView;->mBeautyEffectInputData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 187
    return-void
.end method

.method doBezier(IFFFFJF)V
    .locals 26
    .param p1, "arraySize"    # I
    .param p2, "oldX"    # F
    .param p3, "oldY"    # F
    .param p4, "newX"    # F
    .param p5, "newY"    # F
    .param p6, "timeStamp"    # J
    .param p8, "pressure"    # F

    .prologue
    .line 238
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/BeautySignView;->mBeautyEffectInputData:Ljava/util/ArrayList;

    add-int/lit8 v3, p1, -0x2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/internal/widget/SignView$SignatureInput;

    .line 239
    .local v25, "startPoint":Lcom/android/internal/widget/SignView$SignatureInput;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/BeautySignView;->mBeautyEffectInputData:Ljava/util/ArrayList;

    add-int/lit8 v3, p1, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/internal/widget/SignView$SignatureInput;

    .line 241
    .local v24, "controlPoint":Lcom/android/internal/widget/SignView$SignatureInput;
    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/internal/widget/SignView$SignatureInput;->mX:F

    move/from16 v18, v0

    .line 242
    .local v18, "P0X":F
    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/internal/widget/SignView$SignatureInput;->mY:F

    move/from16 v19, v0

    .line 243
    .local v19, "P0Y":F
    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/internal/widget/SignView$SignatureInput;->mX:F

    move/from16 v20, v0

    .line 244
    .local v20, "P1X":F
    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/internal/widget/SignView$SignatureInput;->mY:F

    move/from16 v21, v0

    .line 245
    .local v21, "P1Y":F
    add-float v2, p4, p2

    const/high16 v3, 0x40000000    # 2.0f

    div-float v22, v2, v3

    .line 246
    .local v22, "P2X":F
    add-float v2, p5, p3

    const/high16 v3, 0x40000000    # 2.0f

    div-float v23, v2, v3

    .line 249
    .local v23, "P2Y":F
    const/high16 v2, 0x3f000000    # 0.5f

    mul-float v2, v2, v18

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    mul-float v3, v3, v20

    const/high16 v8, 0x3f000000    # 0.5f

    mul-float/2addr v3, v8

    const/high16 v8, 0x3f000000    # 0.5f

    mul-float/2addr v3, v8

    add-float/2addr v2, v3

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float v3, v3, v22

    const/high16 v8, 0x3f000000    # 0.5f

    mul-float/2addr v3, v8

    add-float v4, v2, v3

    .line 250
    .local v4, "middleX":F
    const/high16 v2, 0x3f000000    # 0.5f

    mul-float v2, v2, v19

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    mul-float v3, v3, v21

    const/high16 v8, 0x3f000000    # 0.5f

    mul-float/2addr v3, v8

    const/high16 v8, 0x3f000000    # 0.5f

    mul-float/2addr v3, v8

    add-float/2addr v2, v3

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float v3, v3, v23

    const/high16 v8, 0x3f000000    # 0.5f

    mul-float/2addr v3, v8

    add-float v5, v2, v3

    .line 251
    .local v5, "middleY":F
    move-object/from16 v0, v24

    iget-wide v6, v0, Lcom/android/internal/widget/SignView$SignatureInput;->mTime:J

    .line 252
    .local v6, "middleTime":J
    move-object/from16 v0, v24

    iget v9, v0, Lcom/android/internal/widget/SignView$SignatureInput;->mPressure:F

    .line 254
    .local v9, "middlePressure":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/BeautySignView;->mBeautyEffectInputData:Ljava/util/ArrayList;

    add-int/lit8 v3, p1, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 255
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/widget/BeautySignView;->mBeautyEffectInputData:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/internal/widget/SignView$SignatureInput;

    const/4 v8, 0x2

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v9}, Lcom/android/internal/widget/SignView$SignatureInput;-><init>(Lcom/android/internal/widget/SignView;FFJIF)V

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 257
    sget-boolean v2, Lcom/android/internal/widget/BeautySignView;->DBG_TOUCH:Z

    if-eqz v2, :cond_0

    .line 258
    const-string v2, "BeautySignView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "2nd point inserted, ("

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, ", "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, ", "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, ", "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, ")"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    :cond_0
    move/from16 v12, v22

    .line 264
    .local v12, "endX":F
    move/from16 v13, v23

    .line 265
    .local v13, "endY":F
    move-wide/from16 v14, p6

    .line 266
    .local v14, "endTime":J
    move/from16 v17, p8

    .line 268
    .local v17, "endPressure":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/BeautySignView;->mBeautyEffectInputData:Ljava/util/ArrayList;

    new-instance v10, Lcom/android/internal/widget/SignView$SignatureInput;

    const/16 v16, 0x2

    move-object/from16 v11, p0

    invoke-direct/range {v10 .. v17}, Lcom/android/internal/widget/SignView$SignatureInput;-><init>(Lcom/android/internal/widget/SignView;FFJIF)V

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 270
    sget-boolean v2, Lcom/android/internal/widget/BeautySignView;->DBG_TOUCH:Z

    if-eqz v2, :cond_1

    .line 271
    const-string v2, "BeautySignView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "End point inserted, ("

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, ", "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, ", "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, ", "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    :cond_1
    return-void
.end method

.method protected handleActionDown(Landroid/view/MotionEvent;FF)V
    .locals 9
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    const/4 v6, 0x0

    .line 100
    iput-boolean v6, p0, Lcom/android/internal/widget/BeautySignView;->mBezierEnabled:Z

    .line 101
    iput p2, p0, Lcom/android/internal/widget/BeautySignView;->mBezierX:F

    .line 102
    iput p3, p0, Lcom/android/internal/widget/BeautySignView;->mBezierY:F

    .line 103
    iget-object v0, p0, Lcom/android/internal/widget/BeautySignView;->mPrevious:Landroid/graphics/Point;

    invoke-virtual {v0, v6, v6}, Landroid/graphics/Point;->set(II)V

    .line 105
    iget-object v0, p0, Lcom/android/internal/widget/BeautySignView;->mLastDrawPoint:Landroid/graphics/Point;

    float-to-int v1, p2

    float-to-int v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    .line 106
    iget-object v0, p0, Lcom/android/internal/widget/BeautySignView;->mSignPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/BeautySignView;->mLastStrokeWidth:F

    .line 107
    iget-object v0, p0, Lcom/android/internal/widget/BeautySignView;->mSignPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/BeautySignView;->mCurrentStrokeWidth:F

    .line 108
    iget-wide v0, p0, Lcom/android/internal/widget/BeautySignView;->mStartTime:J

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/widget/BeautySignView;->mLastPointTime:J

    .line 110
    iget-object v8, p0, Lcom/android/internal/widget/BeautySignView;->mBeautyEffectInputData:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/internal/widget/SignView$SignatureInput;

    iget-wide v2, p0, Lcom/android/internal/widget/BeautySignView;->mStartTime:J

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    sub-long v4, v2, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPressure()F

    move-result v7

    move-object v1, p0

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/widget/SignView$SignatureInput;-><init>(Lcom/android/internal/widget/SignView;FFJIF)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    return-void
.end method

.method protected handleActionMove(Landroid/view/MotionEvent;FF)V
    .locals 11
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 117
    iget-boolean v0, p0, Lcom/android/internal/widget/BeautySignView;->mUseHistoricalEvent:Z

    if-eqz v0, :cond_1

    .line 119
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v0

    if-ge v9, v0, :cond_1

    .line 121
    iget-object v0, p0, Lcom/android/internal/widget/BeautySignView;->mSignatureInputData:[Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/internal/widget/BeautySignView;->getIndex()I

    move-result v1

    aget-object v10, v0, v1

    new-instance v0, Lcom/android/internal/widget/SignView$SignatureInput;

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v1

    float-to-int v1, v1

    int-to-float v2, v1

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v1

    float-to-int v1, v1

    int-to-float v3, v1

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getHistoricalEventTime(I)J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/internal/widget/BeautySignView;->mStartTime:J

    sub-long/2addr v4, v6

    const/4 v6, 0x2

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getHistoricalPressure(I)F

    move-result v7

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/widget/SignView$SignatureInput;-><init>(Lcom/android/internal/widget/SignView;FFJIF)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    sget-boolean v0, Lcom/android/internal/widget/BeautySignView;->DBG_TOUCH:Z

    if-eqz v0, :cond_0

    .line 128
    const-string v0, "BeautySignView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Insert historical event first ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 141
    .end local v9    # "i":I
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/BeautySignView;->mBeautyEffectInputData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 144
    .local v8, "arraySizeSaved":I
    iget-boolean v0, p0, Lcom/android/internal/widget/BeautySignView;->mUseHistoricalEvent:Z

    if-eqz v0, :cond_3

    .line 146
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v0

    if-ge v9, v0, :cond_3

    .line 147
    iget-object v0, p0, Lcom/android/internal/widget/BeautySignView;->mPrevious:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v1

    float-to-int v1, v1

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/internal/widget/BeautySignView;->mPrevious:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v1

    float-to-int v1, v1

    if-eq v0, v1, :cond_2

    .line 149
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v0

    float-to-int v2, v0

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v0

    float-to-int v3, v0

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getHistoricalEventTime(I)J

    move-result-wide v0

    iget-wide v4, p0, Lcom/android/internal/widget/BeautySignView;->mStartTime:J

    sub-long v4, v0, v4

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getHistoricalPressure(I)F

    move-result v6

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/widget/BeautySignView;->handleMoveEventWithBezier(IIJF)V

    .line 153
    iget-object v0, p0, Lcom/android/internal/widget/BeautySignView;->mPrevious:Landroid/graphics/Point;

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    .line 146
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 158
    .end local v9    # "i":I
    :cond_3
    iget-object v0, p0, Lcom/android/internal/widget/BeautySignView;->mPrevious:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    float-to-int v1, p2

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/android/internal/widget/BeautySignView;->mPrevious:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    float-to-int v1, p3

    if-eq v0, v1, :cond_4

    .line 160
    float-to-int v2, p2

    float-to-int v3, p3

    iget-wide v4, p0, Lcom/android/internal/widget/BeautySignView;->mTimeStamp:J

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPressure()F

    move-result v6

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/widget/BeautySignView;->handleMoveEventWithBezier(IIJF)V

    .line 161
    iget-object v0, p0, Lcom/android/internal/widget/BeautySignView;->mPrevious:Landroid/graphics/Point;

    float-to-int v1, p2

    float-to-int v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    .line 165
    :cond_4
    invoke-direct {p0, v8}, Lcom/android/internal/widget/BeautySignView;->addToPathForDrawing(I)V

    .line 166
    invoke-virtual {p0}, Lcom/android/internal/widget/BeautySignView;->invalidate()V

    .line 167
    return-void
.end method

.method protected handleActionUp(Landroid/view/MotionEvent;FF)V
    .locals 9
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 171
    iget-object v8, p0, Lcom/android/internal/widget/BeautySignView;->mBeautyEffectInputData:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/internal/widget/SignView$SignatureInput;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/internal/widget/BeautySignView;->mStartTime:J

    sub-long v4, v2, v4

    const/4 v6, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPressure()F

    move-result v7

    move-object v1, p0

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/widget/SignView$SignatureInput;-><init>(Lcom/android/internal/widget/SignView;FFJIF)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    iget-object v0, p0, Lcom/android/internal/widget/BeautySignView;->mSignPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/BeautySignView;->mLastStrokeWidth:F

    .line 175
    iget-object v0, p0, Lcom/android/internal/widget/BeautySignView;->mSignPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/BeautySignView;->mCurrentStrokeWidth:F

    .line 176
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/widget/BeautySignView;->mLastPointTime:J

    .line 177
    return-void
.end method

.method protected handleMoveEventWithBezier(IIJF)V
    .locals 17
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "timeStamp"    # J
    .param p5, "pressure"    # F

    .prologue
    .line 190
    sget-boolean v2, Lcom/android/internal/widget/BeautySignView;->DBG_TOUCH:Z

    if-eqz v2, :cond_0

    .line 191
    const-string v2, "BeautySignView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleMoveEventWithBezier ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/BeautySignView;->mBeautyEffectInputData:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 195
    .local v3, "arraySize":I
    const/4 v2, 0x2

    if-lt v3, v2, :cond_1

    .line 196
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/BeautySignView;->mBeautyEffectInputData:Ljava/util/ArrayList;

    add-int/lit8 v4, v3, -0x2

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/internal/widget/SignView$SignatureInput;

    .line 197
    .local v15, "startPoint":Lcom/android/internal/widget/SignView$SignatureInput;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/BeautySignView;->mBeautyEffectInputData:Ljava/util/ArrayList;

    add-int/lit8 v4, v3, -0x1

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/widget/SignView$SignatureInput;

    .line 199
    .local v12, "controlPoint":Lcom/android/internal/widget/SignView$SignatureInput;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/widget/BeautySignView;->mBezierEnabled:Z

    if-nez v2, :cond_1

    iget v2, v15, Lcom/android/internal/widget/SignView$SignatureInput;->mTag:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    iget v2, v12, Lcom/android/internal/widget/SignView$SignatureInput;->mTag:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    .line 201
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/widget/BeautySignView;->mBezierEnabled:Z

    .line 205
    .end local v12    # "controlPoint":Lcom/android/internal/widget/SignView$SignatureInput;
    .end local v15    # "startPoint":Lcom/android/internal/widget/SignView$SignatureInput;
    :cond_1
    move/from16 v0, p1

    int-to-float v2, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/widget/BeautySignView;->mBezierX:F

    sub-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v13

    .line 206
    .local v13, "dx":F
    move/from16 v0, p2

    int-to-float v2, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/widget/BeautySignView;->mBezierY:F

    sub-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v14

    .line 207
    .local v14, "dy":F
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/widget/BeautySignView;->mBezierEnabled:Z

    if-eqz v2, :cond_6

    const/high16 v2, 0x41a00000    # 20.0f

    cmpl-float v2, v13, v2

    if-gez v2, :cond_2

    const/high16 v2, 0x41a00000    # 20.0f

    cmpl-float v2, v14, v2

    if-ltz v2, :cond_6

    .line 210
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/widget/BeautySignView;->mOrignialLineSmooth:Z

    if-eqz v2, :cond_4

    .line 211
    sget-boolean v2, Lcom/android/internal/widget/BeautySignView;->DBG_TOUCH:Z

    if-eqz v2, :cond_3

    const-string v2, "BeautySignView"

    const-string v4, "No apply Bezier"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    :cond_3
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/widget/BeautySignView;->mBeautyEffectInputData:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/internal/widget/SignView$SignatureInput;

    move/from16 v0, p1

    int-to-float v4, v0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/widget/BeautySignView;->mBezierX:F

    add-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    move/from16 v0, p2

    int-to-float v5, v0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/widget/BeautySignView;->mBezierY:F

    add-float/2addr v5, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    const/4 v8, 0x2

    move-object/from16 v3, p0

    move-wide/from16 v6, p3

    move/from16 v9, p5

    invoke-direct/range {v2 .. v9}, Lcom/android/internal/widget/SignView$SignatureInput;-><init>(Lcom/android/internal/widget/SignView;FFJIF)V

    .end local v3    # "arraySize":I
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 222
    :goto_0
    move/from16 v0, p1

    int-to-float v2, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/widget/BeautySignView;->mBezierX:F

    add-float/2addr v2, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    float-to-int v2, v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/BeautySignView;->mBezierX:F

    .line 223
    move/from16 v0, p2

    int-to-float v2, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/widget/BeautySignView;->mBezierY:F

    add-float/2addr v2, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    float-to-int v2, v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/BeautySignView;->mBezierY:F

    .line 234
    :goto_1
    return-void

    .line 216
    .restart local v3    # "arraySize":I
    :cond_4
    sget-boolean v2, Lcom/android/internal/widget/BeautySignView;->DBG_TOUCH:Z

    if-eqz v2, :cond_5

    const-string v2, "BeautySignView"

    const-string v4, "Apply Bezier"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :cond_5
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/widget/BeautySignView;->mBezierX:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/widget/BeautySignView;->mBezierY:F

    move/from16 v0, p1

    int-to-float v6, v0

    move/from16 v0, p2

    int-to-float v7, v0

    move-object/from16 v2, p0

    move-wide/from16 v8, p3

    move/from16 v10, p5

    invoke-virtual/range {v2 .. v10}, Lcom/android/internal/widget/BeautySignView;->doBezier(IFFFFJF)V

    goto :goto_0

    .line 225
    :cond_6
    sget-boolean v2, Lcom/android/internal/widget/BeautySignView;->DBG_TOUCH:Z

    if-eqz v2, :cond_7

    .line 226
    const-string v2, "BeautySignView"

    const-string v4, "Just save this point"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/BeautySignView;->mBeautyEffectInputData:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/widget/SignView$SignatureInput;

    move/from16 v0, p1

    int-to-float v6, v0

    move/from16 v0, p2

    int-to-float v7, v0

    const/4 v10, 0x2

    move-object/from16 v5, p0

    move-wide/from16 v8, p3

    move/from16 v11, p5

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/widget/SignView$SignatureInput;-><init>(Lcom/android/internal/widget/SignView;FFJIF)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 231
    move/from16 v0, p1

    int-to-float v2, v0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/BeautySignView;->mBezierX:F

    .line 232
    move/from16 v0, p2

    int-to-float v2, v0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/BeautySignView;->mBezierY:F

    goto :goto_1
.end method

.method protected init(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 66
    invoke-super {p0, p1}, Lcom/android/internal/widget/SignView;->init(Landroid/content/Context;)V

    .line 68
    iput-boolean v1, p0, Lcom/android/internal/widget/BeautySignView;->mBezierEnabled:Z

    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/BeautySignView;->mOrignialLineSmooth:Z

    .line 71
    iput v2, p0, Lcom/android/internal/widget/BeautySignView;->mLastStrokeWidth:F

    .line 72
    iput v2, p0, Lcom/android/internal/widget/BeautySignView;->mCurrentStrokeWidth:F

    .line 73
    iput v2, p0, Lcom/android/internal/widget/BeautySignView;->mLastVelocity:F

    .line 74
    iput-wide v4, p0, Lcom/android/internal/widget/BeautySignView;->mLastPointTime:J

    .line 75
    iput-wide v4, p0, Lcom/android/internal/widget/BeautySignView;->mCurrentPointTime:J

    .line 76
    iput-boolean v1, p0, Lcom/android/internal/widget/BeautySignView;->mInitWidthVarRatio:Z

    .line 78
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/BeautySignView;->mCurrentEndPoint:Landroid/graphics/Point;

    .line 79
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/BeautySignView;->mMidControlPoint:Landroid/graphics/Point;

    .line 80
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/BeautySignView;->mLastDrawPoint:Landroid/graphics/Point;

    .line 81
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/BeautySignView;->mPrevious:Landroid/graphics/Point;

    .line 82
    iget-object v0, p0, Lcom/android/internal/widget/BeautySignView;->mPrevious:Landroid/graphics/Point;

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Point;->set(II)V

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/BeautySignView;->mBeautyEffectInputData:Ljava/util/ArrayList;

    .line 85
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v2, 0x0

    .line 89
    iget-boolean v0, p0, Lcom/android/internal/widget/BeautySignView;->mSignatureVisible:Z

    if-eqz v0, :cond_0

    .line 90
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 91
    iget-object v0, p0, Lcom/android/internal/widget/BeautySignView;->mSignBmpWrite:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/BeautySignView;->mSignBmpWrite:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/BeautySignView;->mSignBmpWrite:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/android/internal/widget/BeautySignView;->mSignBmpWrite:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/internal/widget/BeautySignView;->mSignPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 96
    :cond_0
    return-void
.end method
