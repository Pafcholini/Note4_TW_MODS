.class public Landroid/hardware/scontext/SContextActivityNotificationExAttribute;
.super Landroid/hardware/scontext/SContextAttribute;
.source "SContextActivityNotificationExAttribute.java"


# static fields
.field private static final ACTIVITY_STATUS_MAX:I = 0x5

.field private static final TAG:Ljava/lang/String; = "SContextActivityNotificationExAttribute"


# instance fields
.field private mActivityFilter:[I

.field private mDuration:I


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    .line 34
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x4

    aput v2, v0, v1

    iput-object v0, p0, Landroid/hardware/scontext/SContextActivityNotificationExAttribute;->mActivityFilter:[I

    .line 38
    const/16 v0, 0x1e

    iput v0, p0, Landroid/hardware/scontext/SContextActivityNotificationExAttribute;->mDuration:I

    .line 44
    invoke-direct {p0}, Landroid/hardware/scontext/SContextActivityNotificationExAttribute;->setAttribute()V

    .line 45
    return-void
.end method

.method public constructor <init>([II)V
    .locals 3
    .param p1, "activityFilter"    # [I
    .param p2, "duration"    # I

    .prologue
    .line 67
    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    .line 34
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x4

    aput v2, v0, v1

    iput-object v0, p0, Landroid/hardware/scontext/SContextActivityNotificationExAttribute;->mActivityFilter:[I

    .line 38
    const/16 v0, 0x1e

    iput v0, p0, Landroid/hardware/scontext/SContextActivityNotificationExAttribute;->mDuration:I

    .line 68
    iput-object p1, p0, Landroid/hardware/scontext/SContextActivityNotificationExAttribute;->mActivityFilter:[I

    .line 69
    iput p2, p0, Landroid/hardware/scontext/SContextActivityNotificationExAttribute;->mDuration:I

    .line 70
    invoke-direct {p0}, Landroid/hardware/scontext/SContextActivityNotificationExAttribute;->setAttribute()V

    .line 71
    return-void
.end method

.method private setAttribute()V
    .locals 3

    .prologue
    .line 102
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 103
    .local v0, "attribute":Landroid/os/Bundle;
    const-string v1, "activity_filter"

    iget-object v2, p0, Landroid/hardware/scontext/SContextActivityNotificationExAttribute;->mActivityFilter:[I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 104
    const-string v1, "duration"

    iget v2, p0, Landroid/hardware/scontext/SContextActivityNotificationExAttribute;->mDuration:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 105
    const/16 v1, 0x1e

    invoke-super {p0, v1, v0}, Landroid/hardware/scontext/SContextAttribute;->setAttribute(ILandroid/os/Bundle;)V

    .line 106
    return-void
.end method


# virtual methods
.method checkAttribute()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 76
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 77
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Landroid/hardware/scontext/SContextActivityNotificationExAttribute;->mActivityFilter:[I

    array-length v4, v4

    if-ge v0, v4, :cond_4

    .line 78
    iget-object v4, p0, Landroid/hardware/scontext/SContextActivityNotificationExAttribute;->mActivityFilter:[I

    aget v4, v4, v0

    if-ltz v4, :cond_0

    iget-object v4, p0, Landroid/hardware/scontext/SContextActivityNotificationExAttribute;->mActivityFilter:[I

    aget v4, v4, v0

    const/4 v5, 0x5

    if-le v4, v5, :cond_1

    .line 80
    :cond_0
    iget-object v4, p0, Landroid/hardware/scontext/SContextActivityNotificationExAttribute;->mActivityFilter:[I

    aget v4, v4, v0

    const/16 v5, 0x1e

    if-eq v4, v5, :cond_1

    .line 81
    const-string v4, "SContextActivityNotificationExAttribute"

    const-string v5, "The activity status is wrong."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :goto_1
    return v3

    .line 85
    :cond_1
    iget-object v4, p0, Landroid/hardware/scontext/SContextActivityNotificationExAttribute;->mActivityFilter:[I

    aget v4, v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_2
    if-ge v1, v0, :cond_3

    .line 87
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-ne v4, v5, :cond_2

    .line 88
    const-string v4, "SContextActivityNotificationExAttribute"

    const-string v5, "This activity status cannot have duplicated status."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 86
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 77
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 94
    .end local v1    # "j":I
    :cond_4
    iget v4, p0, Landroid/hardware/scontext/SContextActivityNotificationExAttribute;->mDuration:I

    if-gez v4, :cond_5

    .line 95
    const-string v4, "SContextActivityNotificationExAttribute"

    const-string v5, "The duration is wrong."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 98
    :cond_5
    const/4 v3, 0x1

    goto :goto_1
.end method
