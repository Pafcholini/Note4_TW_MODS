.class Landroid/sec/clipboard/ClipboardExManager$1;
.super Landroid/os/Handler;
.source "ClipboardExManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/sec/clipboard/ClipboardExManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/sec/clipboard/ClipboardExManager;


# direct methods
.method constructor <init>(Landroid/sec/clipboard/ClipboardExManager;)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Landroid/sec/clipboard/ClipboardExManager$1;->this$0:Landroid/sec/clipboard/ClipboardExManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const v3, 0x104071b

    const v2, 0x1040710

    const/4 v4, 0x0

    .line 148
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 187
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 150
    :pswitch_1
    iget-object v0, p0, Landroid/sec/clipboard/ClipboardExManager$1;->this$0:Landroid/sec/clipboard/ClipboardExManager;

    # getter for: Landroid/sec/clipboard/ClipboardExManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Landroid/sec/clipboard/ClipboardExManager;->access$000(Landroid/sec/clipboard/ClipboardExManager;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Landroid/sec/clipboard/ClipboardExManager$1;->this$0:Landroid/sec/clipboard/ClipboardExManager;

    # getter for: Landroid/sec/clipboard/ClipboardExManager;->mToast:Landroid/widget/Toast;
    invoke-static {v0}, Landroid/sec/clipboard/ClipboardExManager;->access$100(Landroid/sec/clipboard/ClipboardExManager;)Landroid/widget/Toast;

    move-result-object v0

    if-nez v0, :cond_1

    .line 153
    iget-object v0, p0, Landroid/sec/clipboard/ClipboardExManager$1;->this$0:Landroid/sec/clipboard/ClipboardExManager;

    iget-object v1, p0, Landroid/sec/clipboard/ClipboardExManager$1;->this$0:Landroid/sec/clipboard/ClipboardExManager;

    # getter for: Landroid/sec/clipboard/ClipboardExManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/sec/clipboard/ClipboardExManager;->access$000(Landroid/sec/clipboard/ClipboardExManager;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    # setter for: Landroid/sec/clipboard/ClipboardExManager;->mToast:Landroid/widget/Toast;
    invoke-static {v0, v1}, Landroid/sec/clipboard/ClipboardExManager;->access$102(Landroid/sec/clipboard/ClipboardExManager;Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 157
    :goto_1
    iget-object v0, p0, Landroid/sec/clipboard/ClipboardExManager$1;->this$0:Landroid/sec/clipboard/ClipboardExManager;

    # getter for: Landroid/sec/clipboard/ClipboardExManager;->mToast:Landroid/widget/Toast;
    invoke-static {v0}, Landroid/sec/clipboard/ClipboardExManager;->access$100(Landroid/sec/clipboard/ClipboardExManager;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 155
    :cond_1
    iget-object v0, p0, Landroid/sec/clipboard/ClipboardExManager$1;->this$0:Landroid/sec/clipboard/ClipboardExManager;

    # getter for: Landroid/sec/clipboard/ClipboardExManager;->mToast:Landroid/widget/Toast;
    invoke-static {v0}, Landroid/sec/clipboard/ClipboardExManager;->access$100(Landroid/sec/clipboard/ClipboardExManager;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Toast;->setText(I)V

    goto :goto_1

    .line 161
    :pswitch_2
    iget-object v0, p0, Landroid/sec/clipboard/ClipboardExManager$1;->this$0:Landroid/sec/clipboard/ClipboardExManager;

    # getter for: Landroid/sec/clipboard/ClipboardExManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Landroid/sec/clipboard/ClipboardExManager;->access$000(Landroid/sec/clipboard/ClipboardExManager;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Landroid/sec/clipboard/ClipboardExManager$1;->this$0:Landroid/sec/clipboard/ClipboardExManager;

    iget-object v1, p0, Landroid/sec/clipboard/ClipboardExManager$1;->this$0:Landroid/sec/clipboard/ClipboardExManager;

    invoke-virtual {v1}, Landroid/sec/clipboard/ClipboardExManager;->getPersonaId()I

    move-result v1

    # invokes: Landroid/sec/clipboard/ClipboardExManager;->isClipboardAllowed(ZI)I
    invoke-static {v0, v4, v1}, Landroid/sec/clipboard/ClipboardExManager;->access$200(Landroid/sec/clipboard/ClipboardExManager;ZI)I

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Landroid/sec/clipboard/ClipboardExManager$1;->this$0:Landroid/sec/clipboard/ClipboardExManager;

    # getter for: Landroid/sec/clipboard/ClipboardExManager;->mToast:Landroid/widget/Toast;
    invoke-static {v0}, Landroid/sec/clipboard/ClipboardExManager;->access$100(Landroid/sec/clipboard/ClipboardExManager;)Landroid/widget/Toast;

    move-result-object v0

    if-nez v0, :cond_2

    .line 170
    iget-object v0, p0, Landroid/sec/clipboard/ClipboardExManager$1;->this$0:Landroid/sec/clipboard/ClipboardExManager;

    iget-object v1, p0, Landroid/sec/clipboard/ClipboardExManager$1;->this$0:Landroid/sec/clipboard/ClipboardExManager;

    # getter for: Landroid/sec/clipboard/ClipboardExManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/sec/clipboard/ClipboardExManager;->access$000(Landroid/sec/clipboard/ClipboardExManager;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    # setter for: Landroid/sec/clipboard/ClipboardExManager;->mToast:Landroid/widget/Toast;
    invoke-static {v0, v1}, Landroid/sec/clipboard/ClipboardExManager;->access$102(Landroid/sec/clipboard/ClipboardExManager;Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 174
    :goto_2
    iget-object v0, p0, Landroid/sec/clipboard/ClipboardExManager$1;->this$0:Landroid/sec/clipboard/ClipboardExManager;

    # getter for: Landroid/sec/clipboard/ClipboardExManager;->mToast:Landroid/widget/Toast;
    invoke-static {v0}, Landroid/sec/clipboard/ClipboardExManager;->access$100(Landroid/sec/clipboard/ClipboardExManager;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 175
    sget-boolean v0, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ClipboardServiceEx"

    const-string v1, "Fail set data "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 172
    :cond_2
    iget-object v0, p0, Landroid/sec/clipboard/ClipboardExManager$1;->this$0:Landroid/sec/clipboard/ClipboardExManager;

    # getter for: Landroid/sec/clipboard/ClipboardExManager;->mToast:Landroid/widget/Toast;
    invoke-static {v0}, Landroid/sec/clipboard/ClipboardExManager;->access$100(Landroid/sec/clipboard/ClipboardExManager;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Toast;->setText(I)V

    goto :goto_2

    .line 182
    :pswitch_3
    iget-object v0, p0, Landroid/sec/clipboard/ClipboardExManager$1;->this$0:Landroid/sec/clipboard/ClipboardExManager;

    # getter for: Landroid/sec/clipboard/ClipboardExManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Landroid/sec/clipboard/ClipboardExManager;->access$000(Landroid/sec/clipboard/ClipboardExManager;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroid/sec/clipboard/ClipboardExManager$1;->this$0:Landroid/sec/clipboard/ClipboardExManager;

    # getter for: Landroid/sec/clipboard/ClipboardExManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/sec/clipboard/ClipboardExManager;->access$000(Landroid/sec/clipboard/ClipboardExManager;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x104071c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/16 v3, 0xa

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 148
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
