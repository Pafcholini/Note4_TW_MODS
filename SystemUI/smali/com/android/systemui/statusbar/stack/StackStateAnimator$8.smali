.class Lcom/android/systemui/statusbar/stack/StackStateAnimator$8;
.super Landroid/animation/AnimatorListenerAdapter;
.source "StackStateAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/stack/StackStateAnimator;->startYTranslationAnimation(Lcom/android/systemui/statusbar/ExpandableView;Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/stack/StackStateAnimator;

.field final synthetic val$child:Lcom/android/systemui/statusbar/ExpandableView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/stack/StackStateAnimator;Lcom/android/systemui/statusbar/ExpandableView;)V
    .locals 0

    .prologue
    .line 605
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator$8;->this$0:Lcom/android/systemui/statusbar/stack/StackStateAnimator;

    iput-object p2, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator$8;->val$child:Lcom/android/systemui/statusbar/ExpandableView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v2, 0x0

    .line 608
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator$8;->val$child:Lcom/android/systemui/statusbar/ExpandableView;

    const v1, 0x7f0e0032

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    .line 609
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator$8;->val$child:Lcom/android/systemui/statusbar/ExpandableView;

    const v1, 0x7f0e003e

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    .line 610
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator$8;->val$child:Lcom/android/systemui/statusbar/ExpandableView;

    const v1, 0x7f0e0038

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    .line 611
    return-void
.end method
