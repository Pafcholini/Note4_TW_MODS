.class Landroid/widget/AbsListView$TwSmoothScrollByMove;
.super Ljava/lang/Object;
.source "AbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TwSmoothScrollByMove"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/AbsListView;


# direct methods
.method private constructor <init>(Landroid/widget/AbsListView;)V
    .locals 0

    .prologue
    .line 6650
    iput-object p1, p0, Landroid/widget/AbsListView$TwSmoothScrollByMove;->this$0:Landroid/widget/AbsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/AbsListView;
    .param p2, "x1"    # Landroid/widget/AbsListView$1;

    .prologue
    .line 6650
    invoke-direct {p0, p1}, Landroid/widget/AbsListView$TwSmoothScrollByMove;-><init>(Landroid/widget/AbsListView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 6652
    iget-object v1, p0, Landroid/widget/AbsListView$TwSmoothScrollByMove;->this$0:Landroid/widget/AbsListView;

    invoke-static {v1}, Landroid/widget/AbsListView;->access$4000(Landroid/widget/AbsListView;)Landroid/widget/AbsListView$FlingRunnable;

    move-result-object v1

    invoke-static {v1}, Landroid/widget/AbsListView$FlingRunnable;->access$2100(Landroid/widget/AbsListView$FlingRunnable;)Landroid/widget/OverScroller;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6653
    iget-object v1, p0, Landroid/widget/AbsListView$TwSmoothScrollByMove;->this$0:Landroid/widget/AbsListView;

    invoke-static {v1}, Landroid/widget/AbsListView;->access$4100(Landroid/widget/AbsListView;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6661
    :goto_0
    return-void

    .line 6656
    :cond_0
    iget-object v1, p0, Landroid/widget/AbsListView$TwSmoothScrollByMove;->this$0:Landroid/widget/AbsListView;

    invoke-static {v1}, Landroid/widget/AbsListView;->access$4100(Landroid/widget/AbsListView;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 6657
    .local v0, "remain":I
    iget-object v1, p0, Landroid/widget/AbsListView$TwSmoothScrollByMove;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v1, v0, v2, v2}, Landroid/widget/AbsListView;->smoothScrollBy(IIZ)V

    .line 6660
    .end local v0    # "remain":I
    :cond_1
    iget-object v1, p0, Landroid/widget/AbsListView$TwSmoothScrollByMove;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v1, p0}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
