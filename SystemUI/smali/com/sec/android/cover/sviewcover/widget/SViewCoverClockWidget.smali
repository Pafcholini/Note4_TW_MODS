.class public Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;
.super Landroid/widget/LinearLayout;
.source "SViewCoverClockWidget.java"


# static fields
.field private static final CLOCK_UPDATE_DELAY:J = 0x7d0L

.field private static TAG:Ljava/lang/String; = null

.field public static final mAmPmFormat:Ljava/lang/String; = "AA"

.field public static final mTime24HFormat:Ljava/lang/String; = "kk:mm"

.field public static mTimeFormat:Ljava/lang/String;


# instance fields
.field private final MSG_CLOCK_UPDATE:I

.field private mAmPm:Landroid/widget/TextView;

.field private mCalendar:Ljava/util/Calendar;

.field private mClockHandler:Landroid/os/Handler;

.field private mClockRoot:Landroid/widget/RelativeLayout;

.field private mClockView:Landroid/widget/LinearLayout;

.field private mContext:Landroid/content/Context;

.field private mDayofWeek:Landroid/widget/TextView;

.field private mFestivalEnabled:Z

.field private mFestivalIcon:Landroid/widget/ImageView;

.field private mIs24HTime:Z

.field private mIsCover2:Z

.field private mMonthandDay:Landroid/widget/TextView;

.field private mThemeFontPath:Ljava/lang/String;

.field private mTime:Landroid/widget/TextView;

.field private mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->TAG:Ljava/lang/String;

    .line 39
    const-string v0, "h:mm"

    sput-object v0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mTimeFormat:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 161
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mIs24HTime:Z

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mThemeFontPath:Ljava/lang/String;

    .line 63
    new-instance v0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget$1;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget$1;-><init>(Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;)V

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    .line 148
    const/16 v0, 0x12c2

    iput v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->MSG_CLOCK_UPDATE:I

    .line 149
    new-instance v0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget$2;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget$2;-><init>(Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;)V

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mClockHandler:Landroid/os/Handler;

    .line 162
    iput-object p1, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mContext:Landroid/content/Context;

    .line 164
    sget-object v0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->TAG:Ljava/lang/String;

    const-string v1, "Clock()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->onThemeFontChanged(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->onTimeChanged()V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mClockHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mFestivalIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$602(Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;
    .param p1, "x1"    # Z

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mIs24HTime:Z

    return p1
.end method

