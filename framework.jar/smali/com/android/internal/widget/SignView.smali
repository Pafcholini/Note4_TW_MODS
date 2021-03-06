.class public Lcom/android/internal/widget/SignView;
.super Landroid/view/View;
.source "SignView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/SignView$SignatureInput;,
        Lcom/android/internal/widget/SignView$OnSignatureListener;
    }
.end annotation


# static fields
.field public static final ADD_ONE_SIGN:I = 0x0

.field private static final BORDER_WIDTH:I = 0x3

.field private static final DBG:Z

.field private static final DBG_PUSH:Z

.field protected static final DBG_TOUCH:Z

.field private static final DEFAULT_THRESHOLD:I = 0x1f4

.field private static final DEF_PEN_WIDTH:I = 0x8

.field private static final MAX_POINT:I = 0xc00

.field private static final MAX_POINT_TIMER_DELAY:I = 0x7d0

.field private static final MAX_SIGNDB_NUMBER:I = 0x2

.field private static final MIN_SIGNATURE_NUM:I = 0x3

.field private static final MIN_XY:I = 0xc8

.field private static final PRESSURE_MP:I = 0x400

.field private static final RECOG_TIMER_DELAY:I = 0x2bc

.field private static final SIGN_DATA_PATH:Ljava/lang/String; = "/data/data/com.sec.android.signaturelock/data/"

.field protected static final TAG:Ljava/lang/String; = "SignView"

.field private static THRESHOLDS:[I = null

.field protected static final TOUCH_TOLERANCE:F = 20.0f

.field public static final USER_ID:I = 0xa

.field private static final USE_ONLY_PEN:Z = true

.field public static final VERIFY_FAIL_DIFFERENT:I = 0x2

.field public static final VERIFY_FAIL_ENGINE:I = 0x0

.field public static final VERIFY_FAIL_STROKE:I = 0x1

.field public static final VERIFY_FAIL_TOO_SIMPLE:I = 0x4

.field public static final VERIFY_FAIL_TOO_SMALL:I = 0x3

.field public static final VERIFY_LEVEL_APP_EASY:I = 0x2

.field public static final VERIFY_LEVEL_APP_HARD:I = 0x4

.field public static final VERIFY_LEVEL_APP_NORMAL:I = 0x3

.field public static final VERIFY_LEVEL_LOCK_EASY:I = 0x0

.field public static final VERIFY_LEVEL_LOCK_HARD:I = 0x2

.field public static final VERIFY_LEVEL_LOCK_NORMAL:I = 0x1

.field public static final VERIFY_ONE_SIGN:I = 0x1


# instance fields
.field private mBackgroundResourceID:I

.field protected mCanvas:Landroid/graphics/Canvas;

.field private mCompensationEnabled:Z

.field private mCurrentStroke:I

.field private mFirstDraw:Z

.field private mHasOutLine:Z

.field private mInputOneStrokStamp:I

.field protected mInputType:I

.field private mMaxPointReached:Z

.field private mOnSignatureListener:Lcom/android/internal/widget/SignView$OnSignatureListener;

.field protected mPath:Landroid/graphics/Path;

.field private mPenWidth:I

.field private mPersistentShow:Z

.field private mRecognized:Z

.field private mRect:Landroid/graphics/Rect;

.field private mSavedInputType:I

.field private mSavedSignatureCount:I

.field private mSavedStrokeCount:I

.field private final mServiceRunningLock:Ljava/lang/Object;

.field protected mSignBmpWrite:Landroid/graphics/Bitmap;

.field private mSignHandler:Landroid/os/Handler;

.field protected mSignPaint:Landroid/graphics/Paint;

.field private mSignService:Lcom/android/internal/policy/ISignServiceInterface;

.field private mSignViewX:I

.field private mSignViewY:I

.field protected mSignatureInputData:[Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/widget/SignView$SignatureInput;",
            ">;"
        }
    .end annotation
.end field

.field protected mSignatureVisible:Z

.field private mStartStamp:I

.field protected mStartTime:J

.field private mStatus:I

.field private mThresholdValue:I

.field private mTimeGap:I

.field private mTimeOneStrokTap:I

.field protected mTimeStamp:J

.field protected mUseHistoricalEvent:Z

.field private mUserInputEnabled:Z

.field private mVerificationLevel:I

.field private mVerifyVOffsetRegisterViewX:I

.field private mVerifyVOffsetRegisterViewY:I

.field private mWriteStart:Z

.field private mWritingAreaHeight:I

.field private mWritingAreaWidth:I

.field protected mX:F

.field protected mY:F

.field private signUpdateTimeTask:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 55
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    if-ne v0, v2, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/internal/widget/SignView;->DBG:Z

    .line 56
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    if-ne v0, v2, :cond_1

    move v0, v1

    :goto_1
    sput-boolean v0, Lcom/android/internal/widget/SignView;->DBG_TOUCH:Z

    .line 57
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    if-ne v0, v2, :cond_2

    :goto_2
    sput-boolean v1, Lcom/android/internal/widget/SignView;->DBG_PUSH:Z

    return-void

    :cond_0
    move v0, v2

    .line 55
    goto :goto_0

    :cond_1
    move v0, v2

    .line 56
    goto :goto_1

    :cond_2
    move v1, v2

    .line 57
    goto :goto_2
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 191
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 141
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/SignView;->mServiceRunningLock:Ljava/lang/Object;

    .line 869
    new-instance v0, Lcom/android/internal/widget/SignView$1;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/SignView$1;-><init>(Lcom/android/internal/widget/SignView;)V

    iput-object v0, p0, Lcom/android/internal/widget/SignView;->signUpdateTimeTask:Ljava/lang/Runnable;

    .line 193
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/SignView;->init(Landroid/content/Context;)V

    .line 194
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 185
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 141
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/SignView;->mServiceRunningLock:Ljava/lang/Object;

    .line 869
    new-instance v0, Lcom/android/internal/widget/SignView$1;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/SignView$1;-><init>(Lcom/android/internal/widget/SignView;)V

    iput-object v0, p0, Lcom/android/internal/widget/SignView;->signUpdateTimeTask:Ljava/lang/Runnable;

    .line 187
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/SignView;->init(Landroid/content/Context;)V

    .line 188
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/widget/SignView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/SignView;

    .prologue
    .line 53
    iget v0, p0, Lcom/android/internal/widget/SignView;->mStatus:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/internal/widget/SignView;)Lcom/android/internal/widget/SignView$OnSignatureListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/SignView;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/internal/widget/SignView;->mOnSignatureListener:Lcom/android/internal/widget/SignView$OnSignatureListener;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/internal/widget/SignView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/widget/SignView;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/android/internal/widget/SignView;->mFirstDraw:Z

    return p1
.end method

