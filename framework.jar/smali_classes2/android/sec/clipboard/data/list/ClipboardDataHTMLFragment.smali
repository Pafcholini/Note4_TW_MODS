.class public Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;
.super Landroid/sec/clipboard/data/ClipboardData;
.source "ClipboardDataHTMLFragment.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mFirstImg:Landroid/graphics/Bitmap;

.field private mFirstImgPath:Ljava/lang/String;

.field private mValue:Ljava/lang/String;

.field private mValuePlainText:Ljava/lang/String;

.field private mValueUrl:Ljava/lang/String;

.field private regex:Ljava/lang/String;

.field private regex2:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/sec/clipboard/data/ClipboardData;-><init>(I)V

    .line 49
    const-string v0, ""

    iput-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->mValue:Ljava/lang/String;

    .line 50
    const-string v0, ""

    iput-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->mValueUrl:Ljava/lang/String;

    .line 51
    const-string v0, ""

    iput-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->mValuePlainText:Ljava/lang/String;

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->mFirstImg:Landroid/graphics/Bitmap;

    .line 53
    const-string v0, ""

    iput-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->mFirstImgPath:Ljava/lang/String;

    .line 54
    const-string v0, "<(/)?([a-zA-Z]*)(\\s[a-zA-Z]*=[^>]*)?(\\s)*(/)?>"

    iput-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->regex:Ljava/lang/String;

    .line 55
    const-string v0, "(?i)<[^/bpd][^>]*>|<p[a-z][^>]*>|<br[a-z][^>]*>|<d[^i][^v][^>]*>|<div[a-z][^>]*>|</[^bpd]+>|</p[a-z]+>|</br[a-z]+>|</d[^i][^v]+>|</div[a-z]+>"

    iput-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->regex2:Ljava/lang/String;

    .line 62
    return-void
.end method


# virtual methods
.method public GetFirstImgPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 516
    iget-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->mFirstImgPath:Ljava/lang/String;

    return-object v0
.end method

.method public GetHTMLFragment()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method public GetHTMLUrl()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->mValueUrl:Ljava/lang/String;

    return-object v0
.end method