.method static synthetic access$700(Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mFestivalEnabled:Z

    return v0
.end method

.method static synthetic access$702(Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;
    .param p1, "x1"    # Z

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mFestivalEnabled:Z

    return p1
.end method

.method public static getCurrentDateFormat(Landroid/content/Context;)Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 352
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 353
    .local v5, "result":Ljava/lang/StringBuilder;
    const-string v6, "yyyy"

    .line 354
    .local v6, "year":Ljava/lang/String;
    const-string v4, "MM"

    .line 355
    .local v4, "month":Ljava/lang/String;
    const-string v0, "dd"

    .line 356
    .local v0, "day":Ljava/lang/String;
    const-string v1, "-"

    .line 358
    .local v1, "divider":Ljava/lang/String;
    invoke-static {p0}, Landroid/text/format/DateFormat;->getDateFormatOrder(Landroid/content/Context;)[C

    move-result-object v2

    .line 359
    .local v2, "formatArray":[C
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v7, v2

    if-ge v3, v7, :cond_4

    .line 360
    aget-char v7, v2, v3

    const/16 v8, 0x79

    if-ne v7, v8, :cond_0

    .line 361
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    :cond_0
    aget-char v7, v2, v3

    const/16 v8, 0x4d

    if-ne v7, v8, :cond_1

    .line 364
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    :cond_1
    aget-char v7, v2, v3

    const/16 v8, 0x64

    if-ne v7, v8, :cond_2

    .line 367
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    :cond_2
    array-length v7, v2

    add-int/lit8 v7, v7, -0x1

    if-eq v3, v7, :cond_3

    .line 370
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 372
    :cond_4
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method private onThemeFontChanged(Ljava/lang/String;)V
    .locals 1
    .param p1, "fontPath"    # Ljava/lang/String;

    .prologue
    .line 244
    invoke-static {}, Lcom/sec/android/cover/FeatureUtils;->isSupportElasticPlugin()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/sec/android/cover/CoverUtils;->setClockFontPath(Landroid/content/Context;Ljava/lang/String;)V

    .line 246
    iput-object p1, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mThemeFontPath:Ljava/lang/String;

    .line 248
    :cond_0
    return-void
.end method

.method private onTimeChanged()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 278
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    iput-object v8, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mCalendar:Ljava/util/Calendar;

    .line 279
    sget-object v8, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "initClock() : TimeZone ="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    iget-object v8, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 282
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    .line 283
    .local v1, "locale":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 284
    const-string v8, "ja_JP"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 285
    const-string v8, "K:mm"

    sput-object v8, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mTimeFormat:Ljava/lang/String;

    .line 291
    :cond_0
    :goto_0
    const/4 v6, 0x0

    .line 292
    .local v6, "tmp":Ljava/lang/CharSequence;
    iget-boolean v8, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mIs24HTime:Z

    if-eqz v8, :cond_8

    .line 293
    const-string v8, "kk:mm"

    iget-object v9, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mCalendar:Ljava/util/Calendar;

    invoke-static {v8, v9}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 297
    :goto_1
    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 299
    .local v5, "times":Ljava/lang/String;
    iget-boolean v8, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mIsCover2:Z

    if-eqz v8, :cond_1

    invoke-interface {v6, v12}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    const/16 v9, 0x31

    if-ne v8, v9, :cond_1

    .line 302
    :try_start_0
    const-string v8, "UTF-8"

    invoke-static {v5, v8}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 310
    :cond_1
    :goto_2
    if-eqz v5, :cond_2

    .line 311
    iget-object v8, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mTime:Landroid/widget/TextView;

    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 313
    :cond_2
    iget-object v8, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mAmPm:Landroid/widget/TextView;

    if-eqz v8, :cond_3

    .line 314
    iget-boolean v8, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mIs24HTime:Z

    if-nez v8, :cond_9

    .line 315
    iget-object v8, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mAmPm:Landroid/widget/TextView;

    invoke-virtual {v8, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 316
    iget-object v8, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mAmPm:Landroid/widget/TextView;

    const-string v9, "AA"

    iget-object v10, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mCalendar:Ljava/util/Calendar;

    invoke-static {v9, v10}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 317
    iget-object v8, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mAmPm:Landroid/widget/TextView;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 323
    :cond_3
    :goto_3
    const-string v0, ""

    .line 324
    .local v0, "dateFormat":Ljava/lang/String;
    iget-object v8, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->getCurrentDateFormat(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 325
    .local v7, "value":Ljava/lang/String;
    sget v2, Lcom/sec/android/sviewcover/R$string;->sview_cover_wday_month_day_no_year:I

    .line 326
    .local v2, "resId_MM_dd":I
    sget v3, Lcom/sec/android/sviewcover/R$string;->sview_cover_wday_day_month_no_year:I

    .line 328
    .local v3, "resId_dd_MM":I
    iget-object v8, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mDayofWeek:Landroid/widget/TextView;

    if-eqz v8, :cond_a

    .line 329
    sget v2, Lcom/sec/android/sviewcover/R$string;->clear_cover_month_day_no_year:I

    .line 330
    sget v3, Lcom/sec/android/sviewcover/R$string;->clear_cover_day_month_no_year:I

    .line 336
    :goto_4
    const-string v8, "yyyy-MM-dd"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    const-string v8, "MM-dd-yyyy"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 337
    :cond_4
    iget-object v8, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 341
    :cond_5
    :goto_5
    iget-object v8, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mDayofWeek:Landroid/widget/TextView;

    if-eqz v8, :cond_6

    .line 342
    iget-object v8, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mDayofWeek:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mContext:Landroid/content/Context;

    sget v10, Lcom/sec/android/sviewcover/R$string;->clear_cover_wday_day:I

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mCalendar:Ljava/util/Calendar;

    invoke-static {v9, v10}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 345
    :cond_6
    iget-object v8, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mMonthandDay:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mCalendar:Ljava/util/Calendar;

    invoke-static {v0, v9}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 347
    iget-object v8, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mClockView:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->getSingleTTSMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 348
    return-void

    .line 287
    .end local v0    # "dateFormat":Ljava/lang/String;
    .end local v2    # "resId_MM_dd":I
    .end local v3    # "resId_dd_MM":I
    .end local v5    # "times":Ljava/lang/String;
    .end local v6    # "tmp":Ljava/lang/CharSequence;
    .end local v7    # "value":Ljava/lang/String;
    :cond_7
    const-string v8, "h:mm"

    sput-object v8, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mTimeFormat:Ljava/lang/String;

    goto/16 :goto_0

    .line 295
    .restart local v6    # "tmp":Ljava/lang/CharSequence;
    :cond_8
    sget-object v8, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mTimeFormat:Ljava/lang/String;

    iget-object v9, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mCalendar:Ljava/util/Calendar;

    invoke-static {v8, v9}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v6

    goto/16 :goto_1

    .line 303
    .restart local v5    # "times":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 304
    .local v4, "t":Ljava/lang/Throwable;
    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 305
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_2

    .line 319
    .end local v4    # "t":Ljava/lang/Throwable;
    :cond_9
    iget-object v8, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mAmPm:Landroid/widget/TextView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 332
    .restart local v0    # "dateFormat":Ljava/lang/String;
    .restart local v2    # "resId_MM_dd":I
    .restart local v3    # "resId_dd_MM":I
    .restart local v7    # "value":Ljava/lang/String;
    :cond_a
    sget v2, Lcom/sec/android/sviewcover/R$string;->sview_cover_wday_month_day_no_year:I

    .line 333
    sget v3, Lcom/sec/android/sviewcover/R$string;->sview_cover_wday_day_month_no_year:I

    goto :goto_4

    .line 338
    :cond_b
    const-string v8, "dd-MM-yyyy"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 339
    iget-object v8, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method private setThemeFontTypeFace(Landroid/graphics/Typeface;)V
    .locals 1
    .param p1, "clockTypeface"    # Landroid/graphics/Typeface;

    .prologue
    .line 234
    if-eqz p1, :cond_0

    .line 235
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mTime:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 236
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mAmPm:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 237
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mDayofWeek:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 238
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mMonthandDay:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 240
    :cond_0
    return-void
.end method


# virtual methods
.method public getSingleTTSMessage()Ljava/lang/String;
    .locals 8

    .prologue
    .line 377
    const-string v0, ""

    .line 379
    .local v0, "TTSMessage":Ljava/lang/String;
    const-string v1, ""

    .line 380
    .local v1, "dateFormat":Ljava/lang/String;
    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->getCurrentDateFormat(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 381
    .local v4, "value":Ljava/lang/String;
    const-string v5, "yyyy-MM-dd"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "MM-dd-yyyy"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 382
    :cond_0
    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mContext:Landroid/content/Context;

    sget v6, Lcom/sec/android/sviewcover/R$string;->full_wday_month_day_no_year:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 386
    :cond_1
    :goto_0
    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mCalendar:Ljava/util/Calendar;

    invoke-static {v1, v5}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 389
    .local v2, "dateText":Ljava/lang/CharSequence;
    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 390
    iget-boolean v5, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mIs24HTime:Z

    if-eqz v5, :cond_4

    .line 391
    const-string v5, "kk:mm"

    iget-object v6, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mCalendar:Ljava/util/Calendar;

    invoke-static {v5, v6}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 397
    .local v3, "mTTSTime":Ljava/lang/String;
    :cond_2
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 399
    return-object v0

    .line 383
    .end local v2    # "dateText":Ljava/lang/CharSequence;
    .end local v3    # "mTTSTime":Ljava/lang/String;
    :cond_3
    const-string v5, "dd-MM-yyyy"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 384
    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mContext:Landroid/content/Context;

    sget v6, Lcom/sec/android/sviewcover/R$string;->full_wday_day_month_no_year:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 393
    .restart local v2    # "dateText":Ljava/lang/CharSequence;
    :cond_4
    sget-object v5, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mTimeFormat:Ljava/lang/String;

    iget-object v6, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mCalendar:Ljava/util/Calendar;

    invoke-static {v5, v6}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 394
    .restart local v3    # "mTTSTime":Ljava/lang/String;
    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mAmPm:Landroid/widget/TextView;

    if-eqz v5, :cond_2

    .line 395
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mAmPm:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 252
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 253
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mIs24HTime:Z

    .line 256
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mThemeFontPath:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/sec/android/cover/FeatureUtils;->isSupportElasticPlugin()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/CoverUtils;->getClockFontPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mThemeFontPath:Ljava/lang/String;

    .line 259
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->onTimeChanged()V

    .line 261
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->registerCallback(Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;)V

    .line 262
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 266
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 268
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->unregisterCallback(Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;)V

    .line 269
    return-void
.end method

.method protected onFinishInflate()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 197
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 198
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 199
    .local v2, "res":Landroid/content/res/Resources;
    sget v3, Lcom/sec/android/sviewcover/R$bool;->config_isSViewCover2:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mIsCover2:Z

    .line 200
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverDatabaseManager;

    move-result-object v3

    const-string v5, "festival_effect_enabled"

    invoke-virtual {v3, v5, v4}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    :goto_0
    iput-boolean v3, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mFestivalEnabled:Z

    .line 202
    sget v3, Lcom/sec/android/sviewcover/R$id;->clock_time_and_date:I

    invoke-virtual {p0, v3}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mClockView:Landroid/widget/LinearLayout;

    .line 203
    sget v3, Lcom/sec/android/sviewcover/R$id;->clock_root:I

    invoke-virtual {p0, v3}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mClockRoot:Landroid/widget/RelativeLayout;

    .line 204
    sget v3, Lcom/sec/android/sviewcover/R$id;->digital_clock_time:I

    invoke-virtual {p0, v3}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mTime:Landroid/widget/TextView;

    .line 205
    sget v3, Lcom/sec/android/sviewcover/R$id;->digital_clock_ampm:I

    invoke-virtual {p0, v3}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mAmPm:Landroid/widget/TextView;

    .line 207
    sget v3, Lcom/sec/android/sviewcover/R$id;->festival_icon:I

    invoke-virtual {p0, v3}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mFestivalIcon:Landroid/widget/ImageView;

    .line 208
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverDatabaseManager;

    move-result-object v3

    const-string v5, "FestivalList"

    invoke-virtual {v3, v5}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 210
    .local v1, "festivalString":Ljava/lang/String;
    sget-object v3, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mFestivalEnabled = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mFestivalEnabled:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    iget-boolean v3, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mFestivalEnabled:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mFestivalIcon:Landroid/widget/ImageView;

    if-eqz v3, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 212
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mContext:Landroid/content/Context;

    invoke-static {v3, v1}, Lcom/sec/android/cover/CoverUtils;->getFestivalIcon(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 213
    .local v0, "festivalIcon":I
    if-eqz v0, :cond_3

    .line 214
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mFestivalIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 215
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mFestivalIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 221
    .end local v0    # "festivalIcon":I
    :cond_0
    :goto_1
    sget v3, Lcom/sec/android/sviewcover/R$id;->digital_day_of_the_week:I

    invoke-virtual {p0, v3}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mDayofWeek:Landroid/widget/TextView;

    .line 222
    sget v3, Lcom/sec/android/sviewcover/R$id;->digital_month_day:I

    invoke-virtual {p0, v3}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mMonthandDay:Landroid/widget/TextView;

    .line 225
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mThemeFontPath:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 226
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mThemeFontPath:Ljava/lang/String;

    invoke-static {v3}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->setThemeFontTypeFace(Landroid/graphics/Typeface;)V

    .line 229
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->refreshClock()V

    .line 230
    return-void

    .end local v1    # "festivalString":Ljava/lang/String;
    :cond_2
    move v3, v4

    .line 200
    goto/16 :goto_0

    .line 217
    .restart local v0    # "festivalIcon":I
    .restart local v1    # "festivalString":Ljava/lang/String;
    :cond_3
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mFestivalIcon:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 273
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 274
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->getSingleTTSMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 275
    return-void
.end method

.method public refreshClock()V
    .locals 8

    .prologue
    const/16 v7, 0x10

    const/16 v6, 0x11

    .line 168
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    .line 169
    .local v2, "locale":Ljava/lang/String;
    sget-object v3, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "refreshClock() , locale = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    invoke-static {}, Lcom/sec/android/cover/FeatureUtils;->isHProjectVariant()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mFestivalIcon:Landroid/widget/ImageView;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mFestivalIcon:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    .line 171
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mClockRoot:Landroid/widget/RelativeLayout;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 176
    :goto_0
    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mAmPm:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mFestivalIcon:Landroid/widget/ImageView;

    if-eqz v3, :cond_0

    .line 177
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mAmPm:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 179
    .local v0, "ampmParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mFestivalIcon:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 181
    .local v1, "festivalParams":Landroid/widget/RelativeLayout$LayoutParams;
    const-string v3, "ko_KR"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 182
    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 183
    sget v3, Lcom/sec/android/sviewcover/R$id;->digital_clock_time:I

    invoke-virtual {v0, v7, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 184
    sget v3, Lcom/sec/android/sviewcover/R$id;->digital_clock_time:I

    invoke-virtual {v1, v6, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 190
    :goto_1
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mAmPm:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 191
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mFestivalIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 193
    .end local v0    # "ampmParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v1    # "festivalParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    return-void

    .line 173
    :cond_1
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mClockRoot:Landroid/widget/RelativeLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setGravity(I)V

    goto :goto_0

    .line 186
    .restart local v0    # "ampmParams":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v1    # "festivalParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_2
    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 187
    sget v3, Lcom/sec/android/sviewcover/R$id;->digital_clock_time:I

    invoke-virtual {v0, v6, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 188
    sget v3, Lcom/sec/android/sviewcover/R$id;->digital_clock_ampm:I

    invoke-virtual {v1, v6, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_1
.end method
