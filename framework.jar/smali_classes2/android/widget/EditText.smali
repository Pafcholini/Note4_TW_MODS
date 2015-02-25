.class public Landroid/widget/EditText;
.super Landroid/widget/TextView;
.source "EditText.java"


# static fields
.field private static TAG:Ljava/lang/String;

.field private static sKnownAppList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCfmsService:Landroid/os/CustomFrequencyManager;

.field private mFocused:Z

.field private mKnownAppSipScenario:Z

.field private mSipTextLen:I

.field private mSipTextWatcher:Landroid/text/TextWatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 260
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Landroid/widget/EditText;->sKnownAppList:Ljava/util/HashSet;

    .line 263
    sget-object v0, Landroid/widget/EditText;->sKnownAppList:Ljava/util/HashSet;

    const-string v1, "com.google.android.talk"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 264
    sget-object v0, Landroid/widget/EditText;->sKnownAppList:Ljava/util/HashSet;

    const-string v1, "com.facebook.katana"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 269
    const-class v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/widget/EditText;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 72
    const v0, 0x101006e

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 76
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v1, 0x0

    .line 80
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 238
    iput v1, p0, Landroid/widget/EditText;->mSipTextLen:I

    .line 240
    iput-boolean v1, p0, Landroid/widget/EditText;->mFocused:Z

    .line 242
    new-instance v0, Landroid/widget/EditText$1;

    invoke-direct {v0, p0}, Landroid/widget/EditText$1;-><init>(Landroid/widget/EditText;)V

    iput-object v0, p0, Landroid/widget/EditText;->mSipTextWatcher:Landroid/text/TextWatcher;

    .line 267
    iput-boolean v1, p0, Landroid/widget/EditText;->mKnownAppSipScenario:Z

    .line 84
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setWritingBuddyEnabled(Z)V

    .line 88
    return-void
.end method

.method static synthetic access$002(Landroid/widget/EditText;I)I
    .locals 0
    .param p0, "x0"    # Landroid/widget/EditText;
    .param p1, "x1"    # I

    .prologue
    .line 66
    iput p1, p0, Landroid/widget/EditText;->mSipTextLen:I

    return p1
.end method

