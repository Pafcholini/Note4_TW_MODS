.class public Lcom/samsung/android/cocktailbar/CocktailProviderInfo;
.super Ljava/lang/Object;
.source "CocktailProviderInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field private static final COCKTAIL_CATEGORY:Ljava/lang/String; = "category"

.field public static final COCKTAIL_CATEGORY_CONTEXTUAL:I = 0x2

.field public static final COCKTAIL_CATEGORY_EXPRESS_ME:I = 0x40

.field public static final COCKTAIL_CATEGORY_FEEDS:I = 0x100

.field public static final COCKTAIL_CATEGORY_FEEDS_PROVIDER:I = 0x200

.field public static final COCKTAIL_CATEGORY_HOME_SCREEN:I = 0x8

.field public static final COCKTAIL_CATEGORY_LOCK_SCREEN:I = 0x10

.field public static final COCKTAIL_CATEGORY_NIGHT_MODE:I = 0x80

.field public static final COCKTAIL_CATEGORY_NORMAL:I = 0x1

.field public static final COCKTAIL_CATEGORY_QUICK_TOOL:I = 0x4

.field public static final COCKTAIL_CATEGORY_TABLE_MODE:I = 0x20

.field private static final COCKTAIL_CONFIGURE:Ljava/lang/String; = "configure"

.field private static final COCKTAIL_CSC_PREVIEW_IMAGE:Ljava/lang/String; = "cscPreviewImage"

.field private static final COCKTAIL_DESCRIPTION:Ljava/lang/String; = "description"

.field private static final COCKTAIL_ICON:Ljava/lang/String; = "icon"

.field private static final COCKTAIL_LABEL:Ljava/lang/String; = "label"

.field private static final COCKTAIL_PERMIT_VISIBILITY_CHANGED:Ljava/lang/String; = "permitVisibilityChanged"

.field private static final COCKTAIL_PREVIEW_IMAGE:Ljava/lang/String; = "previewImage"

.field private static final COCKTAIL_PRIVATE_MODE:Ljava/lang/String; = "privateMode"

.field private static final COCKTAIL_UPDATE_TIME:Ljava/lang/String; = "updatePeriodMillis"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/cocktailbar/CocktailProviderInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "CocktailProviderInfo"

.field private static final XMLVAL_CONTEXTUAL:Ljava/lang/String; = "contextual"

.field private static final XMLVAL_EXPRESS_ME:Ljava/lang/String; = "expressme"

.field private static final XMLVAL_FEEDS:Ljava/lang/String; = "feeds"

.field private static final XMLVAL_FEEDS_PROVIDER:Ljava/lang/String; = "feedsprovider"

.field private static final XMLVAL_HOME_SCREEN:Ljava/lang/String; = "homescreen"

.field private static final XMLVAL_LOCK_SCREEN:Ljava/lang/String; = "lockscreen"

.field private static final XMLVAL_NIGHT_MODE:Ljava/lang/String; = "nightmode"

.field private static final XMLVAL_NORMAL:Ljava/lang/String; = "normal"

.field private static final XMLVAL_QUICK_TOOL:Ljava/lang/String; = "quicktool"

.field private static final XMLVAL_TABLE_MODE:Ljava/lang/String; = "tablemode"


# instance fields
.field public category:I

.field public configure:Landroid/content/ComponentName;

.field public cscPreviewImage:Z

.field public description:I

.field public icon:I

.field public label:I

.field public permitVisibilityChanged:Z

.field public previewImage:I

.field public privateMode:Ljava/lang/String;

.field public provider:Landroid/content/ComponentName;

