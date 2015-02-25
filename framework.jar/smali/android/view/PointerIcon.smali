.class public final Landroid/view/PointerIcon;
.super Ljava/lang/Object;
.source "PointerIcon.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/PointerIcon$HoverEffect;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/view/PointerIcon;",
            ">;"
        }
    .end annotation
.end field

.field public static final CUSTOM_DEFAULT_ICON_ID:I = 0xff

.field private static final HOVERING_CUSTOM_ICON_MAX_COUNT:I = 0x5

.field private static final HOVERING_CUSTOM_ICON_MAX_SIZE:I = 0x9c40

.field private static final HOVERING_CUSTOM_ICON_RESIZE_X:I = 0x64

.field public static final HOVERING_FLAG_ALWAYSSHOW:I = 0x1

.field public static final HOVERING_PENSELECT_POINTER_01:I = 0x15

.field public static final HOVERING_SCROLLICON_POINTER_01:I = 0xb

.field public static final HOVERING_SCROLLICON_POINTER_02:I = 0xc

.field public static final HOVERING_SCROLLICON_POINTER_03:I = 0xd

.field public static final HOVERING_SCROLLICON_POINTER_04:I = 0xe

.field public static final HOVERING_SCROLLICON_POINTER_05:I = 0xf

.field public static final HOVERING_SCROLLICON_POINTER_06:I = 0x10

.field public static final HOVERING_SCROLLICON_POINTER_07:I = 0x11

.field public static final HOVERING_SCROLLICON_POINTER_08:I = 0x12

.field public static final HOVERING_SPENICON_CURSOR:I = 0x2

.field public static final HOVERING_SPENICON_CUSTOM:I = 0x0

.field public static final HOVERING_SPENICON_DEFAULT:I = 0x1

.field public static final HOVERING_SPENICON_DEFAULT_CUSTOM:I = 0x16

.field public static final HOVERING_SPENICON_DISABLE_DEFAULT_CUSTOM:I = 0x17

.field public static final HOVERING_SPENICON_HIDE:I = 0x13

.field public static final HOVERING_SPENICON_HOVERPOPUP_DEFAULT:I = 0x14

.field public static final HOVERING_SPENICON_MORE:I = 0xa

.field public static final HOVERING_SPENICON_MOVE:I = 0x5

.field public static final HOVERING_SPENICON_RESIZE_01:I = 0x6

.field public static final HOVERING_SPENICON_RESIZE_02:I = 0x7

.field public static final HOVERING_SPENICON_RESIZE_03:I = 0x8

.field public static final HOVERING_SPENICON_RESIZE_04:I = 0x9

.field public static final HOVERING_SPENICON_SPLIT_01:I = 0x3

.field public static final HOVERING_SPENICON_SPLIT_02:I = 0x4

.field public static final MOUSEICON_CURSOR:I = 0x66

.field public static final MOUSEICON_CUSTOM:I = 0x64

.field public static final MOUSEICON_DEFAULT:I = 0x65

.field public static final MOUSEICON_DRAWING:I = 0x78

.field public static final MOUSEICON_MORE:I = 0x6e

.field public static final MOUSEICON_MOVE:I = 0x69

.field public static final MOUSEICON_POINTER_01:I = 0x6f

.field public static final MOUSEICON_POINTER_02:I = 0x70

.field public static final MOUSEICON_POINTER_03:I = 0x71

.field public static final MOUSEICON_POINTER_04:I = 0x72

.field public static final MOUSEICON_POINTER_05:I = 0x73

.field public static final MOUSEICON_POINTER_06:I = 0x74

.field public static final MOUSEICON_POINTER_07:I = 0x75

.field public static final MOUSEICON_POINTER_08:I = 0x76

.field public static final MOUSEICON_RESIZE_01:I = 0x6a

.field public static final MOUSEICON_RESIZE_02:I = 0x6b

.field public static final MOUSEICON_RESIZE_03:I = 0x6c

.field public static final MOUSEICON_RESIZE_04:I = 0x6d

.field public static final MOUSEICON_SPLIT_01:I = 0x67

.field public static final MOUSEICON_SPLIT_02:I = 0x68

.field public static final MOUSEICON_TRANSPARENT:I = 0x77

.field private static final MOUSE_CUSTOM_ICON_MAX_COUNT:I = 0x5

.field private static final MOUSE_CUSTOM_ICON_MAX_SIZE:I = 0x9c40

.field private static final MOUSE_CUSTOM_ICON_RESIZE_X:I = 0x64

.field public static final STYLE_ARROW:I = 0x3e8

.field public static final STYLE_ARROW_BIG:I = 0x3e9

.field public static final STYLE_CUSTOM:I = -0x1

.field private static final STYLE_DEFAULT:I = 0x3e8

.field public static final STYLE_NULL:I = 0x0

.field private static final STYLE_OEM_FIRST:I = 0x2710

.field public static final STYLE_SPOT_ANCHOR:I = 0x7d2

.field public static final STYLE_SPOT_FINGERHOVER:I = 0x2712

.field public static final STYLE_SPOT_HOVER:I = 0x7d0

.field public static final STYLE_SPOT_HOVERING_SPEN:I = 0x2711

.field public static final STYLE_SPOT_TOUCH:I = 0x7d1

.field private static final TAG:Ljava/lang/String; = "PointerIcon"

.field private static final gNullIcon:Landroid/view/PointerIcon;

.field private static mContext:Landroid/content/Context;

.field private static mCustomHotSpotPoint:Landroid/graphics/Point;

.field private static mCustomIconCurrentId:I

.field private static mCustomIconId:I

