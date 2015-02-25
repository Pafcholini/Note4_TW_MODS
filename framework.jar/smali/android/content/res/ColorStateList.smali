.class public Landroid/content/res/ColorStateList;
.super Ljava/lang/Object;
.source "ColorStateList.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/content/res/ColorStateList;",
            ">;"
        }
    .end annotation
.end field

.field private static final EMPTY:[[I

.field private static final sCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/res/ColorStateList;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private mColors:[I

.field private mDefaultColor:I

.field private mStateSpecs:[[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 75
    const/4 v0, 0x1

    new-array v0, v0, [[I

    new-array v1, v2, [I

    aput-object v1, v0, v2

    sput-object v0, Landroid/content/res/ColorStateList;->EMPTY:[[I

    .line 76
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/content/res/ColorStateList;->sCache:Landroid/util/SparseArray;

    .line 451
    new-instance v0, Landroid/content/res/ColorStateList$1;

    invoke-direct {v0}, Landroid/content/res/ColorStateList$1;-><init>()V

    sput-object v0, Landroid/content/res/ColorStateList;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const/high16 v0, -0x10000

    iput v0, p0, Landroid/content/res/ColorStateList;->mDefaultColor:I

    .line 79
    return-void
.end method

.method public constructor <init>([[I[I)V
    .locals 2
    .param p1, "states"    # [[I
    .param p2, "colors"    # [I

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const/high16 v1, -0x10000

    iput v1, p0, Landroid/content/res/ColorStateList;->mDefaultColor:I

    .line 86
    iput-object p1, p0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    .line 87
    iput-object p2, p0, Landroid/content/res/ColorStateList;->mColors:[I

    .line 89
    array-length v1, p1

    if-lez v1, :cond_1

    .line 90
    const/4 v1, 0x0

    aget v1, p2, v1

    iput v1, p0, Landroid/content/res/ColorStateList;->mDefaultColor:I

    .line 92
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 93
    aget-object v1, p1, v0

    array-length v1, v1

    if-nez v1, :cond_0

    .line 94
    aget v1, p2, v0

    iput v1, p0, Landroid/content/res/ColorStateList;->mDefaultColor:I

    .line 92
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 98
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public static addFirstIfMissing(Landroid/content/res/ColorStateList;II)Landroid/content/res/ColorStateList;
    .locals 10
    .param p0, "colorStateList"    # Landroid/content/res/ColorStateList;
    .param p1, "state"    # I
    .param p2, "color"    # I

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 406
    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->getStates()[[I

    move-result-object v3

    .line 407
    .local v3, "inputStates":[[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v7, v3

    if-ge v0, v7, :cond_2

    .line 408
    aget-object v2, v3, v0

    .line 409
    .local v2, "inputState":[I
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    array-length v7, v2

    if-ge v4, v7, :cond_1

    .line 410
    aget v7, v2, v4

    if-ne v7, p1, :cond_0

    .line 425
    .end local v2    # "inputState":[I
    .end local v4    # "j":I
    .end local p0    # "colorStateList":Landroid/content/res/ColorStateList;
    :goto_2
    return-object p0

    .line 409
    .restart local v2    # "inputState":[I
    .restart local v4    # "j":I
    .restart local p0    # "colorStateList":Landroid/content/res/ColorStateList;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 407
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 416
    .end local v2    # "inputState":[I
    .end local v4    # "j":I
    :cond_2
    array-length v7, v3

    add-int/lit8 v7, v7, 0x1

    new-array v6, v7, [[I

    .line 417
    .local v6, "outputStates":[[I
    array-length v7, v3

    invoke-static {v3, v8, v6, v9, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 418
    new-array v7, v9, [I

    aput p1, v7, v8

    aput-object v7, v6, v8

    .line 420
    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->getColors()[I

    move-result-object v1

    .line 421
    .local v1, "inputColors":[I
    array-length v7, v1

    add-int/lit8 v7, v7, 0x1

    new-array v5, v7, [I

    .line 422
    .local v5, "outputColors":[I
    array-length v7, v1

    invoke-static {v1, v8, v5, v9, v7}, Ljava/lang/System;->arraycopy([II[III)V

    .line 423
    aput p2, v5, v8

    .line 425
    new-instance p0, Landroid/content/res/ColorStateList;

    .end local p0    # "colorStateList":Landroid/content/res/ColorStateList;
    invoke-direct {p0, v6, v5}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    goto :goto_2
.end method

.method public static createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/res/ColorStateList;
    .locals 1
    .param p0, "r"    # Landroid/content/res/Resources;
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 124
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/content/res/ColorStateList;->twCreateFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method private static createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/content/res/ColorStateList;
    .locals 1
    .param p0, "r"    # Landroid/content/res/Resources;
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 159
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/content/res/ColorStateList;->twCreateFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method private inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "r"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 204
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/content/res/ColorStateList;->twInflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 205
    return-void
.end method

.method public static twCreateFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;
    .locals 4
    .param p0, "r"    # Landroid/content/res/Resources;
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x2

    .line 136
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    .line 140
    .local v0, "attrs":Landroid/util/AttributeSet;
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .local v1, "type":I
    if-eq v1, v3, :cond_1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 143
    :cond_1
    if-eq v1, v3, :cond_2

    .line 144
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v3, "No start tag found"

    invoke-direct {v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 147
    :cond_2
    invoke-static {p0, p1, v0, p2}, Landroid/content/res/ColorStateList;->twCreateFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v2

    return-object v2
.end method

.method private static twCreateFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;
    .locals 5
    .param p0, "r"    # Landroid/content/res/Resources;
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 172
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 173
    .local v1, "name":Ljava/lang/String;
    const-string/jumbo v2, "selector"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 174
    new-instance v0, Landroid/content/res/ColorStateList;

    invoke-direct {v0}, Landroid/content/res/ColorStateList;-><init>()V

    .line 180
    .local v0, "colorStateList":Landroid/content/res/ColorStateList;
    invoke-direct {v0, p0, p1, p2, p3}, Landroid/content/res/ColorStateList;->twInflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 181
    return-object v0

    .line 176
    .end local v0    # "colorStateList":Landroid/content/res/ColorStateList;
    :cond_0
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": invalid drawable tag "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private twInflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 29
    .param p1, "r"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 217
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v26

    add-int/lit8 v16, v26, 0x1

    .line 220
    .local v16, "innerDepth":I
    const-class v26, [I

    const/16 v27, 0x14

    invoke-static/range {v26 .. v27}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedArray(Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v23

    check-cast v23, [[I

    .line 221
    .local v23, "stateSpecList":[[I
    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    new-array v11, v0, [I

    .line 222
    .local v11, "colorList":[I
    const/16 v19, 0x0

    .line 225
    .local v19, "listSize":I
    :cond_0
    :goto_0
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v24

    .local v24, "type":I
    const/16 v26, 0x1

    move/from16 v0, v24

    move/from16 v1, v26

    if-eq v0, v1, :cond_e

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v13

    .local v13, "depth":I
    move/from16 v0, v16

    if-ge v13, v0, :cond_1

    const/16 v26, 0x3

    move/from16 v0, v24

    move/from16 v1, v26

    if-eq v0, v1, :cond_e

    .line 227
    :cond_1
    const/16 v26, 0x2

    move/from16 v0, v24

    move/from16 v1, v26

    if-ne v0, v1, :cond_0

    .line 231
    move/from16 v0, v16

    if-gt v13, v0, :cond_0

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v26

    const-string/jumbo v27, "item"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_0

    .line 235
    const/4 v8, 0x0

    .line 236
    .local v8, "alphaRes":I
    const/high16 v6, 0x3f800000    # 1.0f

    .line 237
    .local v6, "alpha":F
    const/4 v12, 0x0

    .line 238
    .local v12, "colorRes":I
    const/high16 v10, -0x10000

    .line 239
    .local v10, "color":I
    const/4 v14, 0x0

    .line 242
    .local v14, "haveColor":Z
    const/16 v17, 0x0

    .line 243
    .local v17, "j":I
    invoke-interface/range {p3 .. p3}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v20

    .line 244
    .local v20, "numAttrs":I
    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v22, v0

    .line 245
    .local v22, "stateSpec":[I
    const/4 v15, 0x0

    .local v15, "i":I
    move/from16 v18, v17

    .end local v17    # "j":I
    .local v18, "j":I
    :goto_1
    move/from16 v0, v20

    if-ge v15, v0, :cond_2

    .line 246
    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Landroid/util/AttributeSet;->getAttributeNameResource(I)I

    move-result v21

    .line 247
    .local v21, "stateResId":I
    if-nez v21, :cond_7

    .line 279
    .end local v21    # "stateResId":I
    :cond_2
    move-object/from16 v0, v22

    move/from16 v1, v18

    invoke-static {v0, v1}, Landroid/util/StateSet;->trimStateSet([II)[I

    move-result-object v22

    .line 281
    if-eqz v12, :cond_d

    .line 282
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    .line 289
    :cond_3
    if-eqz v8, :cond_4

    .line 290
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v6

    .line 294
    :cond_4
    invoke-static {v10}, Landroid/graphics/Color;->alpha(I)I

    move-result v26

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    mul-float v26, v26, v6

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v26, v0

    const/16 v27, 0x0

    const/16 v28, 0xff

    invoke-static/range {v26 .. v28}, Landroid/util/MathUtils;->constrain(III)I

    move-result v7

    .line 295
    .local v7, "alphaMod":I
    const v26, 0xffffff

    and-int v26, v26, v10

    shl-int/lit8 v27, v7, 0x18

    or-int v10, v26, v27

    .line 297
    if-eqz v19, :cond_5

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v26, v0

    if-nez v26, :cond_6

    .line 298
    :cond_5
    move-object/from16 v0, p0

    iput v10, v0, Landroid/content/res/ColorStateList;->mDefaultColor:I

    .line 301
    :cond_6
    move/from16 v0, v19

    invoke-static {v11, v0, v10}, Lcom/android/internal/util/GrowingArrayUtils;->append([III)[I

    move-result-object v11

    .line 302
    move-object/from16 v0, v23

    move/from16 v1, v19

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Lcom/android/internal/util/GrowingArrayUtils;->append([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;

    move-result-object v23

    .end local v23    # "stateSpecList":[[I
    check-cast v23, [[I

    .line 303
    .restart local v23    # "stateSpecList":[[I
    add-int/lit8 v19, v19, 0x1

    .line 304
    goto/16 :goto_0

    .line 248
    .end local v7    # "alphaMod":I
    .restart local v21    # "stateResId":I
    :cond_7
    const v26, 0x101031f

    move/from16 v0, v21

    move/from16 v1, v26

    if-ne v0, v1, :cond_8

    .line 249
    const/16 v26, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-interface {v0, v15, v1}, Landroid/util/AttributeSet;->getAttributeResourceValue(II)I

    move-result v8

    .line 250
    if-nez v8, :cond_f

    .line 251
    const/high16 v26, 0x3f800000    # 1.0f

    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-interface {v0, v15, v1}, Landroid/util/AttributeSet;->getAttributeFloatValue(IF)F

    move-result v6

    move/from16 v17, v18

    .line 245
    .end local v18    # "j":I
    .end local v21    # "stateResId":I
    .restart local v17    # "j":I
    :goto_2
    add-int/lit8 v15, v15, 0x1

    move/from16 v18, v17

    .end local v17    # "j":I
    .restart local v18    # "j":I
    goto/16 :goto_1

    .line 253
    .restart local v21    # "stateResId":I
    :cond_8
    const v26, 0x10101a5

    move/from16 v0, v21

    move/from16 v1, v26

    if-ne v0, v1, :cond_b

    .line 254
    const/16 v26, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-interface {v0, v15, v1}, Landroid/util/AttributeSet;->getAttributeResourceValue(II)I

    move-result v12

    .line 255
    if-nez v12, :cond_f

    .line 257
    move-object/from16 v0, p3

    invoke-interface {v0, v15, v10}, Landroid/util/AttributeSet;->getAttributeIntValue(II)I

    move-result v10

    .line 261
    move-object/from16 v0, p3

    instance-of v0, v0, Landroid/content/res/XmlBlock$Parser;

    move/from16 v26, v0

    if-eqz v26, :cond_a

    move-object/from16 v26, p3

    check-cast v26, Landroid/content/res/XmlBlock$Parser;

    move-object/from16 v25, v26

    .line 262
    .local v25, "xParser":Landroid/content/res/XmlBlock$Parser;
    :goto_3
    if-eqz p4, :cond_9

    if-eqz v25, :cond_9

    .line 263
    move-object/from16 v0, v25

    invoke-virtual {v0, v15}, Landroid/content/res/XmlBlock$Parser;->twGetAttributeDataType(I)I

    move-result v26

    const/16 v27, 0x2

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_9

    .line 264
    const/16 v26, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v0, v15, v1}, Landroid/content/res/XmlBlock$Parser;->twGetForceAttributIntValue(II)I

    move-result v9

    .line 265
    .local v9, "attrId":I
    if-eqz v9, :cond_9

    .line 266
    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [I

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aput v9, v26, v27

    move-object/from16 v0, p4

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 267
    .local v5, "a":Landroid/content/res/TypedArray;
    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-virtual {v5, v0, v10}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v10

    .line 268
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 272
    .end local v5    # "a":Landroid/content/res/TypedArray;
    .end local v9    # "attrId":I
    :cond_9
    const/4 v14, 0x1

    move/from16 v17, v18

    .line 273
    .end local v18    # "j":I
    .restart local v17    # "j":I
    goto :goto_2

    .line 261
    .end local v17    # "j":I
    .end local v25    # "xParser":Landroid/content/res/XmlBlock$Parser;
    .restart local v18    # "j":I
    :cond_a
    const/16 v25, 0x0

    goto :goto_3

    .line 275
    :cond_b
    add-int/lit8 v17, v18, 0x1

    .end local v18    # "j":I
    .restart local v17    # "j":I
    const/16 v26, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-interface {v0, v15, v1}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v26

    if-eqz v26, :cond_c

    .end local v21    # "stateResId":I
    :goto_4
    aput v21, v22, v18

    goto/16 :goto_2

    .restart local v21    # "stateResId":I
    :cond_c
    move/from16 v0, v21

    neg-int v0, v0

    move/from16 v21, v0

    goto :goto_4

    .line 283
    .end local v17    # "j":I
    .end local v21    # "stateResId":I
    .restart local v18    # "j":I
    :cond_d
    if-nez v14, :cond_3

    .line 284
    new-instance v26, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ": <item> tag requires a \'android:color\' attribute."

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-direct/range {v26 .. v27}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v26

    .line 306
    .end local v6    # "alpha":F
    .end local v8    # "alphaRes":I
    .end local v10    # "color":I
    .end local v12    # "colorRes":I
    .end local v13    # "depth":I
    .end local v14    # "haveColor":Z
    .end local v15    # "i":I
    .end local v18    # "j":I
    .end local v20    # "numAttrs":I
    .end local v22    # "stateSpec":[I
    :cond_e
    move/from16 v0, v19

    new-array v0, v0, [I

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/content/res/ColorStateList;->mColors:[I

    .line 307
    move/from16 v0, v19

    new-array v0, v0, [[I

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    .line 308
    const/16 v26, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/res/ColorStateList;->mColors:[I

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move/from16 v0, v26

    move-object/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v19

    invoke-static {v11, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy([II[III)V

    .line 309
    const/16 v26, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v26

    move-object/from16 v2, v27

    move/from16 v3, v28

    move/from16 v4, v19

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 310
    return-void

    .restart local v6    # "alpha":F
    .restart local v8    # "alphaRes":I
    .restart local v10    # "color":I
    .restart local v12    # "colorRes":I
    .restart local v13    # "depth":I
    .restart local v14    # "haveColor":Z
    .restart local v15    # "i":I
    .restart local v18    # "j":I
    .restart local v20    # "numAttrs":I
    .restart local v21    # "stateResId":I
    .restart local v22    # "stateSpec":[I
    :cond_f
    move/from16 v17, v18

    .end local v18    # "j":I
    .restart local v17    # "j":I
    goto/16 :goto_2
.end method

.method public static valueOf(I)Landroid/content/res/ColorStateList;
    .locals 7
    .param p0, "color"    # I

    .prologue
    .line 105
    sget-object v4, Landroid/content/res/ColorStateList;->sCache:Landroid/util/SparseArray;

    monitor-enter v4

    .line 106
    :try_start_0
    sget-object v3, Landroid/content/res/ColorStateList;->sCache:Landroid/util/SparseArray;

    invoke-virtual {v3, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 108
    .local v2, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/ColorStateList;>;"
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/res/ColorStateList;

    move-object v0, v3

    .line 109
    .local v0, "csl":Landroid/content/res/ColorStateList;
    :goto_0
    if-eqz v0, :cond_1

    .line 110
    monitor-exit v4

    move-object v1, v0

    .line 115
    .end local v0    # "csl":Landroid/content/res/ColorStateList;
    .local v1, "csl":Ljava/lang/Object;
    :goto_1
    return-object v1

    .line 108
    .end local v1    # "csl":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 113
    .restart local v0    # "csl":Landroid/content/res/ColorStateList;
    :cond_1
    new-instance v0, Landroid/content/res/ColorStateList;

    .end local v0    # "csl":Landroid/content/res/ColorStateList;
    sget-object v3, Landroid/content/res/ColorStateList;->EMPTY:[[I

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    aput p0, v5, v6

    invoke-direct {v0, v3, v5}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 114
    .restart local v0    # "csl":Landroid/content/res/ColorStateList;
    sget-object v3, Landroid/content/res/ColorStateList;->sCache:Landroid/util/SparseArray;

    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, p0, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 115
    monitor-exit v4

    move-object v1, v0

    .restart local v1    # "csl":Ljava/lang/Object;
    goto :goto_1

    .line 116
    .end local v0    # "csl":Landroid/content/res/ColorStateList;
    .end local v1    # "csl":Ljava/lang/Object;
    .end local v2    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/ColorStateList;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 438
    const/4 v0, 0x0

    return v0
.end method

.method public getColorForState([II)I
    .locals 4
    .param p1, "stateSet"    # [I
    .param p2, "defaultColor"    # I

    .prologue
    .line 351
    iget-object v3, p0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    array-length v1, v3

    .line 352
    .local v1, "setLength":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 353
    iget-object v3, p0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    aget-object v2, v3, v0

    .line 354
    .local v2, "stateSpec":[I
    invoke-static {v2, p1}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 355
    iget-object v3, p0, Landroid/content/res/ColorStateList;->mColors:[I

    aget p2, v3, v0

    .line 358
    .end local v2    # "stateSpec":[I
    .end local p2    # "defaultColor":I
    :cond_0
    return p2

    .line 352
    .restart local v2    # "stateSpec":[I
    .restart local p2    # "defaultColor":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getColors()[I
    .locals 1

    .prologue
    .line 385
    iget-object v0, p0, Landroid/content/res/ColorStateList;->mColors:[I

    return-object v0
.end method

.method public getDefaultColor()I
    .locals 1

    .prologue
    .line 367
    iget v0, p0, Landroid/content/res/ColorStateList;->mDefaultColor:I

    return v0
.end method

.method public getStates()[[I
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    return-object v0
.end method

.method public isOpaque()Z
    .locals 4

    .prologue
    .line 332
    iget-object v2, p0, Landroid/content/res/ColorStateList;->mColors:[I

    array-length v1, v2

    .line 333
    .local v1, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 334
    iget-object v2, p0, Landroid/content/res/ColorStateList;->mColors:[I

    aget v2, v2, v0

    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    const/16 v3, 0xff

    if-eq v2, v3, :cond_0

    .line 335
    const/4 v2, 0x0

    .line 338
    :goto_1
    return v2

    .line 333
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 338
    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public isStateful()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 321
    iget-object v1, p0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    array-length v1, v1

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 430
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ColorStateList{mStateSpecs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    invoke-static {v1}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mColors="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/res/ColorStateList;->mColors:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mDefaultColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/content/res/ColorStateList;->mDefaultColor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withAlpha(I)Landroid/content/res/ColorStateList;
    .locals 5
    .param p1, "alpha"    # I

    .prologue
    .line 190
    iget-object v3, p0, Landroid/content/res/ColorStateList;->mColors:[I

    array-length v3, v3

    new-array v0, v3, [I

    .line 191
    .local v0, "colors":[I
    array-length v2, v0

    .line 192
    .local v2, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 193
    iget-object v3, p0, Landroid/content/res/ColorStateList;->mColors:[I

    aget v3, v3, v1

    const v4, 0xffffff

    and-int/2addr v3, v4

    shl-int/lit8 v4, p1, 0x18

    or-int/2addr v3, v4

    aput v3, v0, v1

    .line 192
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 196
    :cond_0
    new-instance v3, Landroid/content/res/ColorStateList;

    iget-object v4, p0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    invoke-direct {v3, v4, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v3
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 443
    iget-object v2, p0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    array-length v0, v2

    .line 444
    .local v0, "N":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 445
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 446
    iget-object v2, p0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 445
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 448
    :cond_0
    iget-object v2, p0, Landroid/content/res/ColorStateList;->mColors:[I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 449
    return-void
.end method