.field public updatePeriodMillis:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 309
    new-instance v0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo$1;

    invoke-direct {v0}, Lcom/samsung/android/cocktailbar/CocktailProviderInfo$1;-><init>()V

    sput-object v0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->permitVisibilityChanged:Z

    .line 159
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/res/Resources;Landroid/content/ComponentName;Landroid/content/res/XmlResourceParser;Landroid/content/pm/ResolveInfo;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pkgMgr"    # Landroid/content/pm/PackageManager;
    .param p3, "res"    # Landroid/content/res/Resources;
    .param p4, "provider"    # Landroid/content/ComponentName;
    .param p5, "xml"    # Landroid/content/res/XmlResourceParser;
    .param p6, "info"    # Landroid/content/pm/ResolveInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->permitVisibilityChanged:Z

    .line 194
    iput-object p4, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->provider:Landroid/content/ComponentName;

    .line 195
    const/4 v6, 0x0

    const-string v7, "icon"

    const/4 v8, 0x0

    invoke-interface {p5, v6, v7, v8}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->icon:I

    .line 196
    const/4 v6, 0x0

    const-string/jumbo v7, "label"

    const/4 v8, 0x0

    invoke-interface {p5, v6, v7, v8}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->label:I

    .line 197
    const/4 v6, 0x0

    const-string v7, "description"

    const/4 v8, 0x0

    invoke-interface {p5, v6, v7, v8}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->description:I

    .line 198
    const-string v6, "category"

    const-string/jumbo v7, "normal"

    invoke-direct {p0, p5, p3, v6, v7}, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->loadXmlString(Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 199
    .local v1, "category":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 200
    const/4 v6, 0x1

    iput v6, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->category:I

    .line 236
    :cond_0
    :goto_0
    const-string/jumbo v6, "privateMode"

    const/4 v7, 0x0

    invoke-direct {p0, p5, p3, v6, v7}, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->loadXmlString(Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->privateMode:Ljava/lang/String;

    .line 237
    const/4 v6, 0x0

    const-string/jumbo v7, "previewImage"

    const/4 v8, 0x0

    invoke-interface {p5, v6, v7, v8}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->previewImage:I

    .line 238
    const-string/jumbo v6, "updatePeriodMillis"

    const/4 v7, 0x0

    invoke-direct {p0, p5, p3, v6, v7}, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->loadXmlInt(Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->updatePeriodMillis:I

    .line 239
    const-string/jumbo v6, "permitVisibilityChanged"

    const/4 v7, 0x0

    invoke-direct {p0, p5, p3, v6, v7}, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->loadXmlBoolean(Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->permitVisibilityChanged:Z

    .line 240
    const-string v6, "configure"

    const/4 v7, 0x0

    invoke-direct {p0, p5, p3, v6, v7}, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->loadXmlString(Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 241
    .local v4, "className":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 242
    new-instance v6, Landroid/content/ComponentName;

    invoke-virtual {p4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v6, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->configure:Landroid/content/ComponentName;

    .line 244
    :cond_1
    const-string v6, "cscPreviewImage"

    const/4 v7, 0x0

    invoke-direct {p0, p5, p3, v6, v7}, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->loadXmlBoolean(Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->cscPreviewImage:Z

    .line 245
    return-void

    .line 202
    .end local v4    # "className":Ljava/lang/String;
    :cond_2
    new-instance v3, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v6, 0x7c

    invoke-direct {v3, v6}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 203
    .local v3, "categorySplitter":Landroid/text/TextUtils$SimpleStringSplitter;
    invoke-virtual {v3, v1}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 204
    :cond_3
    invoke-virtual {v3}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 205
    invoke-virtual {v3}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 206
    .local v0, "c":Ljava/lang/String;
    invoke-static {v0}, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->getCategoryId(Ljava/lang/String;)I

    move-result v2

    .line 207
    .local v2, "categoryId":I
    const/4 v5, 0x0

    .line 208
    .local v5, "isBreak":Z
    sparse-switch v2, :sswitch_data_0

    .line 228
    iget v6, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->category:I

    or-int/2addr v6, v2

    iput v6, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->category:I

    .line 231
    :goto_1
    if-eqz v5, :cond_3

    goto :goto_0

    .line 213
    :sswitch_0
    iget v6, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->category:I

    or-int/lit8 v7, v2, 0x1

    or-int/2addr v6, v7

    iput v6, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->category:I

    goto :goto_1

    .line 219
    :sswitch_1
    iput v2, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->category:I

    .line 220
    const/4 v5, 0x1

    .line 221
    goto :goto_1

    .line 223
    :sswitch_2
    const-string v6, "CocktailProviderInfo"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Provider: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " specified an invalid catetory of "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    const/4 v6, 0x1

    iput v6, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->category:I

    .line 225
    const/4 v5, 0x1

    .line 226
    goto :goto_1

    .line 208
    nop

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_2
        0x4 -> :sswitch_1
        0x8 -> :sswitch_0
        0x10 -> :sswitch_0
        0x20 -> :sswitch_1
        0x40 -> :sswitch_1
        0x80 -> :sswitch_1
        0x100 -> :sswitch_0
        0x200 -> :sswitch_0
    .end sparse-switch
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    iput-boolean v2, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->permitVisibilityChanged:Z

    .line 290
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 291
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p1}, Landroid/content/ComponentName;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->provider:Landroid/content/ComponentName;

    .line 293
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->updatePeriodMillis:I

    .line 294
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->label:I

    .line 295
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->description:I

    .line 296
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->icon:I

    .line 297
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->previewImage:I

    .line 298
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->category:I

    .line 299
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    .line 300
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->privateMode:Ljava/lang/String;

    .line 302
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_3

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->permitVisibilityChanged:Z

    .line 303
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    .line 304
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p1}, Landroid/content/ComponentName;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->configure:Landroid/content/ComponentName;

    .line 306
    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_4

    :goto_1
    iput-boolean v1, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->cscPreviewImage:Z

    .line 307
    return-void

    :cond_3
    move v0, v2

    .line 302
    goto :goto_0

    :cond_4
    move v1, v2

    .line 306
    goto :goto_1
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/samsung/android/cocktailbar/CocktailProviderInfo$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/samsung/android/cocktailbar/CocktailProviderInfo$1;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static create(Landroid/content/Context;Landroid/content/pm/ResolveInfo;Landroid/content/ComponentName;Landroid/content/res/XmlResourceParser;Ljava/util/ArrayList;)Lcom/samsung/android/cocktailbar/CocktailProviderInfo;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ri"    # Landroid/content/pm/ResolveInfo;
    .param p2, "cn"    # Landroid/content/ComponentName;
    .param p3, "xml"    # Landroid/content/res/XmlResourceParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/pm/ResolveInfo;",
            "Landroid/content/ComponentName;",
            "Landroid/content/res/XmlResourceParser;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/samsung/android/cocktailbar/CocktailProviderInfo;"
        }
    .end annotation

    .prologue
    .local p4, "categoryfilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v10, 0x0

    .line 163
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 165
    .local v2, "pkgMgr":Landroid/content/pm/PackageManager;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 167
    .local v8, "identity":J
    :try_start_0
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-virtual {v2, v1, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplicationAsUser(Ljava/lang/String;I)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 173
    .local v3, "resources":Landroid/content/res/Resources;
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 176
    :try_start_1
    new-instance v0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;

    move-object v1, p0

    move-object v4, p2

    move-object v5, p3

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/res/Resources;Landroid/content/ComponentName;Landroid/content/res/XmlResourceParser;Landroid/content/pm/ResolveInfo;)V

    .line 178
    .local v0, "pInfo":Lcom/samsung/android/cocktailbar/CocktailProviderInfo;
    invoke-static {p4, v0}, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->enforceValidCategory(Ljava/util/ArrayList;Lcom/samsung/android/cocktailbar/CocktailProviderInfo;)Z
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v1

    if-nez v1, :cond_0

    move-object v0, v10

    .line 188
    .end local v0    # "pInfo":Lcom/samsung/android/cocktailbar/CocktailProviderInfo;
    .end local v3    # "resources":Landroid/content/res/Resources;
    :cond_0
    :goto_0
    return-object v0

    .line 169
    :catch_0
    move-exception v7

    .line 170
    .local v7, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_2
    const-string v1, "CocktailProviderInfo"

    const-string v4, "failed to load find package"

    invoke-static {v1, v4, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 173
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move-object v0, v10

    goto :goto_0

    .end local v7    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catchall_0
    move-exception v1

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1

    .line 183
    .restart local v3    # "resources":Landroid/content/res/Resources;
    :catch_1
    move-exception v7

    .line 184
    .local v7, "e":Landroid/content/res/Resources$NotFoundException;
    const-string v1, "CocktailProviderInfo"

    const-string v4, "XML resources failed"

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v7    # "e":Landroid/content/res/Resources$NotFoundException;
    :goto_1
    move-object v0, v10

    .line 188
    goto :goto_0

    .line 185
    :catch_2
    move-exception v7

    .line 186
    .local v7, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "CocktailProviderInfo"

    const-string v4, "IllegalArgumentException"

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private static enforceValidCategory(Ljava/util/ArrayList;Lcom/samsung/android/cocktailbar/CocktailProviderInfo;)Z
    .locals 6
    .param p1, "pInfo"    # Lcom/samsung/android/cocktailbar/CocktailProviderInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/samsung/android/cocktailbar/CocktailProviderInfo;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p0, "categoryfilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x1

    .line 249
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 250
    :cond_0
    const-string v3, "CocktailProviderInfo"

    const-string v4, "enforceValidCategory: there is no category filters"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    :goto_0
    return v2

    .line 253
    :cond_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 254
    .local v0, "filter":Ljava/lang/String;
    const-string v3, "CocktailProviderInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "enforceValidCategory: filter = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    iget v3, p1, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->category:I

    invoke-static {v0}, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->getCategoryId(Ljava/lang/String;)I

    move-result v4

    and-int/2addr v3, v4

    if-eqz v3, :cond_2

    goto :goto_0

    .line 259
    .end local v0    # "filter":Ljava/lang/String;
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static getCategoryId(Ljava/lang/String;)I
    .locals 3
    .param p0, "category"    # Ljava/lang/String;

    .prologue
    .line 263
    const-string v0, "CocktailProviderInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCategoryId: category = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    const-string/jumbo v0, "normal"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 265
    const/4 v0, 0x1

    .line 285
    :goto_0
    return v0

    .line 266
    :cond_0
    const-string v0, "contextual"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 267
    const/4 v0, 0x2

    goto :goto_0

    .line 268
    :cond_1
    const-string v0, "homescreen"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 269
    const/16 v0, 0x8

    goto :goto_0

    .line 270
    :cond_2
    const-string/jumbo v0, "lockscreen"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 271
    const/16 v0, 0x10

    goto :goto_0

    .line 272
    :cond_3
    const-string v0, "feeds"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 273
    const/16 v0, 0x100

    goto :goto_0

    .line 274
    :cond_4
    const-string v0, "feedsprovider"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 275
    const/16 v0, 0x200

    goto :goto_0

    .line 276
    :cond_5
    const-string/jumbo v0, "quicktool"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 277
    const/4 v0, 0x4

    goto :goto_0

    .line 278
    :cond_6
    const-string/jumbo v0, "tablemode"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 279
    const/16 v0, 0x20

    goto :goto_0

    .line 280
    :cond_7
    const-string/jumbo v0, "nightmode"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 281
    const/16 v0, 0x80

    goto :goto_0

    .line 282
    :cond_8
    const-string v0, "expressme"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 283
    const/16 v0, 0x40

    goto :goto_0

    .line 285
    :cond_9
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private loadXmlBoolean(Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;Ljava/lang/String;Z)Z
    .locals 5
    .param p1, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p2, "pkgRes"    # Landroid/content/res/Resources;
    .param p3, "attrName"    # Ljava/lang/String;
    .param p4, "defaultValue"    # Z

    .prologue
    const/4 v4, 0x0

    .line 397
    const/4 v3, 0x0

    invoke-interface {p1, v4, p3, v3}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    .line 398
    .local v1, "refId":I
    if-eqz v1, :cond_0

    .line 400
    :try_start_0
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getBoolean(I)Z
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 407
    .local v2, "value":Z
    :goto_0
    return v2

    .line 401
    .end local v2    # "value":Z
    :catch_0
    move-exception v0

    .line 402
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    move v2, p4

    .line 403
    .restart local v2    # "value":Z
    goto :goto_0

    .line 405
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    .end local v2    # "value":Z
    :cond_0
    invoke-interface {p1, v4, p3, p4}, Landroid/content/res/XmlResourceParser;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    .restart local v2    # "value":Z
    goto :goto_0
.end method

.method private loadXmlInt(Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;Ljava/lang/String;I)I
    .locals 5
    .param p1, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p2, "pkgRes"    # Landroid/content/res/Resources;
    .param p3, "attrName"    # Ljava/lang/String;
    .param p4, "defaultValue"    # I

    .prologue
    const/4 v4, 0x0

    .line 362
    const/4 v3, 0x0

    invoke-interface {p1, v4, p3, v3}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    .line 363
    .local v1, "refId":I
    if-eqz v1, :cond_0

    .line 365
    :try_start_0
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getInteger(I)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 372
    .local v2, "value":I
    :goto_0
    return v2

    .line 366
    .end local v2    # "value":I
    :catch_0
    move-exception v0

    .line 367
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    move v2, p4

    .line 368
    .restart local v2    # "value":I
    goto :goto_0

    .line 370
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    .end local v2    # "value":I
    :cond_0
    invoke-interface {p1, v4, p3, p4}, Landroid/content/res/XmlResourceParser;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    .restart local v2    # "value":I
    goto :goto_0
.end method

.method private loadXmlString(Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p2, "pkgRes"    # Landroid/content/res/Resources;
    .param p3, "attrName"    # Ljava/lang/String;
    .param p4, "defaultValue"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 378
    const/4 v3, 0x0

    invoke-interface {p1, v4, p3, v3}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    .line 379
    .local v1, "refId":I
    if-eqz v1, :cond_1

    .line 381
    :try_start_0
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 391
    .local v2, "value":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v2

    .line 382
    .end local v2    # "value":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 383
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    move-object v2, p4

    .line 384
    .restart local v2    # "value":Ljava/lang/String;
    goto :goto_0

    .line 386
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    .end local v2    # "value":Ljava/lang/String;
    :cond_1
    invoke-interface {p1, v4, p3}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 387
    .restart local v2    # "value":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 388
    move-object v2, p4

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 413
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 323
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->provider:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    .line 324
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 325
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v0, p1, p2}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 329
    :goto_0
    iget v0, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->updatePeriodMillis:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 330
    iget v0, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->label:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 331
    iget v0, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->description:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 332
    iget v0, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->icon:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 333
    iget v0, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->previewImage:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 334
    iget v0, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->category:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 335
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->privateMode:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 336
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 337
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->privateMode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 341
    :goto_1
    iget-boolean v0, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->permitVisibilityChanged:Z

    if-eqz v0, :cond_2

    .line 342
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 346
    :goto_2
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->configure:Landroid/content/ComponentName;

    if-eqz v0, :cond_3

    .line 347
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 348
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->configure:Landroid/content/ComponentName;

    invoke-virtual {v0, p1, p2}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 352
    :goto_3
    iget-boolean v0, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->cscPreviewImage:Z

    if-eqz v0, :cond_4

    .line 353
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 357
    :goto_4
    return-void

    .line 327
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 339
    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 344
    :cond_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_2

    .line 350
    :cond_3
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    .line 355
    :cond_4
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_4
.end method
