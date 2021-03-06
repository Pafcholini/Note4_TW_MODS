.class public Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;
.super Ljava/lang/Object;
.source "CocktailBarStateInfo.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static FLAG_CHANGE_ACTIVATE:I

.field public static FLAG_CHANGE_BACKGROUND_TYPE:I

.field public static FLAG_CHANGE_LOCK_STATE:I

.field public static FLAG_CHANGE_MODE:I

.field public static FLAG_CHANGE_POSITION:I

.field public static FLAG_CHANGE_SHOW_TIMEOUT:I

.field public static FLAG_CHANGE_VISIBILITY:I


# instance fields
.field public activate:Z

.field public backgroundType:I

.field public changeFlag:I

.field public lockState:I

.field public mode:I

.field public position:I

.field public showTimeout:I

.field public visibility:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x1

    sput v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->FLAG_CHANGE_VISIBILITY:I

    .line 30
    const/4 v0, 0x2

    sput v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->FLAG_CHANGE_BACKGROUND_TYPE:I

    .line 32
    const/4 v0, 0x4

    sput v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->FLAG_CHANGE_POSITION:I

    .line 34
    const/16 v0, 0x8

    sput v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->FLAG_CHANGE_LOCK_STATE:I

    .line 36
    const/16 v0, 0x10

    sput v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->FLAG_CHANGE_MODE:I

    .line 38
    const/16 v0, 0x20

    sput v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->FLAG_CHANGE_SHOW_TIMEOUT:I

    .line 40
    const/16 v0, 0x40

    sput v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->FLAG_CHANGE_ACTIVATE:I

    .line 112
    new-instance v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo$1;

    invoke-direct {v0}, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo$1;-><init>()V

    sput-object v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "visibility"    # I

    .prologue
    const/4 v1, 0x0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->backgroundType:I

    .line 46
    iput v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->position:I

    .line 48
    iput v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    .line 50
    iput v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->mode:I

    .line 52
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->showTimeout:I

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->activate:Z

    .line 56
    iput v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->changeFlag:I

    .line 59
    iput p1, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->visibility:I

    .line 60
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->backgroundType:I

    .line 46
    iput v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->position:I

    .line 48
    iput v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    .line 50
    iput v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->mode:I

    .line 52
    const/4 v2, -0x1

    iput v2, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->showTimeout:I

    .line 54
    iput-boolean v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->activate:Z

    .line 56
    iput v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->changeFlag:I

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->visibility:I

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->backgroundType:I

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->position:I

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->mode:I

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->showTimeout:I

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->activate:Z

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->changeFlag:I

    .line 81
    return-void

    :cond_0
    move v0, v1

    .line 78
    goto :goto_0
.end method

.method public constructor <init>(Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;)V
    .locals 2
    .param p1, "stateInfo"    # Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    .prologue
    const/4 v1, 0x0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->backgroundType:I

    .line 46
    iput v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->position:I

    .line 48
    iput v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    .line 50
    iput v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->mode:I

    .line 52
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->showTimeout:I

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->activate:Z

    .line 56
    iput v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->changeFlag:I

    .line 63
    iget v0, p1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->visibility:I

    iput v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->visibility:I

    .line 64
    iget v0, p1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->backgroundType:I

    iput v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->backgroundType:I

    .line 65
    iget v0, p1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->position:I

    iput v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->position:I

    .line 66
    iget v0, p1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    iput v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    .line 67
    iget v0, p1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->showTimeout:I

    iput v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->showTimeout:I

    .line 68
    iget-boolean v0, p1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->activate:Z

    iput-boolean v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->activate:Z

    .line 69
    return-void
.end method


# virtual methods
.method public clone()Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;
    .locals 2

    .prologue
    .line 85
    new-instance v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->visibility:I

    invoke-direct {v0, v1}, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;-><init>(I)V

    .line 86
    .local v0, "stateInfo":Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;
    iget v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->backgroundType:I

    iput v1, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->backgroundType:I

    .line 87
    iget v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->position:I

    iput v1, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->position:I

    .line 88
    iget v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    iput v1, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    .line 89
    iget v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->mode:I

    iput v1, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->mode:I

    .line 90
    iget v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->showTimeout:I

    iput v1, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->showTimeout:I

    .line 91
    iget-boolean v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->activate:Z

    iput-boolean v1, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->activate:Z

    .line 92
    iget v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->changeFlag:I

    iput v1, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->changeFlag:I

    .line 93
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->clone()Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 102
    iget v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->visibility:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 103
    iget v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->backgroundType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 104
    iget v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->position:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 105
    iget v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    iget v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->mode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 107
    iget v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->showTimeout:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 108
    iget-boolean v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->activate:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 109
    iget v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->changeFlag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 110
    return-void

    .line 108
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