.method public SetAlternateFormat(ILandroid/sec/clipboard/data/ClipboardData;)Z
    .locals 4
    .param p1, "format"    # I
    .param p2, "altData"    # Landroid/sec/clipboard/data/ClipboardData;

    .prologue
    .line 75
    invoke-super {p0, p1, p2}, Landroid/sec/clipboard/data/ClipboardData;->SetAlternateFormat(ILandroid/sec/clipboard/data/ClipboardData;)Z

    move-result v0

    .line 76
    .local v0, "Result":Z
    if-eqz v0, :cond_0

    iget-object v2, p0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->mValue:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_1

    :cond_0
    move v1, v0

    .line 124
    .end local v0    # "Result":Z
    .end local p2    # "altData":Landroid/sec/clipboard/data/ClipboardData;
    .local v1, "Result":Z
    :goto_0
    return v1

    .line 79
    .end local v1    # "Result":Z
    .restart local v0    # "Result":Z
    .restart local p2    # "altData":Landroid/sec/clipboard/data/ClipboardData;
    :cond_1
    packed-switch p1, :pswitch_data_0

    .end local p2    # "altData":Landroid/sec/clipboard/data/ClipboardData;
    :goto_1
    move v1, v0

    .line 124
    .end local v0    # "Result":Z
    .restart local v1    # "Result":Z
    goto :goto_0

    .line 84
    .end local v1    # "Result":Z
    .restart local v0    # "Result":Z
    .restart local p2    # "altData":Landroid/sec/clipboard/data/ClipboardData;
    :pswitch_0
    check-cast p2, Landroid/sec/clipboard/data/list/ClipboardDataText;

    .end local p2    # "altData":Landroid/sec/clipboard/data/ClipboardData;
    iget-object v2, p0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->mValuePlainText:Ljava/lang/String;

    invoke-virtual {p2, v2}, Landroid/sec/clipboard/data/list/ClipboardDataText;->SetText(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 86
    goto :goto_1

    .line 88
    .restart local p2    # "altData":Landroid/sec/clipboard/data/ClipboardData;
    :pswitch_1
    const/4 v0, 0x0

    .line 89
    goto :goto_1

    .line 94
    :pswitch_2
    check-cast p2, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;

    .end local p2    # "altData":Landroid/sec/clipboard/data/ClipboardData;
    iget-object v2, p0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->mValue:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->mFirstImgPath:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->SetHTMLFragmentWithImagePath(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 95
    goto :goto_1

    .line 99
    .restart local p2    # "altData":Landroid/sec/clipboard/data/ClipboardData;
    :pswitch_3
    const/4 v0, 0x0

    .line 100
    goto :goto_1

    .line 103
    :pswitch_4
    const/4 v0, 0x0

    .line 104
    goto :goto_1

    .line 108
    :pswitch_5
    const/4 v0, 0x0

    .line 109
    goto :goto_1

    .line 113
    :pswitch_6
    const/4 v0, 0x0

    .line 114
    goto :goto_1

    .line 117
    :pswitch_7
    const/4 v0, 0x0

    .line 118
    goto :goto_1

    .line 120
    :pswitch_8
    const/4 v0, 0x0

    goto :goto_1

    .line 79
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public SetFirstImgPath(Ljava/lang/String;)Z
    .locals 6
    .param p1, "FilePath"    # Ljava/lang/String;

    .prologue
    .line 493
    sget-boolean v3, Landroid/sec/clipboard/data/ClipboardDefine;->INFO_DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "ClipboardServiceEx"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SetFirstImgPath :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    :cond_0
    const/4 v0, 0x0

    .line 495
    .local v0, "Result":Z
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ge v3, v4, :cond_2

    :cond_1
    move v1, v0

    .line 507
    .end local v0    # "Result":Z
    .local v1, "Result":I
    :goto_0
    return v1

    .line 498
    .end local v1    # "Result":I
    .restart local v0    # "Result":Z
    :cond_2
    iput-object p1, p0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->mFirstImgPath:Ljava/lang/String;

    .line 500
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 501
    .local v2, "tempFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 502
    const/4 v0, 0x1

    :cond_3
    :goto_1
    move v1, v0

    .line 507
    .restart local v1    # "Result":I
    goto :goto_0

    .line 504
    .end local v1    # "Result":I
    :cond_4
    sget-boolean v3, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v3, :cond_3

    const-string v3, "ClipboardServiceEx"

    const-string v4, "ClipboardDataHTMLFragment : value is no file path ..check plz"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public SetHTMLFragment(Ljava/lang/CharSequence;)Z
    .locals 3
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    const/high16 v2, 0x20000

    const/4 v0, 0x0

    .line 153
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 171
    :cond_0
    :goto_0
    return v0

    .line 156
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-le v1, v2, :cond_2

    invoke-interface {p1, v0, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    .line 158
    :cond_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->mValue:Ljava/lang/String;

    .line 159
    sget-boolean v0, Landroid/sec/clipboard/data/ClipboardDefine;->INFO_DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "ClipboardServiceEx"

    iget-object v1, p0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->mValue:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :cond_3
    iget-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->mValue:Ljava/lang/String;

    iget-object v1, p0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->regex2:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->mValuePlainText:Ljava/lang/String;

    .line 163
    iget-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->mValuePlainText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->mValuePlainText:Ljava/lang/String;

    .line 165
    sget-boolean v0, Landroid/sec/clipboard/data/ClipboardDefine;->INFO_DEBUG:Z

    if-eqz v0, :cond_4

    const-string v0, "ClipboardServiceEx"

    iget-object v1, p0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->mValuePlainText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :cond_4
    iget-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->mFirstImg:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_5

    .line 169
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->mFirstImg:Landroid/graphics/Bitmap;

    .line 171
    :cond_5
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public SetHTMLFragment(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 3
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "HtmlUrl"    # Ljava/lang/CharSequence;

    .prologue
    .line 224
    sget-boolean v0, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ClipboardServiceEx"

    const-string v1, "SetHTMLFragment( CharSequence text , CharSequence HtmlUrl )"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 227
    :cond_1
    const/4 v0, 0x0

    .line 250
    :goto_0
    return v0

    .line 229
    :cond_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->mValue:Ljava/lang/String;

    .line 230
    sget-boolean v0, Landroid/sec/clipboard/data/ClipboardDefine;->INFO_DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "ClipboardServiceEx"

    iget-object v1, p0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->mValue:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    :cond_3
    if-eqz p2, :cond_5

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_5

    .line 235
    sget-boolean v0, Landroid/sec/clipboard/data/ClipboardDefine;->INFO_DEBUG:Z

    if-eqz v0, :cond_4

    const-string v0, "ClipboardServiceEx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HtmlUrl ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    :cond_4
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->mValueUrl:Ljava/lang/String;

    .line 241
    :cond_5
    iget-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->mValue:Ljava/lang/String;

    iget-object v1, p0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->regex2:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->mValuePlainText:Ljava/lang/String;

    .line 242
    iget-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->mValuePlainText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->mValuePlainText:Ljava/lang/String;

    .line 244
    sget-boolean v0, Landroid/sec/clipboard/data/ClipboardDefine;->INFO_DEBUG:Z

    if-eqz v0, :cond_6

    const-string v0, "ClipboardServiceEx"

    iget-object v1, p0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->mValuePlainText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    :cond_6
    iget-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->mFirstImg:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_7

    .line 248
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->mFirstImg:Landroid/graphics/Bitmap;

    .line 250
    :cond_7
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public SetHTMLFragmentWithImagePath(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 5
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "filePath"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v1, 0x1

    .line 183
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 184
    :cond_0
    const/4 v1, 0x0

    .line 212
    :cond_1
    :goto_0
    return v1

    .line 186
    :cond_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->mValue:Ljava/lang/String;

    .line 187
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardDefine;->INFO_DEBUG:Z

    if-eqz v2, :cond_3

    const-string v2, "ClipboardServiceEx"

    iget-object v3, p0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->mValue:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :cond_3
    iget-object v2, p0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->mValue:Ljava/lang/String;

    iget-object v3, p0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->regex2:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->mValuePlainText:Ljava/lang/String;

    .line 191
    iget-object v2, p0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->mValuePlainText:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->mValuePlainText:Ljava/lang/String;

    .line 193
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardDefine;->INFO_DEBUG:Z

    if-eqz v2, :cond_4

    const-string v2, "ClipboardServiceEx"

    iget-object v3, p0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->mValuePlainText:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :cond_4
    iget-object v2, p0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->mFirstImg:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_5

    .line 197
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->mFirstImg:Landroid/graphics/Bitmap;

    .line 199
    :cond_5
    if-eqz p2, :cond_6

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v2, v1, :cond_7

    .line 200
    :cond_6
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "ClipboardServiceEx"

    const-string v3, "filePath is null"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 202
    :cond_7
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardDefine;->INFO_DEBUG:Z

    if-eqz v2, :cond_8

    const-string v2, "ClipboardServiceEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "filePath is NOT null. filePath :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    :cond_8
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->mFirstImgPath:Ljava/lang/String;

    .line 204
    new-instance v0, Ljava/io/File;

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 205
    .local v0, "tempFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 206
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "ClipboardServiceEx"

    const-string v3, "SetHTMLFragmentWithImagePath : value is GOOD file path."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 208
    :cond_9
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "ClipboardServiceEx"

    const-string v3, "SetHTMLFragmentWithImagePath : value is no file path ..check plz"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public clearData()V
    .locals 1

    .prologue
    .line 134
    const-string v0, ""

    iput-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->mValue:Ljava/lang/String;

    .line 137
    const-string v0, ""

    iput-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->mValuePlainText:Ljava/lang/String;

    .line 141
    const-string v0, ""

    iput-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->mValueUrl:Ljava/lang/String;

    .line 143
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 414
    sget-boolean v3, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "ClipboardServiceEx"

    const-string v4, "html equals"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    :cond_0
    const/4 v0, 0x0

    .line 416
    .local v0, "Result":Z
    invoke-super {p0, p1}, Landroid/sec/clipboard/data/ClipboardData;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    move v1, v0

    .line 426
    .end local v0    # "Result":Z
    .local v1, "Result":I
    :goto_0
    return v1

    .line 419
    .end local v1    # "Result":I
    .restart local v0    # "Result":Z
    :cond_1
    instance-of v3, p1, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;

    if-nez v3, :cond_2

    move v1, v0

    .line 420
    .restart local v1    # "Result":I
    goto :goto_0

    .end local v1    # "Result":I
    :cond_2
    move-object v2, p1

    .line 422
    check-cast v2, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;

    .line 424
    .local v2, "trgData":Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;
    iget-object v3, p0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->mValue:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->GetHTMLFragment()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_3

    const/4 v0, 0x1

    :goto_1
    move v1, v0

    .line 426
    .restart local v1    # "Result":I
    goto :goto_0

    .line 424
    .end local v1    # "Result":I
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getClipHtmlImageFilePath()Ljava/lang/String;
    .locals 6

    .prologue
    .line 349
    const-string v1, ""

    .line 351
    .local v1, "sFileName":Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->mValue:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ge v3, v4, :cond_1

    .line 352
    sget-boolean v3, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "ClipboardServiceEx"

    const-string v4, "getClipHtmlImageFilePath : Data is empty."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object v2, v1

    .line 363
    .end local v1    # "sFileName":Ljava/lang/String;
    .local v2, "sFileName":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 355
    .end local v2    # "sFileName":Ljava/lang/String;
    .restart local v1    # "sFileName":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->mValue:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/sec/clipboard/util/ClipboardProcText;->getImgFileNameFormHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 358
    if-eqz v1, :cond_2

    .line 359
    invoke-static {v1}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :cond_2
    :goto_1
    move-object v2, v1

    .line 363
    .end local v1    # "sFileName":Ljava/lang/String;
    .restart local v2    # "sFileName":Ljava/lang/String;
    goto :goto_0

    .line 360
    .end local v2    # "sFileName":Ljava/lang/String;
    .restart local v1    # "sFileName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 361
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v3, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v3, :cond_2

    const-string v3, "ClipboardServiceEx"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getHtmlImageFilePath : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getDimensionsFromHTML(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "aInput"    # Ljava/lang/String;

    .prologue
    .line 373
    const-string v2, ""

    .line 375
    .local v2, "lDimen":Ljava/lang/String;
    :try_start_0
    iget-object v7, p0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->mValue:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x1

    if-ge v7, v8, :cond_1

    .line 376
    sget-boolean v7, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v7, :cond_0

    const-string v7, "ClipboardServiceEx"

    const-string v8, "getDimensionsFromHTML : Data is empty."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object v3, v2

    .line 390
    .end local v2    # "lDimen":Ljava/lang/String;
    .local v3, "lDimen":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 379
    .end local v3    # "lDimen":Ljava/lang/String;
    .restart local v2    # "lDimen":Ljava/lang/String;
    :cond_1
    const-string v0, "<img"

    .line 380
    .local v0, "IMG_BEGIN":Ljava/lang/String;
    iget-object v6, p0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->mValue:Ljava/lang/String;

    .line 381
    .local v6, "lImgTag":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    .line 382
    iget-object v7, p0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->mValue:Ljava/lang/String;

    const-string v8, "<img"

    invoke-virtual {v6, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 383
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 384
    .local v4, "lDimenIndex":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 385
    .local v5, "lDimenSub":Ljava/lang/String;
    const/4 v7, 0x0

    const-string v8, "\""

    invoke-virtual {v5, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .end local v0    # "IMG_BEGIN":Ljava/lang/String;
    .end local v4    # "lDimenIndex":I
    .end local v5    # "lDimenSub":Ljava/lang/String;
    .end local v6    # "lImgTag":Ljava/lang/String;
    :cond_2
    :goto_1
    move-object v3, v2

    .line 390
    .end local v2    # "lDimen":Ljava/lang/String;
    .restart local v3    # "lDimen":Ljava/lang/String;
    goto :goto_0

    .line 387
    .end local v3    # "lDimen":Ljava/lang/String;
    .restart local v2    # "lDimen":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 388
    .local v1, "e":Ljava/lang/Exception;
    sget-boolean v7, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v7, :cond_2

    const-string v7, "ClipboardServiceEx"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getDimensionsFromHTML Exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getFirstImage(II)Landroid/graphics/Bitmap;
    .locals 10
    .param p1, "reqWidth"    # I
    .param p2, "reqHeight"    # I

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x7

    .line 280
    iget-object v4, p0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->mFirstImg:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_1

    .line 281
    iget-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->mFirstImg:Landroid/graphics/Bitmap;

    .line 338
    :cond_0
    :goto_0
    return-object v0

    .line 283
    :cond_1
    const/4 v0, 0x0

    .line 284
    .local v0, "Result":Landroid/graphics/Bitmap;
    iget-object v4, p0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->mValue:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v4, v9, :cond_2

    .line 285
    sget-boolean v4, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "ClipboardServiceEx"

    const-string v5, "getFirstImage : Data is empty."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 289
    :cond_2
    sget-boolean v4, Landroid/sec/clipboard/data/ClipboardDefine;->INFO_DEBUG:Z

    if-eqz v4, :cond_3

    const-string v4, "ClipboardServiceEx"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Copied HTML contents is ..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->mValue:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    :cond_3
    const-string v2, ""

    .line 293
    .local v2, "sFileName":Ljava/lang/String;
    :try_start_0
    iget-object v4, p0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->mValue:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/sec/clipboard/util/ClipboardProcText;->getImgFileNameFormHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 296
    invoke-static {v2}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 297
    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 302
    :cond_4
    :goto_1
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v4, v9, :cond_5

    .line 304
    sget-boolean v4, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "ClipboardServiceEx"

    const-string v5, "getFirstImage : FileName is empty."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 298
    :catch_0
    move-exception v1

    .line 299
    .local v1, "e":Ljava/lang/Exception;
    sget-boolean v4, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v4, :cond_4

    const-string v4, "ClipboardServiceEx"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getFirstImage : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 308
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_5
    sget-boolean v4, Landroid/sec/clipboard/data/ClipboardDefine;->INFO_DEBUG:Z

    if-eqz v4, :cond_6

    const-string v4, "ClipboardServiceEx"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "sFileName = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    :cond_6
    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v7, :cond_8

    invoke-virtual {v2, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string v5, "http://"

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_8

    .line 313
    sget-boolean v4, Landroid/sec/clipboard/data/ClipboardDefine;->INFO_DEBUG:Z

    if-eqz v4, :cond_7

    const-string v4, "ClipboardServiceEx"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "downloadSimpleBitmap : Webpath = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    :cond_7
    :goto_2
    iput-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->mFirstImg:Landroid/graphics/Bitmap;

    goto/16 :goto_0

    .line 323
    :cond_8
    if-eqz v2, :cond_a

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v7, :cond_a

    invoke-virtual {v2, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string v5, "file://"

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_a

    .line 325
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 326
    .local v3, "substring":Ljava/lang/String;
    sget-boolean v4, Landroid/sec/clipboard/data/ClipboardDefine;->INFO_DEBUG:Z

    if-eqz v4, :cond_9

    const-string v4, "ClipboardServiceEx"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getFilePathBitmap : Substring Filepath  - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    :cond_9
    invoke-static {v3, p1, p2}, Landroid/sec/clipboard/util/ClipboardDataBitmapUrl;->getFilePathBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 328
    goto :goto_2

    .line 332
    .end local v3    # "substring":Ljava/lang/String;
    :cond_a
    invoke-static {v2, p2, p2}, Landroid/sec/clipboard/util/ClipboardDataBitmapUrl;->getFilePathBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 333
    sget-boolean v4, Landroid/sec/clipboard/data/ClipboardDefine;->INFO_DEBUG:Z

    if-eqz v4, :cond_7

    const-string v4, "ClipboardServiceEx"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getFilePathBitmap : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->mValuePlainText:Ljava/lang/String;

    return-object v0
.end method

.method protected readFormSource(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 464
    :try_start_0
    const-class v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->mValue:Ljava/lang/String;

    .line 465
    const-class v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->mValuePlainText:Ljava/lang/String;

    .line 466
    const-class v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->mFirstImgPath:Ljava/lang/String;

    .line 467
    const-class v1, Landroid/content/ClipData;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ClipData;

    iput-object v1, p0, Landroid/sec/clipboard/data/ClipboardData;->mClipdata:Landroid/content/ClipData;

    .line 468
    const-class v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Landroid/sec/clipboard/data/ClipboardData;->mIsProtected:Z

    .line 469
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardDefine;->INFO_DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "ClipboardServiceEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ClipboardDataHTMLFragment : readFormSource : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->mValue:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 475
    :cond_0
    :goto_0
    return-void

    .line 471
    :catch_0
    move-exception v0

    .line 473
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ClipboardServiceEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "readFormSource~Exception :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x14

    .line 483
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "this HTML class. Value is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->mValue:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v3, :cond_0

    iget-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->mValue:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->mValue:Ljava/lang/String;

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 7
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v6, 0x0

    .line 438
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "ClipboardServiceEx"

    const-string v3, "html write to parcel"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/sec/clipboard/data/ClipboardData;->writeToParcel(Landroid/os/Parcel;I)V

    .line 441
    iget-object v2, p0, Landroid/sec/clipboard/data/ClipboardData;->mClipdata:Landroid/content/ClipData;

    if-nez v2, :cond_1

    .line 442
    const/4 v2, 0x1

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "text/html"

    aput-object v3, v1, v2

    .line 443
    .local v1, "mimeType":[Ljava/lang/String;
    new-instance v0, Landroid/content/ClipData$Item;

    iget-object v2, p0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->mValuePlainText:Ljava/lang/String;

    iget-object v3, p0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->mValue:Ljava/lang/String;

    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->mFirstImgPath:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v0, v2, v3, v6, v4}, Landroid/content/ClipData$Item;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;Landroid/content/Intent;Landroid/net/Uri;)V

    .line 444
    .local v0, "item":Landroid/content/ClipData$Item;
    new-instance v2, Landroid/content/ClipData;

    invoke-direct {v2, v6, v1, v0}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    iput-object v2, p0, Landroid/sec/clipboard/data/ClipboardData;->mClipdata:Landroid/content/ClipData;

    .line 446
    .end local v0    # "item":Landroid/content/ClipData$Item;
    .end local v1    # "mimeType":[Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->mValue:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 447
    iget-object v2, p0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->mValuePlainText:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 448
    iget-object v2, p0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->mFirstImgPath:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 449
    iget-object v2, p0, Landroid/sec/clipboard/data/ClipboardData;->mClipdata:Landroid/content/ClipData;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 450
    iget-boolean v2, p0, Landroid/sec/clipboard/data/ClipboardData;->mIsProtected:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 452
    return-void
.end method
