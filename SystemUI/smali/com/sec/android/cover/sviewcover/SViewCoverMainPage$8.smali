.class Lcom/sec/android/cover/sviewcover/SViewCoverMainPage$8;
.super Ljava/lang/Object;
.source "SViewCoverMainPage.java"

# interfaces
.implements Landroid/view/View$OnHoverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;


# direct methods
.method constructor <init>(Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;)V
    .locals 0

    .prologue
    .line 282
    iput-object p1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage$8;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 285
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 286
    invoke-virtual {p1}, Landroid/view/View;->requestAccessibilityFocus()Z

    .line 287
    const/4 v0, 0x0

    return v0
.end method
