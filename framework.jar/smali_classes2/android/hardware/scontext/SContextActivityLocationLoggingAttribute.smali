.class public Landroid/hardware/scontext/SContextActivityLocationLoggingAttribute;
.super Landroid/hardware/scontext/SContextAttribute;
.source "SContextActivityLocationLoggingAttribute.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SContextActivityLocationLoggingAttribute"


# instance fields
.field private mAreaRadius:I

.field private mLppResolution:I

.field private mStayingRadius:I

.field private mStopPeriod:I

.field private mWaitPeriod:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    .line 30
    const/16 v0, 0x3c

    iput v0, p0, Landroid/hardware/scontext/SContextActivityLocationLoggingAttribute;->mStopPeriod:I

    .line 32
    const/16 v0, 0x78

    iput v0, p0, Landroid/hardware/scontext/SContextActivityLocationLoggingAttribute;->mWaitPeriod:I

    .line 34
    const/16 v0, 0x32

    iput v0, p0, Landroid/hardware/scontext/SContextActivityLocationLoggingAttribute;->mStayingRadius:I

    .line 36
    const/16 v0, 0x96

    iput v0, p0, Landroid/hardware/scontext/SContextActivityLocationLoggingAttribute;->mAreaRadius:I

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/scontext/SContextActivityLocationLoggingAttribute;->mLppResolution:I

    .line 44
    invoke-direct {p0}, Landroid/hardware/scontext/SContextActivityLocationLoggingAttribute;->setAttribute()V

    .line 45
    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 1
    .param p1, "stopPeriod"    # I
    .param p2, "waitPeriod"    # I
    .param p3, "statyingRadius"    # I
    .param p4, "areaRadius"    # I
    .param p5, "lppResolution"    # I

    .prologue
    .line 72
    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    .line 30
    const/16 v0, 0x3c

    iput v0, p0, Landroid/hardware/scontext/SContextActivityLocationLoggingAttribute;->mStopPeriod:I

    .line 32
    const/16 v0, 0x78

    iput v0, p0, Landroid/hardware/scontext/SContextActivityLocationLoggingAttribute;->mWaitPeriod:I

    .line 34
    const/16 v0, 0x32

    iput v0, p0, Landroid/hardware/scontext/SContextActivityLocationLoggingAttribute;->mStayingRadius:I

    .line 36
    const/16 v0, 0x96

    iput v0, p0, Landroid/hardware/scontext/SContextActivityLocationLoggingAttribute;->mAreaRadius:I

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/scontext/SContextActivityLocationLoggingAttribute;->mLppResolution:I

    .line 73
    iput p1, p0, Landroid/hardware/scontext/SContextActivityLocationLoggingAttribute;->mStopPeriod:I

    .line 74
    iput p2, p0, Landroid/hardware/scontext/SContextActivityLocationLoggingAttribute;->mWaitPeriod:I

    .line 75
    iput p3, p0, Landroid/hardware/scontext/SContextActivityLocationLoggingAttribute;->mStayingRadius:I

    .line 76
    iput p4, p0, Landroid/hardware/scontext/SContextActivityLocationLoggingAttribute;->mAreaRadius:I

    .line 77
    iput p5, p0, Landroid/hardware/scontext/SContextActivityLocationLoggingAttribute;->mLppResolution:I

    .line 78
    invoke-direct {p0}, Landroid/hardware/scontext/SContextActivityLocationLoggingAttribute;->setAttribute()V

    .line 79
    return-void
.end method

.method private setAttribute()V
    .locals 3

    .prologue
    .line 109
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 110
    .local v0, "attribute":Landroid/os/Bundle;
    const-string/jumbo v1, "stop_period"

    iget v2, p0, Landroid/hardware/scontext/SContextActivityLocationLoggingAttribute;->mStopPeriod:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 111
    const-string/jumbo v1, "wait_period"

    iget v2, p0, Landroid/hardware/scontext/SContextActivityLocationLoggingAttribute;->mWaitPeriod:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 112
    const-string/jumbo v1, "staying_radius"

    iget v2, p0, Landroid/hardware/scontext/SContextActivityLocationLoggingAttribute;->mStayingRadius:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 113
    const-string v1, "area_radius"

    iget v2, p0, Landroid/hardware/scontext/SContextActivityLocationLoggingAttribute;->mAreaRadius:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 114
    const-string v1, "lpp_resolution"

    iget v2, p0, Landroid/hardware/scontext/SContextActivityLocationLoggingAttribute;->mLppResolution:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 115
    const/16 v1, 0x18

    invoke-super {p0, v1, v0}, Landroid/hardware/scontext/SContextAttribute;->setAttribute(ILandroid/os/Bundle;)V

    .line 116
    return-void
.end method


# virtual methods
.method checkAttribute()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 84
    iget v1, p0, Landroid/hardware/scontext/SContextActivityLocationLoggingAttribute;->mStopPeriod:I

    if-gez v1, :cond_0

    .line 85
    const-string v1, "SContextActivityLocationLoggingAttribute"

    const-string v2, "The stop period is wrong."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :goto_0
    return v0

    .line 88
    :cond_0
    iget v1, p0, Landroid/hardware/scontext/SContextActivityLocationLoggingAttribute;->mWaitPeriod:I

    if-gez v1, :cond_1

    .line 89
    const-string v1, "SContextActivityLocationLoggingAttribute"

    const-string v2, "The wait period is wrong."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 92
    :cond_1
    iget v1, p0, Landroid/hardware/scontext/SContextActivityLocationLoggingAttribute;->mStayingRadius:I

    if-gez v1, :cond_2

    .line 93
    const-string v1, "SContextActivityLocationLoggingAttribute"

    const-string v2, "The staying radius is wrong."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 96
    :cond_2
    iget v1, p0, Landroid/hardware/scontext/SContextActivityLocationLoggingAttribute;->mAreaRadius:I

    if-gez v1, :cond_3

    .line 97
    const-string v1, "SContextActivityLocationLoggingAttribute"

    const-string v2, "The area radius is wrong."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 100
    :cond_3
    iget v1, p0, Landroid/hardware/scontext/SContextActivityLocationLoggingAttribute;->mLppResolution:I

    if-ltz v1, :cond_4

    iget v1, p0, Landroid/hardware/scontext/SContextActivityLocationLoggingAttribute;->mLppResolution:I

    const/4 v2, 0x2

    if-le v1, v2, :cond_5

    .line 102
    :cond_4
    const-string v1, "SContextActivityLocationLoggingAttribute"

    const-string v2, "The lpp resolution is wrong."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 105
    :cond_5
    const/4 v0, 0x1

    goto :goto_0
.end method