.field private static mHoverBitmap:[Landroid/graphics/Bitmap;

.field private static mHoverEffect:Landroid/view/PointerIcon$HoverEffect;

.field private static mIconType:I

.field private static volatile mLock:Ljava/lang/Object;

.field private static volatile mLockforMouse:Ljava/lang/Object;

.field private static mMouseBitmap:[Landroid/graphics/Bitmap;

.field private static mMouseCustomHotSpotPoint:Landroid/graphics/Point;

.field private static mMouseCustomIconCurrentId:I

.field private static mMouseCustomIconId:I

.field private static mMouseIconType:I

.field private static sInputManager:Landroid/hardware/input/IInputManager;

.field private static final sStaticInitInput:Ljava/lang/Object;

.field private static final sStaticInitWindow:Ljava/lang/Object;


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mHotSpotX:F

.field private mHotSpotY:F

.field private final mStyle:I

.field private mSystemIconResourceId:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 98
    new-instance v0, Landroid/view/PointerIcon;

    invoke-direct {v0, v2}, Landroid/view/PointerIcon;-><init>(I)V

    sput-object v0, Landroid/view/PointerIcon;->gNullIcon:Landroid/view/PointerIcon;

    .line 469
    new-instance v0, Landroid/view/PointerIcon$1;

    invoke-direct {v0}, Landroid/view/PointerIcon$1;-><init>()V

    sput-object v0, Landroid/view/PointerIcon;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 803
    sput v1, Landroid/view/PointerIcon;->mMouseIconType:I

    .line 805
    sput-object v3, Landroid/view/PointerIcon;->mMouseCustomHotSpotPoint:Landroid/graphics/Point;

    .line 806
    sput v1, Landroid/view/PointerIcon;->mMouseCustomIconCurrentId:I

    .line 808
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/view/PointerIcon;->mLockforMouse:Ljava/lang/Object;

    .line 1010
    sput v1, Landroid/view/PointerIcon;->mIconType:I

    .line 1011
    sput v1, Landroid/view/PointerIcon;->mCustomIconId:I

    .line 1012
    sput-object v3, Landroid/view/PointerIcon;->mCustomHotSpotPoint:Landroid/graphics/Point;

    .line 1013
    sput v2, Landroid/view/PointerIcon;->mCustomIconCurrentId:I

    .line 1015
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/view/PointerIcon;->sStaticInitWindow:Ljava/lang/Object;

    .line 1016
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/view/PointerIcon;->sStaticInitInput:Ljava/lang/Object;

    .line 1020
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/view/PointerIcon;->mLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 0
    .param p1, "style"    # I

    .prologue
    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    iput p1, p0, Landroid/view/PointerIcon;->mStyle:I

    .line 174
    return-void
.end method

.method synthetic constructor <init>(ILandroid/view/PointerIcon$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Landroid/view/PointerIcon$1;

    .prologue
    .line 61
    invoke-direct {p0, p1}, Landroid/view/PointerIcon;-><init>(I)V

    return-void
.end method

.method static synthetic access$102(Landroid/view/PointerIcon;I)I
    .locals 0
    .param p0, "x0"    # Landroid/view/PointerIcon;
    .param p1, "x1"    # I

    .prologue
    .line 61
    iput p1, p0, Landroid/view/PointerIcon;->mSystemIconResourceId:I

    return p1
.end method

.method static synthetic access$300()Landroid/content/Context;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Landroid/view/PointerIcon;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static createCustomIcon(Landroid/graphics/Bitmap;FF)Landroid/view/PointerIcon;
    .locals 3
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "hotSpotX"    # F
    .param p2, "hotSpotY"    # F

    .prologue
    .line 316
    if-nez p0, :cond_0

    .line 317
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "bitmap must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 319
    :cond_0
    invoke-static {p0, p1, p2}, Landroid/view/PointerIcon;->validateHotSpot(Landroid/graphics/Bitmap;FF)V

    .line 321
    new-instance v0, Landroid/view/PointerIcon;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/view/PointerIcon;-><init>(I)V

    .line 322
    .local v0, "icon":Landroid/view/PointerIcon;
    iput-object p0, v0, Landroid/view/PointerIcon;->mBitmap:Landroid/graphics/Bitmap;

    .line 323
    iput p1, v0, Landroid/view/PointerIcon;->mHotSpotX:F

    .line 324
    iput p2, v0, Landroid/view/PointerIcon;->mHotSpotY:F

    .line 325
    return-object v0
.end method

.method public static getDefaultIcon(Landroid/content/Context;)Landroid/view/PointerIcon;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 198
    const/16 v0, 0x3e8

    invoke-static {p0, v0}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object v0

    return-object v0
.end method

.method static getInputManager()Landroid/hardware/input/IInputManager;
    .locals 2

    .prologue
    .line 1354
    sget-object v1, Landroid/view/PointerIcon;->sStaticInitInput:Ljava/lang/Object;

    monitor-enter v1

    .line 1355
    :try_start_0
    sget-object v0, Landroid/view/PointerIcon;->sInputManager:Landroid/hardware/input/IInputManager;

    if-nez v0, :cond_0

    .line 1356
    const-string v0, "input"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/input/IInputManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/input/IInputManager;

    move-result-object v0

    sput-object v0, Landroid/view/PointerIcon;->sInputManager:Landroid/hardware/input/IInputManager;

    .line 1358
    :cond_0
    sget-object v0, Landroid/view/PointerIcon;->sInputManager:Landroid/hardware/input/IInputManager;

    monitor-exit v1

    return-object v0

    .line 1359
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getNullIcon()Landroid/view/PointerIcon;
    .locals 1

    .prologue
    .line 185
    sget-object v0, Landroid/view/PointerIcon;->gNullIcon:Landroid/view/PointerIcon;

    return-object v0
.end method

.method public static getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "style"    # I

    .prologue
    const/16 v6, 0x3e9

    const/4 v10, -0x1

    const/16 v9, 0x3e8

    const/high16 v8, 0x40000000    # 2.0f

    const/4 v7, 0x0

    .line 213
    if-nez p0, :cond_0

    .line 214
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "context must not be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 217
    :cond_0
    if-nez p1, :cond_1

    .line 218
    sget-object v4, Landroid/view/PointerIcon;->gNullIcon:Landroid/view/PointerIcon;

    .line 298
    :goto_0
    return-object v4

    .line 222
    :cond_1
    sget-object v4, Landroid/view/PointerIcon;->mContext:Landroid/content/Context;

    if-nez v4, :cond_2

    .line 223
    sput-object p0, Landroid/view/PointerIcon;->mContext:Landroid/content/Context;

    .line 226
    :cond_2
    if-ne p1, v9, :cond_4

    sget-object v4, Landroid/view/PointerIcon;->mHoverBitmap:[Landroid/graphics/Bitmap;

    if-eqz v4, :cond_4

    sget-object v4, Landroid/view/PointerIcon;->mHoverBitmap:[Landroid/graphics/Bitmap;

    aget-object v4, v4, v7

    if-eqz v4, :cond_4

    .line 227
    sget-object v4, Landroid/view/PointerIcon;->mCustomHotSpotPoint:Landroid/graphics/Point;

    if-nez v4, :cond_3

    .line 228
    sget-object v4, Landroid/view/PointerIcon;->mHoverBitmap:[Landroid/graphics/Bitmap;

    aget-object v4, v4, v7

    sget-object v5, Landroid/view/PointerIcon;->mHoverBitmap:[Landroid/graphics/Bitmap;

    aget-object v5, v5, v7

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v8

    sget-object v6, Landroid/view/PointerIcon;->mHoverBitmap:[Landroid/graphics/Bitmap;

    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v8

    invoke-static {v4, v5, v6}, Landroid/view/PointerIcon;->createCustomIcon(Landroid/graphics/Bitmap;FF)Landroid/view/PointerIcon;

    move-result-object v4

    goto :goto_0

    .line 230
    :cond_3
    sget-object v4, Landroid/view/PointerIcon;->mHoverBitmap:[Landroid/graphics/Bitmap;

    aget-object v4, v4, v7

    sget-object v5, Landroid/view/PointerIcon;->mCustomHotSpotPoint:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    sget-object v6, Landroid/view/PointerIcon;->mCustomHotSpotPoint:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    int-to-float v6, v6

    invoke-static {v4, v5, v6}, Landroid/view/PointerIcon;->createCustomIcon(Landroid/graphics/Bitmap;FF)Landroid/view/PointerIcon;

    move-result-object v4

    goto :goto_0

    .line 233
    :cond_4
    const/16 v4, 0x2711

    if-ne p1, v4, :cond_a

    .line 234
    sget v4, Landroid/view/PointerIcon;->mIconType:I

    if-nez v4, :cond_7

    .line 235
    sget-object v4, Landroid/view/PointerIcon;->mHoverBitmap:[Landroid/graphics/Bitmap;

    sget v5, Landroid/view/PointerIcon;->mCustomIconId:I

    aget-object v4, v4, v5

    if-nez v4, :cond_5

    .line 236
    const-string v4, "PointerIcon"

    const-string v5, "getSystemIcon mHoverBitmap is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    invoke-static {p0, v9}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object v4

    goto :goto_0

    .line 240
    :cond_5
    sget-object v4, Landroid/view/PointerIcon;->mCustomHotSpotPoint:Landroid/graphics/Point;

    if-nez v4, :cond_6

    .line 241
    sget-object v4, Landroid/view/PointerIcon;->mHoverBitmap:[Landroid/graphics/Bitmap;

    sget v5, Landroid/view/PointerIcon;->mCustomIconId:I

    aget-object v4, v4, v5

    sget-object v5, Landroid/view/PointerIcon;->mHoverBitmap:[Landroid/graphics/Bitmap;

    sget v6, Landroid/view/PointerIcon;->mCustomIconId:I

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v8

    sget-object v6, Landroid/view/PointerIcon;->mHoverBitmap:[Landroid/graphics/Bitmap;

    sget v7, Landroid/view/PointerIcon;->mCustomIconId:I

    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v8

    invoke-static {v4, v5, v6}, Landroid/view/PointerIcon;->createCustomIcon(Landroid/graphics/Bitmap;FF)Landroid/view/PointerIcon;

    move-result-object v4

    goto/16 :goto_0

    .line 243
    :cond_6
    sget-object v4, Landroid/view/PointerIcon;->mHoverBitmap:[Landroid/graphics/Bitmap;

    sget v5, Landroid/view/PointerIcon;->mCustomIconId:I

    aget-object v4, v4, v5

    sget-object v5, Landroid/view/PointerIcon;->mCustomHotSpotPoint:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    sget-object v6, Landroid/view/PointerIcon;->mCustomHotSpotPoint:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    int-to-float v6, v6

    invoke-static {v4, v5, v6}, Landroid/view/PointerIcon;->createCustomIcon(Landroid/graphics/Bitmap;FF)Landroid/view/PointerIcon;

    move-result-object v4

    goto/16 :goto_0

    .line 244
    :cond_7
    sget v4, Landroid/view/PointerIcon;->mIconType:I

    const/16 v5, 0x16

    if-eq v4, v5, :cond_8

    sget v4, Landroid/view/PointerIcon;->mIconType:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_a

    :cond_8
    sget-object v4, Landroid/view/PointerIcon;->mHoverBitmap:[Landroid/graphics/Bitmap;

    if-eqz v4, :cond_a

    sget-object v4, Landroid/view/PointerIcon;->mHoverBitmap:[Landroid/graphics/Bitmap;

    aget-object v4, v4, v7

    if-eqz v4, :cond_a

    .line 245
    sget-object v4, Landroid/view/PointerIcon;->mCustomHotSpotPoint:Landroid/graphics/Point;

    if-nez v4, :cond_9

    .line 246
    sget-object v4, Landroid/view/PointerIcon;->mHoverBitmap:[Landroid/graphics/Bitmap;

    aget-object v4, v4, v7

    sget-object v5, Landroid/view/PointerIcon;->mHoverBitmap:[Landroid/graphics/Bitmap;

    aget-object v5, v5, v7

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v8

    sget-object v6, Landroid/view/PointerIcon;->mHoverBitmap:[Landroid/graphics/Bitmap;

    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v8

    invoke-static {v4, v5, v6}, Landroid/view/PointerIcon;->createCustomIcon(Landroid/graphics/Bitmap;FF)Landroid/view/PointerIcon;

    move-result-object v4

    goto/16 :goto_0

    .line 248
    :cond_9
    sget-object v4, Landroid/view/PointerIcon;->mHoverBitmap:[Landroid/graphics/Bitmap;

    aget-object v4, v4, v7

    sget-object v5, Landroid/view/PointerIcon;->mCustomHotSpotPoint:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    sget-object v6, Landroid/view/PointerIcon;->mCustomHotSpotPoint:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    int-to-float v6, v6

    invoke-static {v4, v5, v6}, Landroid/view/PointerIcon;->createCustomIcon(Landroid/graphics/Bitmap;FF)Landroid/view/PointerIcon;

    move-result-object v4

    goto/16 :goto_0

    .line 254
    :cond_a
    if-ne p1, v6, :cond_d

    .line 255
    sget v4, Landroid/view/PointerIcon;->mMouseIconType:I

    const/16 v5, 0x64

    if-ne v4, v5, :cond_d

    .line 256
    sget-object v4, Landroid/view/PointerIcon;->mMouseBitmap:[Landroid/graphics/Bitmap;

    sget v5, Landroid/view/PointerIcon;->mMouseCustomIconId:I

    aget-object v4, v4, v5

    if-nez v4, :cond_b

    .line 257
    invoke-static {p0, v9}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object v4

    goto/16 :goto_0

    .line 259
    :cond_b
    sget-object v4, Landroid/view/PointerIcon;->mMouseCustomHotSpotPoint:Landroid/graphics/Point;

    if-nez v4, :cond_c

    .line 260
    sget-object v4, Landroid/view/PointerIcon;->mMouseBitmap:[Landroid/graphics/Bitmap;

    sget v5, Landroid/view/PointerIcon;->mMouseCustomIconId:I

    aget-object v4, v4, v5

    sget-object v5, Landroid/view/PointerIcon;->mMouseBitmap:[Landroid/graphics/Bitmap;

    sget v6, Landroid/view/PointerIcon;->mMouseCustomIconId:I

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v8

    sget-object v6, Landroid/view/PointerIcon;->mMouseBitmap:[Landroid/graphics/Bitmap;

    sget v7, Landroid/view/PointerIcon;->mMouseCustomIconId:I

    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v8

    invoke-static {v4, v5, v6}, Landroid/view/PointerIcon;->createCustomIcon(Landroid/graphics/Bitmap;FF)Landroid/view/PointerIcon;

    move-result-object v4

    goto/16 :goto_0

    .line 262
    :cond_c
    sget-object v4, Landroid/view/PointerIcon;->mMouseBitmap:[Landroid/graphics/Bitmap;

    sget v5, Landroid/view/PointerIcon;->mMouseCustomIconId:I

    aget-object v4, v4, v5

    sget-object v5, Landroid/view/PointerIcon;->mMouseCustomHotSpotPoint:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    sget-object v6, Landroid/view/PointerIcon;->mMouseCustomHotSpotPoint:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    int-to-float v6, v6

    invoke-static {v4, v5, v6}, Landroid/view/PointerIcon;->createCustomIcon(Landroid/graphics/Bitmap;FF)Landroid/view/PointerIcon;

    move-result-object v4

    goto/16 :goto_0

    .line 267
    :cond_d
    invoke-static {p1}, Landroid/view/PointerIcon;->getSystemIconStyleIndex(I)I

    move-result v3

    .line 269
    .local v3, "styleIndex":I
    if-nez v3, :cond_e

    const/16 v4, 0x2711

    if-eq p1, v4, :cond_e

    if-eq p1, v6, :cond_e

    .line 270
    invoke-static {v9}, Landroid/view/PointerIcon;->getSystemIconStyleIndex(I)I

    move-result v3

    .line 275
    :cond_e
    const/16 v4, 0x2711

    if-eq p1, v4, :cond_f

    if-ne p1, v6, :cond_10

    .line 276
    :cond_f
    const/4 v4, 0x0

    sget-object v5, Lcom/android/internal/R$styleable;->DeviceDefault_Pointer:[I

    const v6, 0x1010567

    invoke-virtual {p0, v4, v5, v6, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 277
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 278
    .local v2, "resourceId":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 287
    :goto_1
    if-ne v2, v10, :cond_12

    .line 288
    const-string v4, "PointerIcon"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Missing theme resources for pointer icon style "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    if-ne p1, v9, :cond_11

    sget-object v4, Landroid/view/PointerIcon;->gNullIcon:Landroid/view/PointerIcon;

    goto/16 :goto_0

    .line 280
    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v2    # "resourceId":I
    :cond_10
    const/4 v4, 0x0

    sget-object v5, Lcom/android/internal/R$styleable;->Pointer:[I

    const v6, 0x101050b

    invoke-virtual {p0, v4, v5, v6, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 283
    .restart local v0    # "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 284
    .restart local v2    # "resourceId":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_1

    .line 289
    :cond_11
    invoke-static {p0, v9}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object v4

    goto/16 :goto_0

    .line 292
    :cond_12
    new-instance v1, Landroid/view/PointerIcon;

    invoke-direct {v1, p1}, Landroid/view/PointerIcon;-><init>(I)V

    .line 293
    .local v1, "icon":Landroid/view/PointerIcon;
    const/high16 v4, -0x1000000

    and-int/2addr v4, v2

    const/high16 v5, 0x1000000

    if-ne v4, v5, :cond_13

    .line 294
    iput v2, v1, Landroid/view/PointerIcon;->mSystemIconResourceId:I

    :goto_2
    move-object v4, v1

    .line 298
    goto/16 :goto_0

    .line 296
    :cond_13
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v1, p0, v4, v2}, Landroid/view/PointerIcon;->loadResource(Landroid/content/Context;Landroid/content/res/Resources;I)V

    goto :goto_2
.end method

.method private static getSystemIconStyleIndex(I)I
    .locals 7
    .param p0, "style"    # I

    .prologue
    const/16 v1, 0x13

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 597
    sparse-switch p0, :sswitch_data_0

    .line 701
    :goto_0
    :pswitch_0
    :sswitch_0
    return v0

    .line 602
    :sswitch_1
    sget v0, Landroid/view/PointerIcon;->mMouseIconType:I

    packed-switch v0, :pswitch_data_0

    move v0, v1

    .line 644
    goto :goto_0

    :pswitch_1
    move v0, v1

    .line 604
    goto :goto_0

    .line 606
    :pswitch_2
    const/16 v0, 0x14

    goto :goto_0

    .line 608
    :pswitch_3
    const/16 v0, 0x15

    goto :goto_0

    .line 610
    :pswitch_4
    const/16 v0, 0x16

    goto :goto_0

    .line 612
    :pswitch_5
    const/16 v0, 0x17

    goto :goto_0

    .line 614
    :pswitch_6
    const/16 v0, 0x18

    goto :goto_0

    .line 616
    :pswitch_7
    const/16 v0, 0x19

    goto :goto_0

    .line 618
    :pswitch_8
    const/16 v0, 0x1a

    goto :goto_0

    .line 620
    :pswitch_9
    const/16 v0, 0x1b

    goto :goto_0

    .line 622
    :pswitch_a
    const/16 v0, 0x1c

    goto :goto_0

    .line 624
    :pswitch_b
    const/16 v0, 0x1d

    goto :goto_0

    .line 626
    :pswitch_c
    const/16 v0, 0x1e

    goto :goto_0

    .line 628
    :pswitch_d
    const/16 v0, 0x1f

    goto :goto_0

    .line 630
    :pswitch_e
    const/16 v0, 0x20

    goto :goto_0

    .line 632
    :pswitch_f
    const/16 v0, 0x21

    goto :goto_0

    .line 634
    :pswitch_10
    const/16 v0, 0x22

    goto :goto_0

    .line 636
    :pswitch_11
    const/16 v0, 0x23

    goto :goto_0

    .line 638
    :pswitch_12
    const/16 v0, 0x24

    goto :goto_0

    .line 640
    :pswitch_13
    const/16 v0, 0x25

    goto :goto_0

    .line 642
    :pswitch_14
    const/16 v0, 0x26

    goto :goto_0

    :sswitch_2
    move v0, v2

    .line 647
    goto :goto_0

    :sswitch_3
    move v0, v3

    .line 649
    goto :goto_0

    :sswitch_4
    move v0, v4

    .line 651
    goto :goto_0

    .line 657
    :sswitch_5
    const-string v1, "PointerIcon"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getSystemIconStyleIndex style: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    sget v1, Landroid/view/PointerIcon;->mIconType:I

    packed-switch v1, :pswitch_data_1

    .line 698
    :pswitch_15
    const/16 v0, 0x9

    goto :goto_0

    .line 660
    :pswitch_16
    const/16 v0, 0xb

    goto :goto_0

    .line 662
    :pswitch_17
    const/16 v0, 0xc

    goto :goto_0

    .line 664
    :pswitch_18
    const/16 v0, 0xd

    goto :goto_0

    .line 666
    :pswitch_19
    const/16 v0, 0xe

    goto :goto_0

    .line 668
    :pswitch_1a
    const/16 v0, 0xf

    goto :goto_0

    .line 670
    :pswitch_1b
    const/16 v0, 0x10

    goto :goto_0

    .line 672
    :pswitch_1c
    const/16 v0, 0x11

    goto :goto_0

    .line 674
    :pswitch_1d
    const/16 v0, 0x12

    goto :goto_0

    .line 676
    :pswitch_1e
    const/16 v0, 0xa

    goto/16 :goto_0

    :pswitch_1f
    move v0, v2

    .line 680
    goto/16 :goto_0

    :pswitch_20
    move v0, v3

    .line 682
    goto/16 :goto_0

    :pswitch_21
    move v0, v4

    .line 684
    goto/16 :goto_0

    .line 686
    :pswitch_22
    const/4 v0, 0x4

    goto/16 :goto_0

    .line 688
    :pswitch_23
    const/4 v0, 0x5

    goto/16 :goto_0

    .line 690
    :pswitch_24
    const/4 v0, 0x6

    goto/16 :goto_0

    .line 692
    :pswitch_25
    const/4 v0, 0x7

    goto/16 :goto_0

    .line 694
    :pswitch_26
    const/16 v0, 0x8

    goto/16 :goto_0

    .line 696
    :pswitch_27
    const/16 v0, 0x27

    goto/16 :goto_0

    .line 597
    nop

    :sswitch_data_0
    .sparse-switch
        0x3e8 -> :sswitch_0
        0x3e9 -> :sswitch_1
        0x7d0 -> :sswitch_2
        0x7d1 -> :sswitch_3
        0x7d2 -> :sswitch_4
        0x2711 -> :sswitch_5
        0x2712 -> :sswitch_0
    .end sparse-switch

    .line 602
    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
    .end packed-switch

    .line 658
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_0
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_15
        :pswitch_27
    .end packed-switch
.end method

.method public static loadCustomIcon(Landroid/content/res/Resources;I)Landroid/view/PointerIcon;
    .locals 3
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "resourceId"    # I

    .prologue
    .line 351
    if-nez p0, :cond_0

    .line 352
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "resources must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 355
    :cond_0
    new-instance v0, Landroid/view/PointerIcon;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/view/PointerIcon;-><init>(I)V

    .line 356
    .local v0, "icon":Landroid/view/PointerIcon;
    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p1}, Landroid/view/PointerIcon;->loadResource(Landroid/content/Context;Landroid/content/res/Resources;I)V

    .line 357
    return-object v0
.end method

.method private loadResource(Landroid/content/Context;Landroid/content/res/Resources;I)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resources"    # Landroid/content/res/Resources;
    .param p3, "resourceId"    # I

    .prologue
    .line 547
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v6

    .line 552
    .local v6, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    const-string/jumbo v7, "pointer-icon"

    invoke-static {v6, v7}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 554
    sget-object v7, Lcom/android/internal/R$styleable;->PointerIcon:[I

    invoke-virtual {p2, v6, v7}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 556
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 557
    .local v1, "bitmapRes":I
    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    .line 558
    .local v4, "hotSpotX":F
    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    .line 559
    .local v5, "hotSpotY":F
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 563
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->close()V

    .line 566
    if-nez v1, :cond_0

    .line 567
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "<pointer-icon> is missing bitmap attribute."

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 560
    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v1    # "bitmapRes":I
    .end local v4    # "hotSpotX":F
    .end local v5    # "hotSpotY":F
    :catch_0
    move-exception v3

    .line 561
    .local v3, "ex":Ljava/lang/Exception;
    :try_start_1
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Exception parsing pointer icon resource."

    invoke-direct {v7, v8, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 563
    .end local v3    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->close()V

    throw v7

    .line 571
    .restart local v0    # "a":Landroid/content/res/TypedArray;
    .restart local v1    # "bitmapRes":I
    .restart local v4    # "hotSpotX":F
    .restart local v5    # "hotSpotY":F
    :cond_0
    if-nez p1, :cond_1

    .line 572
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 576
    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    instance-of v7, v2, Landroid/graphics/drawable/BitmapDrawable;

    if-nez v7, :cond_2

    .line 577
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "<pointer-icon> bitmap attribute must refer to a bitmap drawable."

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 574
    .end local v2    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    invoke-virtual {p1, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .restart local v2    # "drawable":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 582
    :cond_2
    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    .end local v2    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, p0, Landroid/view/PointerIcon;->mBitmap:Landroid/graphics/Bitmap;

    .line 583
    iput v4, p0, Landroid/view/PointerIcon;->mHotSpotX:F

    .line 584
    iput v5, p0, Landroid/view/PointerIcon;->mHotSpotY:F

    .line 585
    return-void
.end method

.method public static registerHoveringSpenCustomIcon(Landroid/graphics/drawable/Drawable;)I
    .locals 8
    .param p0, "d"    # Landroid/graphics/drawable/Drawable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 1033
    const-string v4, "PointerIcon"

    const-string/jumbo v5, "registerHoveringSpenCustomIcon"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1037
    if-nez p0, :cond_0

    .line 1038
    const-string v4, "PointerIcon"

    const-string/jumbo v5, "registerHoveringSpenCustomIcon Drawable is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1039
    const/4 v4, -0x1

    .line 1058
    :goto_0
    return v4

    .line 1042
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1043
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1045
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-virtual {p0, v7, v7, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1046
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1048
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    mul-int/2addr v4, v5

    mul-int/lit8 v4, v4, 0x4

    const v5, 0x9c40

    if-le v4, v5, :cond_1

    .line 1052
    const-string v4, "PointerIcon"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "registerHoveringSpenCustomIcon size too big width: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "height:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1053
    const/high16 v4, 0x42c80000    # 100.0f

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float v3, v4, v5

    .line 1054
    .local v3, "scale":F
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v3

    float-to-int v4, v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v3

    float-to-int v5, v5

    invoke-static {v0, v4, v5, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1055
    .local v2, "resizeBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1056
    move-object v0, v2

    .line 1058
    .end local v2    # "resizeBitmap":Landroid/graphics/Bitmap;
    .end local v3    # "scale":F
    :cond_1
    invoke-static {}, Landroid/view/PointerIcon;->getInputManager()Landroid/hardware/input/IInputManager;

    move-result-object v4

    invoke-interface {v4, v0}, Landroid/hardware/input/IInputManager;->registerHoveringSpenCustomIcon(Landroid/graphics/Bitmap;)I

    move-result v4

    goto/16 :goto_0
.end method

.method public static registerMouseCustomIcon(Landroid/graphics/drawable/Drawable;)I
    .locals 8
    .param p0, "d"    # Landroid/graphics/drawable/Drawable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 817
    const-string v4, "PointerIcon"

    const-string/jumbo v5, "registerMouseCustomIcon"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    if-nez p0, :cond_0

    .line 820
    const-string v4, "PointerIcon"

    const-string/jumbo v5, "registerMouseCustomIcon Drawable is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    const/4 v4, -0x1

    .line 840
    :goto_0
    return v4

    .line 824
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 825
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 827
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-virtual {p0, v7, v7, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 828
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 830
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    mul-int/2addr v4, v5

    mul-int/lit8 v4, v4, 0x4

    const v5, 0x9c40

    if-le v4, v5, :cond_1

    .line 834
    const-string v4, "PointerIcon"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "registerMouseCustomIcon size too big width: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "height: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    const/high16 v4, 0x42c80000    # 100.0f

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float v3, v4, v5

    .line 836
    .local v3, "scale":F
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v3

    float-to-int v4, v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v3

    float-to-int v5, v5

    invoke-static {v0, v4, v5, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 837
    .local v2, "resizeBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 838
    move-object v0, v2

    .line 840
    .end local v2    # "resizeBitmap":Landroid/graphics/Bitmap;
    .end local v3    # "scale":F
    :cond_1
    invoke-static {}, Landroid/view/PointerIcon;->getInputManager()Landroid/hardware/input/IInputManager;

    move-result-object v4

    invoke-interface {v4, v0}, Landroid/hardware/input/IInputManager;->registerMouseCustomIcon(Landroid/graphics/Bitmap;)I

    move-result v4

    goto/16 :goto_0
.end method

.method public static removeHoveringSpenCustomIcon(I)V
    .locals 3
    .param p0, "customIconId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1068
    const-string v0, "PointerIcon"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeHoveringSpenCustomIcon"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1069
    invoke-static {}, Landroid/view/PointerIcon;->getInputManager()Landroid/hardware/input/IInputManager;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/hardware/input/IInputManager;->removeHoveringSpenCustomIcon(I)V

    .line 1070
    return-void
.end method

.method public static removeMouseCustomIcon(I)V
    .locals 3
    .param p0, "customIconId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 850
    const-string v0, "PointerIcon"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeMouseCustomIcon"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    invoke-static {}, Landroid/view/PointerIcon;->getInputManager()Landroid/hardware/input/IInputManager;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/hardware/input/IInputManager;->removeMouseCustomIcon(I)V

    .line 852
    return-void
.end method

.method public static setCustomDefaultIcon(ILandroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p0, "deviceType"    # I
    .param p1, "customIcon"    # Landroid/graphics/drawable/Drawable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 715
    const-string v0, "PointerIcon"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setCustomDefaultIcon(), deviceType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", iconType is CUSTOM"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    if-nez p1, :cond_0

    .line 718
    const-string v0, "PointerIcon"

    const-string/jumbo v1, "setCustomDefaultIcon(), invalid customIcon."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    :goto_0
    return-void

    .line 722
    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    .line 723
    const/16 v0, 0x16

    invoke-static {v0, p1}, Landroid/view/PointerIcon;->setHoveringSpenIcon(ILandroid/graphics/drawable/Drawable;)I

    goto :goto_0

    .line 724
    :cond_1
    const/4 v0, 0x3

    if-ne p0, v0, :cond_2

    .line 725
    const/16 v0, 0x64

    invoke-static {v0, p1}, Landroid/view/PointerIcon;->setMouseIcon(ILandroid/graphics/drawable/Drawable;)I

    goto :goto_0

    .line 727
    :cond_2
    const-string v0, "PointerIcon"

    const-string/jumbo v1, "setCustomDefaultIcon(), invalid device type."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static setDisableCustomDefaultIcon()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 737
    const-string v0, "PointerIcon"

    const-string/jumbo v1, "setDisableCustomDefaultIcon()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    const/16 v0, 0x17

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/view/PointerIcon;->setHoveringSpenIcon(ILandroid/graphics/drawable/Drawable;)I

    .line 739
    return-void
.end method

.method public static setHoveringSpenCustomIcon(ILandroid/graphics/Bitmap;)I
    .locals 4
    .param p0, "IconId"    # I
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1323
    move v0, p0

    .line 1326
    .local v0, "iReaIconId":I
    if-gez v0, :cond_0

    .line 1327
    sget v0, Landroid/view/PointerIcon;->mCustomIconId:I

    .line 1329
    :cond_0
    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 1330
    const/4 v0, 0x1

    .line 1332
    :cond_1
    sget-object v2, Landroid/view/PointerIcon;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1333
    :try_start_0
    sget-object v1, Landroid/view/PointerIcon;->mHoverBitmap:[Landroid/graphics/Bitmap;

    if-nez v1, :cond_3

    .line 1334
    const/4 v1, 0x5

    new-array v1, v1, [Landroid/graphics/Bitmap;

    sput-object v1, Landroid/view/PointerIcon;->mHoverBitmap:[Landroid/graphics/Bitmap;

    .line 1338
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1340
    const/16 v1, 0xff

    if-ne p0, v1, :cond_2

    .line 1341
    const/4 v0, 0x0

    .line 1349
    :cond_2
    sget-object v1, Landroid/view/PointerIcon;->mHoverBitmap:[Landroid/graphics/Bitmap;

    aput-object p1, v1, v0

    .line 1350
    return v0

    .line 1336
    :cond_3
    :try_start_1
    const-string v1, "PointerIcon"

    const-string v3, "HoverBitmap instance already exist."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1338
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static setHoveringSpenCustomIcon(Landroid/graphics/Bitmap;)I
    .locals 3
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v1, 0x5

    .line 1294
    sget v0, Landroid/view/PointerIcon;->mCustomIconCurrentId:I

    if-lt v0, v1, :cond_1

    .line 1295
    const/4 v0, 0x1

    sput v0, Landroid/view/PointerIcon;->mCustomIconCurrentId:I

    .line 1299
    :goto_0
    sget-object v1, Landroid/view/PointerIcon;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1300
    :try_start_0
    sget-object v0, Landroid/view/PointerIcon;->mHoverBitmap:[Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    .line 1301
    const/4 v0, 0x5

    new-array v0, v0, [Landroid/graphics/Bitmap;

    sput-object v0, Landroid/view/PointerIcon;->mHoverBitmap:[Landroid/graphics/Bitmap;

    .line 1305
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1307
    sget-object v0, Landroid/view/PointerIcon;->mHoverBitmap:[Landroid/graphics/Bitmap;

    sget v1, Landroid/view/PointerIcon;->mCustomIconCurrentId:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    .line 1308
    sget-object v0, Landroid/view/PointerIcon;->mHoverBitmap:[Landroid/graphics/Bitmap;

    sget v1, Landroid/view/PointerIcon;->mCustomIconCurrentId:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1310
    :cond_0
    sget-object v0, Landroid/view/PointerIcon;->mHoverBitmap:[Landroid/graphics/Bitmap;

    sget v1, Landroid/view/PointerIcon;->mCustomIconCurrentId:I

    aput-object p0, v0, v1

    .line 1311
    sget v0, Landroid/view/PointerIcon;->mCustomIconCurrentId:I

    return v0

    .line 1297
    :cond_1
    sget v0, Landroid/view/PointerIcon;->mCustomIconCurrentId:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroid/view/PointerIcon;->mCustomIconCurrentId:I

    goto :goto_0

    .line 1303
    :cond_2
    :try_start_1
    const-string v0, "PointerIcon"

    const-string v2, "HoverBitmap instance already exist."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1305
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static setHoveringSpenIcon(ILandroid/graphics/drawable/Drawable;)I
    .locals 1
    .param p0, "iconType"    # I
    .param p1, "customIcon"    # Landroid/graphics/drawable/Drawable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1129
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/view/PointerIcon;->setHoveringSpenIcon(ILandroid/graphics/drawable/Drawable;I)I

    move-result v0

    return v0
.end method

.method public static setHoveringSpenIcon(ILandroid/graphics/drawable/Drawable;I)I
    .locals 12
    .param p0, "iconType"    # I
    .param p1, "customIcon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "flag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/16 v1, 0x2711

    const/16 v6, 0x64

    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 1138
    const-string v0, "PointerIcon"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setHoveringSpenIcon2 iconType: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1144
    const/16 v0, 0x17

    if-ne p0, v0, :cond_0

    .line 1145
    invoke-static {}, Landroid/view/PointerIcon;->getInputManager()Landroid/hardware/input/IInputManager;

    move-result-object v0

    move v2, p0

    move-object v4, v3

    move v5, p2

    invoke-interface/range {v0 .. v5}, Landroid/hardware/input/IInputManager;->reloadPointerIconForBitmap(IILandroid/graphics/Bitmap;Landroid/graphics/Point;I)I

    move-result v0

    .line 1165
    :goto_0
    return v0

    .line 1148
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 1149
    .local v7, "bitmap":Landroid/graphics/Bitmap;
    new-instance v10, Landroid/graphics/Canvas;

    invoke-direct {v10, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1151
    .local v10, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {p1, v5, v5, v0, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1152
    invoke-virtual {p1, v10}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1154
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    mul-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x4

    const v2, 0x9c40

    if-le v0, v2, :cond_1

    .line 1158
    const-string v0, "PointerIcon"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "registerHoveringSpenCustomIcon size too big width: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "height:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1160
    invoke-static {v7, v6, v6, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 1161
    .local v11, "resizeBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 1162
    move-object v7, v11

    .line 1165
    .end local v11    # "resizeBitmap":Landroid/graphics/Bitmap;
    :cond_1
    invoke-static {}, Landroid/view/PointerIcon;->getInputManager()Landroid/hardware/input/IInputManager;

    move-result-object v4

    move v5, v1

    move v6, p0

    move-object v8, v3

    move v9, p2

    invoke-interface/range {v4 .. v9}, Landroid/hardware/input/IInputManager;->reloadPointerIconForBitmap(IILandroid/graphics/Bitmap;Landroid/graphics/Point;I)I

    move-result v0

    goto :goto_0
.end method

.method public static setHoveringSpenIcon(ILandroid/graphics/drawable/Drawable;Landroid/graphics/Point;)I
    .locals 1
    .param p0, "iconType"    # I
    .param p1, "customIcon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "hotSpotPoint"    # Landroid/graphics/Point;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1177
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/view/PointerIcon;->setHoveringSpenIcon(ILandroid/graphics/drawable/Drawable;Landroid/graphics/Point;I)I

    move-result v0

    return v0
.end method

.method public static setHoveringSpenIcon(ILandroid/graphics/drawable/Drawable;Landroid/graphics/Point;I)I
    .locals 8
    .param p0, "iconType"    # I
    .param p1, "customIcon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "hotSpotPoint"    # Landroid/graphics/Point;
    .param p3, "flag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x64

    const/4 v4, 0x0

    .line 1186
    const-string v0, "PointerIcon"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setHoveringSpenIcon with hotSpotPoint iconType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1191
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1192
    .local v3, "bitmap":Landroid/graphics/Bitmap;
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1194
    .local v6, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p1, v4, v4, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1195
    invoke-virtual {p1, v6}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1197
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x4

    const v1, 0x9c40

    if-le v0, v1, :cond_0

    .line 1201
    const-string v0, "PointerIcon"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerHoveringSpenCustomIcon size too big width: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "height:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1203
    invoke-static {v3, v5, v5, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 1204
    .local v7, "resizeBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 1205
    move-object v3, v7

    .line 1208
    .end local v7    # "resizeBitmap":Landroid/graphics/Bitmap;
    :cond_0
    invoke-static {}, Landroid/view/PointerIcon;->getInputManager()Landroid/hardware/input/IInputManager;

    move-result-object v0

    const/16 v1, 0x2711

    move v2, p0

    move-object v4, p2

    move v5, p3

    invoke-interface/range {v0 .. v5}, Landroid/hardware/input/IInputManager;->reloadPointerIconForBitmap(IILandroid/graphics/Bitmap;Landroid/graphics/Point;I)I

    move-result v0

    return v0
.end method

.method public static setHoveringSpenIcon(II)V
    .locals 1
    .param p0, "iconType"    # I
    .param p1, "customIconId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1079
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/view/PointerIcon;->setHoveringSpenIcon(III)V

    .line 1080
    return-void
.end method

.method public static setHoveringSpenIcon(III)V
    .locals 6
    .param p0, "iconType"    # I
    .param p1, "customIconId"    # I
    .param p2, "flag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1093
    invoke-static {}, Landroid/view/PointerIcon;->getInputManager()Landroid/hardware/input/IInputManager;

    move-result-object v0

    const/16 v1, 0x2711

    const/4 v4, 0x0

    move v2, p0

    move v3, p1

    move v5, p2

    invoke-interface/range {v0 .. v5}, Landroid/hardware/input/IInputManager;->reloadPointerIcon(IIILandroid/graphics/Point;I)V

    .line 1094
    return-void
.end method

.method public static setHoveringSpenIcon(IILandroid/graphics/Point;)V
    .locals 1
    .param p0, "iconType"    # I
    .param p1, "customIconId"    # I
    .param p2, "hotSpotPoint"    # Landroid/graphics/Point;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1105
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/view/PointerIcon;->setHoveringSpenIcon(IILandroid/graphics/Point;I)V

    .line 1106
    return-void
.end method

.method public static setHoveringSpenIcon(IILandroid/graphics/Point;I)V
    .locals 6
    .param p0, "iconType"    # I
    .param p1, "customIconId"    # I
    .param p2, "hotSpotPoint"    # Landroid/graphics/Point;
    .param p3, "flag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1118
    invoke-static {}, Landroid/view/PointerIcon;->getInputManager()Landroid/hardware/input/IInputManager;

    move-result-object v0

    const/16 v1, 0x2711

    move v2, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    invoke-interface/range {v0 .. v5}, Landroid/hardware/input/IInputManager;->reloadPointerIcon(IIILandroid/graphics/Point;I)V

    .line 1119
    return-void
.end method

.method public static setIcon(II)V
    .locals 4
    .param p0, "deviceType"    # I
    .param p1, "iconType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, -0x1

    .line 748
    const-string v0, "PointerIcon"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setIcon(), deviceType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", iconType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    .line 750
    invoke-static {p1, v3}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V

    .line 758
    :goto_0
    return-void

    .line 752
    :cond_0
    const/4 v0, 0x3

    if-ne p0, v0, :cond_1

    .line 753
    invoke-static {p1, v3}, Landroid/view/PointerIcon;->setMouseIcon(II)V

    goto :goto_0

    .line 756
    :cond_1
    const-string v0, "PointerIcon"

    const-string/jumbo v1, "setIcon(), invalid device type."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static setIcon(ILandroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p0, "deviceType"    # I
    .param p1, "customIcon"    # Landroid/graphics/drawable/Drawable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 767
    const-string v0, "PointerIcon"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setIcon(), deviceType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", iconType is CUSTOM"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    .line 769
    const/4 v0, 0x0

    invoke-static {v0, p1}, Landroid/view/PointerIcon;->setHoveringSpenIcon(ILandroid/graphics/drawable/Drawable;)I

    .line 777
    :goto_0
    return-void

    .line 771
    :cond_0
    const/4 v0, 0x3

    if-ne p0, v0, :cond_1

    .line 772
    const/16 v0, 0x64

    invoke-static {v0, p1}, Landroid/view/PointerIcon;->setMouseIcon(ILandroid/graphics/drawable/Drawable;)I

    goto :goto_0

    .line 775
    :cond_1
    const-string v0, "PointerIcon"

    const-string/jumbo v1, "setIcon(), invalid device type."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static setIcon(ILandroid/graphics/drawable/Drawable;Landroid/graphics/Point;)V
    .locals 3
    .param p0, "deviceType"    # I
    .param p1, "customIcon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "hotSpotPoint"    # Landroid/graphics/Point;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 787
    const-string v0, "PointerIcon"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setIcon(), deviceType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", iconType is CUSTOM, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    .line 789
    const/4 v0, 0x0

    invoke-static {v0, p1, p2}, Landroid/view/PointerIcon;->setHoveringSpenIcon(ILandroid/graphics/drawable/Drawable;Landroid/graphics/Point;)I

    .line 797
    :goto_0
    return-void

    .line 791
    :cond_0
    const/4 v0, 0x3

    if-ne p0, v0, :cond_1

    .line 792
    const/16 v0, 0x64

    invoke-static {v0, p1, p2}, Landroid/view/PointerIcon;->setMouseIcon(ILandroid/graphics/drawable/Drawable;Landroid/graphics/Point;)I

    goto :goto_0

    .line 795
    :cond_1
    const-string v0, "PointerIcon"

    const-string/jumbo v1, "setIcon(), invalid device type."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static setMouseCustomIcon(ILandroid/graphics/Bitmap;)I
    .locals 4
    .param p0, "IconId"    # I
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 979
    move v0, p0

    .line 981
    .local v0, "iReaIconId":I
    if-gez v0, :cond_0

    .line 982
    sget v0, Landroid/view/PointerIcon;->mMouseCustomIconId:I

    .line 985
    :cond_0
    if-gez v0, :cond_1

    .line 986
    const/4 v0, 0x0

    .line 989
    :cond_1
    sget-object v2, Landroid/view/PointerIcon;->mLockforMouse:Ljava/lang/Object;

    monitor-enter v2

    .line 990
    :try_start_0
    sget-object v1, Landroid/view/PointerIcon;->mMouseBitmap:[Landroid/graphics/Bitmap;

    if-nez v1, :cond_3

    .line 991
    const/4 v1, 0x5

    new-array v1, v1, [Landroid/graphics/Bitmap;

    sput-object v1, Landroid/view/PointerIcon;->mMouseBitmap:[Landroid/graphics/Bitmap;

    .line 995
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 997
    sget-object v1, Landroid/view/PointerIcon;->mMouseBitmap:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v0

    if-eqz v1, :cond_2

    .line 998
    sget-object v1, Landroid/view/PointerIcon;->mMouseBitmap:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 1001
    :cond_2
    sget-object v1, Landroid/view/PointerIcon;->mMouseBitmap:[Landroid/graphics/Bitmap;

    aput-object p1, v1, v0

    .line 1002
    return v0

    .line 993
    :cond_3
    :try_start_1
    const-string v1, "PointerIcon"

    const-string v3, "MouseBitmap instance already exist"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 995
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static setMouseCustomIcon(Landroid/graphics/Bitmap;)I
    .locals 3
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v1, 0x5

    .line 957
    sget v0, Landroid/view/PointerIcon;->mMouseCustomIconCurrentId:I

    if-lt v0, v1, :cond_1

    .line 958
    const/4 v0, 0x0

    sput v0, Landroid/view/PointerIcon;->mMouseCustomIconCurrentId:I

    .line 962
    :goto_0
    sget-object v1, Landroid/view/PointerIcon;->mLockforMouse:Ljava/lang/Object;

    monitor-enter v1

    .line 963
    :try_start_0
    sget-object v0, Landroid/view/PointerIcon;->mMouseBitmap:[Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    .line 964
    const/4 v0, 0x5

    new-array v0, v0, [Landroid/graphics/Bitmap;

    sput-object v0, Landroid/view/PointerIcon;->mMouseBitmap:[Landroid/graphics/Bitmap;

    .line 968
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 969
    sget-object v0, Landroid/view/PointerIcon;->mMouseBitmap:[Landroid/graphics/Bitmap;

    sget v1, Landroid/view/PointerIcon;->mMouseCustomIconCurrentId:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    .line 970
    sget-object v0, Landroid/view/PointerIcon;->mMouseBitmap:[Landroid/graphics/Bitmap;

    sget v1, Landroid/view/PointerIcon;->mMouseCustomIconCurrentId:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 972
    :cond_0
    sget-object v0, Landroid/view/PointerIcon;->mMouseBitmap:[Landroid/graphics/Bitmap;

    sget v1, Landroid/view/PointerIcon;->mMouseCustomIconCurrentId:I

    aput-object p0, v0, v1

    .line 973
    sget v0, Landroid/view/PointerIcon;->mMouseCustomIconCurrentId:I

    return v0

    .line 960
    :cond_1
    sget v0, Landroid/view/PointerIcon;->mMouseCustomIconCurrentId:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroid/view/PointerIcon;->mMouseCustomIconCurrentId:I

    goto :goto_0

    .line 966
    :cond_2
    :try_start_1
    const-string v0, "PointerIcon"

    const-string v2, "MouseBitmap instance already exist"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 968
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static setMouseIcon(ILandroid/graphics/drawable/Drawable;)I
    .locals 1
    .param p0, "iconType"    # I
    .param p1, "customIcon"    # Landroid/graphics/drawable/Drawable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 881
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/view/PointerIcon;->setMouseIcon(ILandroid/graphics/drawable/Drawable;I)I

    move-result v0

    return v0
.end method

.method public static setMouseIcon(ILandroid/graphics/drawable/Drawable;I)I
    .locals 8
    .param p0, "iconType"    # I
    .param p1, "customIcon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "flag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x64

    const/4 v4, 0x0

    .line 887
    const-string v0, "PointerIcon"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setMouseIcon2 iconType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 890
    .local v3, "bitmap":Landroid/graphics/Bitmap;
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 892
    .local v6, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p1, v4, v4, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 893
    invoke-virtual {p1, v6}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 895
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x4

    const v1, 0x9c40

    if-le v0, v1, :cond_0

    .line 899
    const-string v0, "PointerIcon"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerMouseCustomIcon size too big width: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "height: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    invoke-static {v3, v5, v5, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 902
    .local v7, "resizeBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 903
    move-object v3, v7

    .line 906
    .end local v7    # "resizeBitmap":Landroid/graphics/Bitmap;
    :cond_0
    invoke-static {}, Landroid/view/PointerIcon;->getInputManager()Landroid/hardware/input/IInputManager;

    move-result-object v0

    const/16 v1, 0x3e9

    const/4 v4, 0x0

    move v2, p0

    move v5, p2

    invoke-interface/range {v0 .. v5}, Landroid/hardware/input/IInputManager;->reloadMousePointerIconForBitmap(IILandroid/graphics/Bitmap;Landroid/graphics/Point;I)I

    move-result v0

    return v0
.end method

.method public static setMouseIcon(ILandroid/graphics/drawable/Drawable;Landroid/graphics/Point;)I
    .locals 1
    .param p0, "iconType"    # I
    .param p1, "customIcon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "hotSpotPoint"    # Landroid/graphics/Point;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 912
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/view/PointerIcon;->setMouseIcon(ILandroid/graphics/drawable/Drawable;Landroid/graphics/Point;I)I

    move-result v0

    return v0
.end method

.method public static setMouseIcon(ILandroid/graphics/drawable/Drawable;Landroid/graphics/Point;I)I
    .locals 8
    .param p0, "iconType"    # I
    .param p1, "customIcon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "hotSpotPoint"    # Landroid/graphics/Point;
    .param p3, "flag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x64

    const/4 v4, 0x0

    .line 918
    const-string v0, "PointerIcon"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setMouseIcon with hotSpotPoint iconType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 921
    .local v3, "bitmap":Landroid/graphics/Bitmap;
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 923
    .local v6, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p1, v4, v4, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 924
    invoke-virtual {p1, v6}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 926
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x4

    const v1, 0x9c40

    if-le v0, v1, :cond_0

    .line 930
    const-string v0, "PointerIcon"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerMouseCustomIcon size too big width: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "height: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 932
    invoke-static {v3, v5, v5, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 933
    .local v7, "resizeBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 934
    move-object v3, v7

    .line 937
    .end local v7    # "resizeBitmap":Landroid/graphics/Bitmap;
    :cond_0
    invoke-static {}, Landroid/view/PointerIcon;->getInputManager()Landroid/hardware/input/IInputManager;

    move-result-object v0

    const/16 v1, 0x3e9

    move v2, p0

    move-object v4, p2

    move v5, p3

    invoke-interface/range {v0 .. v5}, Landroid/hardware/input/IInputManager;->reloadMousePointerIconForBitmap(IILandroid/graphics/Bitmap;Landroid/graphics/Point;I)I

    move-result v0

    return v0
.end method

.method public static setMouseIcon(II)V
    .locals 1
    .param p0, "iconType"    # I
    .param p1, "customIconId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 857
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/view/PointerIcon;->setMouseIcon(III)V

    .line 858
    return-void
.end method

.method public static setMouseIcon(III)V
    .locals 6
    .param p0, "iconType"    # I
    .param p1, "customIconId"    # I
    .param p2, "flag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 863
    invoke-static {}, Landroid/view/PointerIcon;->getInputManager()Landroid/hardware/input/IInputManager;

    move-result-object v0

    const/16 v1, 0x3e9

    const/4 v4, 0x0

    move v2, p0

    move v3, p1

    move v5, p2

    invoke-interface/range {v0 .. v5}, Landroid/hardware/input/IInputManager;->reloadMousePointerIcon(IIILandroid/graphics/Point;I)V

    .line 864
    return-void
.end method

.method public static setMouseIcon(IILandroid/graphics/Point;)V
    .locals 1
    .param p0, "iconType"    # I
    .param p1, "customIconId"    # I
    .param p2, "hotSpotPoint"    # Landroid/graphics/Point;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 869
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/view/PointerIcon;->setMouseIcon(IILandroid/graphics/Point;I)V

    .line 870
    return-void
.end method

.method public static setMouseIcon(IILandroid/graphics/Point;I)V
    .locals 6
    .param p0, "iconType"    # I
    .param p1, "customIconId"    # I
    .param p2, "hotSpotPoint"    # Landroid/graphics/Point;
    .param p3, "flag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 875
    invoke-static {}, Landroid/view/PointerIcon;->getInputManager()Landroid/hardware/input/IInputManager;

    move-result-object v0

    const/16 v1, 0x3e9

    move v2, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    invoke-interface/range {v0 .. v5}, Landroid/hardware/input/IInputManager;->reloadMousePointerIcon(IIILandroid/graphics/Point;I)V

    .line 876
    return-void
.end method

.method public static setMousePointerIcon(IILandroid/graphics/Point;)Z
    .locals 3
    .param p0, "iconType"    # I
    .param p1, "customIconId"    # I
    .param p2, "hotSpotPoint"    # Landroid/graphics/Point;

    .prologue
    .line 943
    sget v0, Landroid/view/PointerIcon;->mMouseIconType:I

    const/16 v1, 0x64

    if-eq v0, v1, :cond_0

    sget v0, Landroid/view/PointerIcon;->mMouseIconType:I

    if-ne v0, p0, :cond_0

    .line 944
    const-string v0, "PointerIcon"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setMouseCustomIcon IconType is same."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Landroid/view/PointerIcon;->mMouseIconType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 945
    const/4 v0, 0x0

    .line 951
    :goto_0
    return v0

    .line 947
    :cond_0
    sput p0, Landroid/view/PointerIcon;->mMouseIconType:I

    .line 948
    sput p1, Landroid/view/PointerIcon;->mMouseCustomIconId:I

    .line 949
    sput-object p2, Landroid/view/PointerIcon;->mMouseCustomHotSpotPoint:Landroid/graphics/Point;

    .line 951
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static setPointerIcon(IILandroid/graphics/Point;)Z
    .locals 7
    .param p0, "iconType"    # I
    .param p1, "customIconId"    # I
    .param p2, "hotSpotPoint"    # Landroid/graphics/Point;

    .prologue
    const/16 v6, 0x14

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1218
    if-ne p0, v6, :cond_0

    sget v4, Landroid/view/PointerIcon;->mCustomIconId:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 1282
    :goto_0
    return v2

    .line 1220
    :cond_0
    if-ne p0, v6, :cond_1

    .line 1221
    const/4 p0, 0x1

    .line 1223
    :cond_1
    const/16 v4, 0x16

    if-eq p0, v4, :cond_2

    const/16 v4, 0x17

    if-ne p0, v4, :cond_3

    .line 1224
    :cond_2
    const-string v2, "PointerIcon"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setHoveringSpenCustomIcon mIconType is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Landroid/view/PointerIcon;->mIconType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", iconType is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 1225
    goto :goto_0

    .line 1226
    :cond_3
    sget v4, Landroid/view/PointerIcon;->mIconType:I

    if-eqz v4, :cond_4

    sget v4, Landroid/view/PointerIcon;->mIconType:I

    if-ne v4, p0, :cond_4

    .line 1227
    const-string v3, "PointerIcon"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setHoveringSpenCustomIcon IconType is same."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Landroid/view/PointerIcon;->mIconType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1231
    :cond_4
    const/4 v0, 0x0

    .line 1232
    .local v0, "bNeedPlaySound":Z
    const/4 v1, 0x0

    .line 1234
    .local v1, "bNeedPlayVibrate":Z
    sput p0, Landroid/view/PointerIcon;->mIconType:I

    .line 1235
    sput p1, Landroid/view/PointerIcon;->mCustomIconId:I

    .line 1236
    sput-object p2, Landroid/view/PointerIcon;->mCustomHotSpotPoint:Landroid/graphics/Point;

    .line 1238
    const/16 v4, 0xa

    if-ne p0, v4, :cond_9

    .line 1239
    sget-object v4, Landroid/view/PointerIcon;->mContext:Landroid/content/Context;

    if-eqz v4, :cond_5

    sget-object v4, Landroid/view/PointerIcon;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "spen_feedback_sound"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_5

    sget-object v4, Landroid/view/PointerIcon;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "spen_feedback_sound_air_view"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_5

    .line 1241
    const/4 v0, 0x1

    .line 1244
    :cond_5
    sget-object v4, Landroid/view/PointerIcon;->mContext:Landroid/content/Context;

    if-eqz v4, :cond_6

    sget-object v4, Landroid/view/PointerIcon;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "spen_feedback_haptic"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_6

    sget-object v4, Landroid/view/PointerIcon;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "spen_feedback_haptic_air_view"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_6

    .line 1246
    const/4 v1, 0x1

    .line 1250
    :cond_6
    sget-object v4, Landroid/view/PointerIcon;->mContext:Landroid/content/Context;

    if-eqz v4, :cond_7

    sget-object v4, Landroid/view/PointerIcon;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "pen_hovering_sound"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_7

    .line 1251
    const/4 v0, 0x1

    .line 1252
    const/4 v1, 0x1

    .line 1255
    :cond_7
    if-eqz v0, :cond_8

    .line 1256
    sget-object v4, Landroid/view/PointerIcon;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1257
    :try_start_0
    sget-object v2, Landroid/view/PointerIcon;->mHoverEffect:Landroid/view/PointerIcon$HoverEffect;

    if-nez v2, :cond_a

    .line 1258
    new-instance v2, Landroid/view/PointerIcon$HoverEffect;

    const/4 v5, 0x0

    invoke-direct {v2, v5}, Landroid/view/PointerIcon$HoverEffect;-><init>(Landroid/view/PointerIcon$1;)V

    sput-object v2, Landroid/view/PointerIcon;->mHoverEffect:Landroid/view/PointerIcon$HoverEffect;

    .line 1262
    :goto_1
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1263
    sget-object v2, Landroid/view/PointerIcon;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.UPDATE_APP_OPS_STATS"

    invoke-virtual {v2, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_8

    .line 1264
    sget-object v2, Landroid/view/PointerIcon;->mHoverEffect:Landroid/view/PointerIcon$HoverEffect;

    invoke-virtual {v2, p0}, Landroid/view/PointerIcon$HoverEffect;->playSound(I)V

    .line 1268
    :cond_8
    if-eqz v1, :cond_9

    .line 1269
    sget-object v4, Landroid/view/PointerIcon;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1270
    :try_start_1
    sget-object v2, Landroid/view/PointerIcon;->mHoverEffect:Landroid/view/PointerIcon$HoverEffect;

    if-nez v2, :cond_b

    .line 1271
    new-instance v2, Landroid/view/PointerIcon$HoverEffect;

    const/4 v5, 0x0

    invoke-direct {v2, v5}, Landroid/view/PointerIcon$HoverEffect;-><init>(Landroid/view/PointerIcon$1;)V

    sput-object v2, Landroid/view/PointerIcon;->mHoverEffect:Landroid/view/PointerIcon$HoverEffect;

    .line 1275
    :goto_2
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1276
    sget-object v2, Landroid/view/PointerIcon;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.VIBRATE"

    invoke-virtual {v2, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_9

    .line 1277
    sget-object v2, Landroid/view/PointerIcon;->mHoverEffect:Landroid/view/PointerIcon$HoverEffect;

    invoke-virtual {v2, p0}, Landroid/view/PointerIcon$HoverEffect;->playVibrator(I)V

    :cond_9
    move v2, v3

    .line 1282
    goto/16 :goto_0

    .line 1260
    :cond_a
    :try_start_2
    const-string v2, "PointerIcon"

    const-string v5, "HoverEffect instance already exist"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1262
    :catchall_0
    move-exception v2

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 1273
    :cond_b
    :try_start_3
    const-string v2, "PointerIcon"

    const-string v5, "HoverEffect instance already exist"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1275
    :catchall_1
    move-exception v2

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2
.end method

.method private throwIfIconIsNotLoaded()V
    .locals 2

    .prologue
    .line 464
    invoke-virtual {p0}, Landroid/view/PointerIcon;->isLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 465
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The icon is not loaded."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 467
    :cond_0
    return-void
.end method

.method private static validateHotSpot(Landroid/graphics/Bitmap;FF)V
    .locals 2
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "hotSpotX"    # F
    .param p2, "hotSpotY"    # F

    .prologue
    const/4 v1, 0x0

    .line 588
    cmpg-float v0, p1, v1

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_1

    .line 589
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "x hotspot lies outside of the bitmap area"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 591
    :cond_1
    cmpg-float v0, p2, v1

    if-ltz v0, :cond_2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_3

    .line 592
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "y hotspot lies outside of the bitmap area"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 594
    :cond_3
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 499
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 523
    if-ne p0, p1, :cond_1

    .line 543
    :cond_0
    :goto_0
    return v1

    .line 527
    :cond_1
    if-eqz p1, :cond_2

    instance-of v3, p1, Landroid/view/PointerIcon;

    if-nez v3, :cond_3

    :cond_2
    move v1, v2

    .line 528
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 531
    check-cast v0, Landroid/view/PointerIcon;

    .line 532
    .local v0, "otherIcon":Landroid/view/PointerIcon;
    iget v3, p0, Landroid/view/PointerIcon;->mStyle:I

    iget v4, v0, Landroid/view/PointerIcon;->mStyle:I

    if-ne v3, v4, :cond_4

    iget v3, p0, Landroid/view/PointerIcon;->mSystemIconResourceId:I

    iget v4, v0, Landroid/view/PointerIcon;->mSystemIconResourceId:I

    if-eq v3, v4, :cond_5

    :cond_4
    move v1, v2

    .line 534
    goto :goto_0

    .line 537
    :cond_5
    iget v3, p0, Landroid/view/PointerIcon;->mSystemIconResourceId:I

    if-nez v3, :cond_0

    iget-object v3, p0, Landroid/view/PointerIcon;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v4, v0, Landroid/view/PointerIcon;->mBitmap:Landroid/graphics/Bitmap;

    if-ne v3, v4, :cond_6

    iget v3, p0, Landroid/view/PointerIcon;->mHotSpotX:F

    iget v4, v0, Landroid/view/PointerIcon;->mHotSpotX:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_6

    iget v3, p0, Landroid/view/PointerIcon;->mHotSpotY:F

    iget v4, v0, Landroid/view/PointerIcon;->mHotSpotY:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_0

    :cond_6
    move v1, v2

    .line 540
    goto :goto_0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 429
    invoke-direct {p0}, Landroid/view/PointerIcon;->throwIfIconIsNotLoaded()V

    .line 430
    iget-object v0, p0, Landroid/view/PointerIcon;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getHotSpotX()F
    .locals 1

    .prologue
    .line 444
    invoke-direct {p0}, Landroid/view/PointerIcon;->throwIfIconIsNotLoaded()V

    .line 445
    iget v0, p0, Landroid/view/PointerIcon;->mHotSpotX:F

    return v0
.end method

.method public getHotSpotY()F
    .locals 1

    .prologue
    .line 459
    invoke-direct {p0}, Landroid/view/PointerIcon;->throwIfIconIsNotLoaded()V

    .line 460
    iget v0, p0, Landroid/view/PointerIcon;->mHotSpotY:F

    return v0
.end method

.method public getStyle()I
    .locals 1

    .prologue
    .line 415
    iget v0, p0, Landroid/view/PointerIcon;->mStyle:I

    return v0
.end method

.method public isLoaded()Z
    .locals 1

    .prologue
    .line 405
    iget-object v0, p0, Landroid/view/PointerIcon;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    iget v0, p0, Landroid/view/PointerIcon;->mStyle:I

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNullIcon()Z
    .locals 1

    .prologue
    .line 393
    iget v0, p0, Landroid/view/PointerIcon;->mStyle:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public load(Landroid/content/Context;)Landroid/view/PointerIcon;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 372
    if-nez p1, :cond_0

    .line 373
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "context must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 376
    :cond_0
    iget v1, p0, Landroid/view/PointerIcon;->mSystemIconResourceId:I

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/view/PointerIcon;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    :cond_1
    move-object v0, p0

    .line 383
    :goto_0
    return-object v0

    .line 380
    :cond_2
    new-instance v0, Landroid/view/PointerIcon;

    iget v1, p0, Landroid/view/PointerIcon;->mStyle:I

    invoke-direct {v0, v1}, Landroid/view/PointerIcon;-><init>(I)V

    .line 381
    .local v0, "result":Landroid/view/PointerIcon;
    iget v1, p0, Landroid/view/PointerIcon;->mSystemIconResourceId:I

    iput v1, v0, Landroid/view/PointerIcon;->mSystemIconResourceId:I

    .line 382
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Landroid/view/PointerIcon;->mSystemIconResourceId:I

    invoke-direct {v0, p1, v1, v2}, Landroid/view/PointerIcon;->loadResource(Landroid/content/Context;Landroid/content/res/Resources;I)V

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 506
    iget v0, p0, Landroid/view/PointerIcon;->mStyle:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 508
    iget v0, p0, Landroid/view/PointerIcon;->mStyle:I

    if-eqz v0, :cond_0

    .line 509
    iget v0, p0, Landroid/view/PointerIcon;->mSystemIconResourceId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 510
    iget v0, p0, Landroid/view/PointerIcon;->mSystemIconResourceId:I

    if-nez v0, :cond_0

    .line 511
    iget-object v0, p0, Landroid/view/PointerIcon;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    .line 512
    iget v0, p0, Landroid/view/PointerIcon;->mHotSpotX:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 513
    iget v0, p0, Landroid/view/PointerIcon;->mHotSpotY:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 516
    :cond_0
    return-void
.end method
