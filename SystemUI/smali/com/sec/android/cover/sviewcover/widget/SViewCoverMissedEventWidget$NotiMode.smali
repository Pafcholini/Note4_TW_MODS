.class public final enum Lcom/sec/android/cover/sviewcover/widget/SViewCoverMissedEventWidget$NotiMode;
.super Ljava/lang/Enum;
.source "SViewCoverMissedEventWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/sviewcover/widget/SViewCoverMissedEventWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NotiMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/android/cover/sviewcover/widget/SViewCoverMissedEventWidget$NotiMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/cover/sviewcover/widget/SViewCoverMissedEventWidget$NotiMode;

.field public static final enum MissedCall:Lcom/sec/android/cover/sviewcover/widget/SViewCoverMissedEventWidget$NotiMode;

.field public static final enum MissedEMail:Lcom/sec/android/cover/sviewcover/widget/SViewCoverMissedEventWidget$NotiMode;

.field public static final enum MissedMsg:Lcom/sec/android/cover/sviewcover/widget/SViewCoverMissedEventWidget$NotiMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 22
    new-instance v0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverMissedEventWidget$NotiMode;

    const-string v1, "MissedCall"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverMissedEventWidget$NotiMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverMissedEventWidget$NotiMode;->MissedCall:Lcom/sec/android/cover/sviewcover/widget/SViewCoverMissedEventWidget$NotiMode;

    new-instance v0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverMissedEventWidget$NotiMode;

    const-string v1, "MissedMsg"

    invoke-direct {v0, v1, v3}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverMissedEventWidget$NotiMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverMissedEventWidget$NotiMode;->MissedMsg:Lcom/sec/android/cover/sviewcover/widget/SViewCoverMissedEventWidget$NotiMode;

    new-instance v0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverMissedEventWidget$NotiMode;

    const-string v1, "MissedEMail"

    invoke-direct {v0, v1, v4}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverMissedEventWidget$NotiMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverMissedEventWidget$NotiMode;->MissedEMail:Lcom/sec/android/cover/sviewcover/widget/SViewCoverMissedEventWidget$NotiMode;

    .line 21
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sec/android/cover/sviewcover/widget/SViewCoverMissedEventWidget$NotiMode;

    sget-object v1, Lcom/sec/android/cover/sviewcover/widget/SViewCoverMissedEventWidget$NotiMode;->MissedCall:Lcom/sec/android/cover/sviewcover/widget/SViewCoverMissedEventWidget$NotiMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/android/cover/sviewcover/widget/SViewCoverMissedEventWidget$NotiMode;->MissedMsg:Lcom/sec/android/cover/sviewcover/widget/SViewCoverMissedEventWidget$NotiMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/android/cover/sviewcover/widget/SViewCoverMissedEventWidget$NotiMode;->MissedEMail:Lcom/sec/android/cover/sviewcover/widget/SViewCoverMissedEventWidget$NotiMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverMissedEventWidget$NotiMode;->$VALUES:[Lcom/sec/android/cover/sviewcover/widget/SViewCoverMissedEventWidget$NotiMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/cover/sviewcover/widget/SViewCoverMissedEventWidget$NotiMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 21
    const-class v0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverMissedEventWidget$NotiMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverMissedEventWidget$NotiMode;

    return-object v0
.end method

.method public static values()[Lcom/sec/android/cover/sviewcover/widget/SViewCoverMissedEventWidget$NotiMode;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverMissedEventWidget$NotiMode;->$VALUES:[Lcom/sec/android/cover/sviewcover/widget/SViewCoverMissedEventWidget$NotiMode;

    invoke-virtual {v0}, [Lcom/sec/android/cover/sviewcover/widget/SViewCoverMissedEventWidget$NotiMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/cover/sviewcover/widget/SViewCoverMissedEventWidget$NotiMode;

    return-object v0
.end method
