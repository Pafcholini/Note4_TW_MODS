.class public Lcom/samsung/android/airbutton/AirButtonImpl$OnStateChangedListenerImpl;
.super Ljava/lang/Object;
.source "AirButtonImpl.java"

# interfaces
.implements Lcom/samsung/android/airbutton/AirButtonImpl$OnStateChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/airbutton/AirButtonImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OnStateChangedListenerImpl"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2010
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 0

    .prologue
    .line 2028
    return-void
.end method

.method public onDismiss(Landroid/view/View;)V
    .locals 0
    .param p1, "parentView"    # Landroid/view/View;

    .prologue
    .line 2046
    return-void
.end method

.method public onHide()V
    .locals 0

    .prologue
    .line 2022
    return-void
.end method

.method public onHide(Landroid/view/View;)V
    .locals 0
    .param p1, "parentView"    # Landroid/view/View;

    .prologue
    .line 2040
    return-void
.end method

.method public onShow()V
    .locals 0

    .prologue
    .line 2016
    return-void
.end method

.method public onShow(Landroid/view/View;)V
    .locals 0
    .param p1, "parentView"    # Landroid/view/View;

    .prologue
    .line 2034
    return-void
.end method
