.class public Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;
.super Landroid/widget/LinearLayout;
.source "SViewCoverStylizedClockView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView$Counter;
    }
.end annotation


# static fields
.field private static final FORMAT_DATE_MDAY:Ljava/lang/String; = "d"

.field private static final FORMAT_TIME_12_HOURS:Ljava/lang/String; = "hh"

.field private static final FORMAT_TIME_12_TIME:Ljava/lang/String; = "hh:mm"

.field private static final FORMAT_TIME_24_HOURS:Ljava/lang/String; = "kk"

.field private static final FORMAT_TIME_24_TIME:Ljava/lang/String; = "kk:mm"

.field private static final FORMAT_TIME_AMPM:Ljava/lang/String; = "aa"

.field private static final FORMAT_TIME_MINUTES:Ljava/lang/String; = "mm"

.field private static final TAG:Ljava/lang/String; = "SViewCoverStylizedClockView"


# instance fields
.field private mAmPmKrTV:Landroid/widget/TextView;

.field private mAmPmTV:Landroid/widget/TextView;

.field private mCalendar:Ljava/util/Calendar;

.field private mCounter:Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView$Counter;

.field private mDateTV:Landroid/widget/TextView;

.field private mDayTV:Landroid/widget/TextView;

.field private mFestivalIcon:Landroid/widget/ImageView;

.field private mHoursTV:Landroid/widget/TextView;

.field private mIs24HTime:Z

.field private mIsFestivalEnabled:Z

.field private mManager:Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;

.field private mMinutesTV:Landroid/widget/TextView;

.field private mPointerHoursIV:Landroid/widget/ImageView;

.field private mPointerMinutesIV:Landroid/widget/ImageView;

.field private mPointerSecondsIV:Landroid/widget/ImageView;

.field private mRotateAnim:Landroid/view/animation/RotateAnimation;

.field private mTimeTV:Landroid/widget/TextView;

.field private mUpdateAnalogTime:Z

.field private mUpdateDateTime:Z

.field private mUpdateDigitalTime:Z

.field private mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 154
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mIs24HTime:Z

    .line 69
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mCalendar:Ljava/util/Calendar;

    .line 73
    new-instance v0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView$1;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView$1;-><init>(Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;)V

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    .line 155
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->init()V

    .line 156
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 149
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mIs24HTime:Z

    .line 69
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mCalendar:Ljava/util/Calendar;

    .line 73
    new-instance v0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView$1;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView$1;-><init>(Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;)V

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    .line 150
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->init()V

    .line 151
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 144
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mIs24HTime:Z

    .line 69
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mCalendar:Ljava/util/Calendar;

    .line 73
    new-instance v0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView$1;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView$1;-><init>(Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;)V

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    .line 145
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->init()V

    .line 146
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->updateTime()V

    return-void
.end method

