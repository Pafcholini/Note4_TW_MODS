.class public Lcom/android/internal/inputmethod/InputMethodUtils;
.super Ljava/lang/Object;
.source "InputMethodUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;
    }
.end annotation


# static fields
.field private static CONTRY_CODE:Ljava/lang/String; = null

.field public static final DEBUG:Z = false

.field private static final ENGLISH_LOCALE:Ljava/util/Locale;

.field public static final NOT_A_SUBTYPE_ID:I = -0x1

.field private static final NOT_A_SUBTYPE_ID_STR:Ljava/lang/String;

.field private static final SEARCH_ORDER_OF_FALLBACK_LOCALES:[Ljava/util/Locale;

.field public static final SUBTYPE_MODE_ANY:Ljava/lang/String;

.field public static final SUBTYPE_MODE_KEYBOARD:Ljava/lang/String; = "keyboard"

.field public static final SUBTYPE_MODE_VOICE:Ljava/lang/String; = "voice"

.field private static final TAG:Ljava/lang/String; = "InputMethodUtils"

.field private static final TAG_ASCII_CAPABLE:Ljava/lang/String; = "AsciiCapable"

.field private static final TAG_ENABLED_WHEN_DEFAULT_IS_NOT_ASCII_CAPABLE:Ljava/lang/String; = "EnabledWhenDefaultIsNotAsciiCapable"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 49
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/inputmethod/InputMethodUtils;->SUBTYPE_MODE_ANY:Ljava/lang/String;

    .line 53
    new-instance v0, Ljava/util/Locale;

    const-string v1, "en"

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/inputmethod/InputMethodUtils;->ENGLISH_LOCALE:Ljava/util/Locale;

    .line 54
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/inputmethod/InputMethodUtils;->NOT_A_SUBTYPE_ID_STR:Ljava/lang/String;

    .line 64
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/util/Locale;

    const/4 v1, 0x0

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Ljava/util/Locale;->UK:Ljava/util/Locale;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/inputmethod/InputMethodUtils;->SEARCH_ORDER_OF_FALLBACK_LOCALES:[Ljava/util/Locale;

    .line 70
    const-string/jumbo v0, "none"

    sput-object v0, Lcom/android/internal/inputmethod/InputMethodUtils;->CONTRY_CODE:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    return-void
.end method

.method static synthetic access$000(Landroid/content/res/Resources;Landroid/view/inputmethod/InputMethodInfo;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Landroid/content/res/Resources;
    .param p1, "x1"    # Landroid/view/inputmethod/InputMethodInfo;

    .prologue
    .line 46
    invoke-static {p0, p1}, Lcom/android/internal/inputmethod/InputMethodUtils;->getImplicitlyApplicableSubtypesLocked(Landroid/content/res/Resources;Landroid/view/inputmethod/InputMethodInfo;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/android/internal/inputmethod/InputMethodUtils;->NOT_A_SUBTYPE_ID_STR:Ljava/lang/String;

    return-object v0
.end method

.method public static canAddToLastInputMethod(Landroid/view/inputmethod/InputMethodSubtype;)Z
    .locals 2
    .param p0, "subtype"    # Landroid/view/inputmethod/InputMethodSubtype;

    .prologue
    const/4 v0, 0x1

    .line 573
    if-nez p0, :cond_1

    .line 574
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodSubtype;->isAuxiliary()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static checkIfPackageBelongsToUid(Landroid/app/AppOpsManager;ILjava/lang/String;)Z
    .locals 2
    .param p0, "appOpsManager"    # Landroid/app/AppOpsManager;
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 686
    :try_start_0
    invoke-virtual {p0, p1, p2}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 687
    const/4 v1, 0x1

    .line 689
    :goto_0
    return v1

    .line 688
    :catch_0
    move-exception v0

    .line 689
    .local v0, "e":Ljava/lang/SecurityException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static containsSubtypeOf(Landroid/view/inputmethod/InputMethodInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p0, "imi"    # Landroid/view/inputmethod/InputMethodInfo;
    .param p1, "language"    # Ljava/lang/String;
    .param p2, "mode"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 321
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v0

    .line 322
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 323
    invoke-virtual {p0, v1}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v2

    .line 324
    .local v2, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 322
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 327
    :cond_1
    sget-object v3, Lcom/android/internal/inputmethod/InputMethodUtils;->SUBTYPE_MODE_ANY:Ljava/lang/String;

    if-eq p2, v3, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodSubtype;->getMode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 329
    :cond_2
    const/4 v3, 0x1

    .line 332
    .end local v2    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    :goto_1
    return v3

    :cond_3
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static containsSubtypeOf(Landroid/view/inputmethod/InputMethodInfo;Ljava/util/Locale;ZLjava/lang/String;)Z
    .locals 6
    .param p0, "imi"    # Landroid/view/inputmethod/InputMethodInfo;
    .param p1, "locale"    # Ljava/util/Locale;
    .param p2, "ignoreCountry"    # Z
    .param p3, "mode"    # Ljava/lang/String;

    .prologue
    .line 292
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v0

    .line 293
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_4

    .line 294
    invoke-virtual {p0, v1}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v2

    .line 295
    .local v2, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    if-eqz p2, :cond_1

    .line 296
    new-instance v3, Ljava/util/Locale;

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/inputmethod/InputMethodUtils;->getLanguageFromLocaleString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 298
    .local v3, "subtypeLocale":Ljava/util/Locale;
    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 293
    .end local v3    # "subtypeLocale":Ljava/util/Locale;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 304
    :cond_1
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 308
    :cond_2
    sget-object v4, Lcom/android/internal/inputmethod/InputMethodUtils;->SUBTYPE_MODE_ANY:Ljava/lang/String;

    if-eq p3, v4, :cond_3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodSubtype;->getMode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 310
    :cond_3
    const/4 v4, 0x1

    .line 313
    .end local v2    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    :goto_1
    return v4

    :cond_4
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static findLastResortApplicableSubtypeLocked(Landroid/content/res/Resources;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)Landroid/view/inputmethod/InputMethodSubtype;
    .locals 10
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p2, "mode"    # Ljava/lang/String;
    .param p3, "locale"    # Ljava/lang/String;
    .param p4, "canIgnoreLocaleAsLastResort"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Ljava/util/List",
            "<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Landroid/view/inputmethod/InputMethodSubtype;"
        }
    .end annotation

    .prologue
    .line 524
    .local p1, "subtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_2

    .line 525
    :cond_0
    const/4 v2, 0x0

    .line 569
    :cond_1
    :goto_0
    return-object v2

    .line 527
    :cond_2
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 528
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget-object v9, v9, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v9}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object p3

    .line 530
    :cond_3
    invoke-static {p3}, Lcom/android/internal/inputmethod/InputMethodUtils;->getLanguageFromLocaleString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 531
    .local v4, "language":Ljava/lang/String;
    const/4 v5, 0x0

    .line 532
    .local v5, "partialMatchFound":Z
    const/4 v1, 0x0

    .line 533
    .local v1, "applicableSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    const/4 v2, 0x0

    .line 534
    .local v2, "firstMatchedModeSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 535
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v0, :cond_6

    .line 536
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/inputmethod/InputMethodSubtype;

    .line 537
    .local v6, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v8

    .line 538
    .local v8, "subtypeLocale":Ljava/lang/String;
    invoke-static {v8}, Lcom/android/internal/inputmethod/InputMethodUtils;->getLanguageFromLocaleString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 541
    .local v7, "subtypeLanguage":Ljava/lang/String;
    if-eqz p2, :cond_4

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/inputmethod/InputMethodSubtype;

    invoke-virtual {v9}, Landroid/view/inputmethod/InputMethodSubtype;->getMode()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 542
    :cond_4
    if-nez v2, :cond_5

    .line 543
    move-object v2, v6

    .line 545
    :cond_5
    invoke-virtual {p3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 547
    move-object v1, v6

    .line 557
    .end local v6    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    .end local v7    # "subtypeLanguage":Ljava/lang/String;
    .end local v8    # "subtypeLocale":Ljava/lang/String;
    :cond_6
    if-nez v1, :cond_7

    if-nez p4, :cond_1

    :cond_7
    move-object v2, v1

    .line 569
    goto :goto_0

    .line 549
    .restart local v6    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    .restart local v7    # "subtypeLanguage":Ljava/lang/String;
    .restart local v8    # "subtypeLocale":Ljava/lang/String;
    :cond_8
    if-nez v5, :cond_9

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 551
    move-object v1, v6

    .line 552
    const/4 v5, 0x1

    .line 535
    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public static getApiCallStack()Ljava/lang/String;
    .locals 6

    .prologue
    .line 93
    const-string v0, ""

    .line 95
    .local v0, "apiCallStack":Ljava/lang/String;
    :try_start_0
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5}, Ljava/lang/RuntimeException;-><init>()V

    throw v5
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    :catch_0
    move-exception v1

    .line 97
    .local v1, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    .line 98
    .local v2, "frames":[Ljava/lang/StackTraceElement;
    const/4 v3, 0x1

    .local v3, "j":I
    :goto_0
    array-length v5, v2

    if-ge v3, v5, :cond_1

    .line 99
    aget-object v5, v2, v3

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v4

    .line 100
    .local v4, "tempCallStack":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 102
    move-object v0, v4

    .line 98
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 103
    :cond_0
    const-string v5, "Transact("

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-gez v5, :cond_1

    .line 105
    move-object v0, v4

    goto :goto_1

    .line 111
    .end local v4    # "tempCallStack":Ljava/lang/String;
    :cond_1
    return-object v0
.end method

.method public static getDefaultEnabledImes(Landroid/content/Context;ZLjava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isSystemReady"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .local p2, "imis":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    const/4 v9, 0x0

    .line 175
    invoke-static {p2, p0}, Lcom/android/internal/inputmethod/InputMethodUtils;->getFallbackLocaleForDefaultIme(Ljava/util/ArrayList;Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v0

    .line 177
    .local v0, "fallbackLocale":Ljava/util/Locale;
    if-nez p1, :cond_1

    .line 178
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 179
    .local v4, "retval":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v1, v7, :cond_a

    .line 180
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    .line 182
    .local v2, "imi":Landroid/view/inputmethod/InputMethodInfo;
    invoke-static {v2}, Lcom/android/internal/inputmethod/InputMethodUtils;->isSystemIme(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v2, p0}, Landroid/view/inputmethod/InputMethodInfo;->isDefault(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string/jumbo v7, "keyboard"

    invoke-static {v2, v0, v9, v7}, Lcom/android/internal/inputmethod/InputMethodUtils;->isImeThatHasSubtypeOf(Landroid/view/inputmethod/InputMethodInfo;Ljava/util/Locale;ZLjava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 185
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 192
    .end local v1    # "i":I
    .end local v2    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    .end local v4    # "retval":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    :cond_1
    invoke-static {p0}, Lcom/android/internal/inputmethod/InputMethodUtils;->getSystemLocaleFromContext(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v5

    .line 194
    .local v5, "systemLocale":Ljava/util/Locale;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 195
    .restart local v4    # "retval":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    const/4 v6, 0x0

    .line 198
    .local v6, "systemLocaleKeyboardImeFound":Z
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v1, v7, :cond_6

    .line 199
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    .line 200
    .restart local v2    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    invoke-static {v2}, Lcom/android/internal/inputmethod/InputMethodUtils;->isSystemIme(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v2, p0}, Landroid/view/inputmethod/InputMethodInfo;->isDefault(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 198
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 203
    :cond_3
    const-string/jumbo v7, "keyboard"

    invoke-static {v2, v5, v9, v7}, Lcom/android/internal/inputmethod/InputMethodUtils;->isImeThatHasSubtypeOf(Landroid/view/inputmethod/InputMethodInfo;Ljava/util/Locale;ZLjava/lang/String;)Z

    move-result v3

    .line 207
    .local v3, "isSystemLocaleKeyboardIme":Z
    if-nez v3, :cond_4

    sget-object v7, Lcom/android/internal/inputmethod/InputMethodUtils;->SUBTYPE_MODE_ANY:Ljava/lang/String;

    invoke-static {v2, v0, v9, v7}, Lcom/android/internal/inputmethod/InputMethodUtils;->isImeThatHasSubtypeOf(Landroid/view/inputmethod/InputMethodInfo;Ljava/util/Locale;ZLjava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 210
    :cond_4
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    :cond_5
    or-int/2addr v6, v3

    goto :goto_2

    .line 217
    .end local v2    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    .end local v3    # "isSystemLocaleKeyboardIme":Z
    :cond_6
    if-nez v6, :cond_9

    .line 218
    const/4 v1, 0x0

    :goto_3
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v1, v7, :cond_9

    .line 219
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    .line 220
    .restart local v2    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    invoke-static {v2}, Lcom/android/internal/inputmethod/InputMethodUtils;->isSystemIme(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-virtual {v2, p0}, Landroid/view/inputmethod/InputMethodInfo;->isDefault(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 218
    :cond_7
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 223
    :cond_8
    const-string/jumbo v7, "keyboard"

    invoke-static {v2, v0, v9, v7}, Lcom/android/internal/inputmethod/InputMethodUtils;->isImeThatHasSubtypeOf(Landroid/view/inputmethod/InputMethodInfo;Ljava/util/Locale;ZLjava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 230
    const/4 v7, 0x1

    sget-object v8, Lcom/android/internal/inputmethod/InputMethodUtils;->SUBTYPE_MODE_ANY:Ljava/lang/String;

    invoke-static {v2, v5, v7, v8}, Lcom/android/internal/inputmethod/InputMethodUtils;->isImeThatHasSubtypeOf(Landroid/view/inputmethod/InputMethodInfo;Ljava/util/Locale;ZLjava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 232
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 238
    .end local v2    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :cond_9
    const/4 v1, 0x0

    :goto_5
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v1, v7, :cond_c

    .line 239
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodInfo;->isAuxiliaryIme()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 249
    .end local v5    # "systemLocale":Ljava/util/Locale;
    .end local v6    # "systemLocaleKeyboardImeFound":Z
    :cond_a
    return-object v4

    .line 238
    .restart local v5    # "systemLocale":Ljava/util/Locale;
    .restart local v6    # "systemLocaleKeyboardImeFound":Z
    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 243
    :cond_c
    const/4 v1, 0x0

    :goto_6
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v1, v7, :cond_a

    .line 244
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    .line 245
    .restart local v2    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    invoke-static {v2}, Lcom/android/internal/inputmethod/InputMethodUtils;->isSystemAuxilialyImeThatHasAutomaticSubtype(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 246
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 243
    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_6
.end method

.method private static getEnabledInputMethodSubtypeList(Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;Ljava/util/List;Z)Ljava/util/List;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "imi"    # Landroid/view/inputmethod/InputMethodInfo;
    .param p3, "allowsImplicitlySelectedSubtypes"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/view/inputmethod/InputMethodInfo;",
            "Ljava/util/List",
            "<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;Z)",
            "Ljava/util/List",
            "<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;"
        }
    .end annotation

    .prologue
    .line 491
    .local p2, "enabledSubtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    if-eqz p3, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 492
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/internal/inputmethod/InputMethodUtils;->getImplicitlyApplicableSubtypesLocked(Landroid/content/res/Resources;Landroid/view/inputmethod/InputMethodInfo;)Ljava/util/ArrayList;

    move-result-object p2

    .line 495
    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2}, Landroid/view/inputmethod/InputMethodSubtype;->sort(Landroid/content/Context;ILandroid/view/inputmethod/InputMethodInfo;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getFallbackLocaleForDefaultIme(Ljava/util/ArrayList;Landroid/content/Context;)Ljava/util/Locale;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Locale;"
        }
    .end annotation

    .prologue
    .line 134
    .local p0, "imis":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    sget-object v0, Lcom/android/internal/inputmethod/InputMethodUtils;->SEARCH_ORDER_OF_FALLBACK_LOCALES:[Ljava/util/Locale;

    .local v0, "arr$":[Ljava/util/Locale;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v5, :cond_2

    aget-object v1, v0, v3

    .line 135
    .local v1, "fallbackLocale":Ljava/util/Locale;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_1

    .line 136
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodInfo;

    .line 137
    .local v4, "imi":Landroid/view/inputmethod/InputMethodInfo;
    invoke-static {v4}, Lcom/android/internal/inputmethod/InputMethodUtils;->isSystemIme(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v4, p1}, Landroid/view/inputmethod/InputMethodInfo;->isDefault(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x0

    const-string/jumbo v7, "keyboard"

    invoke-static {v4, v1, v6, v7}, Lcom/android/internal/inputmethod/InputMethodUtils;->containsSubtypeOf(Landroid/view/inputmethod/InputMethodInfo;Ljava/util/Locale;ZLjava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 144
    .end local v1    # "fallbackLocale":Ljava/util/Locale;
    .end local v2    # "i":I
    .end local v4    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :goto_2
    return-object v1

    .line 135
    .restart local v1    # "fallbackLocale":Ljava/util/Locale;
    .restart local v2    # "i":I
    .restart local v4    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 134
    .end local v4    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 144
    .end local v1    # "fallbackLocale":Ljava/util/Locale;
    .end local v2    # "i":I
    :cond_2
    const/4 v1, 0x0

    goto :goto_2
.end method

.method public static getImeAndSubtypeDisplayName(Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Ljava/lang/CharSequence;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "imi"    # Landroid/view/inputmethod/InputMethodInfo;
    .param p2, "subtype"    # Landroid/view/inputmethod/InputMethodSubtype;

    .prologue
    .line 651
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/inputmethod/InputMethodInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 661
    .local v0, "imiLabel":Ljava/lang/CharSequence;
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.sec.android.inputmethod"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p1}, Lcom/android/internal/inputmethod/InputMethodUtils;->isSystemIme(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 664
    .end local v0    # "imiLabel":Ljava/lang/CharSequence;
    :cond_0
    :goto_0
    return-object v0

    .restart local v0    # "imiLabel":Ljava/lang/CharSequence;
    :cond_1
    if-eqz p2, :cond_0

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/CharSequence;

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p2, p0, v3, v4}, Landroid/view/inputmethod/InputMethodSubtype;->getDisplayName(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v2, v1

    const/4 v3, 0x1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, ""

    :goto_1
    aput-object v1, v2, v3

    invoke-static {v2}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " - "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method private static getImplicitlyApplicableSubtypesLocked(Landroid/content/res/Resources;Landroid/view/inputmethod/InputMethodInfo;)Ljava/util/ArrayList;
    .locals 20
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "imi"    # Landroid/view/inputmethod/InputMethodInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;"
        }
    .end annotation

    .prologue
    .line 415
    invoke-static/range {p1 .. p1}, Lcom/android/internal/inputmethod/InputMethodUtils;->getSubtypes(Landroid/view/inputmethod/InputMethodInfo;)Ljava/util/ArrayList;

    move-result-object v15

    .line 416
    .local v15, "subtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v18

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v17

    .line 417
    .local v17, "systemLocale":Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_1

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 485
    :cond_0
    :goto_0
    return-object v7

    .line 418
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v18

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v16

    .line 419
    .local v16, "systemLanguage":Ljava/lang/String;
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 421
    .local v5, "applicableModeAndSubtypesMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v4

    .line 422
    .local v4, "N":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-ge v8, v4, :cond_3

    .line 424
    invoke-interface {v15, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/inputmethod/InputMethodSubtype;

    .line 425
    .local v14, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v14}, Landroid/view/inputmethod/InputMethodSubtype;->overridesImplicitlyEnabledSubtype()Z

    move-result v18

    if-eqz v18, :cond_2

    .line 426
    invoke-virtual {v14}, Landroid/view/inputmethod/InputMethodSubtype;->getMode()Ljava/lang/String;

    move-result-object v13

    .line 427
    .local v13, "mode":Ljava/lang/String;
    invoke-virtual {v5, v13}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_2

    .line 428
    invoke-virtual {v5, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    .end local v13    # "mode":Ljava/lang/String;
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 432
    .end local v14    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    :cond_3
    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v18

    if-lez v18, :cond_4

    .line 433
    new-instance v7, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    .line 435
    :cond_4
    const/4 v8, 0x0

    :goto_2
    if-ge v8, v4, :cond_8

    .line 436
    invoke-interface {v15, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/inputmethod/InputMethodSubtype;

    .line 437
    .restart local v14    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v14}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v12

    .line 438
    .local v12, "locale":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/view/inputmethod/InputMethodSubtype;->getMode()Ljava/lang/String;

    move-result-object v13

    .line 439
    .restart local v13    # "mode":Ljava/lang/String;
    invoke-static {v12}, Lcom/android/internal/inputmethod/InputMethodUtils;->getLanguageFromLocaleString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 454
    .local v10, "language":Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_5

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 455
    invoke-virtual {v5, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/inputmethod/InputMethodSubtype;

    .line 457
    .local v6, "applicableSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    if-eqz v6, :cond_7

    .line 458
    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_6

    .line 435
    .end local v6    # "applicableSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    :cond_5
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 459
    .restart local v6    # "applicableSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    :cond_6
    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 461
    :cond_7
    invoke-virtual {v5, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 464
    .end local v6    # "applicableSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    .end local v10    # "language":Ljava/lang/String;
    .end local v12    # "locale":Ljava/lang/String;
    .end local v13    # "mode":Ljava/lang/String;
    .end local v14    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    :cond_8
    const-string/jumbo v18, "keyboard"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/inputmethod/InputMethodSubtype;

    .line 466
    .local v9, "keyboardSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    new-instance v7, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 468
    .local v7, "applicableSubtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    if-eqz v9, :cond_a

    const-string v18, "AsciiCapable"

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/view/inputmethod/InputMethodSubtype;->containsExtraValueKey(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_a

    .line 469
    const/4 v8, 0x0

    :goto_4
    if-ge v8, v4, :cond_a

    .line 470
    invoke-interface {v15, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/inputmethod/InputMethodSubtype;

    .line 471
    .restart local v14    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v14}, Landroid/view/inputmethod/InputMethodSubtype;->getMode()Ljava/lang/String;

    move-result-object v13

    .line 472
    .restart local v13    # "mode":Ljava/lang/String;
    const-string/jumbo v18, "keyboard"

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_9

    const-string v18, "EnabledWhenDefaultIsNotAsciiCapable"

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/view/inputmethod/InputMethodSubtype;->containsExtraValueKey(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_9

    .line 474
    invoke-virtual {v7, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 469
    :cond_9
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 478
    .end local v13    # "mode":Ljava/lang/String;
    .end local v14    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    :cond_a
    if-nez v9, :cond_0

    .line 479
    const-string/jumbo v18, "keyboard"

    const/16 v19, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v17

    move/from16 v3, v19

    invoke-static {v0, v15, v1, v2, v3}, Lcom/android/internal/inputmethod/InputMethodUtils;->findLastResortApplicableSubtypeLocked(Landroid/content/res/Resources;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v11

    .line 481
    .local v11, "lastResortKeyboardSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    if-eqz v11, :cond_0

    .line 482
    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method public static getLanguageFromLocaleString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "locale"    # Ljava/lang/String;

    .prologue
    .line 503
    const/16 v1, 0x5f

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 504
    .local v0, "idx":I
    if-gez v0, :cond_0

    .line 507
    .end local p0    # "locale":Ljava/lang/String;
    :goto_0
    return-object p0

    .restart local p0    # "locale":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static getMostApplicableDefaultIME(Ljava/util/List;)Landroid/view/inputmethod/InputMethodInfo;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;)",
            "Landroid/view/inputmethod/InputMethodInfo;"
        }
    .end annotation

    .prologue
    .line 358
    .local p0, "enabledImes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 359
    :cond_0
    const/4 v2, 0x0

    .line 393
    :cond_1
    :goto_0
    return-object v2

    .line 362
    :cond_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    .line 363
    .local v1, "i":I
    const/4 v0, -0x1

    .line 366
    .local v0, "firstFoundSystemIme":I
    const-string/jumbo v4, "none"

    sget-object v5, Lcom/android/internal/inputmethod/InputMethodUtils;->CONTRY_CODE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 367
    const-string/jumbo v4, "ro.csc.country_code"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/android/internal/inputmethod/InputMethodUtils;->CONTRY_CODE:Ljava/lang/String;

    .line 369
    :cond_3
    const-string v4, "CHINA"

    sget-object v5, Lcom/android/internal/inputmethod/InputMethodUtils;->CONTRY_CODE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "HONG KONG"

    sget-object v5, Lcom/android/internal/inputmethod/InputMethodUtils;->CONTRY_CODE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "TAIWAN"

    sget-object v5, Lcom/android/internal/inputmethod/InputMethodUtils;->CONTRY_CODE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 372
    :cond_4
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    if-ge v3, v1, :cond_6

    .line 373
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    .line 374
    .local v2, "imi":Landroid/view/inputmethod/InputMethodInfo;
    const-string v4, "com.samsung.inputmethod/.SamsungIME"

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 372
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 388
    .end local v3    # "j":I
    :cond_5
    if-gez v0, :cond_6

    invoke-static {v2}, Lcom/android/internal/inputmethod/InputMethodUtils;->isSystemIme(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->isAuxiliaryIme()Z

    move-result v4

    if-nez v4, :cond_6

    .line 390
    move v0, v1

    .line 381
    .end local v2    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :cond_6
    if-lez v1, :cond_7

    .line 382
    add-int/lit8 v1, v1, -0x1

    .line 383
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    .line 384
    .restart local v2    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    invoke-static {v2}, Lcom/android/internal/inputmethod/InputMethodUtils;->isSystemImeThatHasEnglishKeyboardSubtype(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->isAuxiliaryIme()Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_0

    .line 393
    .end local v2    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :cond_7
    const/4 v4, 0x0

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodInfo;

    move-object v2, v4

    goto/16 :goto_0
.end method

.method public static getOverridingImplicitlyEnabledSubtypes(Landroid/view/inputmethod/InputMethodInfo;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5
    .param p0, "imi"    # Landroid/view/inputmethod/InputMethodInfo;
    .param p1, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/inputmethod/InputMethodInfo;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;"
        }
    .end annotation

    .prologue
    .line 346
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 347
    .local v3, "subtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v2

    .line 348
    .local v2, "subtypeCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 349
    invoke-virtual {p0, v0}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v1

    .line 350
    .local v1, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodSubtype;->overridesImplicitlyEnabledSubtype()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodSubtype;->getMode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 351
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 348
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 354
    .end local v1    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    :cond_1
    return-object v3
.end method

.method public static getStackTrace()Ljava/lang/String;
    .locals 6

    .prologue
    .line 79
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    .local v3, "sb":Ljava/lang/StringBuilder;
    :try_start_0
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4}, Ljava/lang/RuntimeException;-><init>()V

    throw v4
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :catch_0
    move-exception v0

    .line 83
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 85
    .local v1, "frames":[Ljava/lang/StackTraceElement;
    const/4 v2, 0x1

    .local v2, "j":I
    :goto_0
    array-length v4, v1

    if-ge v2, v4, :cond_0

    .line 86
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v5, v1, v2

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 89
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static getSubtypeIdFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I
    .locals 4
    .param p0, "imi"    # Landroid/view/inputmethod/InputMethodInfo;
    .param p1, "subtypeHashCode"    # I

    .prologue
    .line 401
    if-eqz p0, :cond_1

    .line 402
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v2

    .line 403
    .local v2, "subtypeCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 404
    invoke-virtual {p0, v0}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v1

    .line 405
    .local v1, "ims":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v3

    if-ne p1, v3, :cond_0

    .line 410
    .end local v0    # "i":I
    .end local v1    # "ims":Landroid/view/inputmethod/InputMethodSubtype;
    .end local v2    # "subtypeCount":I
    :goto_1
    return v0

    .line 403
    .restart local v0    # "i":I
    .restart local v1    # "ims":Landroid/view/inputmethod/InputMethodSubtype;
    .restart local v2    # "subtypeCount":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 410
    .end local v0    # "i":I
    .end local v1    # "ims":Landroid/view/inputmethod/InputMethodSubtype;
    .end local v2    # "subtypeCount":I
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public static getSubtypes(Landroid/view/inputmethod/InputMethodInfo;)Ljava/util/ArrayList;
    .locals 4
    .param p0, "imi"    # Landroid/view/inputmethod/InputMethodInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;"
        }
    .end annotation

    .prologue
    .line 336
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 337
    .local v2, "subtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v1

    .line 338
    .local v1, "subtypeCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 339
    invoke-virtual {p0, v0}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 338
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 341
    :cond_0
    return-object v2
.end method

.method public static getSystemLocaleFromContext(Landroid/content/Context;)Ljava/util/Locale;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 166
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    :goto_0
    return-object v1

    .line 167
    :catch_0
    move-exception v0

    .line 168
    .local v0, "ex":Landroid/content/res/Resources$NotFoundException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isImeThatHasSubtypeOf(Landroid/view/inputmethod/InputMethodInfo;Ljava/util/Locale;ZLjava/lang/String;)Z
    .locals 1
    .param p0, "imi"    # Landroid/view/inputmethod/InputMethodInfo;
    .param p1, "locale"    # Ljava/util/Locale;
    .param p2, "ignoreCountry"    # Z
    .param p3, "mode"    # Ljava/lang/String;

    .prologue
    .line 254
    if-nez p1, :cond_0

    .line 255
    const/4 v0, 0x0

    .line 257
    :goto_0
    return v0

    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/android/internal/inputmethod/InputMethodUtils;->containsSubtypeOf(Landroid/view/inputmethod/InputMethodInfo;Ljava/util/Locale;ZLjava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method private static isSystemAuxilialyImeThatHasAutomaticSubtype(Landroid/view/inputmethod/InputMethodInfo;)Z
    .locals 5
    .param p0, "imi"    # Landroid/view/inputmethod/InputMethodInfo;

    .prologue
    const/4 v3, 0x0

    .line 148
    invoke-static {p0}, Lcom/android/internal/inputmethod/InputMethodUtils;->isSystemIme(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 161
    :cond_0
    :goto_0
    return v3

    .line 151
    :cond_1
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodInfo;->isAuxiliaryIme()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 154
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v2

    .line 155
    .local v2, "subtypeCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v2, :cond_0

    .line 156
    invoke-virtual {p0, v0}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v1

    .line 157
    .local v1, "s":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodSubtype;->overridesImplicitlyEnabledSubtype()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 158
    const/4 v3, 0x1

    goto :goto_0

    .line 155
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static isSystemIme(Landroid/view/inputmethod/InputMethodInfo;)Z
    .locals 1
    .param p0, "inputMethod"    # Landroid/view/inputmethod/InputMethodInfo;

    .prologue
    .line 116
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSystemImeThatHasEnglishKeyboardSubtype(Landroid/view/inputmethod/InputMethodInfo;)Z
    .locals 2
    .param p0, "imi"    # Landroid/view/inputmethod/InputMethodInfo;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 126
    invoke-static {p0}, Lcom/android/internal/inputmethod/InputMethodUtils;->isSystemIme(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 127
    const/4 v0, 0x0

    .line 129
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/android/internal/inputmethod/InputMethodUtils;->ENGLISH_LOCALE:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "keyboard"

    invoke-static {p0, v0, v1}, Lcom/android/internal/inputmethod/InputMethodUtils;->containsSubtypeOf(Landroid/view/inputmethod/InputMethodInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static isValidSubtypeId(Landroid/view/inputmethod/InputMethodInfo;I)Z
    .locals 2
    .param p0, "imi"    # Landroid/view/inputmethod/InputMethodInfo;
    .param p1, "subtypeHashCode"    # I

    .prologue
    .line 397
    invoke-static {p0, p1}, Lcom/android/internal/inputmethod/InputMethodUtils;->getSubtypeIdFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isValidSystemDefaultIme(ZLandroid/view/inputmethod/InputMethodInfo;Landroid/content/Context;)Z
    .locals 4
    .param p0, "isSystemReady"    # Z
    .param p1, "imi"    # Landroid/view/inputmethod/InputMethodInfo;
    .param p2, "context"    # Landroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 268
    if-nez p0, :cond_1

    .line 287
    :cond_0
    :goto_0
    return v0

    .line 271
    :cond_1
    invoke-static {p1}, Lcom/android/internal/inputmethod/InputMethodUtils;->isSystemIme(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 274
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getIsDefaultResourceId()I

    move-result v1

    if-eqz v1, :cond_2

    .line 276
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/view/inputmethod/InputMethodInfo;->isDefault(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/internal/inputmethod/InputMethodUtils;->SUBTYPE_MODE_ANY:Ljava/lang/String;

    invoke-static {p1, v1, v2}, Lcom/android/internal/inputmethod/InputMethodUtils;->containsSubtypeOf(Landroid/view/inputmethod/InputMethodInfo;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_2

    .line 279
    const/4 v0, 0x1

    goto :goto_0

    .line 281
    :catch_0
    move-exception v1

    .line 284
    :cond_2
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 285
    const-string v1, "InputMethodUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Found no subtypes in a system IME: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static setDisabledUntilUsed(Landroid/content/pm/PackageManager;Ljava/lang/String;)V
    .locals 3
    .param p0, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 634
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v0

    .line 635
    .local v0, "state":I
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 640
    :cond_0
    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v1, v2}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    .line 647
    :cond_1
    return-void
.end method

.method public static setNonSelectedSystemImesDisabledUntilUsed(Landroid/content/pm/PackageManager;Ljava/util/List;)V
    .locals 16
    .param p0, "packageManager"    # Landroid/content/pm/PackageManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Ljava/util/List",
            "<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 582
    .local p1, "enabledImis":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x1070030

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v12

    .line 584
    .local v12, "systemImesDisabledUntilUsed":[Ljava/lang/String;
    if-eqz v12, :cond_0

    array-length v13, v12

    if-nez v13, :cond_1

    .line 631
    :cond_0
    return-void

    .line 588
    :cond_1
    invoke-static {}, Landroid/view/textservice/TextServicesManager;->getInstance()Landroid/view/textservice/TextServicesManager;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/textservice/TextServicesManager;->getCurrentSpellChecker()Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v3

    .line 590
    .local v3, "currentSpellChecker":Landroid/view/textservice/SpellCheckerInfo;
    move-object v2, v12

    .local v2, "arr$":[Ljava/lang/String;
    array-length v10, v2

    .local v10, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_0
    if-ge v6, v10, :cond_0

    aget-object v11, v2, v6

    .line 594
    .local v11, "packageName":Ljava/lang/String;
    const/4 v5, 0x0

    .line 595
    .local v5, "enabledIme":Z
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_1
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v13

    if-ge v9, v13, :cond_2

    .line 596
    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/inputmethod/InputMethodInfo;

    .line 597
    .local v7, "imi":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 598
    const/4 v5, 0x1

    .line 602
    .end local v7    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :cond_2
    if-eqz v5, :cond_5

    .line 590
    :cond_3
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 595
    .restart local v7    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 606
    .end local v7    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :cond_5
    if-eqz v3, :cond_6

    invoke-virtual {v3}, Landroid/view/textservice/SpellCheckerInfo;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_3

    .line 614
    :cond_6
    const/4 v1, 0x0

    .line 616
    .local v1, "ai":Landroid/content/pm/ApplicationInfo;
    const v13, 0x8000

    :try_start_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v13}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 621
    :goto_3
    if-eqz v1, :cond_3

    .line 625
    iget v13, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v13, v13, 0x1

    if-eqz v13, :cond_7

    const/4 v8, 0x1

    .line 626
    .local v8, "isSystemPackage":Z
    :goto_4
    if-eqz v8, :cond_3

    .line 629
    move-object/from16 v0, p0

    invoke-static {v0, v11}, Lcom/android/internal/inputmethod/InputMethodUtils;->setDisabledUntilUsed(Landroid/content/pm/PackageManager;Ljava/lang/String;)V

    goto :goto_2

    .line 618
    .end local v8    # "isSystemPackage":Z
    :catch_0
    move-exception v4

    .line 619
    .local v4, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v13, "InputMethodUtils"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "NameNotFoundException: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 625
    .end local v4    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_7
    const/4 v8, 0x0

    goto :goto_4
.end method