.method static synthetic access$100(Landroid/widget/EditText;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/EditText;

    .prologue
    .line 66
    invoke-direct {p0}, Landroid/widget/EditText;->updateSipFocusStatus()V

    return-void
.end method

.method private updateSipFocusStatus()V
    .locals 4

    .prologue
    .line 272
    iget-boolean v1, p0, Landroid/widget/EditText;->mFocused:Z

    if-eqz v1, :cond_2

    iget v1, p0, Landroid/widget/EditText;->mSipTextLen:I

    if-lez v1, :cond_2

    const/4 v0, 0x1

    .line 273
    .local v0, "current":Z
    :goto_0
    iget-boolean v1, p0, Landroid/widget/EditText;->mKnownAppSipScenario:Z

    if-eq v1, v0, :cond_1

    .line 274
    iput-boolean v0, p0, Landroid/widget/EditText;->mKnownAppSipScenario:Z

    .line 275
    iget-object v1, p0, Landroid/widget/EditText;->mCfmsService:Landroid/os/CustomFrequencyManager;

    if-nez v1, :cond_0

    .line 276
    invoke-virtual {p0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "CustomFrequencyManagerService"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/CustomFrequencyManager;

    iput-object v1, p0, Landroid/widget/EditText;->mCfmsService:Landroid/os/CustomFrequencyManager;

    .line 278
    :cond_0
    iget-object v2, p0, Landroid/widget/EditText;->mCfmsService:Landroid/os/CustomFrequencyManager;

    const-string v3, "KNOWN_APP_SIP"

    iget-boolean v1, p0, Landroid/widget/EditText;->mKnownAppSipScenario:Z

    if-eqz v1, :cond_3

    const-string v1, "1"

    :goto_1
    invoke-virtual {v2, v3, v1}, Landroid/os/CustomFrequencyManager;->sendCommandToSSRM(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    :cond_1
    return-void

    .line 272
    .end local v0    # "current":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 278
    .restart local v0    # "current":Z
    :cond_3
    const-string v1, "0"

    goto :goto_1
.end method


# virtual methods
.method public dispatchWindowFocusChanged(Z)V
    .locals 3
    .param p1, "hasFocus"    # Z

    .prologue
    .line 206
    invoke-super {p0, p1}, Landroid/widget/TextView;->dispatchWindowFocusChanged(Z)V

    .line 209
    invoke-virtual {p0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 211
    instance-of v0, p0, Landroid/inputmethodservice/ExtractEditText;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/EditText;->getClipboardExManager()Landroid/sec/clipboard/ClipboardExManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/sec/clipboard/ClipboardExManager;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    invoke-virtual {p0}, Landroid/widget/EditText;->getClipboardExManager()Landroid/sec/clipboard/ClipboardExManager;

    move-result-object v0

    const/4 v1, 0x2

    iget-object v2, p0, Landroid/widget/EditText;->mPasteEvent:Landroid/widget/TextView$IClipboardDataPasteEventImpl;

    invoke-virtual {v0, v1, v2}, Landroid/sec/clipboard/ClipboardExManager;->updateData(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V

    .line 217
    :cond_0
    return-void
.end method

.method public extendSelection(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 135
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    .line 136
    return-void
.end method

.method protected getDefaultEditable()Z
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x1

    return v0
.end method

.method protected getDefaultMovementMethod()Landroid/text/method/MovementMethod;
    .locals 1

    .prologue
    .line 97
    invoke-static {}, Landroid/text/method/ArrowKeyMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    return-object v0
.end method

.method public getText()Landroid/text/Editable;
    .locals 1

    .prologue
    .line 102
    invoke-super {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Editable;

    return-object v0
.end method

.method public bridge synthetic getText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 66
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method public hideCursorControllers()V
    .locals 0

    .prologue
    .line 235
    invoke-super {p0}, Landroid/widget/TextView;->hideCursorControllers()V

    .line 236
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 3
    .param p1, "focused"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 180
    if-eqz p1, :cond_0

    .line 182
    instance-of v0, p0, Landroid/inputmethodservice/ExtractEditText;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/EditText;->getClipboardExManager()Landroid/sec/clipboard/ClipboardExManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/sec/clipboard/ClipboardExManager;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    invoke-virtual {p0}, Landroid/widget/EditText;->getClipboardExManager()Landroid/sec/clipboard/ClipboardExManager;

    move-result-object v0

    const/4 v1, 0x2

    iget-object v2, p0, Landroid/widget/EditText;->mPasteEvent:Landroid/widget/TextView$IClipboardDataPasteEventImpl;

    invoke-virtual {v0, v1, v2}, Landroid/sec/clipboard/ClipboardExManager;->updateData(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V

    .line 188
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/TextView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 190
    sget-object v0, Landroid/widget/EditText;->sKnownAppList:Ljava/util/HashSet;

    invoke-virtual {p0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 191
    if-eqz p1, :cond_2

    .line 192
    iget-object v0, p0, Landroid/widget/EditText;->mSipTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 196
    :goto_0
    iput-boolean p1, p0, Landroid/widget/EditText;->mFocused:Z

    .line 197
    invoke-direct {p0}, Landroid/widget/EditText;->updateSipFocusStatus()V

    .line 199
    :cond_1
    return-void

    .line 194
    :cond_2
    iget-object v0, p0, Landroid/widget/EditText;->mSipTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 149
    invoke-super {p0, p1}, Landroid/widget/TextView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 150
    const-class v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 151
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 155
    invoke-super {p0, p1}, Landroid/widget/TextView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 156
    const-class v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 157
    return-void
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 2
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .prologue
    .line 161
    packed-switch p1, :pswitch_data_0

    .line 172
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v1

    :goto_0
    return v1

    .line 163
    :pswitch_0
    if-eqz p2, :cond_1

    const-string v1, "ACTION_ARGUMENT_SET_TEXT_CHARSEQUENCE"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 165
    .local v0, "text":Ljava/lang/CharSequence;
    :goto_1
    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 166
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 167
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 169
    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    .line 163
    .end local v0    # "text":Ljava/lang/CharSequence;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 161
    :pswitch_data_0
    .packed-switch 0x200000
        :pswitch_0
    .end packed-switch
.end method

.method public selectAll()V
    .locals 1

    .prologue
    .line 128
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Selection;->selectAll(Landroid/text/Spannable;)V

    .line 129
    return-void
.end method

.method public setCursorColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 226
    invoke-super {p0, p1}, Landroid/widget/TextView;->setCursorColor(I)V

    .line 227
    return-void
.end method

.method public setEllipsize(Landroid/text/TextUtils$TruncateAt;)V
    .locals 2
    .param p1, "ellipsis"    # Landroid/text/TextUtils$TruncateAt;

    .prologue
    .line 140
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne p1, v0, :cond_0

    .line 141
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "EditText cannot use the ellipsize mode TextUtils.TruncateAt.MARQUEE"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 145
    return-void
.end method

.method public setSelection(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 121
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 122
    return-void
.end method

.method public setSelection(II)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "stop"    # I

    .prologue
    .line 114
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 115
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "type"    # Landroid/widget/TextView$BufferType;

    .prologue
    .line 107
    sget-object v0, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    invoke-super {p0, p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 108
    return-void
.end method