.method static synthetic access$102(Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;
    .param p1, "x1"    # Z

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mIs24HTime:Z

    return p1
.end method

.method static synthetic access$200(Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mIsFestivalEnabled:Z

    return v0
.end method

.method static synthetic access$202(Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;
    .param p1, "x1"    # Z

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mIsFestivalEnabled:Z

    return p1
.end method

.method static synthetic access$300(Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mFestivalIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private getDateFormat()Ljava/lang/String;
    .locals 5

    .prologue
    .line 412
    const-string v0, ""

    .line 413
    .local v0, "dateFormat":Ljava/lang/String;
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->getCurrentDateFormat(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 414
    .local v3, "value":Ljava/lang/String;
    sget v1, Lcom/sec/android/sviewcover/R$string;->sview_cover_wday_month_day_no_year:I

    .line 415
    .local v1, "resId_MM_dd":I
    sget v2, Lcom/sec/android/sviewcover/R$string;->sview_cover_wday_day_month_no_year:I

    .line 417
    .local v2, "resId_dd_MM":I
    const-string v4, "yyyy-MM-dd"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "MM-dd-yyyy"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 418
    :cond_0
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 423
    :cond_1
    :goto_0
    return-object v0

    .line 419
    :cond_2
    const-string v4, "dd-MM-yyyy"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 420
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getTTSstylizedclock()Ljava/lang/String;
    .locals 10

    .prologue
    .line 246
    const-string v0, ""

    .line 247
    .local v0, "TTSMessage":Ljava/lang/String;
    const-string v2, ""

    .line 248
    .local v2, "dateFormat":Ljava/lang/String;
    const-string v5, ""

    .line 250
    .local v5, "value":Ljava/lang/String;
    iget-object v6, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->getCurrentDateFormat(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 252
    const-string v6, "yyyy-MM-dd"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "MM-dd-yyyy"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 253
    :cond_0
    iget-object v6, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mContext:Landroid/content/Context;

    sget v7, Lcom/sec/android/sviewcover/R$string;->full_wday_month_day_no_year:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 257
    :cond_1
    :goto_0
    iget-object v6, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mCalendar:Ljava/util/Calendar;

    invoke-static {v2, v6}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 260
    .local v3, "dateText":Ljava/lang/CharSequence;
    iget-object v6, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 261
    iget-boolean v6, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mIs24HTime:Z

    if-eqz v6, :cond_3

    .line 262
    const-string v6, "kk:mm"

    iget-object v7, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mCalendar:Ljava/util/Calendar;

    invoke-static {v6, v7}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 274
    .local v4, "mTTSTime":Ljava/lang/String;
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 275
    return-object v0

    .line 254
    .end local v3    # "dateText":Ljava/lang/CharSequence;
    .end local v4    # "mTTSTime":Ljava/lang/String;
    :cond_2
    const-string v6, "dd-MM-yyyy"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 255
    iget-object v6, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mContext:Landroid/content/Context;

    sget v7, Lcom/sec/android/sviewcover/R$string;->full_wday_day_month_no_year:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 265
    .restart local v3    # "dateText":Ljava/lang/CharSequence;
    :cond_3
    sget-object v6, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mTimeFormat:Ljava/lang/String;

    iget-object v7, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mCalendar:Ljava/util/Calendar;

    invoke-static {v6, v7}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 266
    .restart local v4    # "mTTSTime":Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 267
    .local v1, "currentLanguage":Ljava/lang/String;
    sget-object v6, Ljava/util/Locale;->KOREAN:Ljava/util/Locale;

    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 268
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AA"

    iget-object v8, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mCalendar:Ljava/util/Calendar;

    invoke-static {v7, v8}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 271
    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "AA"

    iget-object v8, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mCalendar:Ljava/util/Calendar;

    invoke-static {v7, v8}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method

.method private init()V
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mManager:Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;

    .line 160
    return-void
.end method

.method private updateAnalogTime()V
    .locals 14

    .prologue
    const/high16 v5, 0x42700000    # 60.0f

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v3, 0x1

    .line 359
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-virtual {v0, v12, v13}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 362
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mCalendar:Ljava/util/Calendar;

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 363
    .local v7, "hour":I
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mCalendar:Ljava/util/Calendar;

    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v9

    .line 364
    .local v9, "minutes":I
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mCalendar:Ljava/util/Calendar;

    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v11

    .line 366
    .local v11, "seconds":I
    mul-int/lit8 v0, v7, 0x3c

    add-int/2addr v0, v9

    mul-int/lit16 v0, v0, 0x168

    int-to-float v0, v0

    const/high16 v2, 0x44340000    # 720.0f

    div-float v8, v0, v2

    .line 367
    .local v8, "hoursAngle":F
    mul-int/lit16 v0, v9, 0x168

    int-to-float v0, v0

    div-float v10, v0, v5

    .line 368
    .local v10, "minutesAngle":F
    mul-int/lit16 v0, v11, 0x168

    int-to-float v0, v0

    div-float v1, v0, v5

    .line 371
    .local v1, "secondsAngle":F
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mPointerHoursIV:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 372
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mPointerHoursIV:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setRotation(F)V

    .line 374
    :cond_0
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mPointerMinutesIV:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 375
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mPointerMinutesIV:Landroid/widget/ImageView;

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setRotation(F)V

    .line 382
    :cond_1
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const v2, 0x3f333333    # 0.7f

    add-float/2addr v2, v1

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mRotateAnim:Landroid/view/animation/RotateAnimation;

    .line 384
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mRotateAnim:Landroid/view/animation/RotateAnimation;

    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 385
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mRotateAnim:Landroid/view/animation/RotateAnimation;

    const-wide/16 v4, 0xa

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 386
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mRotateAnim:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v3}, Landroid/view/animation/RotateAnimation;->setFillEnabled(Z)V

    .line 387
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mRotateAnim:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v3}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    .line 388
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mRotateAnim:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v3}, Landroid/view/animation/RotateAnimation;->setRepeatCount(I)V

    .line 389
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mRotateAnim:Landroid/view/animation/RotateAnimation;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/view/animation/RotateAnimation;->setRepeatMode(I)V

    .line 390
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mPointerSecondsIV:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mRotateAnim:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 391
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mPointerSecondsIV:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 392
    return-void
.end method

.method private updateDateTime()V
    .locals 6

    .prologue
    .line 396
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 399
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->getDateFormat()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mCalendar:Ljava/util/Calendar;

    invoke-static {v2, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 400
    .local v0, "date":Ljava/lang/String;
    const-string v2, "d"

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mCalendar:Ljava/util/Calendar;

    invoke-static {v2, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 403
    .local v1, "day":Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mDateTV:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 404
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mDateTV:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 406
    :cond_0
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mDayTV:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    .line 407
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mDayTV:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 409
    :cond_1
    return-void
.end method

.method private updateDigitalTime()V
    .locals 10

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x0

    .line 294
    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 296
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    .line 301
    .local v2, "locale":Ljava/util/Locale;
    const-string v5, "mm"

    iget-object v6, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mCalendar:Ljava/util/Calendar;

    invoke-static {v5, v6}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 302
    .local v3, "minutes":Ljava/lang/String;
    const-string v5, "aa"

    iget-object v6, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mCalendar:Ljava/util/Calendar;

    invoke-static {v5, v6}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 303
    .local v0, "amPm":Ljava/lang/String;
    iget-boolean v5, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mIs24HTime:Z

    if-eqz v5, :cond_8

    .line 304
    const-string v5, "kk:mm"

    iget-object v6, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mCalendar:Ljava/util/Calendar;

    invoke-static {v5, v6}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 305
    .local v4, "time":Ljava/lang/String;
    const-string v5, "kk"

    iget-object v6, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mCalendar:Ljava/util/Calendar;

    invoke-static {v5, v6}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 307
    .local v1, "hours":Ljava/lang/String;
    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mAmPmTV:Landroid/widget/TextView;

    if-eqz v5, :cond_0

    .line 308
    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mAmPmTV:Landroid/widget/TextView;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 310
    :cond_0
    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mAmPmKrTV:Landroid/widget/TextView;

    if-eqz v5, :cond_1

    .line 311
    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mAmPmKrTV:Landroid/widget/TextView;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 327
    :cond_1
    :goto_0
    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mMinutesTV:Landroid/widget/TextView;

    if-eqz v5, :cond_2

    .line 328
    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mMinutesTV:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 330
    :cond_2
    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mHoursTV:Landroid/widget/TextView;

    if-eqz v5, :cond_3

    .line 331
    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mHoursTV:Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 333
    :cond_3
    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mTimeTV:Landroid/widget/TextView;

    if-eqz v5, :cond_4

    .line 334
    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mTimeTV:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 336
    :cond_4
    iget-boolean v5, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mIs24HTime:Z

    if-nez v5, :cond_7

    .line 337
    sget-object v5, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-virtual {v5, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    sget-object v5, Ljava/util/Locale;->KOREAN:Ljava/util/Locale;

    invoke-virtual {v5, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 338
    :cond_5
    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mAmPmKrTV:Landroid/widget/TextView;

    if-eqz v5, :cond_7

    .line 339
    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mAmPmTV:Landroid/widget/TextView;

    if-eqz v5, :cond_6

    .line 340
    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mAmPmTV:Landroid/widget/TextView;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 342
    :cond_6
    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mAmPmKrTV:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 343
    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mAmPmKrTV:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 355
    :cond_7
    :goto_1
    return-void

    .line 314
    .end local v1    # "hours":Ljava/lang/String;
    .end local v4    # "time":Ljava/lang/String;
    :cond_8
    const-string v5, "hh:mm"

    iget-object v6, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mCalendar:Ljava/util/Calendar;

    invoke-static {v5, v6}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 315
    .restart local v4    # "time":Ljava/lang/String;
    const-string v5, "hh"

    iget-object v6, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mCalendar:Ljava/util/Calendar;

    invoke-static {v5, v6}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 318
    .restart local v1    # "hours":Ljava/lang/String;
    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mAmPmTV:Landroid/widget/TextView;

    if-eqz v5, :cond_9

    .line 319
    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mAmPmTV:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 321
    :cond_9
    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mAmPmKrTV:Landroid/widget/TextView;

    if-eqz v5, :cond_1

    .line 322
    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mAmPmKrTV:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 346
    :cond_a
    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mAmPmTV:Landroid/widget/TextView;

    if-eqz v5, :cond_7

    .line 347
    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mAmPmKrTV:Landroid/widget/TextView;

    if-eqz v5, :cond_b

    .line 348
    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mAmPmKrTV:Landroid/widget/TextView;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 350
    :cond_b
    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mAmPmTV:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 351
    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mAmPmTV:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private updateTime()V
    .locals 1

    .prologue
    .line 281
    iget-boolean v0, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mUpdateDigitalTime:Z

    if-eqz v0, :cond_0

    .line 282
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->updateDigitalTime()V

    .line 284
    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mUpdateAnalogTime:Z

    if-eqz v0, :cond_1

    .line 285
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->updateAnalogTime()V

    .line 287
    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mUpdateDateTime:Z

    if-eqz v0, :cond_2

    .line 288
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->updateDateTime()V

    .line 290
    :cond_2
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 6

    .prologue
    .line 164
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 165
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mIs24HTime:Z

    .line 166
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->updateStyle()V

    .line 168
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->registerCallback(Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;)V

    .line 170
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mCounter:Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView$Counter;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mCounter:Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView$Counter;

    invoke-virtual {v0}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView$Counter;->cancel()V

    .line 173
    :cond_0
    new-instance v0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView$Counter;

    const-wide/32 v2, 0xea60

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView$Counter;-><init>(Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;JJ)V

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mCounter:Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView$Counter;

    .line 174
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mCounter:Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView$Counter;

    invoke-virtual {v0}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView$Counter;->start()Landroid/os/CountDownTimer;

    .line 175
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 185
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 187
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->unregisterCallback(Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;)V

    .line 189
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mCounter:Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView$Counter;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mCounter:Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView$Counter;

    invoke-virtual {v0}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView$Counter;->cancel()V

    .line 192
    :cond_0
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 179
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 180
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->getTTSstylizedclock()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 181
    return-void
.end method

.method public final updateStyle()V
    .locals 9

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 195
    const-string v4, "SViewCoverStylizedClockView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Stylized clock style index = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mManager:Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;

    invoke-virtual {v8}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;->getCurrentStyleIndex()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->removeAllViews()V

    .line 198
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mManager:Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;

    invoke-virtual {v4}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;->getCurrentStyleResId()I

    move-result v3

    .line 199
    .local v3, "styleResId":I
    const/4 v4, -0x1

    if-eq v3, v4, :cond_5

    if-eqz v3, :cond_5

    .line 200
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 202
    .local v2, "style":Landroid/content/res/TypedArray;
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    iget-object v7, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mManager:Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;

    invoke-virtual {v7}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;->getCurrentStyleLayoutId()I

    move-result v7

    invoke-virtual {v4, v7, p0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 205
    sget v4, Lcom/sec/android/sviewcover/R$id;->clock_digital_minutes:I

    invoke-virtual {p0, v4}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mMinutesTV:Landroid/widget/TextView;

    .line 206
    sget v4, Lcom/sec/android/sviewcover/R$id;->clock_digital_hours:I

    invoke-virtual {p0, v4}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mHoursTV:Landroid/widget/TextView;

    .line 207
    sget v4, Lcom/sec/android/sviewcover/R$id;->clock_digital_time:I

    invoke-virtual {p0, v4}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mTimeTV:Landroid/widget/TextView;

    .line 208
    sget v4, Lcom/sec/android/sviewcover/R$id;->clock_digital_ampm:I

    invoke-virtual {p0, v4}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mAmPmTV:Landroid/widget/TextView;

    .line 209
    sget v4, Lcom/sec/android/sviewcover/R$id;->clock_digital_ampm_kr:I

    invoke-virtual {p0, v4}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mAmPmKrTV:Landroid/widget/TextView;

    .line 211
    sget v4, Lcom/sec/android/sviewcover/R$id;->clock_day:I

    invoke-virtual {p0, v4}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mDayTV:Landroid/widget/TextView;

    .line 212
    sget v4, Lcom/sec/android/sviewcover/R$id;->clock_date:I

    invoke-virtual {p0, v4}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mDateTV:Landroid/widget/TextView;

    .line 214
    sget v4, Lcom/sec/android/sviewcover/R$id;->clock_analog_pointer_hours:I

    invoke-virtual {p0, v4}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mPointerHoursIV:Landroid/widget/ImageView;

    .line 215
    sget v4, Lcom/sec/android/sviewcover/R$id;->clock_analog_pointer_minutes:I

    invoke-virtual {p0, v4}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mPointerMinutesIV:Landroid/widget/ImageView;

    .line 216
    sget v4, Lcom/sec/android/sviewcover/R$id;->clock_analog_pointer_seconds:I

    invoke-virtual {p0, v4}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mPointerSecondsIV:Landroid/widget/ImageView;

    .line 218
    sget v4, Lcom/sec/android/sviewcover/R$id;->festival_icon:I

    invoke-virtual {p0, v4}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mFestivalIcon:Landroid/widget/ImageView;

    .line 219
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverDatabaseManager;

    move-result-object v4

    const-string v7, "FestivalList"

    invoke-virtual {v4, v7}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 221
    .local v1, "festivalString":Ljava/lang/String;
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mFestivalIcon:Landroid/widget/ImageView;

    if-eqz v4, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 222
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mFestivalIcon:Landroid/widget/ImageView;

    const/16 v7, 0x8

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 223
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mContext:Landroid/content/Context;

    invoke-static {v4, v1}, Lcom/sec/android/cover/CoverUtils;->getFestivalIcon(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 224
    .local v0, "festivalIcon":I
    if-eqz v0, :cond_0

    .line 225
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mFestivalIcon:Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 226
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mFestivalIcon:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 232
    .end local v0    # "festivalIcon":I
    :cond_0
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mMinutesTV:Landroid/widget/TextView;

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mHoursTV:Landroid/widget/TextView;

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mTimeTV:Landroid/widget/TextView;

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mAmPmTV:Landroid/widget/TextView;

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mAmPmKrTV:Landroid/widget/TextView;

    if-eqz v4, :cond_6

    :cond_1
    move v4, v6

    :goto_0
    iput-boolean v4, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mUpdateDigitalTime:Z

    .line 234
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mDayTV:Landroid/widget/TextView;

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mDateTV:Landroid/widget/TextView;

    if-eqz v4, :cond_7

    :cond_2
    move v4, v6

    :goto_1
    iput-boolean v4, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mUpdateDateTime:Z

    .line 235
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mPointerHoursIV:Landroid/widget/ImageView;

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mPointerMinutesIV:Landroid/widget/ImageView;

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mPointerSecondsIV:Landroid/widget/ImageView;

    if-eqz v4, :cond_4

    :cond_3
    move v5, v6

    :cond_4
    iput-boolean v5, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mUpdateAnalogTime:Z

    .line 238
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 241
    .end local v1    # "festivalString":Ljava/lang/String;
    .end local v2    # "style":Landroid/content/res/TypedArray;
    :cond_5
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->getTTSstylizedclock()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 242
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->updateTime()V

    .line 243
    return-void

    .restart local v1    # "festivalString":Ljava/lang/String;
    .restart local v2    # "style":Landroid/content/res/TypedArray;
    :cond_6
    move v4, v5

    .line 232
    goto :goto_0

    :cond_7
    move v4, v5

    .line 234
    goto :goto_1
.end method
