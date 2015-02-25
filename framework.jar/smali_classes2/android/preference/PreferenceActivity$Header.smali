.class public final Landroid/preference/PreferenceActivity$Header;
.super Ljava/lang/Object;
.source "PreferenceActivity.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/preference/PreferenceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Header"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public breadCrumbShortTitle:Ljava/lang/CharSequence;

.field public breadCrumbShortTitleRes:I

.field public breadCrumbTitle:Ljava/lang/CharSequence;

.field public breadCrumbTitleRes:I

.field public extras:Landroid/os/Bundle;

.field public fragment:Ljava/lang/String;

.field public fragmentArguments:Landroid/os/Bundle;

.field public iconRes:I

.field public id:J

.field public intent:Landroid/content/Intent;

.field public summary:Ljava/lang/CharSequence;

.field public summaryDescription:Ljava/lang/CharSequence;

.field public summaryDescriptionRes:I

.field public summaryRes:I

.field public title:Ljava/lang/CharSequence;

.field public titleDescription:Ljava/lang/CharSequence;

.field public titleDescriptionRes:I

.field public titleRes:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 679
    new-instance v0, Landroid/preference/PreferenceActivity$Header$1;

    invoke-direct {v0}, Landroid/preference/PreferenceActivity$Header$1;-><init>()V

    sput-object v0, Landroid/preference/PreferenceActivity$Header;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 537
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 424
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    .line 539
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 675
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 424
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    .line 676
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceActivity$Header;->readFromParcel(Landroid/os/Parcel;)V

    .line 677
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 622
    const/4 v0, 0x0

    return v0
.end method

.method public getBreadCrumbShortTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 614
    iget v0, p0, Landroid/preference/PreferenceActivity$Header;->breadCrumbShortTitleRes:I

    if-eqz v0, :cond_0

    .line 615
    iget v0, p0, Landroid/preference/PreferenceActivity$Header;->breadCrumbShortTitleRes:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 617
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/preference/PreferenceActivity$Header;->breadCrumbShortTitle:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public getBreadCrumbTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 601
    iget v0, p0, Landroid/preference/PreferenceActivity$Header;->breadCrumbTitleRes:I

    if-eqz v0, :cond_0

    .line 602
    iget v0, p0, Landroid/preference/PreferenceActivity$Header;->breadCrumbTitleRes:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 604
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/preference/PreferenceActivity$Header;->breadCrumbTitle:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public getSummary(Landroid/content/res/Resources;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 574
    iget v0, p0, Landroid/preference/PreferenceActivity$Header;->summaryRes:I

    if-eqz v0, :cond_0

    .line 575
    iget v0, p0, Landroid/preference/PreferenceActivity$Header;->summaryRes:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 577
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/preference/PreferenceActivity$Header;->summary:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public getSummaryDescription(Landroid/content/res/Resources;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 589
    iget v0, p0, Landroid/preference/PreferenceActivity$Header;->summaryDescriptionRes:I

    if-eqz v0, :cond_0

    .line 590
    iget v0, p0, Landroid/preference/PreferenceActivity$Header;->summaryDescriptionRes:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 592
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/preference/PreferenceActivity$Header;->summaryDescription:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 547
    iget v0, p0, Landroid/preference/PreferenceActivity$Header;->titleRes:I

    if-eqz v0, :cond_0

    .line 548
    iget v0, p0, Landroid/preference/PreferenceActivity$Header;->titleRes:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 550
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public getTitleDescription(Landroid/content/res/Resources;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 562
    iget v0, p0, Landroid/preference/PreferenceActivity$Header;->titleDescriptionRes:I

    if-eqz v0, :cond_0

    .line 563
    iget v0, p0, Landroid/preference/PreferenceActivity$Header;->titleDescriptionRes:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 565
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/preference/PreferenceActivity$Header;->titleDescription:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 653
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    .line 654
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/preference/PreferenceActivity$Header;->titleRes:I

    .line 655
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    .line 656
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/preference/PreferenceActivity$Header;->summaryRes:I

    .line 657
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/preference/PreferenceActivity$Header;->summary:Ljava/lang/CharSequence;

    .line 658
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/preference/PreferenceActivity$Header;->breadCrumbTitleRes:I

    .line 659
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/preference/PreferenceActivity$Header;->breadCrumbTitle:Ljava/lang/CharSequence;

    .line 660
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/preference/PreferenceActivity$Header;->breadCrumbShortTitleRes:I

    .line 661
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/preference/PreferenceActivity$Header;->breadCrumbShortTitle:Ljava/lang/CharSequence;

    .line 662
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/preference/PreferenceActivity$Header;->titleDescriptionRes:I

    .line 663
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/preference/PreferenceActivity$Header;->titleDescription:Ljava/lang/CharSequence;

    .line 664
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/preference/PreferenceActivity$Header;->summaryDescriptionRes:I

    .line 665
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/preference/PreferenceActivity$Header;->summaryDescription:Ljava/lang/CharSequence;

    .line 666
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/preference/PreferenceActivity$Header;->iconRes:I

    .line 667
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 668
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    .line 669
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 670
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    .line 672
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    .line 673
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 627
    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 628
    iget v0, p0, Landroid/preference/PreferenceActivity$Header;->titleRes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 629
    iget-object v0, p0, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 630
    iget v0, p0, Landroid/preference/PreferenceActivity$Header;->summaryRes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 631
    iget-object v0, p0, Landroid/preference/PreferenceActivity$Header;->summary:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 632
    iget v0, p0, Landroid/preference/PreferenceActivity$Header;->breadCrumbTitleRes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 633
    iget-object v0, p0, Landroid/preference/PreferenceActivity$Header;->breadCrumbTitle:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 634
    iget v0, p0, Landroid/preference/PreferenceActivity$Header;->breadCrumbShortTitleRes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 635
    iget-object v0, p0, Landroid/preference/PreferenceActivity$Header;->breadCrumbShortTitle:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 636
    iget v0, p0, Landroid/preference/PreferenceActivity$Header;->titleDescriptionRes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 637
    iget-object v0, p0, Landroid/preference/PreferenceActivity$Header;->titleDescription:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 638
    iget v0, p0, Landroid/preference/PreferenceActivity$Header;->summaryDescriptionRes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 639
    iget-object v0, p0, Landroid/preference/PreferenceActivity$Header;->summaryDescription:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 640
    iget v0, p0, Landroid/preference/PreferenceActivity$Header;->iconRes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 641
    iget-object v0, p0, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 642
    iget-object v0, p0, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 643
    iget-object v0, p0, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 644
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 645
    iget-object v0, p0, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 649
    :goto_0
    iget-object v0, p0, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 650
    return-void

    .line 647
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method