.method static synthetic access$302(Lcom/android/internal/widget/SignView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/widget/SignView;
    .param p1, "x1"    # I

    .prologue
    .line 53
    iput p1, p0, Lcom/android/internal/widget/SignView;->mCurrentStroke:I

    return p1
.end method

.method static synthetic access$402(Lcom/android/internal/widget/SignView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/widget/SignView;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/android/internal/widget/SignView;->mMaxPointReached:Z

    return p1
.end method

.method static synthetic access$500()Z
    .locals 1

    .prologue
    .line 53
    sget-boolean v0, Lcom/android/internal/widget/SignView;->DBG:Z

    return v0
.end method

.method private checkPreCondition(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 528
    iget-boolean v3, p0, Lcom/android/internal/widget/SignView;->mUserInputEnabled:Z

    if-nez v3, :cond_0

    move v3, v4

    .line 572
    :goto_0
    return v3

    .line 532
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 534
    .local v0, "action":I
    if-nez v0, :cond_1

    .line 535
    invoke-virtual {p0}, Lcom/android/internal/widget/SignView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->requestAccessibilityFocus()Z

    .line 538
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/internal/widget/SignView;->isFingerInput(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 539
    const-string v3, "SignView"

    const-string v5, "Finger input is not available, rejected touch event"

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    if-nez v0, :cond_2

    .line 541
    iget-object v3, p0, Lcom/android/internal/widget/SignView;->mContext:Landroid/content/Context;

    const v5, 0x104093a

    invoke-static {v3, v5, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    .line 543
    .local v2, "toast":Landroid/widget/Toast;
    invoke-virtual {v2}, Landroid/widget/Toast;->setShowForAllUsers()V

    .line 544
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .end local v2    # "toast":Landroid/widget/Toast;
    :cond_2
    move v3, v4

    .line 546
    goto :goto_0

    .line 550
    :cond_3
    iget-object v3, p0, Lcom/android/internal/widget/SignView;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;

    if-nez v3, :cond_5

    .line 551
    const-string v3, "SignView"

    const-string/jumbo v5, "mSignService is null"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    iget-object v3, p0, Lcom/android/internal/widget/SignView;->mOnSignatureListener:Lcom/android/internal/widget/SignView$OnSignatureListener;

    if-eqz v3, :cond_4

    .line 554
    iget-object v3, p0, Lcom/android/internal/widget/SignView;->mOnSignatureListener:Lcom/android/internal/widget/SignView$OnSignatureListener;

    invoke-interface {v3}, Lcom/android/internal/widget/SignView$OnSignatureListener;->notifySignServiceError()V

    :cond_4
    move v3, v4

    .line 556
    goto :goto_0

    .line 559
    :cond_5
    const/16 v1, 0xc00

    .line 560
    .local v1, "maxPoints":I
    iget-object v3, p0, Lcom/android/internal/widget/SignView;->mSignatureInputData:[Ljava/util/ArrayList;

    iget v6, p0, Lcom/android/internal/widget/SignView;->mSavedSignatureCount:I

    aget-object v3, v3, v6

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v3, v1, :cond_7

    .line 561
    const-string v3, "SignView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Too many points, can\'t handle it: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    iget-boolean v3, p0, Lcom/android/internal/widget/SignView;->mMaxPointReached:Z

    if-nez v3, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-ne v3, v5, :cond_6

    .line 565
    iput-boolean v5, p0, Lcom/android/internal/widget/SignView;->mMaxPointReached:Z

    .line 566
    iget-object v3, p0, Lcom/android/internal/widget/SignView;->mSignHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/internal/widget/SignView;->signUpdateTimeTask:Ljava/lang/Runnable;

    const-wide/16 v6, 0x7d0

    invoke-virtual {v3, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_6
    move v3, v4

    .line 569
    goto/16 :goto_0

    :cond_7
    move v3, v5

    .line 572
    goto/16 :goto_0
.end method

.method private fillAreaBackground()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 806
    iget-object v0, p0, Lcom/android/internal/widget/SignView;->mCanvas:Landroid/graphics/Canvas;

    const/4 v1, 0x0

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 807
    sget-boolean v0, Lcom/android/internal/widget/SignView;->DBG:Z

    if-eqz v0, :cond_0

    .line 808
    const-string v0, "SignView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fillAreaBackground mBackgroundResourceID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/SignView;->mBackgroundResourceID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    :cond_0
    iget v0, p0, Lcom/android/internal/widget/SignView;->mBackgroundResourceID:I

    if-lez v0, :cond_1

    .line 811
    iget-object v0, p0, Lcom/android/internal/widget/SignView;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p0}, Lcom/android/internal/widget/SignView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/SignView;->mBackgroundResourceID:I

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/widget/SignView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 814
    :cond_1
    return-void
.end method

.method private getToolValue(I)I
    .locals 2
    .param p1, "inputType"    # I

    .prologue
    .line 587
    const/4 v0, 0x0

    .line 588
    .local v0, "tool":I
    const/4 v1, 0x2

    if-ne v1, p1, :cond_1

    .line 589
    const/4 v0, 0x0

    .line 593
    :cond_0
    :goto_0
    return v0

    .line 590
    :cond_1
    const/4 v1, 0x1

    if-ne v1, p1, :cond_0

    .line 591
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private insertDataToEngine(I)V
    .locals 13
    .param p1, "index"    # I

    .prologue
    .line 1163
    sget-boolean v1, Lcom/android/internal/widget/SignView;->DBG:Z

    if-eqz v1, :cond_0

    .line 1164
    const-string v1, "SignView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "insert points to engine from array: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1166
    :cond_0
    const/4 v11, 0x1

    .line 1167
    .local v11, "startWriting":Z
    const/4 v10, 0x0

    .line 1168
    .local v10, "isOdd":I
    const/4 v0, 0x0

    .line 1171
    .local v0, "count":I
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/widget/SignView;->mSignatureInputData:[Ljava/util/ArrayList;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/widget/SignView$SignatureInput;

    .line 1172
    .local v9, "input":Lcom/android/internal/widget/SignView$SignatureInput;
    sget-boolean v1, Lcom/android/internal/widget/SignView;->DBG_PUSH:Z

    if-eqz v1, :cond_2

    const-string v1, "SignView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "index("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1174
    :cond_2
    iget v1, v9, Lcom/android/internal/widget/SignView$SignatureInput;->mTag:I

    packed-switch v1, :pswitch_data_0

    .line 1213
    :goto_0
    const/16 v1, 0xc00

    if-lt v0, v1, :cond_1

    .line 1215
    const-string v1, "SignView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exceeds maximum points, finish input: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1216
    iget-object v1, p0, Lcom/android/internal/widget/SignView;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;

    invoke-interface {v1}, Lcom/android/internal/policy/ISignServiceInterface;->endOneStroke()V

    .line 1217
    iget-object v1, p0, Lcom/android/internal/widget/SignView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 1222
    .end local v9    # "input":Lcom/android/internal/widget/SignView$SignatureInput;
    :cond_3
    iget-object v1, p0, Lcom/android/internal/widget/SignView;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;

    invoke-interface {v1}, Lcom/android/internal/policy/ISignServiceInterface;->endWriting()V

    .line 1226
    .end local v8    # "i$":Ljava/util/Iterator;
    :goto_1
    return-void

    .line 1176
    .restart local v8    # "i$":Ljava/util/Iterator;
    .restart local v9    # "input":Lcom/android/internal/widget/SignView$SignatureInput;
    :pswitch_0
    if-eqz v11, :cond_4

    .line 1177
    const/4 v11, 0x0

    .line 1178
    iget-object v1, p0, Lcom/android/internal/widget/SignView;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;

    invoke-interface {v1}, Lcom/android/internal/policy/ISignServiceInterface;->reset()V

    .line 1179
    iget-object v1, p0, Lcom/android/internal/widget/SignView;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;

    invoke-interface {v1}, Lcom/android/internal/policy/ISignServiceInterface;->setPointZero()V

    .line 1182
    :cond_4
    add-int/lit8 v0, v0, 0x1

    .line 1183
    const/4 v10, 0x0

    .line 1185
    iget-object v1, p0, Lcom/android/internal/widget/SignView;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;

    iget v2, p0, Lcom/android/internal/widget/SignView;->mWritingAreaWidth:I

    iget v3, p0, Lcom/android/internal/widget/SignView;->mWritingAreaHeight:I

    invoke-interface {v1, v2, v3}, Lcom/android/internal/policy/ISignServiceInterface;->startWriting(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1223
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v9    # "input":Lcom/android/internal/widget/SignView$SignatureInput;
    :catch_0
    move-exception v7

    .line 1224
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 1189
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v8    # "i$":Ljava/util/Iterator;
    .restart local v9    # "input":Lcom/android/internal/widget/SignView$SignatureInput;
    :pswitch_1
    add-int/lit8 v10, v10, 0x1

    .line 1198
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/widget/SignView;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;

    iget v2, v9, Lcom/android/internal/widget/SignView$SignatureInput;->mX:F

    float-to-int v2, v2

    iget v3, v9, Lcom/android/internal/widget/SignView$SignatureInput;->mY:F

    float-to-int v3, v3

    iget-wide v4, v9, Lcom/android/internal/widget/SignView$SignatureInput;->mTime:J

    iget v6, v9, Lcom/android/internal/widget/SignView$SignatureInput;->mPressure:F

    const/high16 v12, 0x44800000    # 1024.0f

    mul-float/2addr v6, v12

    float-to-int v6, v6

    invoke-interface/range {v1 .. v6}, Lcom/android/internal/policy/ISignServiceInterface;->addOnePoint(IIJI)V

    goto :goto_0

    .line 1208
    :pswitch_2
    add-int/lit8 v0, v0, 0x1

    .line 1209
    iget-object v1, p0, Lcom/android/internal/widget/SignView;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;

    invoke-interface {v1}, Lcom/android/internal/policy/ISignServiceInterface;->endOneStroke()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1174
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private isFingerInput(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 515
    const/4 v0, 0x0

    .line 517
    .local v0, "fingerInput":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 518
    const/4 v2, 0x1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 519
    const/4 v0, 0x1

    .line 517
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 523
    :cond_1
    return v0
.end method

.method private setThreshold(Landroid/view/MotionEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1033
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 1036
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v1

    .line 1038
    .local v1, "inputType":I
    sget-boolean v2, Lcom/android/internal/widget/SignView;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "SignView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getToolType(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", old: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/widget/SignView;->mInputType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1040
    :cond_0
    iget v2, p0, Lcom/android/internal/widget/SignView;->mInputType:I

    if-eq v1, v2, :cond_1

    .line 1041
    iput v1, p0, Lcom/android/internal/widget/SignView;->mInputType:I

    .line 1033
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1048
    .end local v1    # "inputType":I
    :cond_2
    return-void
.end method

.method private setThresholdWithType()V
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 1058
    sget-boolean v1, Lcom/android/internal/widget/SignView;->DBG:Z

    if-eqz v1, :cond_0

    .line 1059
    const-string v1, "SignView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "set threshold dynamically, level: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/widget/SignView;->mVerificationLevel:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " saved: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/widget/SignView;->mSavedInputType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " current: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/widget/SignView;->mInputType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1076
    :cond_0
    const/4 v0, 0x0

    .line 1077
    .local v0, "index":I
    iget v1, p0, Lcom/android/internal/widget/SignView;->mSavedInputType:I

    if-ne v1, v4, :cond_3

    .line 1078
    iget v1, p0, Lcom/android/internal/widget/SignView;->mInputType:I

    if-ne v1, v4, :cond_2

    .line 1079
    const/4 v0, 0x0

    .line 1091
    :cond_1
    :goto_0
    sget-object v1, Lcom/android/internal/widget/SignView;->THRESHOLDS:[I

    mul-int/lit8 v2, v0, 0x3

    iget v3, p0, Lcom/android/internal/widget/SignView;->mVerificationLevel:I

    add-int/2addr v2, v3

    aget v1, v1, v2

    iput v1, p0, Lcom/android/internal/widget/SignView;->mThresholdValue:I

    .line 1092
    return-void

    .line 1080
    :cond_2
    iget v1, p0, Lcom/android/internal/widget/SignView;->mInputType:I

    if-ne v1, v5, :cond_1

    .line 1081
    const/4 v0, 0x3

    goto :goto_0

    .line 1083
    :cond_3
    iget v1, p0, Lcom/android/internal/widget/SignView;->mSavedInputType:I

    if-ne v1, v5, :cond_1

    .line 1084
    iget v1, p0, Lcom/android/internal/widget/SignView;->mInputType:I

    if-ne v1, v4, :cond_4

    .line 1085
    const/4 v0, 0x2

    goto :goto_0

    .line 1086
    :cond_4
    iget v1, p0, Lcom/android/internal/widget/SignView;->mInputType:I

    if-ne v1, v5, :cond_1

    .line 1087
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected clearInDoAddSign()V
    .locals 0

    .prologue
    .line 972
    return-void
.end method

.method protected clearInDoVerifySign()V
    .locals 0

    .prologue
    .line 1030
    return-void
.end method

.method public clearScreen()V
    .locals 0

    .prologue
    .line 865
    invoke-direct {p0}, Lcom/android/internal/widget/SignView;->fillAreaBackground()V

    .line 866
    invoke-virtual {p0}, Lcom/android/internal/widget/SignView;->invalidate()V

    .line 867
    return-void
.end method

.method doAddSign()V
    .locals 9

    .prologue
    .line 894
    const-string v5, "SignView"

    const-string v6, "doAddSign"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    iget-object v6, p0, Lcom/android/internal/widget/SignView;->mServiceRunningLock:Ljava/lang/Object;

    monitor-enter v6

    .line 911
    :try_start_0
    iget v5, p0, Lcom/android/internal/widget/SignView;->mSavedSignatureCount:I

    invoke-direct {p0, v5}, Lcom/android/internal/widget/SignView;->insertDataToEngine(I)V

    .line 913
    const/4 v2, 0x0

    .local v2, "errCodePreCheck":I
    const/4 v1, 0x0

    .local v1, "errCodeAdd":I
    const/4 v4, 0x0

    .line 916
    .local v4, "signNum":I
    iget-object v5, p0, Lcom/android/internal/widget/SignView;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;

    const/16 v7, 0xa

    const/16 v8, 0xc8

    invoke-interface {v5, v7, v8}, Lcom/android/internal/policy/ISignServiceInterface;->checkSignatureData(II)I

    move-result v2

    .line 918
    if-gez v2, :cond_5

    .line 924
    :goto_0
    if-ltz v2, :cond_0

    if-eqz v1, :cond_8

    .line 925
    :cond_0
    const-string v5, "SignView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Add sign failed, precheck: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", add time: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    iget-object v5, p0, Lcom/android/internal/widget/SignView;->mSignatureInputData:[Ljava/util/ArrayList;

    iget v7, p0, Lcom/android/internal/widget/SignView;->mSavedSignatureCount:I

    aget-object v5, v5, v7

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 930
    iget-object v5, p0, Lcom/android/internal/widget/SignView;->mOnSignatureListener:Lcom/android/internal/widget/SignView$OnSignatureListener;

    if-eqz v5, :cond_3

    .line 931
    const/4 v3, 0x0

    .line 933
    .local v3, "errorMessage":I
    const/4 v5, -0x1

    if-eq v2, v5, :cond_1

    const/4 v5, -0x2

    if-ne v2, v5, :cond_6

    .line 934
    :cond_1
    const/4 v3, 0x2

    .line 940
    :cond_2
    :goto_1
    iget-object v5, p0, Lcom/android/internal/widget/SignView;->mOnSignatureListener:Lcom/android/internal/widget/SignView$OnSignatureListener;

    invoke-interface {v5, v3}, Lcom/android/internal/widget/SignView$OnSignatureListener;->onAddSignFailed(I)V

    .line 958
    .end local v3    # "errorMessage":I
    :cond_3
    :goto_2
    iget-object v5, p0, Lcom/android/internal/widget/SignView;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;

    invoke-interface {v5}, Lcom/android/internal/policy/ISignServiceInterface;->reset()V

    .line 959
    iget-object v5, p0, Lcom/android/internal/widget/SignView;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;

    invoke-interface {v5}, Lcom/android/internal/policy/ISignServiceInterface;->setPointZero()V

    .line 960
    invoke-virtual {p0}, Lcom/android/internal/widget/SignView;->clearInDoAddSign()V

    .line 962
    iget-boolean v5, p0, Lcom/android/internal/widget/SignView;->mPersistentShow:Z

    if-nez v5, :cond_4

    .line 963
    invoke-virtual {p0}, Lcom/android/internal/widget/SignView;->clearScreen()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 968
    .end local v1    # "errCodeAdd":I
    .end local v2    # "errCodePreCheck":I
    .end local v4    # "signNum":I
    :cond_4
    :goto_3
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 969
    return-void

    .line 920
    .restart local v1    # "errCodeAdd":I
    .restart local v2    # "errCodePreCheck":I
    .restart local v4    # "signNum":I
    :cond_5
    :try_start_2
    iget-object v5, p0, Lcom/android/internal/widget/SignView;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;

    const/16 v7, 0xa

    iget v8, p0, Lcom/android/internal/widget/SignView;->mInputType:I

    invoke-direct {p0, v8}, Lcom/android/internal/widget/SignView;->getToolValue(I)I

    move-result v8

    invoke-interface {v5, v7, v8}, Lcom/android/internal/policy/ISignServiceInterface;->addSignatureModel(II)I

    move-result v1

    .line 921
    iget-object v5, p0, Lcom/android/internal/widget/SignView;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;

    const/16 v7, 0xa

    invoke-interface {v5, v7}, Lcom/android/internal/policy/ISignServiceInterface;->getModelNum(I)I

    move-result v4

    goto :goto_0

    .line 935
    .restart local v3    # "errorMessage":I
    :cond_6
    const/4 v5, -0x3

    if-ne v2, v5, :cond_7

    .line 936
    const/4 v3, 0x3

    goto :goto_1

    .line 937
    :cond_7
    const/4 v5, -0x4

    if-ne v2, v5, :cond_2

    .line 938
    const/4 v3, 0x4

    goto :goto_1

    .line 943
    .end local v3    # "errorMessage":I
    :cond_8
    const-string v5, "SignView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Add sign succeeded, sum of sign is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 945
    iput v4, p0, Lcom/android/internal/widget/SignView;->mSavedSignatureCount:I

    .line 948
    iget v5, p0, Lcom/android/internal/widget/SignView;->mCurrentStroke:I

    if-eqz v5, :cond_9

    const/4 v5, 0x1

    if-ne v4, v5, :cond_9

    .line 949
    iget v5, p0, Lcom/android/internal/widget/SignView;->mCurrentStroke:I

    iput v5, p0, Lcom/android/internal/widget/SignView;->mSavedStrokeCount:I

    .line 952
    :cond_9
    iget-object v5, p0, Lcom/android/internal/widget/SignView;->mOnSignatureListener:Lcom/android/internal/widget/SignView$OnSignatureListener;

    if-eqz v5, :cond_3

    .line 953
    iget-object v5, p0, Lcom/android/internal/widget/SignView;->mOnSignatureListener:Lcom/android/internal/widget/SignView$OnSignatureListener;

    invoke-interface {v5, v4}, Lcom/android/internal/widget/SignView$OnSignatureListener;->onAddSignSucceeded(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 965
    .end local v1    # "errCodeAdd":I
    .end local v2    # "errCodePreCheck":I
    .end local v4    # "signNum":I
    :catch_0
    move-exception v0

    .line 966
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 968
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v5
.end method

.method doVerifySign()V
    .locals 9

    .prologue
    const/4 v7, 0x2

    const/4 v8, 0x1

    .line 975
    const-string v3, "SignView"

    const-string v4, "doVerifySign"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 977
    iget-object v4, p0, Lcom/android/internal/widget/SignView;->mServiceRunningLock:Ljava/lang/Object;

    monitor-enter v4

    .line 979
    const/4 v1, 0x0

    .line 982
    .local v1, "errCode":I
    const/4 v3, 0x0

    :try_start_0
    invoke-direct {p0, v3}, Lcom/android/internal/widget/SignView;->insertDataToEngine(I)V

    .line 984
    sget-boolean v3, Lcom/android/internal/widget/SignView;->DBG:Z

    if-eqz v3, :cond_0

    .line 985
    const-string v3, "SignView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Now getting verification result from engine with level "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/widget/SignView;->mVerificationLevel:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 988
    :cond_0
    const/4 v2, 0x0

    .line 989
    .local v2, "usePressure":Z
    iget-object v3, p0, Lcom/android/internal/widget/SignView;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;

    invoke-interface {v3}, Lcom/android/internal/policy/ISignServiceInterface;->isUsingOldData()Z

    move-result v3

    if-nez v3, :cond_1

    iget v3, p0, Lcom/android/internal/widget/SignView;->mInputType:I

    if-ne v3, v7, :cond_1

    iget v3, p0, Lcom/android/internal/widget/SignView;->mSavedInputType:I

    if-ne v3, v7, :cond_1

    .line 994
    const/4 v2, 0x1

    .line 998
    :cond_1
    iget-object v3, p0, Lcom/android/internal/widget/SignView;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;

    const/16 v5, 0xa

    iget v6, p0, Lcom/android/internal/widget/SignView;->mVerificationLevel:I

    iget v7, p0, Lcom/android/internal/widget/SignView;->mInputType:I

    invoke-direct {p0, v7}, Lcom/android/internal/widget/SignView;->getToolValue(I)I

    move-result v7

    invoke-interface {v3, v5, v6, v7}, Lcom/android/internal/policy/ISignServiceInterface;->verify(III)I

    move-result v1

    .line 1000
    if-nez v1, :cond_3

    .line 1001
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/internal/widget/SignView;->mRecognized:Z

    .line 1002
    const-string v3, "SignView"

    const-string v5, "Identifying signature failed"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1016
    :cond_2
    :goto_0
    iget-object v3, p0, Lcom/android/internal/widget/SignView;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;

    invoke-interface {v3}, Lcom/android/internal/policy/ISignServiceInterface;->reset()V

    .line 1017
    iget-object v3, p0, Lcom/android/internal/widget/SignView;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;

    invoke-interface {v3}, Lcom/android/internal/policy/ISignServiceInterface;->setPointZero()V

    .line 1019
    iget-object v3, p0, Lcom/android/internal/widget/SignView;->mSignatureInputData:[Ljava/util/ArrayList;

    const/4 v5, 0x0

    aget-object v3, v3, v5

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1020
    invoke-virtual {p0}, Lcom/android/internal/widget/SignView;->clearInDoVerifySign()V

    .line 1022
    invoke-virtual {p0}, Lcom/android/internal/widget/SignView;->clearScreen()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1026
    .end local v2    # "usePressure":Z
    :goto_1
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1027
    return-void

    .line 1003
    .restart local v2    # "usePressure":Z
    :cond_3
    if-ne v1, v8, :cond_2

    .line 1010
    const/4 v3, 0x1

    :try_start_2
    iput-boolean v3, p0, Lcom/android/internal/widget/SignView;->mRecognized:Z

    .line 1011
    const-string v3, "SignView"

    const-string v5, "Identifying signature succeeded"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1023
    .end local v2    # "usePressure":Z
    :catch_0
    move-exception v0

    .line 1024
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 1026
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3
.end method

.method public enableUsingHistoricalEvent(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 779
    iput-boolean p1, p0, Lcom/android/internal/widget/SignView;->mUseHistoricalEvent:Z

    .line 780
    return-void
.end method

.method public getIndex()I
    .locals 2

    .prologue
    .line 577
    iget v1, p0, Lcom/android/internal/widget/SignView;->mStatus:I

    if-nez v1, :cond_0

    .line 578
    iget v0, p0, Lcom/android/internal/widget/SignView;->mSavedSignatureCount:I

    .line 583
    .local v0, "index":I
    :goto_0
    return v0

    .line 580
    .end local v0    # "index":I
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "index":I
    goto :goto_0
.end method

.method public getInputType()I
    .locals 1

    .prologue
    .line 763
    iget v0, p0, Lcom/android/internal/widget/SignView;->mInputType:I

    return v0
.end method

.method public getSignService()Lcom/android/internal/policy/ISignServiceInterface;
    .locals 2

    .prologue
    .line 626
    iget-object v1, p0, Lcom/android/internal/widget/SignView;->mServiceRunningLock:Ljava/lang/Object;

    monitor-enter v1

    .line 627
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/widget/SignView;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;

    monitor-exit v1

    return-object v0

    .line 628
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getStrokeCount()I
    .locals 1

    .prologue
    .line 742
    iget v0, p0, Lcom/android/internal/widget/SignView;->mSavedStrokeCount:I

    return v0
.end method

.method public getThresholdValue()I
    .locals 1

    .prologue
    .line 775
    iget v0, p0, Lcom/android/internal/widget/SignView;->mThresholdValue:I

    return v0
.end method

.method public getVerifyResult()Z
    .locals 1

    .prologue
    .line 722
    iget-boolean v0, p0, Lcom/android/internal/widget/SignView;->mRecognized:Z

    return v0
.end method

.method protected handleActionDown(Landroid/view/MotionEvent;FF)V
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 466
    iget-object v0, p0, Lcom/android/internal/widget/SignView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 467
    iget-object v0, p0, Lcom/android/internal/widget/SignView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0, p2, p3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 468
    return-void
.end method

.method protected handleActionMove(Landroid/view/MotionEvent;FF)V
    .locals 12
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 471
    iget v0, p0, Lcom/android/internal/widget/SignView;->mX:F

    sub-float v0, p2, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v8

    .line 472
    .local v8, "dx":F
    iget v0, p0, Lcom/android/internal/widget/SignView;->mY:F

    sub-float v0, p3, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v9

    .line 474
    .local v9, "dy":F
    const/high16 v0, 0x41a00000    # 20.0f

    cmpl-float v0, v8, v0

    if-gez v0, :cond_0

    const/high16 v0, 0x41a00000    # 20.0f

    cmpl-float v0, v9, v0

    if-ltz v0, :cond_1

    .line 475
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/SignView;->mPath:Landroid/graphics/Path;

    iget v1, p0, Lcom/android/internal/widget/SignView;->mX:F

    iget v2, p0, Lcom/android/internal/widget/SignView;->mY:F

    iget v3, p0, Lcom/android/internal/widget/SignView;->mX:F

    add-float/2addr v3, p2

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iget v4, p0, Lcom/android/internal/widget/SignView;->mY:F

    add-float/2addr v4, p3

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 480
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/widget/SignView;->invalidate()V

    .line 482
    iput p2, p0, Lcom/android/internal/widget/SignView;->mX:F

    .line 483
    iput p3, p0, Lcom/android/internal/widget/SignView;->mY:F

    .line 485
    iget-boolean v0, p0, Lcom/android/internal/widget/SignView;->mUseHistoricalEvent:Z

    if-eqz v0, :cond_2

    .line 487
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v0

    if-ge v10, v0, :cond_2

    .line 489
    iget-object v0, p0, Lcom/android/internal/widget/SignView;->mSignatureInputData:[Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/internal/widget/SignView;->getIndex()I

    move-result v1

    aget-object v11, v0, v1

    new-instance v0, Lcom/android/internal/widget/SignView$SignatureInput;

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v1

    float-to-int v1, v1

    int-to-float v2, v1

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v1

    float-to-int v1, v1

    int-to-float v3, v1

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getHistoricalEventTime(I)J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/internal/widget/SignView;->mStartTime:J

    sub-long/2addr v4, v6

    const/4 v6, 0x2

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getHistoricalPressure(I)F

    move-result v7

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/widget/SignView$SignatureInput;-><init>(Lcom/android/internal/widget/SignView;FFJIF)V

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 487
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 477
    .end local v10    # "i":I
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/SignView;->mPath:Landroid/graphics/Path;

    float-to-int v1, p2

    int-to-float v1, v1

    float-to-int v2, p3

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_0

    .line 498
    :cond_2
    iget-object v0, p0, Lcom/android/internal/widget/SignView;->mSignatureInputData:[Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/internal/widget/SignView;->getIndex()I

    move-result v1

    aget-object v11, v0, v1

    new-instance v0, Lcom/android/internal/widget/SignView$SignatureInput;

    iget-wide v4, p0, Lcom/android/internal/widget/SignView;->mTimeStamp:J

    const/4 v6, 0x2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPressure()F

    move-result v7

    move-object v1, p0

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/widget/SignView$SignatureInput;-><init>(Lcom/android/internal/widget/SignView;FFJIF)V

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 500
    return-void
.end method

.method protected handleActionUp(Landroid/view/MotionEvent;FF)V
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 503
    iget-object v0, p0, Lcom/android/internal/widget/SignView;->mPath:Landroid/graphics/Path;

    iget v1, p0, Lcom/android/internal/widget/SignView;->mX:F

    iget v2, p0, Lcom/android/internal/widget/SignView;->mY:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 505
    iget-object v0, p0, Lcom/android/internal/widget/SignView;->mCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/android/internal/widget/SignView;->mPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/android/internal/widget/SignView;->mSignPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 507
    iget-object v0, p0, Lcom/android/internal/widget/SignView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 509
    invoke-virtual {p0}, Lcom/android/internal/widget/SignView;->invalidate()V

    .line 510
    return-void
.end method

.method protected init(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v6, 0x0

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 197
    iput-object p1, p0, Lcom/android/internal/widget/SignView;->mContext:Landroid/content/Context;

    .line 199
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/SignView;->mSignPaint:Landroid/graphics/Paint;

    .line 200
    iget-object v1, p0, Lcom/android/internal/widget/SignView;->mSignPaint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 201
    iget-object v1, p0, Lcom/android/internal/widget/SignView;->mSignPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x41000000    # 8.0f

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 202
    iget-object v1, p0, Lcom/android/internal/widget/SignView;->mSignPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 203
    iget-object v1, p0, Lcom/android/internal/widget/SignView;->mSignPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setDither(Z)V

    .line 204
    iget-object v1, p0, Lcom/android/internal/widget/SignView;->mSignPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 205
    iget-object v1, p0, Lcom/android/internal/widget/SignView;->mSignPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 206
    iget-object v1, p0, Lcom/android/internal/widget/SignView;->mSignPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 208
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/SignView;->mPath:Landroid/graphics/Path;

    .line 210
    iput-wide v6, p0, Lcom/android/internal/widget/SignView;->mTimeStamp:J

    .line 211
    const/16 v1, 0xa

    iput v1, p0, Lcom/android/internal/widget/SignView;->mTimeGap:I

    .line 212
    iput-wide v6, p0, Lcom/android/internal/widget/SignView;->mStartTime:J

    .line 214
    iput v3, p0, Lcom/android/internal/widget/SignView;->mTimeOneStrokTap:I

    .line 215
    iput v3, p0, Lcom/android/internal/widget/SignView;->mInputOneStrokStamp:I

    .line 217
    const/16 v1, 0x1f4

    iput v1, p0, Lcom/android/internal/widget/SignView;->mThresholdValue:I

    .line 218
    iput v3, p0, Lcom/android/internal/widget/SignView;->mStatus:I

    .line 219
    iput v3, p0, Lcom/android/internal/widget/SignView;->mInputType:I

    .line 221
    iput v3, p0, Lcom/android/internal/widget/SignView;->mWritingAreaWidth:I

    .line 222
    iput v3, p0, Lcom/android/internal/widget/SignView;->mWritingAreaHeight:I

    .line 223
    iput v3, p0, Lcom/android/internal/widget/SignView;->mVerifyVOffsetRegisterViewX:I

    .line 224
    iput v3, p0, Lcom/android/internal/widget/SignView;->mVerifyVOffsetRegisterViewY:I

    .line 225
    iput v3, p0, Lcom/android/internal/widget/SignView;->mSignViewX:I

    .line 226
    iput v3, p0, Lcom/android/internal/widget/SignView;->mSignViewY:I

    .line 227
    iput v3, p0, Lcom/android/internal/widget/SignView;->mCurrentStroke:I

    .line 228
    iput v3, p0, Lcom/android/internal/widget/SignView;->mSavedStrokeCount:I

    .line 230
    iput v3, p0, Lcom/android/internal/widget/SignView;->mBackgroundResourceID:I

    .line 232
    iput v3, p0, Lcom/android/internal/widget/SignView;->mSavedSignatureCount:I

    .line 233
    new-array v1, v5, [Ljava/util/ArrayList;

    check-cast v1, [Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/android/internal/widget/SignView;->mSignatureInputData:[Ljava/util/ArrayList;

    .line 234
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v5, :cond_0

    .line 235
    iget-object v1, p0, Lcom/android/internal/widget/SignView;->mSignatureInputData:[Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    aput-object v2, v1, v0

    .line 234
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 238
    :cond_0
    iput-boolean v4, p0, Lcom/android/internal/widget/SignView;->mFirstDraw:Z

    .line 239
    iput-boolean v3, p0, Lcom/android/internal/widget/SignView;->mRecognized:Z

    .line 240
    iput-boolean v3, p0, Lcom/android/internal/widget/SignView;->mHasOutLine:Z

    .line 241
    iput-boolean v4, p0, Lcom/android/internal/widget/SignView;->mSignatureVisible:Z

    .line 242
    iput-boolean v3, p0, Lcom/android/internal/widget/SignView;->mPersistentShow:Z

    .line 243
    iput-boolean v3, p0, Lcom/android/internal/widget/SignView;->mCompensationEnabled:Z

    .line 244
    iput-boolean v4, p0, Lcom/android/internal/widget/SignView;->mUserInputEnabled:Z

    .line 245
    iput-boolean v3, p0, Lcom/android/internal/widget/SignView;->mMaxPointReached:Z

    .line 246
    iput-boolean v3, p0, Lcom/android/internal/widget/SignView;->mUseHistoricalEvent:Z

    .line 248
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/widget/SignView;->mOnSignatureListener:Lcom/android/internal/widget/SignView$OnSignatureListener;

    .line 249
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/SignView;->mSignHandler:Landroid/os/Handler;

    .line 250
    return-void
.end method

.method public loadVerificationSettings()V
    .locals 18

    .prologue
    .line 832
    const/16 v1, 0x16

    new-array v0, v1, [I

    move-object/from16 v16, v0

    .line 833
    .local v16, "properties":[I
    const/16 v1, 0x58

    new-array v0, v1, [B

    move-object/from16 v17, v0

    .line 835
    .local v17, "stored":[B
    new-instance v15, Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/SignView;->mContext:Landroid/content/Context;

    invoke-direct {v15, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 836
    .local v15, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    invoke-virtual {v15}, Lcom/android/internal/widget/LockPatternUtils;->getSignatureLockInfo()[B

    move-result-object v17

    .line 839
    if-eqz v17, :cond_0

    .line 840
    const/4 v14, 0x0

    .local v14, "index":I
    :goto_0
    const/16 v1, 0x16

    if-ge v14, v1, :cond_0

    .line 841
    mul-int/lit8 v1, v14, 0x4

    aget-byte v1, v17, v1

    shl-int/lit8 v1, v1, 0x18

    mul-int/lit8 v2, v14, 0x4

    add-int/lit8 v2, v2, 0x1

    aget-byte v2, v17, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    add-int/2addr v1, v2

    mul-int/lit8 v2, v14, 0x4

    add-int/lit8 v2, v2, 0x2

    aget-byte v2, v17, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    add-int/2addr v1, v2

    mul-int/lit8 v2, v14, 0x4

    add-int/lit8 v2, v2, 0x3

    aget-byte v2, v17, v2

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v1, v2

    aput v1, v16, v14

    .line 840
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 848
    .end local v14    # "index":I
    :cond_0
    const/4 v1, 0x7

    aget v1, v16, v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/SignView;->setSettingInputType(I)V

    .line 851
    const/4 v1, 0x6

    aget v1, v16, v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/SignView;->setStrokeCount(I)V

    .line 854
    const/16 v1, 0x9

    aget v1, v16, v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    :goto_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/SignView;->enableUsingHistoricalEvent(Z)V

    .line 858
    const/16 v1, 0xa

    aget v2, v16, v1

    const/16 v1, 0xb

    aget v3, v16, v1

    const/16 v1, 0xc

    aget v4, v16, v1

    const/16 v1, 0xd

    aget v5, v16, v1

    const/16 v1, 0xe

    aget v6, v16, v1

    const/16 v1, 0xf

    aget v7, v16, v1

    const/16 v1, 0x10

    aget v8, v16, v1

    const/16 v1, 0x11

    aget v9, v16, v1

    const/16 v1, 0x12

    aget v10, v16, v1

    const/16 v1, 0x13

    aget v11, v16, v1

    const/16 v1, 0x14

    aget v12, v16, v1

    const/16 v1, 0x15

    aget v13, v16, v1

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v13}, Lcom/android/internal/widget/SignView;->setThresholdValues(IIIIIIIIIIII)V

    .line 862
    return-void

    .line 854
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    .line 254
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 255
    sget-boolean v0, Lcom/android/internal/widget/SignView;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "SignView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onAttachedToWindow] w: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/widget/SignView;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", h: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/widget/SignView;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 305
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 307
    sget-boolean v0, Lcom/android/internal/widget/SignView;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "SignView"

    const-string v1, "SignView is detached from window"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v1, 0x0

    .line 312
    iget-boolean v0, p0, Lcom/android/internal/widget/SignView;->mSignatureVisible:Z

    if-eqz v0, :cond_2

    .line 313
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 314
    iget-object v0, p0, Lcom/android/internal/widget/SignView;->mSignBmpWrite:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/SignView;->mSignBmpWrite:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/SignView;->mSignBmpWrite:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    .line 316
    iget-object v0, p0, Lcom/android/internal/widget/SignView;->mSignBmpWrite:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/android/internal/widget/SignView;->mSignPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 319
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/widget/SignView;->mHasOutLine:Z

    if-eqz v0, :cond_1

    .line 320
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 322
    .local v5, "paint":Landroid/graphics/Paint;
    const v0, -0x141415

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 323
    invoke-virtual {p0}, Lcom/android/internal/widget/SignView;->getWidth()I

    move-result v0

    add-int/lit8 v0, v0, -0x3

    int-to-float v3, v0

    move-object v0, p1

    move v2, v1

    move v4, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 324
    invoke-virtual {p0}, Lcom/android/internal/widget/SignView;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x3

    int-to-float v4, v0

    move-object v0, p1

    move v2, v1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 325
    invoke-virtual {p0}, Lcom/android/internal/widget/SignView;->getWidth()I

    move-result v0

    add-int/lit8 v0, v0, -0x3

    int-to-float v7, v0

    invoke-virtual {p0}, Lcom/android/internal/widget/SignView;->getWidth()I

    move-result v0

    add-int/lit8 v0, v0, -0x3

    int-to-float v9, v0

    invoke-virtual {p0}, Lcom/android/internal/widget/SignView;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x3

    int-to-float v10, v0

    move-object v6, p1

    move v8, v1

    move-object v11, v5

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 327
    invoke-virtual {p0}, Lcom/android/internal/widget/SignView;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x3

    int-to-float v2, v0

    invoke-virtual {p0}, Lcom/android/internal/widget/SignView;->getWidth()I

    move-result v0

    add-int/lit8 v0, v0, -0x3

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/android/internal/widget/SignView;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x3

    int-to-float v4, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 331
    .end local v5    # "paint":Landroid/graphics/Paint;
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/SignView;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/android/internal/widget/SignView;->mSignPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 333
    :cond_2
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 260
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 262
    sget-boolean v0, Lcom/android/internal/widget/SignView;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "SignView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onFinishInflate] w: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/widget/SignView;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", h: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/widget/SignView;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    :cond_0
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 453
    iget-object v1, p0, Lcom/android/internal/widget/SignView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 454
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 455
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 460
    :goto_0
    const/4 v1, 0x1

    .line 462
    .end local v0    # "action":I
    :goto_1
    return v1

    .line 457
    .restart local v0    # "action":I
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/internal/widget/SignView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestAccessibilityFocus()Z

    goto :goto_0

    .line 462
    .end local v0    # "action":I
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_1

    .line 455
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 3
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 267
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 269
    sub-int v0, p4, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/SignView;->mWritingAreaWidth:I

    .line 270
    sub-int v0, p5, p3

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/SignView;->mWritingAreaHeight:I

    .line 272
    sget-boolean v0, Lcom/android/internal/widget/SignView;->DBG:Z

    if-eqz v0, :cond_0

    .line 273
    const-string v0, "SignView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onLayout] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    const-string v0, "SignView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onLayout WritingArea Size] w: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/SignView;->mWritingAreaWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", h: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/SignView;->mWritingAreaHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 5
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 280
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 281
    sget-boolean v0, Lcom/android/internal/widget/SignView;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "SignView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onSizeChanged] w: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " h: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    :cond_0
    iget v0, p0, Lcom/android/internal/widget/SignView;->mStatus:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/internal/widget/SignView;->mStatus:I

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/widget/SignView;->mSignBmpWrite:Landroid/graphics/Bitmap;

    if-nez v0, :cond_3

    .line 288
    :cond_1
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/SignView;->mSignBmpWrite:Landroid/graphics/Bitmap;

    .line 289
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/android/internal/widget/SignView;->mSignBmpWrite:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/android/internal/widget/SignView;->mCanvas:Landroid/graphics/Canvas;

    .line 291
    sget-boolean v0, Lcom/android/internal/widget/SignView;->DBG:Z

    if-eqz v0, :cond_2

    .line 292
    const-string v0, "SignView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create bitmap for drawing with mBackgroundResourceID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/SignView;->mBackgroundResourceID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    :cond_2
    iget v0, p0, Lcom/android/internal/widget/SignView;->mBackgroundResourceID:I

    if-lez v0, :cond_3

    .line 296
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v3, v3, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/internal/widget/SignView;->mRect:Landroid/graphics/Rect;

    .line 297
    iget-object v0, p0, Lcom/android/internal/widget/SignView;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p0}, Lcom/android/internal/widget/SignView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/SignView;->mBackgroundResourceID:I

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/widget/SignView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v4, v2, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 301
    :cond_3
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    const/4 v10, 0x1

    .line 338
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/internal/widget/SignView;->checkPreCondition(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 448
    :cond_0
    :goto_0
    return v10

    .line 341
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 342
    .local v2, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 344
    .local v3, "y":F
    cmpg-float v0, v2, v1

    if-gez v0, :cond_2

    .line 345
    const/4 v2, 0x0

    .line 347
    :cond_2
    cmpg-float v0, v3, v1

    if-gez v0, :cond_3

    .line 348
    const/4 v3, 0x0

    .line 350
    :cond_3
    iget v0, p0, Lcom/android/internal/widget/SignView;->mWritingAreaWidth:I

    int-to-float v0, v0

    cmpl-float v0, v2, v0

    if-lez v0, :cond_4

    .line 351
    iget v0, p0, Lcom/android/internal/widget/SignView;->mWritingAreaWidth:I

    int-to-float v2, v0

    .line 353
    :cond_4
    iget v0, p0, Lcom/android/internal/widget/SignView;->mWritingAreaHeight:I

    int-to-float v0, v0

    cmpl-float v0, v3, v0

    if-lez v0, :cond_5

    .line 354
    iget v0, p0, Lcom/android/internal/widget/SignView;->mWritingAreaHeight:I

    int-to-float v3, v0

    .line 357
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 359
    :pswitch_0
    sget-boolean v0, Lcom/android/internal/widget/SignView;->DBG_TOUCH:Z

    if-eqz v0, :cond_6

    .line 360
    const-string v0, "SignView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ACTION_DOWN ("

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ") TimeGap is "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/android/internal/widget/SignView;->mTimeGap:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    :cond_6
    iget-boolean v0, p0, Lcom/android/internal/widget/SignView;->mFirstDraw:Z

    if-eqz v0, :cond_7

    .line 363
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/widget/SignView;->mStartTime:J

    .line 365
    invoke-virtual {p0}, Lcom/android/internal/widget/SignView;->clearScreen()V

    .line 367
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/SignView;->mFirstDraw:Z

    .line 370
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/widget/SignView;->mTimeStamp:J

    .line 374
    invoke-direct {p0, p1}, Lcom/android/internal/widget/SignView;->setThreshold(Landroid/view/MotionEvent;)V

    .line 377
    iget-object v0, p0, Lcom/android/internal/widget/SignView;->mSignatureInputData:[Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/internal/widget/SignView;->mSavedSignatureCount:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 380
    :cond_7
    iget-object v0, p0, Lcom/android/internal/widget/SignView;->mSignHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/widget/SignView;->signUpdateTimeTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 382
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/SignView;->mRecognized:Z

    .line 383
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/SignView;->mWriteStart:Z

    .line 385
    iput v2, p0, Lcom/android/internal/widget/SignView;->mX:F

    .line 386
    iput v3, p0, Lcom/android/internal/widget/SignView;->mY:F

    .line 388
    iget-object v1, p0, Lcom/android/internal/widget/SignView;->mServiceRunningLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 389
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/widget/SignView;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;

    invoke-interface {v0}, Lcom/android/internal/policy/ISignServiceInterface;->isWriting()Z

    move-result v0

    if-nez v0, :cond_8

    .line 392
    :cond_8
    iget-object v0, p0, Lcom/android/internal/widget/SignView;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;

    iget v4, p0, Lcom/android/internal/widget/SignView;->mWritingAreaWidth:I

    iget v5, p0, Lcom/android/internal/widget/SignView;->mWritingAreaHeight:I

    invoke-interface {v0, v4, v5}, Lcom/android/internal/policy/ISignServiceInterface;->startWriting(II)V

    .line 393
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 396
    :try_start_2
    iget-object v0, p0, Lcom/android/internal/widget/SignView;->mSignatureInputData:[Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/internal/widget/SignView;->getIndex()I

    move-result v1

    aget-object v9, v0, v1

    new-instance v0, Lcom/android/internal/widget/SignView$SignatureInput;

    iget-wide v4, p0, Lcom/android/internal/widget/SignView;->mStartTime:J

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPressure()F

    move-result v7

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/widget/SignView$SignatureInput;-><init>(Lcom/android/internal/widget/SignView;FFJIF)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 401
    invoke-virtual {p0, p1, v2, v3}, Lcom/android/internal/widget/SignView;->handleActionDown(Landroid/view/MotionEvent;FF)V

    .line 404
    iget-object v0, p0, Lcom/android/internal/widget/SignView;->mOnSignatureListener:Lcom/android/internal/widget/SignView$OnSignatureListener;

    if-eqz v0, :cond_0

    .line 405
    iget-object v0, p0, Lcom/android/internal/widget/SignView;->mOnSignatureListener:Lcom/android/internal/widget/SignView$OnSignatureListener;

    invoke-interface {v0}, Lcom/android/internal/widget/SignView$OnSignatureListener;->onSignatureStart()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 444
    .end local v2    # "x":F
    .end local v3    # "y":F
    :catch_0
    move-exception v8

    .line 445
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 393
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v2    # "x":F
    .restart local v3    # "y":F
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    .line 410
    :pswitch_1
    sget-boolean v0, Lcom/android/internal/widget/SignView;->DBG_TOUCH:Z

    if-eqz v0, :cond_9

    const-string v0, "SignView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ACTION_MOVE ("

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ")"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    :cond_9
    iget-boolean v0, p0, Lcom/android/internal/widget/SignView;->mWriteStart:Z

    if-eqz v0, :cond_0

    .line 415
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/android/internal/widget/SignView;->mStartTime:J

    sub-long/2addr v0, v4

    iput-wide v0, p0, Lcom/android/internal/widget/SignView;->mTimeStamp:J

    .line 417
    invoke-virtual {p0, p1, v2, v3}, Lcom/android/internal/widget/SignView;->handleActionMove(Landroid/view/MotionEvent;FF)V

    .line 420
    iget-object v0, p0, Lcom/android/internal/widget/SignView;->mOnSignatureListener:Lcom/android/internal/widget/SignView$OnSignatureListener;

    if-eqz v0, :cond_0

    .line 421
    iget-object v0, p0, Lcom/android/internal/widget/SignView;->mOnSignatureListener:Lcom/android/internal/widget/SignView$OnSignatureListener;

    invoke-interface {v0}, Lcom/android/internal/widget/SignView$OnSignatureListener;->onSignatureInputting()V

    goto/16 :goto_0

    .line 427
    :pswitch_2
    sget-boolean v0, Lcom/android/internal/widget/SignView;->DBG_TOUCH:Z

    if-eqz v0, :cond_a

    const-string v0, "SignView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ACTION_UP ("

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ")"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    :cond_a
    iget-boolean v0, p0, Lcom/android/internal/widget/SignView;->mWriteStart:Z

    if-eqz v0, :cond_0

    .line 430
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/SignView;->mWriteStart:Z

    .line 433
    iget-object v0, p0, Lcom/android/internal/widget/SignView;->mSignatureInputData:[Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/internal/widget/SignView;->getIndex()I

    move-result v1

    aget-object v9, v0, v1

    new-instance v0, Lcom/android/internal/widget/SignView$SignatureInput;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/internal/widget/SignView;->mStartTime:J

    sub-long/2addr v4, v6

    const/4 v6, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPressure()F

    move-result v7

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/widget/SignView$SignatureInput;-><init>(Lcom/android/internal/widget/SignView;FFJIF)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 437
    invoke-virtual {p0, p1, v2, v3}, Lcom/android/internal/widget/SignView;->handleActionUp(Landroid/view/MotionEvent;FF)V

    .line 439
    iget v0, p0, Lcom/android/internal/widget/SignView;->mCurrentStroke:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/widget/SignView;->mCurrentStroke:I

    .line 440
    iget-object v0, p0, Lcom/android/internal/widget/SignView;->mSignHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/widget/SignView;->signUpdateTimeTask:Ljava/lang/Runnable;

    const-wide/16 v4, 0x2bc

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    .line 357
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public resetSignature()V
    .locals 8

    .prologue
    .line 1095
    const-string v4, "SignView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Reset signature, index = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/widget/SignView;->mSavedSignatureCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1097
    iget v4, p0, Lcom/android/internal/widget/SignView;->mSavedSignatureCount:I

    if-nez v4, :cond_0

    .line 1131
    :goto_0
    return-void

    .line 1101
    :cond_0
    iget v4, p0, Lcom/android/internal/widget/SignView;->mSavedSignatureCount:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/android/internal/widget/SignView;->mSavedSignatureCount:I

    .line 1103
    iget-object v4, p0, Lcom/android/internal/widget/SignView;->mSignatureInputData:[Ljava/util/ArrayList;

    iget v5, p0, Lcom/android/internal/widget/SignView;->mSavedSignatureCount:I

    aget-object v4, v4, v5

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 1105
    iget-object v5, p0, Lcom/android/internal/widget/SignView;->mServiceRunningLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1108
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/widget/SignView;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;

    const/16 v6, 0xa

    invoke-interface {v4, v6}, Lcom/android/internal/policy/ISignServiceInterface;->delUser(I)I

    .line 1111
    iget v4, p0, Lcom/android/internal/widget/SignView;->mSavedSignatureCount:I

    if-nez v4, :cond_1

    .line 1112
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/internal/widget/SignView;->mSavedStrokeCount:I

    .line 1115
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget v4, p0, Lcom/android/internal/widget/SignView;->mSavedSignatureCount:I

    if-ge v2, v4, :cond_3

    .line 1116
    sget-boolean v4, Lcom/android/internal/widget/SignView;->DBG:Z

    if-eqz v4, :cond_2

    .line 1117
    const-string v4, "SignView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Re-input saved signatures: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1120
    :cond_2
    invoke-direct {p0, v2}, Lcom/android/internal/widget/SignView;->insertDataToEngine(I)V

    .line 1122
    iget-object v4, p0, Lcom/android/internal/widget/SignView;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;

    const/16 v6, 0xa

    iget v7, p0, Lcom/android/internal/widget/SignView;->mInputType:I

    invoke-direct {p0, v7}, Lcom/android/internal/widget/SignView;->getToolValue(I)I

    move-result v7

    invoke-interface {v4, v6, v7}, Lcom/android/internal/policy/ISignServiceInterface;->addSignatureModel(II)I

    move-result v1

    .line 1123
    .local v1, "errCode":I
    iget-object v4, p0, Lcom/android/internal/widget/SignView;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;

    const/16 v6, 0xa

    invoke-interface {v4, v6}, Lcom/android/internal/policy/ISignServiceInterface;->getModelNum(I)I

    move-result v3

    .line 1125
    .local v3, "signNum":I
    const-string v4, "SignView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Save signature again["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] errCode = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1115
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1127
    .end local v1    # "errCode":I
    .end local v2    # "i":I
    .end local v3    # "signNum":I
    :catch_0
    move-exception v0

    .line 1128
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1130
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    monitor-exit v5

    goto/16 :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method public restore()V
    .locals 8

    .prologue
    .line 1134
    const-string v4, "SignView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Restore signatures, index = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/widget/SignView;->mSavedSignatureCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1136
    iget-object v5, p0, Lcom/android/internal/widget/SignView;->mServiceRunningLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1139
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/widget/SignView;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;

    const/16 v6, 0xa

    invoke-interface {v4, v6}, Lcom/android/internal/policy/ISignServiceInterface;->delUser(I)I

    .line 1142
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/internal/widget/SignView;->mSavedStrokeCount:I

    .line 1144
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v4, p0, Lcom/android/internal/widget/SignView;->mSavedSignatureCount:I

    if-ge v2, v4, :cond_1

    .line 1145
    sget-boolean v4, Lcom/android/internal/widget/SignView;->DBG:Z

    if-eqz v4, :cond_0

    .line 1146
    const-string v4, "SignView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Restore saved signatures: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1149
    :cond_0
    invoke-direct {p0, v2}, Lcom/android/internal/widget/SignView;->insertDataToEngine(I)V

    .line 1151
    iget-object v4, p0, Lcom/android/internal/widget/SignView;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;

    const/16 v6, 0xa

    iget v7, p0, Lcom/android/internal/widget/SignView;->mInputType:I

    invoke-direct {p0, v7}, Lcom/android/internal/widget/SignView;->getToolValue(I)I

    move-result v7

    invoke-interface {v4, v6, v7}, Lcom/android/internal/policy/ISignServiceInterface;->addSignatureModel(II)I

    move-result v1

    .line 1152
    .local v1, "errCode":I
    iget-object v4, p0, Lcom/android/internal/widget/SignView;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;

    const/16 v6, 0xa

    invoke-interface {v4, v6}, Lcom/android/internal/policy/ISignServiceInterface;->getModelNum(I)I

    move-result v3

    .line 1154
    .local v3, "signNum":I
    const-string v4, "SignView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Restore signatures["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] errCode = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1144
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1156
    .end local v1    # "errCode":I
    .end local v2    # "i":I
    .end local v3    # "signNum":I
    :catch_0
    move-exception v0

    .line 1157
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1159
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    monitor-exit v5

    .line 1160
    return-void

    .line 1159
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method public saveArrayListIntoFile(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 8
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/widget/SignView$SignatureInput;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1248
    .local p2, "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/SignView$SignatureInput;>;"
    const/4 v2, 0x0

    .line 1250
    .local v2, "out":Ljava/io/ObjectOutputStream;
    :try_start_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1251
    .local v4, "size":I
    new-instance v3, Ljava/io/ObjectOutputStream;

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v5}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1253
    .end local v2    # "out":Ljava/io/ObjectOutputStream;
    .local v3, "out":Ljava/io/ObjectOutputStream;
    :try_start_1
    invoke-virtual {v3, v4}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 1254
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_0

    .line 1255
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/widget/SignView$SignatureInput;

    iget v5, v5, Lcom/android/internal/widget/SignView$SignatureInput;->mX:F

    float-to-int v5, v5

    invoke-virtual {v3, v5}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 1256
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/widget/SignView$SignatureInput;

    iget v5, v5, Lcom/android/internal/widget/SignView$SignatureInput;->mY:F

    float-to-int v5, v5

    invoke-virtual {v3, v5}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 1257
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/widget/SignView$SignatureInput;

    iget-wide v6, v5, Lcom/android/internal/widget/SignView$SignatureInput;->mTime:J

    invoke-virtual {v3, v6, v7}, Ljava/io/ObjectOutputStream;->writeLong(J)V

    .line 1258
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/widget/SignView$SignatureInput;

    iget v5, v5, Lcom/android/internal/widget/SignView$SignatureInput;->mPressure:F

    float-to-int v5, v5

    invoke-virtual {v3, v5}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 1259
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/widget/SignView$SignatureInput;

    iget v5, v5, Lcom/android/internal/widget/SignView$SignatureInput;->mTag:I

    invoke-virtual {v3, v5}, Ljava/io/ObjectOutputStream;->writeInt(I)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1254
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1267
    :cond_0
    if-eqz v3, :cond_1

    .line 1268
    :try_start_2
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    move-object v2, v3

    .line 1274
    .end local v1    # "i":I
    .end local v3    # "out":Ljava/io/ObjectOutputStream;
    .end local v4    # "size":I
    .restart local v2    # "out":Ljava/io/ObjectOutputStream;
    :cond_2
    :goto_1
    return-void

    .line 1270
    .end local v2    # "out":Ljava/io/ObjectOutputStream;
    .restart local v1    # "i":I
    .restart local v3    # "out":Ljava/io/ObjectOutputStream;
    .restart local v4    # "size":I
    :catch_0
    move-exception v0

    .line 1271
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v2, v3

    .line 1273
    .end local v3    # "out":Ljava/io/ObjectOutputStream;
    .restart local v2    # "out":Ljava/io/ObjectOutputStream;
    goto :goto_1

    .line 1261
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "i":I
    .end local v4    # "size":I
    :catch_1
    move-exception v0

    .line 1262
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1267
    if-eqz v2, :cond_2

    .line 1268
    :try_start_4
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 1270
    :catch_2
    move-exception v0

    .line 1271
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 1263
    .end local v0    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 1264
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_3
    :try_start_5
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1267
    if-eqz v2, :cond_2

    .line 1268
    :try_start_6
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_1

    .line 1270
    :catch_4
    move-exception v0

    .line 1271
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 1266
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 1267
    :goto_4
    if-eqz v2, :cond_3

    .line 1268
    :try_start_7
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 1272
    :cond_3
    :goto_5
    throw v5

    .line 1270
    :catch_5
    move-exception v0

    .line 1271
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 1266
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "out":Ljava/io/ObjectOutputStream;
    .restart local v3    # "out":Ljava/io/ObjectOutputStream;
    .restart local v4    # "size":I
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3    # "out":Ljava/io/ObjectOutputStream;
    .restart local v2    # "out":Ljava/io/ObjectOutputStream;
    goto :goto_4

    .line 1263
    .end local v2    # "out":Ljava/io/ObjectOutputStream;
    .restart local v3    # "out":Ljava/io/ObjectOutputStream;
    :catch_6
    move-exception v0

    move-object v2, v3

    .end local v3    # "out":Ljava/io/ObjectOutputStream;
    .restart local v2    # "out":Ljava/io/ObjectOutputStream;
    goto :goto_3

    .line 1261
    .end local v2    # "out":Ljava/io/ObjectOutputStream;
    .restart local v3    # "out":Ljava/io/ObjectOutputStream;
    :catch_7
    move-exception v0

    move-object v2, v3

    .end local v3    # "out":Ljava/io/ObjectOutputStream;
    .restart local v2    # "out":Ljava/io/ObjectOutputStream;
    goto :goto_2
.end method

.method public setAddSignStatus()V
    .locals 3

    .prologue
    .line 643
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/widget/SignView;->mStatus:I

    .line 645
    iget-object v1, p0, Lcom/android/internal/widget/SignView;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;

    if-eqz v1, :cond_0

    .line 647
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/widget/SignView;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;

    iget v2, p0, Lcom/android/internal/widget/SignView;->mStatus:I

    invoke-interface {v1, v2}, Lcom/android/internal/policy/ISignServiceInterface;->setEngineStatus(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 652
    :cond_0
    :goto_0
    return-void

    .line 648
    :catch_0
    move-exception v0

    .line 649
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setBackground(I)V
    .locals 0
    .param p1, "resourceID"    # I

    .prologue
    .line 755
    iput p1, p0, Lcom/android/internal/widget/SignView;->mBackgroundResourceID:I

    .line 756
    return-void
.end method

.method public setCompensationEnabled(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 732
    iput-boolean p1, p0, Lcom/android/internal/widget/SignView;->mCompensationEnabled:Z

    .line 733
    return-void
.end method

.method public setOnSignatureListener(Lcom/android/internal/widget/SignView$OnSignatureListener;)V
    .locals 0
    .param p1, "onSignatureListener"    # Lcom/android/internal/widget/SignView$OnSignatureListener;

    .prologue
    .line 636
    iput-object p1, p0, Lcom/android/internal/widget/SignView;->mOnSignatureListener:Lcom/android/internal/widget/SignView$OnSignatureListener;

    .line 637
    return-void
.end method

.method public setOutLine(Z)V
    .locals 0
    .param p1, "setOutLine"    # Z

    .prologue
    .line 698
    iput-boolean p1, p0, Lcom/android/internal/widget/SignView;->mHasOutLine:Z

    .line 699
    return-void
.end method

.method public setPenColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 828
    iget-object v0, p0, Lcom/android/internal/widget/SignView;->mSignPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 829
    return-void
.end method

.method public setPenWidth(I)V
    .locals 0
    .param p1, "penWidth"    # I

    .prologue
    .line 822
    if-lez p1, :cond_0

    .line 823
    iput p1, p0, Lcom/android/internal/widget/SignView;->mPenWidth:I

    .line 825
    :cond_0
    return-void
.end method

.method public setPersistentShow(Z)V
    .locals 3
    .param p1, "isPersistent"    # Z

    .prologue
    .line 707
    const-string v0, "SignView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPersistentShow: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    iput-boolean p1, p0, Lcom/android/internal/widget/SignView;->mPersistentShow:Z

    .line 709
    return-void
.end method

.method public setSettingInputType(I)V
    .locals 0
    .param p1, "savedInputType"    # I

    .prologue
    .line 767
    iput p1, p0, Lcom/android/internal/widget/SignView;->mSavedInputType:I

    .line 768
    return-void
.end method

.method public setSignService(Lcom/android/internal/policy/ISignServiceInterface;)V
    .locals 6
    .param p1, "ISignService"    # Lcom/android/internal/policy/ISignServiceInterface;

    .prologue
    .line 598
    sget-boolean v2, Lcom/android/internal/widget/SignView;->DBG:Z

    if-eqz v2, :cond_0

    .line 599
    const-string v2, "SignView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setSignService: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    :cond_0
    iget-object v3, p0, Lcom/android/internal/widget/SignView;->mServiceRunningLock:Ljava/lang/Object;

    monitor-enter v3

    .line 602
    const/4 v1, 0x0

    .line 603
    .local v1, "inited":Z
    if-eqz p1, :cond_1

    .line 605
    :try_start_0
    iput-object p1, p0, Lcom/android/internal/widget/SignView;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 610
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/widget/SignView;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;

    iget v4, p0, Lcom/android/internal/widget/SignView;->mStatus:I

    invoke-interface {v2, v4}, Lcom/android/internal/policy/ISignServiceInterface;->setEngineStatus(I)V

    .line 611
    iget-object v2, p0, Lcom/android/internal/widget/SignView;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;

    invoke-interface {v2}, Lcom/android/internal/policy/ISignServiceInterface;->initEngine()Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v1

    .line 615
    if-eqz v1, :cond_2

    .line 616
    :try_start_2
    const-string v2, "SignView"

    const-string v4, "Sign Engine init Succeed"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    :cond_1
    :goto_0
    monitor-exit v3

    .line 623
    return-void

    .line 618
    :cond_2
    const-string v2, "SignView"

    const-string v4, "Sign Engine init Failed"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 622
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 612
    :catch_0
    move-exception v0

    .line 613
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_3
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 615
    if-eqz v1, :cond_3

    .line 616
    :try_start_4
    const-string v2, "SignView"

    const-string v4, "Sign Engine init Succeed"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 618
    :cond_3
    const-string v2, "SignView"

    const-string v4, "Sign Engine init Failed"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 615
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_1
    move-exception v2

    if-eqz v1, :cond_4

    .line 616
    const-string v4, "SignView"

    const-string v5, "Sign Engine init Succeed"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    :goto_1
    throw v2

    :cond_4
    const-string v4, "SignView"

    const-string v5, "Sign Engine init Failed"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public setSignViewXY(II)V
    .locals 0
    .param p1, "viewX"    # I
    .param p2, "viewY"    # I

    .prologue
    .line 689
    iput p1, p0, Lcom/android/internal/widget/SignView;->mSignViewX:I

    .line 690
    iput p2, p0, Lcom/android/internal/widget/SignView;->mSignViewY:I

    .line 691
    return-void
.end method

.method public setSignatureVisible(Z)V
    .locals 3
    .param p1, "visible"    # Z

    .prologue
    .line 702
    const-string v0, "SignView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSignatureVisible: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    iput-boolean p1, p0, Lcom/android/internal/widget/SignView;->mSignatureVisible:Z

    .line 704
    return-void
.end method

.method public setStrokeCount(I)V
    .locals 3
    .param p1, "count"    # I

    .prologue
    .line 750
    sget-boolean v0, Lcom/android/internal/widget/SignView;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "SignView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "set stroke count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    :cond_0
    iput p1, p0, Lcom/android/internal/widget/SignView;->mSavedStrokeCount:I

    .line 752
    return-void
.end method

.method public setThresholdValue(I)V
    .locals 0
    .param p1, "threshold"    # I

    .prologue
    .line 718
    iput p1, p0, Lcom/android/internal/widget/SignView;->mThresholdValue:I

    .line 719
    return-void
.end method

.method public setThresholdValues(IIIIIIIIIIII)V
    .locals 2
    .param p1, "hh_low"    # I
    .param p2, "hh_medium"    # I
    .param p3, "hh_high"    # I
    .param p4, "pp_low"    # I
    .param p5, "pp_medium"    # I
    .param p6, "pp_high"    # I
    .param p7, "ph_low"    # I
    .param p8, "ph_medium"    # I
    .param p9, "ph_high"    # I
    .param p10, "hp_low"    # I
    .param p11, "hp_medium"    # I
    .param p12, "hp_high"    # I

    .prologue
    .line 786
    const/16 v0, 0xc

    new-array v0, v0, [I

    sput-object v0, Lcom/android/internal/widget/SignView;->THRESHOLDS:[I

    .line 787
    sget-object v0, Lcom/android/internal/widget/SignView;->THRESHOLDS:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 788
    sget-object v0, Lcom/android/internal/widget/SignView;->THRESHOLDS:[I

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 789
    sget-object v0, Lcom/android/internal/widget/SignView;->THRESHOLDS:[I

    const/4 v1, 0x2

    aput p3, v0, v1

    .line 790
    sget-object v0, Lcom/android/internal/widget/SignView;->THRESHOLDS:[I

    const/4 v1, 0x3

    aput p4, v0, v1

    .line 791
    sget-object v0, Lcom/android/internal/widget/SignView;->THRESHOLDS:[I

    const/4 v1, 0x4

    aput p5, v0, v1

    .line 792
    sget-object v0, Lcom/android/internal/widget/SignView;->THRESHOLDS:[I

    const/4 v1, 0x5

    aput p6, v0, v1

    .line 793
    sget-object v0, Lcom/android/internal/widget/SignView;->THRESHOLDS:[I

    const/4 v1, 0x6

    aput p7, v0, v1

    .line 794
    sget-object v0, Lcom/android/internal/widget/SignView;->THRESHOLDS:[I

    const/4 v1, 0x7

    aput p8, v0, v1

    .line 795
    sget-object v0, Lcom/android/internal/widget/SignView;->THRESHOLDS:[I

    const/16 v1, 0x8

    aput p9, v0, v1

    .line 796
    sget-object v0, Lcom/android/internal/widget/SignView;->THRESHOLDS:[I

    const/16 v1, 0x9

    aput p10, v0, v1

    .line 797
    sget-object v0, Lcom/android/internal/widget/SignView;->THRESHOLDS:[I

    const/16 v1, 0xa

    aput p11, v0, v1

    .line 798
    sget-object v0, Lcom/android/internal/widget/SignView;->THRESHOLDS:[I

    const/16 v1, 0xb

    aput p12, v0, v1

    .line 799
    return-void
.end method

.method public setUserInputEnabled(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 759
    iput-boolean p1, p0, Lcom/android/internal/widget/SignView;->mUserInputEnabled:Z

    .line 760
    return-void
.end method

.method public setVerificationLevel(I)V
    .locals 0
    .param p1, "level"    # I

    .prologue
    .line 771
    iput p1, p0, Lcom/android/internal/widget/SignView;->mVerificationLevel:I

    .line 772
    return-void
.end method

.method public setVerifySign()V
    .locals 3

    .prologue
    .line 658
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/internal/widget/SignView;->mStatus:I

    .line 660
    iget-object v1, p0, Lcom/android/internal/widget/SignView;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;

    if-eqz v1, :cond_0

    .line 662
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/widget/SignView;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;

    iget v2, p0, Lcom/android/internal/widget/SignView;->mStatus:I

    invoke-interface {v1, v2}, Lcom/android/internal/policy/ISignServiceInterface;->setEngineStatus(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 667
    :cond_0
    :goto_0
    return-void

    .line 663
    :catch_0
    move-exception v0

    .line 664
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setViewOffset(II)V
    .locals 0
    .param p1, "offsetX"    # I
    .param p2, "offsetY"    # I

    .prologue
    .line 679
    iput p1, p0, Lcom/android/internal/widget/SignView;->mVerifyVOffsetRegisterViewX:I

    .line 680
    iput p2, p0, Lcom/android/internal/widget/SignView;->mVerifyVOffsetRegisterViewY:I

    .line 681
    return-void
.end method
