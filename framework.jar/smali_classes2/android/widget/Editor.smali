.class public Landroid/widget/Editor;
.super Ljava/lang/Object;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/Editor$TextModifyOperation;,
        Landroid/widget/Editor$UndoInputFilter;,
        Landroid/widget/Editor$InputMethodState;,
        Landroid/widget/Editor$InputContentType;,
        Landroid/widget/Editor$ErrorPopup;,
        Landroid/widget/Editor$CorrectionHighlighter;,
        Landroid/widget/Editor$SelectionModifierCursorController;,
        Landroid/widget/Editor$InsertionPointCursorController;,
        Landroid/widget/Editor$CursorController;,
        Landroid/widget/Editor$SelectionEndHandleView;,
        Landroid/widget/Editor$SelectionStartHandleView;,
        Landroid/widget/Editor$InsertionHandleView;,
        Landroid/widget/Editor$HandleView;,
        Landroid/widget/Editor$CursorAnchorInfoNotifier;,
        Landroid/widget/Editor$NewActionPopupWindow;,
        Landroid/widget/Editor$NewPinnedPopupWindow;,
        Landroid/widget/Editor$ActionPopupWindow;,
        Landroid/widget/Editor$SelectionActionModeCallback;,
        Landroid/widget/Editor$SuggestionsPopupWindow;,
        Landroid/widget/Editor$PinnedPopupWindow;,
        Landroid/widget/Editor$PositionListener;,
        Landroid/widget/Editor$EasyEditPopupWindow;,
        Landroid/widget/Editor$EasyEditDeleteListener;,
        Landroid/widget/Editor$SpanController;,
        Landroid/widget/Editor$DragLocalState;,
        Landroid/widget/Editor$Blink;,
        Landroid/widget/Editor$TextViewPositionListener;,
        Landroid/widget/Editor$TextDisplayList;
    }
.end annotation


# static fields
.field public static final ACTION_SEC_TRANSLATE:Ljava/lang/String; = "com.sec.android.app.translator.TRANSLATE_FOR_NON_ACTIVITY"

.field public static final ACTION_SEC_TRANSLATE_RESULT:Ljava/lang/String; = "com.sec.android.app.translator.TRANSLATE_RESULT"

.field static final BLINK:I = 0x1f4

.field static final DEBUG_UNDO:Z = false

.field private static DRAG_SHADOW_MAX_TEXT_LENGTH:I = 0x0

.field static final EXTRACT_NOTHING:I = -0x2

.field static final EXTRACT_UNKNOWN:I = -0x1

.field public static final EXTRA_NAME_AUTO_START:Ljava/lang/String; = "auto_start_translation"

.field public static final EXTRA_NAME_CALLER:Ljava/lang/String; = "caller"

.field public static final EXTRA_NAME_CLIENT_ID:Ljava/lang/String; = "client_id"

.field public static final EXTRA_NAME_MODE:Ljava/lang/String; = "mode"

.field public static final EXTRA_NAME_RESULT_CODE:Ljava/lang/String; = "result_code"

.field public static final EXTRA_NAME_SOURCE_LANGUAGE:Ljava/lang/String; = "source_language"

.field public static final EXTRA_NAME_SOURCE_TEXT:Ljava/lang/String; = "source_text"

.field public static final EXTRA_NAME_TARGET_LANGUAGE:Ljava/lang/String; = "target_language"

.field public static final EXTRA_NAME_TARGET_TEXT:Ljava/lang/String; = "target_text"

.field public static final EXTRA_NAME_USE_BROADCAST_RECEIVER:Ljava/lang/String; = "use_broadcast_receiver"

.field public static final EXTRA_VALUE_INPUT_MODE:Ljava/lang/String; = "input"

.field public static final EXTRA_VALUE_RESULT_CANCEL:I = 0x0

.field public static final EXTRA_VALUE_RESULT_OK:I = 0x1

.field public static final EXTRA_VALUE_VIEWER_MODE:Ljava/lang/String; = "viewer"

.field private static final TAG:Ljava/lang/String; = "Editor"

.field private static final TEMP_POSITION:[F

.field private static TOP_LINE:I


# instance fields
.field private mActionModeMenu:Landroid/view/Menu;

.field mBlink:Landroid/widget/Editor$Blink;

.field public mCaller:Ljava/lang/CharSequence;

.field mClipboardEnable:Z

.field mCorrectionHighlighter:Landroid/widget/Editor$CorrectionHighlighter;

.field mCreatedWithASelection:Z

.field public mCurrentTranslateEnable:Z

.field final mCursorAnchorInfoNotifier:Landroid/widget/Editor$CursorAnchorInfoNotifier;

.field mCursorCount:I

.field final mCursorDrawable:[Landroid/graphics/drawable/Drawable;

.field mCursorVisible:Z

.field mCustomSelectionActionModeCallback:Landroid/view/ActionMode$Callback;

.field private mDeviceDPI:I

.field mDictionaryEnable:Z

.field mDiscardNextActionUp:Z

.field mEnableActionPopupWindow:Z

.field mError:Ljava/lang/CharSequence;

.field mErrorPopup:Landroid/widget/Editor$ErrorPopup;

.field mErrorWasChanged:Z

.field mFrozenWithFocus:Z

.field mIgnoreActionUpEvent:Z

.field mInBatchEditControllers:Z

.field mInputContentType:Landroid/widget/Editor$InputContentType;

.field mInputMethodState:Landroid/widget/Editor$InputMethodState;

.field mInputType:I

.field mInsertionControllerEnabled:Z

.field mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

.field mKeyListener:Landroid/text/method/KeyListener;

.field mLastDownPositionX:F

.field mLastDownPositionY:F

.field private mNewActionPopup:Z

.field mNewSelectionActionMode:Z

.field private mPositionListener:Landroid/widget/Editor$PositionListener;

.field mPreserveDetachedSelection:Z

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field mSelectAllOnFocus:Z

.field private mSelectHandleCenter:Landroid/graphics/drawable/Drawable;

.field private mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

.field private mSelectHandleRight:Landroid/graphics/drawable/Drawable;

.field mSelectionActionMode:Landroid/view/ActionMode;

.field mSelectionControllerEnabled:Z

.field mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

.field mSelectionMoved:Z

.field mShareEnable:Z

.field mShowCursor:J

.field mShowErrorAfterAttach:Z

.field mShowSoftInputOnFocus:Z

.field mShowSuggestionRunnable:Ljava/lang/Runnable;

.field private mSpanController:Landroid/widget/Editor$SpanController;

.field mSpellChecker:Landroid/widget/SpellChecker;

.field mSuggestionRangeSpan:Landroid/text/style/SuggestionRangeSpan;

.field mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

.field private mTempRect:Landroid/graphics/Rect;

.field mTemporaryDetach:Z

.field mTextDisplayLists:[Landroid/widget/Editor$TextDisplayList;

.field mTextIsSelectable:Z

.field private mTextView:Landroid/widget/TextView;

.field private mThemeIsDeviceDefault:Z

.field mTouchFocusSelected:Z

.field public mTranslateEnable:Z

.field mUndoInputFilter:Landroid/text/InputFilter;

.field mUndoManager:Landroid/content/UndoManager;

.field mUndoOwner:Landroid/content/UndoOwner;

.field private mWBPositionListener:Landroid/widget/Editor$TextViewPositionListener;

.field mWebSearchEnable:Z

.field mWordIterator:Landroid/text/method/WordIterator;

.field private selection_end:I

.field private selection_start:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 165
    const/4 v0, 0x2

    new-array v0, v0, [F

    sput-object v0, Landroid/widget/Editor;->TEMP_POSITION:[F

    .line 166
    const/16 v0, 0x14

    sput v0, Landroid/widget/Editor;->DRAG_SHADOW_MAX_TEXT_LENGTH:I

    .line 5982
    const/4 v0, 0x0

    sput v0, Landroid/widget/Editor;->TOP_LINE:I

    return-void
.end method

.method constructor <init>(Landroid/widget/TextView;)V
    .locals 6
    .param p1, "textView"    # Landroid/widget/TextView;

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 271
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 201
    iput v5, p0, Landroid/widget/Editor;->mInputType:I

    .line 209
    iput-boolean v4, p0, Landroid/widget/Editor;->mCursorVisible:Z

    .line 226
    iput-boolean v4, p0, Landroid/widget/Editor;->mShowSoftInputOnFocus:Z

    .line 230
    iput-boolean v5, p0, Landroid/widget/Editor;->mThemeIsDeviceDefault:Z

    .line 231
    iput-boolean v4, p0, Landroid/widget/Editor;->mNewActionPopup:Z

    .line 237
    const/4 v2, 0x2

    new-array v2, v2, [Landroid/graphics/drawable/Drawable;

    iput-object v2, p0, Landroid/widget/Editor;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    .line 269
    new-instance v2, Landroid/widget/Editor$CursorAnchorInfoNotifier;

    invoke-direct {v2, p0, v3}, Landroid/widget/Editor$CursorAnchorInfoNotifier;-><init>(Landroid/widget/Editor;Landroid/widget/Editor$1;)V

    iput-object v2, p0, Landroid/widget/Editor;->mCursorAnchorInfoNotifier:Landroid/widget/Editor$CursorAnchorInfoNotifier;

    .line 6076
    iput v5, p0, Landroid/widget/Editor;->selection_start:I

    .line 6077
    iput v5, p0, Landroid/widget/Editor;->selection_end:I

    .line 6079
    iput-boolean v4, p0, Landroid/widget/Editor;->mCurrentTranslateEnable:Z

    .line 6080
    iput-boolean v4, p0, Landroid/widget/Editor;->mTranslateEnable:Z

    .line 6112
    new-instance v2, Landroid/widget/Editor$2;

    invoke-direct {v2, p0}, Landroid/widget/Editor$2;-><init>(Landroid/widget/Editor;)V

    iput-object v2, p0, Landroid/widget/Editor;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 6162
    iput-boolean v5, p0, Landroid/widget/Editor;->mNewSelectionActionMode:Z

    .line 6163
    iput-boolean v4, p0, Landroid/widget/Editor;->mEnableActionPopupWindow:Z

    .line 6204
    iput-boolean v5, p0, Landroid/widget/Editor;->mShareEnable:Z

    .line 6205
    iput-boolean v5, p0, Landroid/widget/Editor;->mWebSearchEnable:Z

    .line 6206
    iput-boolean v4, p0, Landroid/widget/Editor;->mClipboardEnable:Z

    .line 6207
    iput-boolean v4, p0, Landroid/widget/Editor;->mDictionaryEnable:Z

    .line 6330
    iput-object v3, p0, Landroid/widget/Editor;->mWBPositionListener:Landroid/widget/Editor$TextViewPositionListener;

    .line 272
    iput-object p1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 275
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 276
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    iget v2, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v2, p0, Landroid/widget/Editor;->mDeviceDPI:I

    .line 280
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 281
    .local v1, "outValue":Landroid/util/TypedValue;
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x10105a2

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 282
    iget v2, v1, Landroid/util/TypedValue;->data:I

    if-eqz v2, :cond_0

    .line 283
    iput-boolean v4, p0, Landroid/widget/Editor;->mThemeIsDeviceDefault:Z

    .line 290
    :goto_0
    invoke-virtual {p0}, Landroid/widget/Editor;->isTranslatorEnabled()Z

    move-result v2

    iput-boolean v2, p0, Landroid/widget/Editor;->mCurrentTranslateEnable:Z

    .line 291
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "edit_text_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/Editor;->mCaller:Ljava/lang/CharSequence;

    .line 293
    return-void

    .line 285
    :cond_0
    iput-boolean v5, p0, Landroid/widget/Editor;->mThemeIsDeviceDefault:Z

    goto :goto_0
.end method

.method static synthetic access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Landroid/widget/Editor;

    .prologue
    .line 160
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1100(Landroid/widget/Editor;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/Editor;

    .prologue
    .line 160
    invoke-direct {p0}, Landroid/widget/Editor;->sendUpdateSelection()V

    return-void
.end method

.method static synthetic access$1600(Landroid/widget/Editor;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/Editor;

    .prologue
    .line 160
    invoke-direct {p0}, Landroid/widget/Editor;->extractedTextModeWillBeStarted()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;
    .locals 1
    .param p0, "x0"    # Landroid/widget/Editor;

    .prologue
    .line 160
    invoke-direct {p0}, Landroid/widget/Editor;->getPositionListener()Landroid/widget/Editor$PositionListener;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Landroid/widget/Editor;I)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/Editor;
    .param p1, "x1"    # I

    .prologue
    .line 160
    invoke-direct {p0, p1}, Landroid/widget/Editor;->isOffsetVisible(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2600(Landroid/widget/Editor;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Landroid/widget/Editor;

    .prologue
    .line 160
    iget-object v0, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$2602(Landroid/widget/Editor;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 0
    .param p0, "x0"    # Landroid/widget/Editor;
    .param p1, "x1"    # Landroid/graphics/Rect;

    .prologue
    .line 160
    iput-object p1, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    return-object p1
.end method

.method static synthetic access$2700(Landroid/widget/Editor;IIZ)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/Editor;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .prologue
    .line 160
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Editor;->updateSpellCheckSpans(IIZ)V

    return-void
.end method

.method static synthetic access$2800(Landroid/widget/Editor;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/Editor;

    .prologue
    .line 160
    iget-boolean v0, p0, Landroid/widget/Editor;->mThemeIsDeviceDefault:Z

    return v0
.end method

.method static synthetic access$2900(Landroid/widget/Editor;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/Editor;

    .prologue
    .line 160
    invoke-direct {p0}, Landroid/widget/Editor;->isDictionaryEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3000(Landroid/widget/Editor;)Landroid/view/Menu;
    .locals 1
    .param p0, "x0"    # Landroid/widget/Editor;

    .prologue
    .line 160
    iget-object v0, p0, Landroid/widget/Editor;->mActionModeMenu:Landroid/view/Menu;

    return-object v0
.end method

.method static synthetic access$3002(Landroid/widget/Editor;Landroid/view/Menu;)Landroid/view/Menu;
    .locals 0
    .param p0, "x0"    # Landroid/widget/Editor;
    .param p1, "x1"    # Landroid/view/Menu;

    .prologue
    .line 160
    iput-object p1, p0, Landroid/widget/Editor;->mActionModeMenu:Landroid/view/Menu;

    return-object p1
.end method

.method static synthetic access$3100(Landroid/widget/Editor;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/Editor;

    .prologue
    .line 160
    iget-boolean v0, p0, Landroid/widget/Editor;->mNewActionPopup:Z

    return v0
.end method

.method static synthetic access$3200(Landroid/widget/Editor;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/Editor;

    .prologue
    .line 160
    invoke-direct {p0}, Landroid/widget/Editor;->isCursorInsideSuggestionSpan()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3300(Landroid/widget/Editor;FF)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/Editor;
    .param p1, "x1"    # F
    .param p2, "x2"    # F

    .prologue
    .line 160
    invoke-direct {p0, p1, p2}, Landroid/widget/Editor;->isPositionVisible(FF)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3600(Landroid/widget/Editor;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Landroid/widget/Editor;

    .prologue
    .line 160
    iget-object v0, p0, Landroid/widget/Editor;->mSelectHandleCenter:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$3602(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0
    .param p0, "x0"    # Landroid/widget/Editor;
    .param p1, "x1"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 160
    iput-object p1, p0, Landroid/widget/Editor;->mSelectHandleCenter:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$3700(Landroid/widget/Editor;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/Editor;

    .prologue
    .line 160
    invoke-direct {p0}, Landroid/widget/Editor;->hideInsertionPointCursorController()V

    return-void
.end method

.method static synthetic access$3800(Landroid/widget/Editor;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Landroid/widget/Editor;

    .prologue
    .line 160
    iget-object v0, p0, Landroid/widget/Editor;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$3802(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0
    .param p0, "x0"    # Landroid/widget/Editor;
    .param p1, "x1"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 160
    iput-object p1, p0, Landroid/widget/Editor;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$3900(Landroid/widget/Editor;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Landroid/widget/Editor;

    .prologue
    .line 160
    iget-object v0, p0, Landroid/widget/Editor;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$3902(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0
    .param p0, "x0"    # Landroid/widget/Editor;
    .param p1, "x1"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 160
    iput-object p1, p0, Landroid/widget/Editor;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$4000(Landroid/widget/Editor;FF)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/Editor;
    .param p1, "x1"    # F
    .param p2, "x2"    # F

    .prologue
    .line 160
    invoke-direct {p0, p1, p2}, Landroid/widget/Editor;->isPositionOnText(FF)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4100(Landroid/widget/Editor;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/Editor;

    .prologue
    .line 160
    iget v0, p0, Landroid/widget/Editor;->selection_start:I

    return v0
.end method

.method static synthetic access$4102(Landroid/widget/Editor;I)I
    .locals 0
    .param p0, "x0"    # Landroid/widget/Editor;
    .param p1, "x1"    # I

    .prologue
    .line 160
    iput p1, p0, Landroid/widget/Editor;->selection_start:I

    return p1
.end method

.method static synthetic access$4200(Landroid/widget/Editor;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/Editor;

    .prologue
    .line 160
    iget v0, p0, Landroid/widget/Editor;->selection_end:I

    return v0
.end method

.method static synthetic access$4202(Landroid/widget/Editor;I)I
    .locals 0
    .param p0, "x0"    # Landroid/widget/Editor;
    .param p1, "x1"    # I

    .prologue
    .line 160
    iput p1, p0, Landroid/widget/Editor;->selection_end:I

    return p1
.end method

.method static synthetic access$4300(Landroid/widget/Editor;)Landroid/content/BroadcastReceiver;
    .locals 1
    .param p0, "x0"    # Landroid/widget/Editor;

    .prologue
    .line 160
    iget-object v0, p0, Landroid/widget/Editor;->mReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$900(Landroid/widget/Editor;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/Editor;

    .prologue
    .line 160
    invoke-direct {p0}, Landroid/widget/Editor;->shouldBlink()Z

    move-result v0

    return v0
.end method

.method private canSelectText()Z
    .locals 1

    .prologue
    .line 710
    invoke-virtual {p0}, Landroid/widget/Editor;->hasSelectionController()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private chooseSize(Landroid/widget/PopupWindow;Ljava/lang/CharSequence;Landroid/widget/TextView;)V
    .locals 12
    .param p1, "pop"    # Landroid/widget/PopupWindow;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "tv"    # Landroid/widget/TextView;

    .prologue
    .line 675
    invoke-virtual {p3}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p3}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v2

    add-int v11, v1, v2

    .line 676
    .local v11, "wid":I
    invoke-virtual {p3}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v1

    invoke-virtual {p3}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v2

    add-int v8, v1, v2

    .line 678
    .local v8, "ht":I
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x105004a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 680
    .local v3, "defaultWidthInPixels":I
    new-instance v0, Landroid/text/StaticLayout;

    invoke-virtual {p3}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v1, p2

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 682
    .local v0, "l":Landroid/text/Layout;
    const/4 v10, 0x0

    .line 683
    .local v10, "max":F
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    if-ge v9, v1, :cond_0

    .line 684
    invoke-virtual {v0, v9}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v1

    invoke-static {v10, v1}, Ljava/lang/Math;->max(FF)F

    move-result v10

    .line 683
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 691
    :cond_0
    float-to-double v4, v10

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v1, v4

    add-int/2addr v1, v11

    invoke-virtual {p1, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 692
    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v1

    add-int/2addr v1, v8

    invoke-virtual {p1, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 693
    return-void
.end method

.method private destroyDisplayListsData()V
    .locals 3

    .prologue
    .line 377
    iget-object v2, p0, Landroid/widget/Editor;->mTextDisplayLists:[Landroid/widget/Editor$TextDisplayList;

    if-eqz v2, :cond_2

    .line 378
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroid/widget/Editor;->mTextDisplayLists:[Landroid/widget/Editor$TextDisplayList;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 379
    iget-object v2, p0, Landroid/widget/Editor;->mTextDisplayLists:[Landroid/widget/Editor$TextDisplayList;

    aget-object v2, v2, v1

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/widget/Editor;->mTextDisplayLists:[Landroid/widget/Editor$TextDisplayList;

    aget-object v2, v2, v1

    iget-object v0, v2, Landroid/widget/Editor$TextDisplayList;->displayList:Landroid/view/RenderNode;

    .line 381
    .local v0, "displayList":Landroid/view/RenderNode;
    :goto_1
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/RenderNode;->isValid()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 382
    invoke-virtual {v0}, Landroid/view/RenderNode;->destroyDisplayListData()V

    .line 378
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 379
    .end local v0    # "displayList":Landroid/view/RenderNode;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 386
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method private downgradeEasyCorrectionSpans()V
    .locals 8

    .prologue
    .line 1128
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    .line 1129
    .local v4, "text":Ljava/lang/CharSequence;
    instance-of v5, v4, Landroid/text/Spannable;

    if-eqz v5, :cond_1

    move-object v2, v4

    .line 1130
    check-cast v2, Landroid/text/Spannable;

    .line 1131
    .local v2, "spannable":Landroid/text/Spannable;
    const/4 v5, 0x0

    invoke-interface {v2}, Landroid/text/Spannable;->length()I

    move-result v6

    const-class v7, Landroid/text/style/SuggestionSpan;

    invoke-interface {v2, v5, v6, v7}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/text/style/SuggestionSpan;

    .line 1133
    .local v3, "suggestionSpans":[Landroid/text/style/SuggestionSpan;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v5, v3

    if-ge v1, v5, :cond_1

    .line 1134
    aget-object v5, v3, v1

    invoke-virtual {v5}, Landroid/text/style/SuggestionSpan;->getFlags()I

    move-result v0

    .line 1135
    .local v0, "flags":I
    and-int/lit8 v5, v0, 0x1

    if-eqz v5, :cond_0

    and-int/lit8 v5, v0, 0x2

    if-nez v5, :cond_0

    .line 1137
    and-int/lit8 v0, v0, -0x2

    .line 1138
    aget-object v5, v3, v1

    invoke-virtual {v5, v0}, Landroid/text/style/SuggestionSpan;->setFlags(I)V

    .line 1133
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1142
    .end local v0    # "flags":I
    .end local v1    # "i":I
    .end local v2    # "spannable":Landroid/text/Spannable;
    .end local v3    # "suggestionSpans":[Landroid/text/style/SuggestionSpan;
    :cond_1
    return-void
.end method

.method private drawCursor(Landroid/graphics/Canvas;I)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "cursorOffsetVertical"    # I

    .prologue
    const/4 v3, 0x0

    .line 1588
    if-eqz p2, :cond_1

    const/4 v1, 0x1

    .line 1589
    .local v1, "translate":Z
    :goto_0
    if-eqz v1, :cond_0

    int-to-float v2, p2

    invoke-virtual {p1, v3, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1590
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v2, p0, Landroid/widget/Editor;->mCursorCount:I

    if-ge v0, v2, :cond_2

    .line 1591
    iget-object v2, p0, Landroid/widget/Editor;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1590
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1588
    .end local v0    # "i":I
    .end local v1    # "translate":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 1593
    .restart local v0    # "i":I
    .restart local v1    # "translate":Z
    :cond_2
    if-eqz v1, :cond_3

    neg-int v2, p2

    int-to-float v2, v2

    invoke-virtual {p1, v3, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1594
    :cond_3
    return-void
.end method

.method private drawHardwareAccelerated(Landroid/graphics/Canvas;Landroid/text/Layout;Landroid/graphics/Path;Landroid/graphics/Paint;I)V
    .locals 35
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "layout"    # Landroid/text/Layout;
    .param p3, "highlight"    # Landroid/graphics/Path;
    .param p4, "highlightPaint"    # Landroid/graphics/Paint;
    .param p5, "cursorOffsetVertical"    # I

    .prologue
    .line 1473
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineRangeForDraw(Landroid/graphics/Canvas;)J

    move-result-wide v28

    .line 1474
    .local v28, "lineRange":J
    invoke-static/range {v28 .. v29}, Landroid/text/TextUtils;->unpackRangeStartFromLong(J)I

    move-result v9

    .line 1475
    .local v9, "firstLine":I
    invoke-static/range {v28 .. v29}, Landroid/text/TextUtils;->unpackRangeEndFromLong(J)I

    move-result v10

    .line 1476
    .local v10, "lastLine":I
    if-gez v10, :cond_0

    .line 1565
    :goto_0
    return-void

    :cond_0
    move-object/from16 v4, p2

    move-object/from16 v5, p1

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    .line 1478
    invoke-virtual/range {v4 .. v10}, Landroid/text/Layout;->drawBackground(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;III)V

    .line 1481
    move-object/from16 v0, p2

    instance-of v4, v0, Landroid/text/DynamicLayout;

    if-eqz v4, :cond_b

    .line 1482
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/Editor;->mTextDisplayLists:[Landroid/widget/Editor$TextDisplayList;

    if-nez v4, :cond_1

    .line 1483
    const-class v4, Landroid/widget/Editor$TextDisplayList;

    invoke-static {v4}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/widget/Editor$TextDisplayList;

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/widget/Editor;->mTextDisplayLists:[Landroid/widget/Editor$TextDisplayList;

    :cond_1
    move-object/from16 v20, p2

    .line 1486
    check-cast v20, Landroid/text/DynamicLayout;

    .line 1487
    .local v20, "dynamicLayout":Landroid/text/DynamicLayout;
    invoke-virtual/range {v20 .. v20}, Landroid/text/DynamicLayout;->getBlockEndLines()[I

    move-result-object v15

    .line 1488
    .local v15, "blockEndLines":[I
    invoke-virtual/range {v20 .. v20}, Landroid/text/DynamicLayout;->getBlockIndices()[I

    move-result-object v17

    .line 1489
    .local v17, "blockIndices":[I
    invoke-virtual/range {v20 .. v20}, Landroid/text/DynamicLayout;->getNumberOfBlocks()I

    move-result v31

    .line 1490
    .local v31, "numberOfBlocks":I
    invoke-virtual/range {v20 .. v20}, Landroid/text/DynamicLayout;->getIndexFirstChangedBlock()I

    move-result v24

    .line 1492
    .local v24, "indexFirstChangedBlock":I
    const/16 v21, -0x1

    .line 1493
    .local v21, "endOfPreviousBlock":I
    const/16 v33, 0x0

    .line 1494
    .local v33, "searchStartIndex":I
    const/16 v23, 0x0

    .local v23, "i":I
    :goto_1
    move/from16 v0, v23

    move/from16 v1, v31

    if-ge v0, v1, :cond_a

    .line 1495
    aget v14, v15, v23

    .line 1496
    .local v14, "blockEndLine":I
    aget v16, v17, v23

    .line 1498
    .local v16, "blockIndex":I
    const/4 v4, -0x1

    move/from16 v0, v16

    if-ne v0, v4, :cond_5

    const/16 v18, 0x1

    .line 1499
    .local v18, "blockIsInvalid":Z
    :goto_2
    if-eqz v18, :cond_2

    .line 1500
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v31

    move/from16 v3, v33

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/Editor;->getAvailableDisplayListIndex([III)I

    move-result v16

    .line 1503
    aput v16, v17, v23

    .line 1504
    add-int/lit8 v33, v16, 0x1

    .line 1507
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/Editor;->mTextDisplayLists:[Landroid/widget/Editor$TextDisplayList;

    aget-object v4, v4, v16

    if-nez v4, :cond_3

    .line 1508
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/Editor;->mTextDisplayLists:[Landroid/widget/Editor$TextDisplayList;

    new-instance v5, Landroid/widget/Editor$TextDisplayList;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Text "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/Editor$TextDisplayList;-><init>(Ljava/lang/String;)V

    aput-object v5, v4, v16

    .line 1512
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/Editor;->mTextDisplayLists:[Landroid/widget/Editor$TextDisplayList;

    aget-object v4, v4, v16

    invoke-virtual {v4}, Landroid/widget/Editor$TextDisplayList;->needsRecord()Z

    move-result v13

    .line 1513
    .local v13, "blockDisplayListIsInvalid":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/Editor;->mTextDisplayLists:[Landroid/widget/Editor$TextDisplayList;

    aget-object v4, v4, v16

    iget-object v12, v4, Landroid/widget/Editor$TextDisplayList;->displayList:Landroid/view/RenderNode;

    .line 1514
    .local v12, "blockDisplayList":Landroid/view/RenderNode;
    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_4

    if-eqz v13, :cond_9

    .line 1515
    :cond_4
    add-int/lit8 v11, v21, 0x1

    .line 1516
    .local v11, "blockBeginLine":I
    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/text/Layout;->getLineTop(I)I

    move-result v34

    .line 1517
    .local v34, "top":I
    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v19

    .line 1518
    .local v19, "bottom":I
    const/16 v25, 0x0

    .line 1519
    .local v25, "left":I
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getWidth()I

    move-result v32

    .line 1520
    .local v32, "right":I
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getHorizontallyScrolling()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1521
    const v30, 0x7f7fffff    # Float.MAX_VALUE

    .line 1522
    .local v30, "min":F
    const/16 v27, 0x1

    .line 1523
    .local v27, "max":F
    move/from16 v26, v11

    .local v26, "line":I
    :goto_3
    move/from16 v0, v26

    if-gt v0, v14, :cond_6

    .line 1524
    move-object/from16 v0, p2

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v4

    move/from16 v0, v30

    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v30

    .line 1525
    move-object/from16 v0, p2

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineRight(I)F

    move-result v4

    move/from16 v0, v27

    invoke-static {v0, v4}, Ljava/lang/Math;->max(FF)F

    move-result v27

    .line 1523
    add-int/lit8 v26, v26, 0x1

    goto :goto_3

    .line 1498
    .end local v11    # "blockBeginLine":I
    .end local v12    # "blockDisplayList":Landroid/view/RenderNode;
    .end local v13    # "blockDisplayListIsInvalid":Z
    .end local v18    # "blockIsInvalid":Z
    .end local v19    # "bottom":I
    .end local v25    # "left":I
    .end local v26    # "line":I
    .end local v27    # "max":F
    .end local v30    # "min":F
    .end local v32    # "right":I
    .end local v34    # "top":I
    :cond_5
    const/16 v18, 0x0

    goto/16 :goto_2

    .line 1527
    .restart local v11    # "blockBeginLine":I
    .restart local v12    # "blockDisplayList":Landroid/view/RenderNode;
    .restart local v13    # "blockDisplayListIsInvalid":Z
    .restart local v18    # "blockIsInvalid":Z
    .restart local v19    # "bottom":I
    .restart local v25    # "left":I
    .restart local v26    # "line":I
    .restart local v27    # "max":F
    .restart local v30    # "min":F
    .restart local v32    # "right":I
    .restart local v34    # "top":I
    :cond_6
    move/from16 v0, v30

    float-to-int v0, v0

    move/from16 v25, v0

    .line 1528
    const/high16 v4, 0x3f000000    # 0.5f

    add-float v4, v4, v27

    float-to-int v0, v4

    move/from16 v32, v0

    .line 1532
    .end local v26    # "line":I
    .end local v27    # "max":F
    .end local v30    # "min":F
    :cond_7
    if-eqz v13, :cond_8

    .line 1533
    sub-int v4, v32, v25

    sub-int v5, v19, v34

    invoke-virtual {v12, v4, v5}, Landroid/view/RenderNode;->start(II)Landroid/view/HardwareCanvas;

    move-result-object v22

    .line 1538
    .local v22, "hardwareCanvas":Landroid/view/HardwareCanvas;
    move/from16 v0, v25

    neg-int v4, v0

    int-to-float v4, v4

    move/from16 v0, v34

    neg-int v5, v0

    int-to-float v5, v5

    :try_start_0
    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Landroid/view/HardwareCanvas;->translate(FF)V

    .line 1539
    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v11, v14}, Landroid/text/Layout;->drawText(Landroid/graphics/Canvas;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1543
    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/view/RenderNode;->end(Landroid/view/HardwareCanvas;)V

    .line 1545
    const/4 v4, 0x0

    invoke-virtual {v12, v4}, Landroid/view/RenderNode;->setClipToBounds(Z)Z

    .line 1551
    .end local v22    # "hardwareCanvas":Landroid/view/HardwareCanvas;
    :cond_8
    move/from16 v0, v25

    move/from16 v1, v34

    move/from16 v2, v32

    move/from16 v3, v19

    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/view/RenderNode;->setLeftTopRightBottom(IIII)Z

    .end local v11    # "blockBeginLine":I
    .end local v19    # "bottom":I
    .end local v25    # "left":I
    .end local v32    # "right":I
    .end local v34    # "top":I
    :cond_9
    move-object/from16 v4, p1

    .line 1554
    check-cast v4, Landroid/view/HardwareCanvas;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v12, v5, v6}, Landroid/view/HardwareCanvas;->drawRenderNode(Landroid/view/RenderNode;Landroid/graphics/Rect;I)I

    .line 1557
    move/from16 v21, v14

    .line 1494
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_1

    .line 1543
    .restart local v11    # "blockBeginLine":I
    .restart local v19    # "bottom":I
    .restart local v22    # "hardwareCanvas":Landroid/view/HardwareCanvas;
    .restart local v25    # "left":I
    .restart local v32    # "right":I
    .restart local v34    # "top":I
    :catchall_0
    move-exception v4

    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/view/RenderNode;->end(Landroid/view/HardwareCanvas;)V

    .line 1545
    const/4 v5, 0x0

    invoke-virtual {v12, v5}, Landroid/view/RenderNode;->setClipToBounds(Z)Z

    throw v4

    .line 1560
    .end local v11    # "blockBeginLine":I
    .end local v12    # "blockDisplayList":Landroid/view/RenderNode;
    .end local v13    # "blockDisplayListIsInvalid":Z
    .end local v14    # "blockEndLine":I
    .end local v16    # "blockIndex":I
    .end local v18    # "blockIsInvalid":Z
    .end local v19    # "bottom":I
    .end local v22    # "hardwareCanvas":Landroid/view/HardwareCanvas;
    .end local v25    # "left":I
    .end local v32    # "right":I
    .end local v34    # "top":I
    :cond_a
    move-object/from16 v0, v20

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/text/DynamicLayout;->setIndexFirstChangedBlock(I)V

    goto/16 :goto_0

    .line 1563
    .end local v15    # "blockEndLines":[I
    .end local v17    # "blockIndices":[I
    .end local v20    # "dynamicLayout":Landroid/text/DynamicLayout;
    .end local v21    # "endOfPreviousBlock":I
    .end local v23    # "i":I
    .end local v24    # "indexFirstChangedBlock":I
    .end local v31    # "numberOfBlocks":I
    .end local v33    # "searchStartIndex":I
    :cond_b
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v9, v10}, Landroid/text/Layout;->drawText(Landroid/graphics/Canvas;II)V

    goto/16 :goto_0
.end method

.method private extractTextInternal(Landroid/view/inputmethod/ExtractedTextRequest;IIILandroid/view/inputmethod/ExtractedText;)Z
    .locals 8
    .param p1, "request"    # Landroid/view/inputmethod/ExtractedTextRequest;
    .param p2, "partialStartOffset"    # I
    .param p3, "partialEndOffset"    # I
    .param p4, "delta"    # I
    .param p5, "outText"    # Landroid/view/inputmethod/ExtractedText;

    .prologue
    const/4 v6, 0x0

    .line 1298
    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 1299
    .local v1, "content":Ljava/lang/CharSequence;
    if-eqz v1, :cond_3

    .line 1300
    const/4 v7, -0x2

    if-eq p2, v7, :cond_c

    .line 1301
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 1302
    .local v0, "N":I
    if-gez p2, :cond_4

    .line 1303
    const/4 v7, -0x1

    iput v7, p5, Landroid/view/inputmethod/ExtractedText;->partialEndOffset:I

    iput v7, p5, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    .line 1304
    const/4 p2, 0x0

    .line 1305
    move p3, v0

    .line 1338
    :cond_0
    :goto_0
    iget v7, p1, Landroid/view/inputmethod/ExtractedTextRequest;->flags:I

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_b

    .line 1339
    invoke-interface {v1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    iput-object v7, p5, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    .line 1350
    .end local v0    # "N":I
    :goto_1
    iput v6, p5, Landroid/view/inputmethod/ExtractedText;->flags:I

    .line 1351
    const/16 v7, 0x800

    invoke-static {v1, v7}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v7

    if-eqz v7, :cond_1

    .line 1352
    iget v7, p5, Landroid/view/inputmethod/ExtractedText;->flags:I

    or-int/lit8 v7, v7, 0x2

    iput v7, p5, Landroid/view/inputmethod/ExtractedText;->flags:I

    .line 1354
    :cond_1
    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->isSingleLine()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1355
    iget v7, p5, Landroid/view/inputmethod/ExtractedText;->flags:I

    or-int/lit8 v7, v7, 0x1

    iput v7, p5, Landroid/view/inputmethod/ExtractedText;->flags:I

    .line 1357
    :cond_2
    iput v6, p5, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    .line 1358
    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v6

    iput v6, p5, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    .line 1359
    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v6

    iput v6, p5, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    .line 1360
    const/4 v6, 0x1

    .line 1362
    :cond_3
    return v6

    .line 1309
    .restart local v0    # "N":I
    :cond_4
    add-int/2addr p3, p4

    .line 1311
    instance-of v7, v1, Landroid/text/Spanned;

    if-eqz v7, :cond_7

    move-object v4, v1

    .line 1312
    check-cast v4, Landroid/text/Spanned;

    .line 1313
    .local v4, "spanned":Landroid/text/Spanned;
    const-class v7, Landroid/text/ParcelableSpan;

    invoke-interface {v4, p2, p3, v7}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    .line 1315
    .local v5, "spans":[Ljava/lang/Object;
    array-length v2, v5

    .line 1316
    .local v2, "i":I
    :cond_5
    :goto_2
    if-lez v2, :cond_7

    .line 1317
    add-int/lit8 v2, v2, -0x1

    .line 1318
    aget-object v7, v5, v2

    invoke-interface {v4, v7}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    .line 1319
    .local v3, "j":I
    if-ge v3, p2, :cond_6

    move p2, v3

    .line 1320
    :cond_6
    aget-object v7, v5, v2

    invoke-interface {v4, v7}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v3

    .line 1321
    if-le v3, p3, :cond_5

    move p3, v3

    goto :goto_2

    .line 1324
    .end local v2    # "i":I
    .end local v3    # "j":I
    .end local v4    # "spanned":Landroid/text/Spanned;
    .end local v5    # "spans":[Ljava/lang/Object;
    :cond_7
    iput p2, p5, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    .line 1325
    sub-int v7, p3, p4

    iput v7, p5, Landroid/view/inputmethod/ExtractedText;->partialEndOffset:I

    .line 1327
    if-le p2, v0, :cond_9

    .line 1328
    move p2, v0

    .line 1332
    :cond_8
    :goto_3
    if-le p3, v0, :cond_a

    .line 1333
    move p3, v0

    goto :goto_0

    .line 1329
    :cond_9
    if-gez p2, :cond_8

    .line 1330
    const/4 p2, 0x0

    goto :goto_3

    .line 1334
    :cond_a
    if-gez p3, :cond_0

    .line 1335
    const/4 p3, 0x0

    goto :goto_0

    .line 1342
    :cond_b
    invoke-static {v1, p2, p3}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p5, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    goto :goto_1

    .line 1346
    .end local v0    # "N":I
    :cond_c
    iput v6, p5, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    .line 1347
    iput v6, p5, Landroid/view/inputmethod/ExtractedText;->partialEndOffset:I

    .line 1348
    const-string v7, ""

    iput-object v7, p5, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    goto :goto_1
.end method

.method private extractedTextModeWillBeStarted()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1747
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    instance-of v2, v2, Landroid/inputmethodservice/ExtractEditText;

    if-nez v2, :cond_0

    .line 1748
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 1749
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isFullscreenMode()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 1751
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    return v1
.end method

.method private getAvailableDisplayListIndex([III)I
    .locals 6
    .param p1, "blockIndices"    # [I
    .param p2, "numberOfBlocks"    # I
    .param p3, "searchStartIndex"    # I

    .prologue
    .line 1569
    iget-object v4, p0, Landroid/widget/Editor;->mTextDisplayLists:[Landroid/widget/Editor$TextDisplayList;

    array-length v3, v4

    .line 1570
    .local v3, "length":I
    move v1, p3

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_2

    .line 1571
    const/4 v0, 0x0

    .line 1572
    .local v0, "blockIndexFound":Z
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    if-ge v2, p2, :cond_0

    .line 1573
    aget v4, p1, v2

    if-ne v4, v1, :cond_1

    .line 1574
    const/4 v0, 0x1

    .line 1578
    :cond_0
    if-eqz v0, :cond_3

    .line 1570
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1572
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1583
    .end local v0    # "blockIndexFound":Z
    .end local v2    # "j":I
    :cond_2
    iget-object v4, p0, Landroid/widget/Editor;->mTextDisplayLists:[Landroid/widget/Editor$TextDisplayList;

    const/4 v5, 0x0

    invoke-static {v4, v3, v5}, Lcom/android/internal/util/GrowingArrayUtils;->append([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/widget/Editor$TextDisplayList;

    iput-object v4, p0, Landroid/widget/Editor;->mTextDisplayLists:[Landroid/widget/Editor$TextDisplayList;

    move v1, v3

    .line 1584
    .end local v1    # "i":I
    :cond_3
    return v1
.end method

.method private getCharRange(I)J
    .locals 8
    .param p1, "offset"    # I

    .prologue
    .line 826
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v4

    .line 827
    .local v4, "textLength":I
    add-int/lit8 v5, p1, 0x1

    if-ge v5, v4, :cond_0

    .line 828
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 829
    .local v0, "currentChar":C
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    add-int/lit8 v6, p1, 0x1

    invoke-interface {v5, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 830
    .local v1, "nextChar":C
    invoke-static {v0, v1}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 831
    add-int/lit8 v5, p1, 0x2

    invoke-static {p1, v5}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v6

    .line 847
    .end local v0    # "currentChar":C
    .end local v1    # "nextChar":C
    :goto_0
    return-wide v6

    .line 834
    :cond_0
    if-ge p1, v4, :cond_1

    .line 835
    add-int/lit8 v5, p1, 0x1

    invoke-static {p1, v5}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v6

    goto :goto_0

    .line 837
    :cond_1
    add-int/lit8 v5, p1, -0x2

    if-ltz v5, :cond_2

    .line 838
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    add-int/lit8 v6, p1, -0x1

    invoke-interface {v5, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 839
    .local v2, "previousChar":C
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    add-int/lit8 v6, p1, -0x2

    invoke-interface {v5, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 840
    .local v3, "previousPreviousChar":C
    invoke-static {v3, v2}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 841
    add-int/lit8 v5, p1, -0x2

    invoke-static {v5, p1}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v6

    goto :goto_0

    .line 844
    .end local v2    # "previousChar":C
    .end local v3    # "previousPreviousChar":C
    :cond_2
    add-int/lit8 v5, p1, -0x1

    if-ltz v5, :cond_3

    .line 845
    add-int/lit8 v5, p1, -0x1

    invoke-static {v5, p1}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v6

    goto :goto_0

    .line 847
    :cond_3
    invoke-static {p1, p1}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v6

    goto :goto_0
.end method

.method private getErrorX()I
    .locals 9

    .prologue
    const/4 v5, 0x0

    const/high16 v8, 0x41c80000    # 25.0f

    const/high16 v7, 0x3f000000    # 0.5f

    .line 473
    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v4, v6, Landroid/util/DisplayMetrics;->density:F

    .line 475
    .local v4, "scale":F
    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v0, v6, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 477
    .local v0, "dr":Landroid/widget/TextView$Drawables;
    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getLayoutDirection()I

    move-result v2

    .line 480
    .local v2, "layoutDirection":I
    packed-switch v2, :pswitch_data_0

    .line 483
    if-eqz v0, :cond_0

    iget v5, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    :cond_0
    neg-int v5, v5

    div-int/lit8 v5, v5, 0x2

    mul-float v6, v8, v4

    add-float/2addr v6, v7

    float-to-int v6, v6

    add-int v3, v5, v6

    .line 484
    .local v3, "offset":I
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getWidth()I

    move-result v5

    iget-object v6, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    invoke-virtual {v6}, Landroid/widget/Editor$ErrorPopup;->getWidth()I

    move-result v6

    sub-int/2addr v5, v6

    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    add-int v1, v5, v3

    .line 492
    .local v1, "errorX":I
    :goto_0
    return v1

    .line 488
    .end local v1    # "errorX":I
    .end local v3    # "offset":I
    :pswitch_0
    if-eqz v0, :cond_1

    iget v5, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    :cond_1
    div-int/lit8 v5, v5, 0x2

    mul-float v6, v8, v4

    add-float/2addr v6, v7

    float-to-int v6, v6

    sub-int v3, v5, v6

    .line 489
    .restart local v3    # "offset":I
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v5

    add-int v1, v5, v3

    .restart local v1    # "errorX":I
    goto :goto_0

    .line 480
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private getErrorY()I
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 504
    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v0

    .line 505
    .local v0, "compoundPaddingTop":I
    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getBottom()I

    move-result v7

    iget-object v8, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getTop()I

    move-result v8

    sub-int/2addr v7, v8

    iget-object v8, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v8

    sub-int/2addr v7, v8

    sub-int v6, v7, v0

    .line 508
    .local v6, "vspace":I
    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v1, v7, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 510
    .local v1, "dr":Landroid/widget/TextView$Drawables;
    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getLayoutDirection()I

    move-result v4

    .line 512
    .local v4, "layoutDirection":I
    packed-switch v4, :pswitch_data_0

    .line 515
    if-eqz v1, :cond_0

    iget v2, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    .line 522
    .local v2, "height":I
    :cond_0
    :goto_0
    sub-int v7, v6, v2

    div-int/lit8 v7, v7, 0x2

    add-int v3, v0, v7

    .line 528
    .local v3, "icontop":I
    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v5, v7, Landroid/util/DisplayMetrics;->density:F

    .line 529
    .local v5, "scale":F
    add-int v7, v3, v2

    iget-object v8, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getHeight()I

    move-result v8

    sub-int/2addr v7, v8

    const/high16 v8, 0x40000000    # 2.0f

    mul-float/2addr v8, v5

    const/high16 v9, 0x3f000000    # 0.5f

    add-float/2addr v8, v9

    float-to-int v8, v8

    sub-int/2addr v7, v8

    return v7

    .line 518
    .end local v2    # "height":I
    .end local v3    # "icontop":I
    .end local v5    # "scale":F
    :pswitch_0
    if-eqz v1, :cond_1

    iget v2, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    .restart local v2    # "height":I
    :cond_1
    goto :goto_0

    .line 512
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private getLastTapPosition()I
    .locals 2

    .prologue
    .line 1155
    iget-object v1, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    if-eqz v1, :cond_1

    .line 1156
    iget-object v1, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-virtual {v1}, Landroid/widget/Editor$SelectionModifierCursorController;->getMinTouchOffset()I

    move-result v0

    .line 1157
    .local v0, "lastTapPosition":I
    if-ltz v0, :cond_1

    .line 1159
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 1160
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 1166
    .end local v0    # "lastTapPosition":I
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private getLastTouchOffsets()J
    .locals 6

    .prologue
    .line 1010
    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v2

    .line 1011
    .local v2, "selectionController":Landroid/widget/Editor$SelectionModifierCursorController;
    invoke-virtual {v2}, Landroid/widget/Editor$SelectionModifierCursorController;->getMinTouchOffset()I

    move-result v1

    .line 1012
    .local v1, "minOffset":I
    invoke-virtual {v2}, Landroid/widget/Editor$SelectionModifierCursorController;->getMaxTouchOffset()I

    move-result v0

    .line 1013
    .local v0, "maxOffset":I
    invoke-static {v1, v0}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v4

    return-wide v4
.end method

.method private getPositionListener()Landroid/widget/Editor$PositionListener;
    .locals 2

    .prologue
    .line 873
    iget-object v0, p0, Landroid/widget/Editor;->mPositionListener:Landroid/widget/Editor$PositionListener;

    if-nez v0, :cond_0

    .line 874
    new-instance v0, Landroid/widget/Editor$PositionListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/widget/Editor$PositionListener;-><init>(Landroid/widget/Editor;Landroid/widget/Editor$1;)V

    iput-object v0, p0, Landroid/widget/Editor;->mPositionListener:Landroid/widget/Editor$PositionListener;

    .line 876
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mPositionListener:Landroid/widget/Editor$PositionListener;

    return-object v0
.end method

.method private getPrimaryHorizontal(Landroid/text/Layout;Landroid/text/Layout;IZ)F
    .locals 1
    .param p1, "layout"    # Landroid/text/Layout;
    .param p2, "hintLayout"    # Landroid/text/Layout;
    .param p3, "offset"    # I
    .param p4, "clamped"    # Z

    .prologue
    .line 1669
    invoke-virtual {p1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1672
    invoke-virtual {p2, p3, p4}, Landroid/text/Layout;->getPrimaryHorizontal(IZ)F

    move-result v0

    .line 1674
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1, p3, p4}, Landroid/text/Layout;->getPrimaryHorizontal(IZ)F

    move-result v0

    goto :goto_0
.end method

.method private getTextThumbnailBuilder(Ljava/lang/CharSequence;)Landroid/view/View$DragShadowBuilder;
    .locals 7
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v6, -0x2

    const/4 v5, 0x0

    .line 2040
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x10900fc

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2043
    .local v0, "shadowView":Landroid/widget/TextView;
    if-nez v0, :cond_0

    .line 2044
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Unable to inflate text drag thumbnail"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2047
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    sget v3, Landroid/widget/Editor;->DRAG_SHADOW_MAX_TEXT_LENGTH:I

    if-le v2, v3, :cond_1

    .line 2048
    sget v2, Landroid/widget/Editor;->DRAG_SHADOW_MAX_TEXT_LENGTH:I

    invoke-interface {p1, v5, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    .line 2050
    :cond_1
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2051
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 2053
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0x10

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 2054
    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 2056
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2059
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 2060
    .local v1, "size":I
    invoke-virtual {v0, v1, v1}, Landroid/widget/TextView;->measure(II)V

    .line 2062
    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v0, v5, v5, v2, v3}, Landroid/widget/TextView;->layout(IIII)V

    .line 2063
    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    .line 2064
    new-instance v2, Landroid/view/View$DragShadowBuilder;

    invoke-direct {v2, v0}, Landroid/view/View$DragShadowBuilder;-><init>(Landroid/view/View;)V

    return-object v2
.end method

.method private hasPasswordTransformationMethod()Z
    .locals 1

    .prologue
    .line 729
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v0

    instance-of v0, v0, Landroid/text/method/PasswordTransformationMethod;

    return v0
.end method

.method private hideCursorControllers()V
    .locals 1

    .prologue
    .line 601
    iget-object v0, p0, Landroid/widget/Editor;->mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor;->mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

    invoke-virtual {v0}, Landroid/widget/Editor$SuggestionsPopupWindow;->isShowingUp()Z

    move-result v0

    if-nez v0, :cond_0

    .line 603
    iget-object v0, p0, Landroid/widget/Editor;->mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

    invoke-virtual {v0}, Landroid/widget/Editor$SuggestionsPopupWindow;->hide()V

    .line 605
    :cond_0
    invoke-direct {p0}, Landroid/widget/Editor;->hideInsertionPointCursorController()V

    .line 606
    invoke-virtual {p0}, Landroid/widget/Editor;->stopSelectionActionMode()V

    .line 607
    return-void
.end method

.method private hideError()V
    .locals 1

    .prologue
    .line 455
    iget-object v0, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    if-eqz v0, :cond_0

    .line 456
    iget-object v0, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    invoke-virtual {v0}, Landroid/widget/Editor$ErrorPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 457
    iget-object v0, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    invoke-virtual {v0}, Landroid/widget/Editor$ErrorPopup;->dismiss()V

    .line 461
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Editor;->mShowErrorAfterAttach:Z

    .line 462
    return-void
.end method

.method private hideInsertionPointCursorController()V
    .locals 1

    .prologue
    .line 581
    iget-object v0, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    if-eqz v0, :cond_0

    .line 582
    iget-object v0, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    invoke-virtual {v0}, Landroid/widget/Editor$InsertionPointCursorController;->hide()V

    .line 584
    :cond_0
    return-void
.end method

.method private hideSpanControllers()V
    .locals 1

    .prologue
    .line 595
    iget-object v0, p0, Landroid/widget/Editor;->mSpanController:Landroid/widget/Editor$SpanController;

    if-eqz v0, :cond_0

    .line 596
    iget-object v0, p0, Landroid/widget/Editor;->mSpanController:Landroid/widget/Editor$SpanController;

    invoke-virtual {v0}, Landroid/widget/Editor$SpanController;->hide()V

    .line 598
    :cond_0
    return-void
.end method

.method private isCursorInsideEasyCorrectionSpan()Z
    .locals 6

    .prologue
    .line 1771
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Landroid/text/Spannable;

    .line 1772
    .local v1, "spannable":Landroid/text/Spannable;
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v3

    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v4

    const-class v5, Landroid/text/style/SuggestionSpan;

    invoke-interface {v1, v3, v4, v5}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/SuggestionSpan;

    .line 1774
    .local v2, "suggestionSpans":[Landroid/text/style/SuggestionSpan;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 1775
    aget-object v3, v2, v0

    invoke-virtual {v3}, Landroid/text/style/SuggestionSpan;->getFlags()I

    move-result v3

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    .line 1776
    const/4 v3, 0x1

    .line 1779
    :goto_1
    return v3

    .line 1774
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1779
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private isCursorInsideSuggestionSpan()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 1758
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 1759
    .local v1, "text":Ljava/lang/CharSequence;
    instance-of v3, v1, Landroid/text/Spannable;

    if-nez v3, :cond_1

    .line 1763
    .end local v1    # "text":Ljava/lang/CharSequence;
    :cond_0
    :goto_0
    return v2

    .line 1761
    .restart local v1    # "text":Ljava/lang/CharSequence;
    :cond_1
    check-cast v1, Landroid/text/Spannable;

    .end local v1    # "text":Ljava/lang/CharSequence;
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v3

    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v4

    const-class v5, Landroid/text/style/SuggestionSpan;

    invoke-interface {v1, v3, v4, v5}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/SuggestionSpan;

    .line 1763
    .local v0, "suggestionSpans":[Landroid/text/style/SuggestionSpan;
    array-length v3, v0

    if-lez v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method private isDictionaryEnabled()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 6237
    iget-boolean v3, p0, Landroid/widget/Editor;->mDictionaryEnable:Z

    if-eqz v3, :cond_0

    invoke-direct {p0}, Landroid/widget/Editor;->hasPasswordTransformationMethod()Z

    move-result v3

    if-nez v3, :cond_0

    .line 6238
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 6239
    .local v1, "pm":Landroid/content/pm/PackageManager;
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.sec.android.app.dictionary.SEARCH"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 6241
    .local v0, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Landroid/widget/Editor;->mNewActionPopup:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v3

    if-ltz v3, :cond_0

    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v3

    if-ltz v3, :cond_0

    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v3

    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v4

    if-eq v3, v4, :cond_0

    invoke-direct {p0}, Landroid/widget/Editor;->isInSpannableObj()Z

    move-result v3

    if-nez v3, :cond_0

    .line 6244
    const/4 v2, 0x1

    .line 6249
    .end local v0    # "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    :cond_0
    return v2
.end method

.method private isInSpannableObj()Z
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 6254
    const/4 v4, 0x0

    .line 6255
    .local v4, "min":I
    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 6256
    .local v3, "max":I
    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v6

    .line 6257
    .local v6, "selStart":I
    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v5

    .line 6258
    .local v5, "selEnd":I
    const/4 v0, 0x0

    .line 6260
    .local v0, "checkSpan":Z
    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 6261
    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 6262
    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7, v4, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 6263
    .local v1, "cs":Ljava/lang/CharSequence;
    if-eqz v1, :cond_0

    .line 6264
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-ge v2, v7, :cond_0

    .line 6265
    invoke-interface {v1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    const v8, 0xfffc

    if-ne v7, v8, :cond_1

    .line 6266
    const/4 v0, 0x1

    .line 6271
    .end local v2    # "i":I
    :cond_0
    return v0

    .line 6264
    .restart local v2    # "i":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private isOffsetVisible(I)Z
    .locals 6
    .param p1, "offset"    # I

    .prologue
    .line 925
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 926
    .local v0, "layout":Landroid/text/Layout;
    if-nez v0, :cond_0

    const/4 v4, 0x0

    .line 931
    :goto_0
    return v4

    .line 928
    :cond_0
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v1

    .line 929
    .local v1, "line":I
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v2

    .line 930
    .local v2, "lineBottom":I
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v4

    float-to-int v3, v4

    .line 931
    .local v3, "primaryHorizontal":I
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v4

    add-int/2addr v4, v3

    int-to-float v4, v4

    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v5

    add-int/2addr v5, v2

    int-to-float v5, v5

    invoke-direct {p0, v4, v5}, Landroid/widget/Editor;->isPositionVisible(FF)Z

    move-result v4

    goto :goto_0
.end method

.method private isPositionOnText(FF)Z
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v2, 0x0

    .line 939
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 940
    .local v0, "layout":Landroid/text/Layout;
    if-nez v0, :cond_1

    .line 947
    :cond_0
    :goto_0
    return v2

    .line 942
    :cond_1
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3, p2}, Landroid/widget/TextView;->getLineAtCoordinate(F)I

    move-result v1

    .line 943
    .local v1, "line":I
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->convertToLocalHorizontalCoordinate(F)F

    move-result p1

    .line 945
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v3

    cmpg-float v3, p1, v3

    if-ltz v3, :cond_0

    .line 946
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineRight(I)F

    move-result v3

    cmpl-float v3, p1, v3

    if-gtz v3, :cond_0

    .line 947
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private isPositionVisible(FF)Z
    .locals 11
    .param p1, "positionX"    # F
    .param p2, "positionY"    # F

    .prologue
    const/4 v10, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 885
    sget-object v6, Landroid/widget/Editor;->TEMP_POSITION:[F

    monitor-enter v6

    .line 886
    :try_start_0
    sget-object v2, Landroid/widget/Editor;->TEMP_POSITION:[F

    .line 887
    .local v2, "position":[F
    const/4 v7, 0x0

    aput p1, v2, v7

    .line 888
    const/4 v7, 0x1

    aput p2, v2, v7

    .line 889
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 891
    .local v3, "view":Landroid/view/View;
    :goto_0
    if-eqz v3, :cond_5

    .line 892
    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    if-eq v3, v7, :cond_0

    .line 894
    const/4 v7, 0x0

    aget v8, v2, v7

    invoke-virtual {v3}, Landroid/view/View;->getScrollX()I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v8, v9

    aput v8, v2, v7

    .line 895
    const/4 v7, 0x1

    aget v8, v2, v7

    invoke-virtual {v3}, Landroid/view/View;->getScrollY()I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v8, v9

    aput v8, v2, v7

    .line 898
    :cond_0
    const/4 v7, 0x0

    aget v7, v2, v7

    cmpg-float v7, v7, v10

    if-ltz v7, :cond_1

    const/4 v7, 0x1

    aget v7, v2, v7

    cmpg-float v7, v7, v10

    if-ltz v7, :cond_1

    const/4 v7, 0x0

    aget v7, v2, v7

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v8

    int-to-float v8, v8

    cmpl-float v7, v7, v8

    if-gtz v7, :cond_1

    const/4 v7, 0x1

    aget v7, v2, v7

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v8

    int-to-float v8, v8

    cmpl-float v7, v7, v8

    if-lez v7, :cond_2

    .line 900
    :cond_1
    monitor-exit v6

    .line 921
    :goto_1
    return v4

    .line 903
    :cond_2
    invoke-virtual {v3}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v7

    if-nez v7, :cond_3

    .line 904
    invoke-virtual {v3}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 907
    :cond_3
    const/4 v7, 0x0

    aget v8, v2, v7

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v8, v9

    aput v8, v2, v7

    .line 908
    const/4 v7, 0x1

    aget v8, v2, v7

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v8, v9

    aput v8, v2, v7

    .line 910
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 911
    .local v1, "parent":Landroid/view/ViewParent;
    instance-of v7, v1, Landroid/view/View;

    if-eqz v7, :cond_4

    .line 912
    move-object v0, v1

    check-cast v0, Landroid/view/View;

    move-object v3, v0

    goto :goto_0

    .line 915
    :cond_4
    const/4 v3, 0x0

    goto :goto_0

    .line 918
    .end local v1    # "parent":Landroid/view/ViewParent;
    :cond_5
    monitor-exit v6

    move v4, v5

    .line 921
    goto :goto_1

    .line 918
    .end local v2    # "position":[F
    .end local v3    # "view":Landroid/view/View;
    :catchall_0
    move-exception v4

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method private resumeBlink()V
    .locals 1

    .prologue
    .line 646
    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    if-eqz v0, :cond_0

    .line 647
    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    invoke-virtual {v0}, Landroid/widget/Editor$Blink;->uncancel()V

    .line 648
    invoke-virtual {p0}, Landroid/widget/Editor;->makeBlink()V

    .line 650
    :cond_0
    return-void
.end method

.method private selectCurrentWord()Z
    .locals 20

    .prologue
    .line 737
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor;->canSelectText()Z

    move-result v18

    if-nez v18, :cond_0

    .line 738
    const/16 v18, 0x0

    .line 807
    :goto_0
    return v18

    .line 741
    :cond_0
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor;->hasPasswordTransformationMethod()Z

    move-result v18

    if-eqz v18, :cond_1

    .line 745
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->selectAllText()Z

    move-result v18

    goto :goto_0

    .line 748
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->getInputType()I

    move-result v2

    .line 749
    .local v2, "inputType":I
    and-int/lit8 v3, v2, 0xf

    .line 750
    .local v3, "klass":I
    and-int/lit16 v0, v2, 0xff0

    move/from16 v16, v0

    .line 753
    .local v16, "variation":I
    const/16 v18, 0x2

    move/from16 v0, v18

    if-eq v3, v0, :cond_2

    const/16 v18, 0x3

    move/from16 v0, v18

    if-eq v3, v0, :cond_2

    const/16 v18, 0x4

    move/from16 v0, v18

    if-eq v3, v0, :cond_2

    const/16 v18, 0x10

    move/from16 v0, v16

    move/from16 v1, v18

    if-eq v0, v1, :cond_2

    const/16 v18, 0x20

    move/from16 v0, v16

    move/from16 v1, v18

    if-eq v0, v1, :cond_2

    const/16 v18, 0xd0

    move/from16 v0, v16

    move/from16 v1, v18

    if-eq v0, v1, :cond_2

    const/16 v18, 0xb0

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_3

    .line 760
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->selectAllText()Z

    move-result v18

    goto :goto_0

    .line 763
    :cond_3
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor;->getLastTouchOffsets()J

    move-result-wide v4

    .line 764
    .local v4, "lastTouchOffsets":J
    invoke-static {v4, v5}, Landroid/text/TextUtils;->unpackRangeStartFromLong(J)I

    move-result v7

    .line 765
    .local v7, "minOffset":I
    invoke-static {v4, v5}, Landroid/text/TextUtils;->unpackRangeEndFromLong(J)I

    move-result v6

    .line 768
    .local v6, "maxOffset":I
    if-ltz v7, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/lang/CharSequence;->length()I

    move-result v18

    move/from16 v0, v18

    if-lt v7, v0, :cond_5

    :cond_4
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 769
    :cond_5
    if-ltz v6, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/lang/CharSequence;->length()I

    move-result v18

    move/from16 v0, v18

    if-lt v6, v0, :cond_7

    :cond_6
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 774
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v18

    check-cast v18, Landroid/text/Spanned;

    const-class v19, Landroid/text/style/URLSpan;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v0, v7, v6, v1}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [Landroid/text/style/URLSpan;

    .line 777
    .local v15, "urlSpans":[Landroid/text/style/URLSpan;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v18

    check-cast v18, Landroid/text/Spanned;

    const-class v19, Landroid/text/style/ReplacementSpan;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v0, v7, v6, v1}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Landroid/text/style/ReplacementSpan;

    .line 780
    .local v11, "replacementSpans":[Landroid/text/style/ReplacementSpan;
    array-length v0, v15

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_9

    .line 781
    const/16 v18, 0x0

    aget-object v14, v15, v18

    .line 782
    .local v14, "urlSpan":Landroid/text/style/URLSpan;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v18

    check-cast v18, Landroid/text/Spanned;

    move-object/from16 v0, v18

    invoke-interface {v0, v14}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v13

    .line 783
    .local v13, "selectionStart":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v18

    check-cast v18, Landroid/text/Spanned;

    move-object/from16 v0, v18

    invoke-interface {v0, v14}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v12

    .line 806
    .end local v14    # "urlSpan":Landroid/text/style/URLSpan;
    .local v12, "selectionEnd":I
    :cond_8
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v18

    check-cast v18, Landroid/text/Spannable;

    move-object/from16 v0, v18

    invoke-static {v0, v13, v12}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 807
    if-le v12, v13, :cond_c

    const/16 v18, 0x1

    goto/16 :goto_0

    .line 785
    .end local v12    # "selectionEnd":I
    .end local v13    # "selectionStart":I
    :cond_9
    array-length v0, v11

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_a

    .line 786
    const/16 v18, 0x0

    aget-object v10, v11, v18

    .line 787
    .local v10, "replacementSpan":Landroid/text/style/ReplacementSpan;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v18

    check-cast v18, Landroid/text/Spanned;

    move-object/from16 v0, v18

    invoke-interface {v0, v10}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v13

    .line 788
    .restart local v13    # "selectionStart":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v18

    check-cast v18, Landroid/text/Spanned;

    move-object/from16 v0, v18

    invoke-interface {v0, v10}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v12

    .line 790
    .restart local v12    # "selectionEnd":I
    goto :goto_1

    .line 791
    .end local v10    # "replacementSpan":Landroid/text/style/ReplacementSpan;
    .end local v12    # "selectionEnd":I
    .end local v13    # "selectionStart":I
    :cond_a
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Editor;->getWordIterator()Landroid/text/method/WordIterator;

    move-result-object v17

    .line 792
    .local v17, "wordIterator":Landroid/text/method/WordIterator;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v7, v6}, Landroid/text/method/WordIterator;->setCharSequence(Ljava/lang/CharSequence;II)V

    .line 794
    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Landroid/text/method/WordIterator;->getBeginning(I)I

    move-result v13

    .line 795
    .restart local v13    # "selectionStart":I
    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Landroid/text/method/WordIterator;->getEnd(I)I

    move-result v12

    .line 797
    .restart local v12    # "selectionEnd":I
    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v13, v0, :cond_b

    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v12, v0, :cond_b

    if-ne v13, v12, :cond_8

    .line 800
    :cond_b
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Landroid/widget/Editor;->getCharRange(I)J

    move-result-wide v8

    .line 801
    .local v8, "range":J
    invoke-static {v8, v9}, Landroid/text/TextUtils;->unpackRangeStartFromLong(J)I

    move-result v13

    .line 802
    invoke-static {v8, v9}, Landroid/text/TextUtils;->unpackRangeEndFromLong(J)I

    move-result v12

    goto/16 :goto_1

    .line 807
    .end local v8    # "range":J
    .end local v17    # "wordIterator":Landroid/text/method/WordIterator;
    :cond_c
    const/16 v18, 0x0

    goto/16 :goto_0
.end method

.method private sendUpdateSelection()V
    .locals 7

    .prologue
    .line 1406
    iget-object v1, p0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    iget v1, v1, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    if-gtz v1, :cond_1

    .line 1407
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 1408
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_1

    .line 1409
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v2

    .line 1410
    .local v2, "selectionStart":I
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v3

    .line 1411
    .local v3, "selectionEnd":I
    const/4 v4, -0x1

    .line 1412
    .local v4, "candStart":I
    const/4 v5, -0x1

    .line 1413
    .local v5, "candEnd":I
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    instance-of v1, v1, Landroid/text/Spannable;

    if-eqz v1, :cond_0

    .line 1414
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    check-cast v6, Landroid/text/Spannable;

    .line 1415
    .local v6, "sp":Landroid/text/Spannable;
    invoke-static {v6}, Lcom/android/internal/widget/EditableInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v4

    .line 1416
    invoke-static {v6}, Lcom/android/internal/widget/EditableInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v5

    .line 1420
    .end local v6    # "sp":Landroid/text/Spannable;
    :cond_0
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual/range {v0 .. v5}, Landroid/view/inputmethod/InputMethodManager;->updateSelection(Landroid/view/View;IIII)V

    .line 1424
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v2    # "selectionStart":I
    .end local v3    # "selectionEnd":I
    .end local v4    # "candStart":I
    .end local v5    # "candEnd":I
    :cond_1
    return-void
.end method

.method private setErrorIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 443
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v0, v1, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 444
    .local v0, "dr":Landroid/widget/TextView$Drawables;
    if-nez v0, :cond_0

    .line 445
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    new-instance v0, Landroid/widget/TextView$Drawables;

    .end local v0    # "dr":Landroid/widget/TextView$Drawables;
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/TextView$Drawables;-><init>(Landroid/content/Context;)V

    .restart local v0    # "dr":Landroid/widget/TextView$Drawables;
    iput-object v0, v1, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 447
    :cond_0
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1, v1}, Landroid/widget/TextView$Drawables;->setErrorDrawable(Landroid/graphics/drawable/Drawable;Landroid/widget/TextView;)V

    .line 449
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->resetResolvedDrawables()V

    .line 450
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->invalidate()V

    .line 451
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->requestLayout()V

    .line 452
    return-void
.end method

.method private shouldBlink()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 1986
    invoke-virtual {p0}, Landroid/widget/Editor;->isCursorVisible()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->isFocused()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1994
    :cond_0
    :goto_0
    return v2

    .line 1988
    :cond_1
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    .line 1989
    .local v1, "start":I
    if-ltz v1, :cond_0

    .line 1991
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .line 1992
    .local v0, "end":I
    if-ltz v0, :cond_0

    .line 1994
    if-ne v1, v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method private showError()V
    .locals 9

    .prologue
    const/high16 v8, 0x3f000000    # 0.5f

    const/4 v7, 0x1

    .line 389
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    if-nez v4, :cond_0

    .line 390
    iput-boolean v7, p0, Landroid/widget/Editor;->mShowErrorAfterAttach:Z

    .line 418
    :goto_0
    return-void

    .line 394
    :cond_0
    iget-object v4, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    if-nez v4, :cond_1

    .line 395
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 396
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v4, 0x1090104

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 399
    .local v0, "err":Landroid/widget/TextView;
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v2, v4, Landroid/util/DisplayMetrics;->density:F

    .line 400
    .local v2, "scale":F
    new-instance v4, Landroid/widget/Editor$ErrorPopup;

    const/high16 v5, 0x43480000    # 200.0f

    mul-float/2addr v5, v2

    add-float/2addr v5, v8

    float-to-int v5, v5

    const/high16 v6, 0x42480000    # 50.0f

    mul-float/2addr v6, v2

    add-float/2addr v6, v8

    float-to-int v6, v6

    invoke-direct {v4, v0, v5, v6}, Landroid/widget/Editor$ErrorPopup;-><init>(Landroid/widget/TextView;II)V

    iput-object v4, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    .line 401
    iget-object v4, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/Editor$ErrorPopup;->setFocusable(Z)V

    .line 403
    iget-object v4, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v4, v5}, Landroid/widget/Editor$ErrorPopup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 404
    iget-object v4, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    invoke-virtual {v4, v7}, Landroid/widget/Editor$ErrorPopup;->setOutsideTouchable(Z)V

    .line 409
    iget-object v4, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    invoke-virtual {v4, v7}, Landroid/widget/Editor$ErrorPopup;->setInputMethodMode(I)V

    .line 412
    .end local v0    # "err":Landroid/widget/TextView;
    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    .end local v2    # "scale":F
    :cond_1
    iget-object v4, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    invoke-virtual {v4}, Landroid/widget/Editor$ErrorPopup;->getContentView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 413
    .local v3, "tv":Landroid/widget/TextView;
    iget-object v4, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    iget-object v5, p0, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    invoke-direct {p0, v4, v5, v3}, Landroid/widget/Editor;->chooseSize(Landroid/widget/PopupWindow;Ljava/lang/CharSequence;Landroid/widget/TextView;)V

    .line 414
    iget-object v4, p0, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 416
    iget-object v4, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-direct {p0}, Landroid/widget/Editor;->getErrorX()I

    move-result v6

    invoke-direct {p0}, Landroid/widget/Editor;->getErrorY()I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/widget/Editor$ErrorPopup;->showAsDropDown(Landroid/view/View;II)V

    .line 417
    iget-object v4, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    iget-object v5, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    invoke-virtual {v5}, Landroid/widget/Editor$ErrorPopup;->isAboveAnchor()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/Editor$ErrorPopup;->fixDirection(Z)V

    goto :goto_0
.end method

.method private suspendBlink()V
    .locals 1

    .prologue
    .line 640
    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    if-eqz v0, :cond_0

    .line 641
    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    invoke-virtual {v0}, Landroid/widget/Editor$Blink;->cancel()V

    .line 643
    :cond_0
    return-void
.end method

.method private touchPositionIsInSelection()Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 851
    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v4

    .line 852
    .local v4, "selectionStart":I
    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v3

    .line 854
    .local v3, "selectionEnd":I
    if-ne v4, v3, :cond_0

    .line 869
    :goto_0
    return v7

    .line 858
    :cond_0
    if-le v4, v3, :cond_1

    .line 859
    move v5, v4

    .line 860
    .local v5, "tmp":I
    move v4, v3

    .line 861
    move v3, v5

    .line 862
    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    check-cast v6, Landroid/text/Spannable;

    invoke-static {v6, v4, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 865
    .end local v5    # "tmp":I
    :cond_1
    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v2

    .line 866
    .local v2, "selectionController":Landroid/widget/Editor$SelectionModifierCursorController;
    invoke-virtual {v2}, Landroid/widget/Editor$SelectionModifierCursorController;->getMinTouchOffset()I

    move-result v1

    .line 867
    .local v1, "minOffset":I
    invoke-virtual {v2}, Landroid/widget/Editor$SelectionModifierCursorController;->getMaxTouchOffset()I

    move-result v0

    .line 869
    .local v0, "maxOffset":I
    if-lt v1, v4, :cond_2

    if-ge v0, v3, :cond_2

    const/4 v6, 0x1

    :goto_1
    move v7, v6

    goto :goto_0

    :cond_2
    move v6, v7

    goto :goto_1
.end method

.method private updateCursorPosition(IIIF)V
    .locals 15
    .param p1, "cursorIndex"    # I
    .param p2, "top"    # I
    .param p3, "bottom"    # I
    .param p4, "horizontal"    # F

    .prologue
    .line 1888
    iget-object v10, p0, Landroid/widget/Editor;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v10, v10, p1

    if-nez v10, :cond_0

    .line 1889
    iget-object v10, p0, Landroid/widget/Editor;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    iget-object v11, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v11

    iget-object v12, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget v12, v12, Landroid/widget/TextView;->mCursorDrawableRes:I

    invoke-virtual {v11, v12}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    aput-object v11, v10, p1

    .line 1892
    :cond_0
    iget-object v10, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    if-nez v10, :cond_1

    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    iput-object v10, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    .line 1893
    :cond_1
    iget-object v10, p0, Landroid/widget/Editor;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v10, v10, p1

    iget-object v11, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v10, v11}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1894
    iget-object v10, p0, Landroid/widget/Editor;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v10, v10, p1

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    .line 1895
    .local v9, "width":I
    const/high16 v10, 0x3f000000    # 0.5f

    const/high16 v11, 0x3f000000    # 0.5f

    sub-float v11, p4, v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(FF)F

    move-result p4

    .line 1896
    move/from16 v0, p4

    float-to-int v10, v0

    iget-object v11, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->left:I

    sub-int v5, v10, v11

    .line 1899
    .local v5, "left":I
    const/4 v2, 0x0

    .line 1900
    .local v2, "cursorShiftToLeft":I
    iget v10, p0, Landroid/widget/Editor;->mDeviceDPI:I

    const/16 v11, 0x280

    if-lt v10, v11, :cond_6

    .line 1901
    const/4 v2, 0x5

    .line 1908
    :goto_0
    iget-object v10, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    sub-int v10, v9, v10

    iget-object v11, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->right:I

    sub-int v8, v10, v11

    .line 1909
    .local v8, "visibleWidth":I
    if-ge v8, v2, :cond_2

    .line 1910
    sub-int v10, v2, v8

    add-int/2addr v9, v10

    .line 1912
    :cond_2
    iget-object v10, p0, Landroid/widget/Editor;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v10, v10, p1

    iget-object v11, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    sub-int v11, p2, v11

    add-int v12, v5, v9

    iget-object v13, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->bottom:I

    add-int v13, v13, p3

    invoke-virtual {v10, v5, v11, v12, v13}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1915
    iget-object v10, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getGravity()I

    move-result v10

    and-int/lit8 v10, v10, 0x5

    const/4 v11, 0x5

    if-eq v10, v11, :cond_3

    iget-object v10, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getScrollX()I

    move-result v10

    if-gtz v10, :cond_3

    iget-object v10, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v10

    iget-object v11, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->length()I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/text/Layout;->getSecondaryHorizontal(I)F

    move-result v10

    iget-object v11, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getWidth()I

    move-result v11

    iget-object v12, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v12}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v12

    sub-int/2addr v11, v12

    iget-object v12, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v12}, Landroid/widget/TextView;->getTotalPaddingRight()I

    move-result v12

    sub-int/2addr v11, v12

    int-to-float v11, v11

    sub-float/2addr v10, v11

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-nez v10, :cond_5

    .line 1918
    :cond_3
    iget-object v10, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v4

    .line 1919
    .local v4, "layout":Landroid/text/Layout;
    iget-object v10, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    .line 1920
    .local v1, "cursorOffset":I
    invoke-virtual {v4, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v6

    .line 1922
    .local v6, "line":I
    invoke-virtual {v4, v6}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v7

    .line 1923
    .local v7, "lineEnd":I
    iget-object v10, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_4

    iget-object v10, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    add-int/lit8 v11, v7, -0x1

    invoke-interface {v10, v11}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    const/16 v11, 0xa

    if-ne v10, v11, :cond_4

    .line 1924
    add-int/lit8 v7, v7, -0x1

    .line 1927
    :cond_4
    iget-object v10, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v10

    invoke-virtual {v10, v1}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v3

    .line 1928
    .local v3, "isRtlCharAtOffset":Z
    if-ne v1, v7, :cond_5

    .line 1929
    if-eqz v3, :cond_9

    .line 1930
    iget v10, p0, Landroid/widget/Editor;->mDeviceDPI:I

    const/16 v11, 0x140

    if-lt v10, v11, :cond_8

    .line 1931
    iget-object v10, p0, Landroid/widget/Editor;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v10, v10, p1

    iget-object v11, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    sub-int v11, p2, v11

    add-int v12, v5, v9

    iget-object v13, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->bottom:I

    add-int v13, v13, p3

    invoke-virtual {v10, v5, v11, v12, v13}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1944
    .end local v1    # "cursorOffset":I
    .end local v3    # "isRtlCharAtOffset":Z
    .end local v4    # "layout":Landroid/text/Layout;
    .end local v6    # "line":I
    .end local v7    # "lineEnd":I
    :cond_5
    :goto_1
    return-void

    .line 1902
    .end local v8    # "visibleWidth":I
    :cond_6
    iget v10, p0, Landroid/widget/Editor;->mDeviceDPI:I

    const/16 v11, 0x140

    if-lt v10, v11, :cond_7

    .line 1903
    const/4 v2, 0x3

    goto/16 :goto_0

    .line 1905
    :cond_7
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1934
    .restart local v1    # "cursorOffset":I
    .restart local v3    # "isRtlCharAtOffset":Z
    .restart local v4    # "layout":Landroid/text/Layout;
    .restart local v6    # "line":I
    .restart local v7    # "lineEnd":I
    .restart local v8    # "visibleWidth":I
    :cond_8
    iget-object v10, p0, Landroid/widget/Editor;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v10, v10, p1

    add-int v11, v5, v2

    iget-object v12, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->top:I

    sub-int v12, p2, v12

    add-int v13, v5, v9

    add-int/2addr v13, v2

    iget-object v14, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->bottom:I

    add-int v14, v14, p3

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_1

    .line 1938
    :cond_9
    iget-object v10, p0, Landroid/widget/Editor;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v10, v10, p1

    sub-int v11, v5, v2

    iget-object v12, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->top:I

    sub-int v12, p2, v12

    add-int v13, v5, v9

    sub-int/2addr v13, v2

    iget-object v14, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->bottom:I

    add-int v14, v14, p3

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_1
.end method

.method private updateSpellCheckSpans(IIZ)V
    .locals 2
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "createSpellChecker"    # Z

    .prologue
    .line 614
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->removeAdjacentSuggestionSpans(I)V

    .line 615
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->removeAdjacentSuggestionSpans(I)V

    .line 617
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isSuggestionsEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    instance-of v0, v0, Landroid/inputmethodservice/ExtractEditText;

    if-nez v0, :cond_1

    .line 619
    iget-object v0, p0, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    if-nez v0, :cond_0

    if-eqz p3, :cond_0

    .line 620
    new-instance v0, Landroid/widget/SpellChecker;

    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-direct {v0, v1}, Landroid/widget/SpellChecker;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    .line 622
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    if-eqz v0, :cond_1

    .line 623
    iget-object v0, p0, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    invoke-virtual {v0, p1, p2}, Landroid/widget/SpellChecker;->spellCheck(II)V

    .line 626
    :cond_1
    return-void
.end method


# virtual methods
.method public addSpanWatchers(Landroid/text/Spannable;)V
    .locals 4
    .param p1, "text"    # Landroid/text/Spannable;

    .prologue
    const/16 v3, 0x12

    const/4 v2, 0x0

    .line 2156
    invoke-interface {p1}, Landroid/text/Spannable;->length()I

    move-result v0

    .line 2158
    .local v0, "textLength":I
    iget-object v1, p0, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    if-eqz v1, :cond_0

    .line 2159
    iget-object v1, p0, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    invoke-interface {p1, v1, v2, v0, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 2162
    :cond_0
    iget-object v1, p0, Landroid/widget/Editor;->mSpanController:Landroid/widget/Editor$SpanController;

    if-nez v1, :cond_1

    .line 2163
    new-instance v1, Landroid/widget/Editor$SpanController;

    invoke-direct {v1, p0}, Landroid/widget/Editor$SpanController;-><init>(Landroid/widget/Editor;)V

    iput-object v1, p0, Landroid/widget/Editor;->mSpanController:Landroid/widget/Editor$SpanController;

    .line 2165
    :cond_1
    iget-object v1, p0, Landroid/widget/Editor;->mSpanController:Landroid/widget/Editor$SpanController;

    invoke-interface {p1, v1, v2, v0, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 2166
    return-void
.end method

.method adjustInputType(ZZZZ)V
    .locals 2
    .param p1, "password"    # Z
    .param p2, "passwordInputType"    # Z
    .param p3, "webPasswordInputType"    # Z
    .param p4, "numberPasswordInputType"    # Z

    .prologue
    .line 657
    iget v0, p0, Landroid/widget/Editor;->mInputType:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 658
    if-nez p1, :cond_0

    if-eqz p2, :cond_1

    .line 659
    :cond_0
    iget v0, p0, Landroid/widget/Editor;->mInputType:I

    and-int/lit16 v0, v0, -0xff1

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Landroid/widget/Editor;->mInputType:I

    .line 662
    :cond_1
    if-eqz p3, :cond_2

    .line 663
    iget v0, p0, Landroid/widget/Editor;->mInputType:I

    and-int/lit16 v0, v0, -0xff1

    or-int/lit16 v0, v0, 0xe0

    iput v0, p0, Landroid/widget/Editor;->mInputType:I

    .line 672
    :cond_2
    :goto_0
    return-void

    .line 666
    :cond_3
    iget v0, p0, Landroid/widget/Editor;->mInputType:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 667
    if-eqz p4, :cond_2

    .line 668
    iget v0, p0, Landroid/widget/Editor;->mInputType:I

    and-int/lit16 v0, v0, -0xff1

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Landroid/widget/Editor;->mInputType:I

    goto :goto_0
.end method

.method areSuggestionsShown()Z
    .locals 1

    .prologue
    .line 1973
    iget-object v0, p0, Landroid/widget/Editor;->mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor;->mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

    invoke-virtual {v0}, Landroid/widget/Editor$SuggestionsPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public beginBatchEdit()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 1231
    iput-boolean v5, p0, Landroid/widget/Editor;->mInBatchEditControllers:Z

    .line 1232
    iget-object v0, p0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    .line 1233
    .local v0, "ims":Landroid/widget/Editor$InputMethodState;
    if-eqz v0, :cond_0

    .line 1234
    iget v2, v0, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    add-int/lit8 v1, v2, 0x1

    iput v1, v0, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    .line 1235
    .local v1, "nesting":I
    if-ne v1, v5, :cond_0

    .line 1236
    iput-boolean v3, v0, Landroid/widget/Editor$InputMethodState;->mCursorChanged:Z

    .line 1237
    iput v3, v0, Landroid/widget/Editor$InputMethodState;->mChangedDelta:I

    .line 1238
    iget-boolean v2, v0, Landroid/widget/Editor$InputMethodState;->mContentChanged:Z

    if-eqz v2, :cond_1

    .line 1241
    iput v3, v0, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    .line 1242
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    iput v2, v0, Landroid/widget/Editor$InputMethodState;->mChangedEnd:I

    .line 1248
    :goto_0
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->onBeginBatchEdit()V

    .line 1251
    .end local v1    # "nesting":I
    :cond_0
    return-void

    .line 1244
    .restart local v1    # "nesting":I
    :cond_1
    iput v4, v0, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    .line 1245
    iput v4, v0, Landroid/widget/Editor$InputMethodState;->mChangedEnd:I

    .line 1246
    iput-boolean v3, v0, Landroid/widget/Editor$InputMethodState;->mContentChanged:Z

    goto :goto_0
.end method

.method createInputContentTypeIfNeeded()V
    .locals 1

    .prologue
    .line 533
    iget-object v0, p0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    if-nez v0, :cond_0

    .line 534
    new-instance v0, Landroid/widget/Editor$InputContentType;

    invoke-direct {v0}, Landroid/widget/Editor$InputContentType;-><init>()V

    iput-object v0, p0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    .line 536
    :cond_0
    return-void
.end method

.method createInputMethodStateIfNeeded()V
    .locals 1

    .prologue
    .line 539
    iget-object v0, p0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    if-nez v0, :cond_0

    .line 540
    new-instance v0, Landroid/widget/Editor$InputMethodState;

    invoke-direct {v0}, Landroid/widget/Editor$InputMethodState;-><init>()V

    iput-object v0, p0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    .line 542
    :cond_0
    return-void
.end method

.method public enableNewActionPopupWindow(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 6196
    iput-boolean p1, p0, Landroid/widget/Editor;->mEnableActionPopupWindow:Z

    .line 6197
    return-void
.end method

.method public endBatchEdit()V
    .locals 3

    .prologue
    .line 1254
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/widget/Editor;->mInBatchEditControllers:Z

    .line 1255
    iget-object v0, p0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    .line 1256
    .local v0, "ims":Landroid/widget/Editor$InputMethodState;
    if-eqz v0, :cond_0

    .line 1257
    iget v2, v0, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    add-int/lit8 v1, v2, -0x1

    iput v1, v0, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    .line 1258
    .local v1, "nesting":I
    if-nez v1, :cond_0

    .line 1259
    invoke-virtual {p0, v0}, Landroid/widget/Editor;->finishBatchEdit(Landroid/widget/Editor$InputMethodState;)V

    .line 1262
    .end local v1    # "nesting":I
    :cond_0
    return-void
.end method

.method ensureEndedBatchEdit()V
    .locals 2

    .prologue
    .line 1265
    iget-object v0, p0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    .line 1266
    .local v0, "ims":Landroid/widget/Editor$InputMethodState;
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    if-eqz v1, :cond_0

    .line 1267
    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    .line 1268
    invoke-virtual {p0, v0}, Landroid/widget/Editor;->finishBatchEdit(Landroid/widget/Editor$InputMethodState;)V

    .line 1270
    :cond_0
    return-void
.end method

.method extractText(Landroid/view/inputmethod/ExtractedTextRequest;Landroid/view/inputmethod/ExtractedText;)Z
    .locals 6
    .param p1, "request"    # Landroid/view/inputmethod/ExtractedTextRequest;
    .param p2, "outText"    # Landroid/view/inputmethod/ExtractedText;

    .prologue
    const/4 v2, -0x1

    .line 1291
    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move v4, v2

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/Editor;->extractTextInternal(Landroid/view/inputmethod/ExtractedTextRequest;IIILandroid/view/inputmethod/ExtractedText;)Z

    move-result v0

    return v0
.end method

.method finishBatchEdit(Landroid/widget/Editor$InputMethodState;)V
    .locals 1
    .param p1, "ims"    # Landroid/widget/Editor$InputMethodState;

    .prologue
    .line 1273
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->onEndBatchEdit()V

    .line 1275
    iget-boolean v0, p1, Landroid/widget/Editor$InputMethodState;->mContentChanged:Z

    if-nez v0, :cond_0

    iget-boolean v0, p1, Landroid/widget/Editor$InputMethodState;->mSelectionModeChanged:Z

    if-eqz v0, :cond_2

    .line 1276
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->updateAfterEdit()V

    .line 1277
    invoke-virtual {p0}, Landroid/widget/Editor;->reportExtractedText()Z

    .line 1284
    :cond_1
    :goto_0
    invoke-direct {p0}, Landroid/widget/Editor;->sendUpdateSelection()V

    .line 1285
    return-void

    .line 1278
    :cond_2
    iget-boolean v0, p1, Landroid/widget/Editor$InputMethodState;->mCursorChanged:Z

    if-eqz v0, :cond_1

    .line 1280
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->invalidateCursor()V

    goto :goto_0
.end method

.method getInsertionController()Landroid/widget/Editor$InsertionPointCursorController;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1858
    iget-boolean v2, p0, Landroid/widget/Editor;->mInsertionControllerEnabled:Z

    if-nez v2, :cond_0

    .line 1869
    :goto_0
    return-object v1

    .line 1862
    :cond_0
    iget-object v2, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    if-nez v2, :cond_1

    .line 1863
    new-instance v2, Landroid/widget/Editor$InsertionPointCursorController;

    invoke-direct {v2, p0, v1}, Landroid/widget/Editor$InsertionPointCursorController;-><init>(Landroid/widget/Editor;Landroid/widget/Editor$1;)V

    iput-object v2, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    .line 1865
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 1866
    .local v0, "observer":Landroid/view/ViewTreeObserver;
    iget-object v1, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 1869
    .end local v0    # "observer":Landroid/view/ViewTreeObserver;
    :cond_1
    iget-object v1, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    goto :goto_0
.end method

.method getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;
    .locals 2

    .prologue
    .line 1873
    iget-boolean v1, p0, Landroid/widget/Editor;->mSelectionControllerEnabled:Z

    if-nez v1, :cond_0

    .line 1874
    const/4 v1, 0x0

    .line 1884
    :goto_0
    return-object v1

    .line 1877
    :cond_0
    iget-object v1, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    if-nez v1, :cond_1

    .line 1878
    new-instance v1, Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-direct {v1, p0}, Landroid/widget/Editor$SelectionModifierCursorController;-><init>(Landroid/widget/Editor;)V

    iput-object v1, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    .line 1880
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 1881
    .local v0, "observer":Landroid/view/ViewTreeObserver;
    iget-object v1, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 1884
    .end local v0    # "observer":Landroid/view/ViewTreeObserver;
    :cond_1
    iget-object v1, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    goto :goto_0
.end method

.method public getWordIterator()Landroid/text/method/WordIterator;
    .locals 2

    .prologue
    .line 819
    iget-object v0, p0, Landroid/widget/Editor;->mWordIterator:Landroid/text/method/WordIterator;

    if-nez v0, :cond_0

    .line 820
    new-instance v0, Landroid/text/method/WordIterator;

    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextServicesLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/method/WordIterator;-><init>(Ljava/util/Locale;)V

    iput-object v0, p0, Landroid/widget/Editor;->mWordIterator:Landroid/text/method/WordIterator;

    .line 822
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mWordIterator:Landroid/text/method/WordIterator;

    return-object v0
.end method

.method hasInsertionController()Z
    .locals 1

    .prologue
    .line 1847
    iget-boolean v0, p0, Landroid/widget/Editor;->mInsertionControllerEnabled:Z

    return v0
.end method

.method hasSelectionController()Z
    .locals 1

    .prologue
    .line 1854
    iget-boolean v0, p0, Landroid/widget/Editor;->mSelectionControllerEnabled:Z

    return v0
.end method

.method hideControllers()V
    .locals 0

    .prologue
    .line 590
    invoke-direct {p0}, Landroid/widget/Editor;->hideCursorControllers()V

    .line 591
    invoke-direct {p0}, Landroid/widget/Editor;->hideSpanControllers()V

    .line 592
    return-void
.end method

.method public initSelectControllersPosition()V
    .locals 1

    .prologue
    .line 5990
    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5991
    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionModifierCursorController;->initPreviousOffset()V

    .line 5993
    :cond_0
    return-void
.end method

.method invalidateTextDisplayList()V
    .locals 3

    .prologue
    .line 1629
    iget-object v1, p0, Landroid/widget/Editor;->mTextDisplayLists:[Landroid/widget/Editor$TextDisplayList;

    if-eqz v1, :cond_1

    .line 1630
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/widget/Editor;->mTextDisplayLists:[Landroid/widget/Editor$TextDisplayList;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 1631
    iget-object v1, p0, Landroid/widget/Editor;->mTextDisplayLists:[Landroid/widget/Editor$TextDisplayList;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/Editor;->mTextDisplayLists:[Landroid/widget/Editor$TextDisplayList;

    aget-object v1, v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/widget/Editor$TextDisplayList;->isDirty:Z

    .line 1630
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1634
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method invalidateTextDisplayList(Landroid/text/Layout;II)V
    .locals 10
    .param p1, "layout"    # Landroid/text/Layout;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 1600
    iget-object v8, p0, Landroid/widget/Editor;->mTextDisplayLists:[Landroid/widget/Editor$TextDisplayList;

    if-eqz v8, :cond_2

    instance-of v8, p1, Landroid/text/DynamicLayout;

    if-eqz v8, :cond_2

    .line 1601
    invoke-virtual {p1, p2}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v4

    .line 1602
    .local v4, "firstLine":I
    invoke-virtual {p1, p3}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v6

    .local v6, "lastLine":I
    move-object v3, p1

    .line 1604
    check-cast v3, Landroid/text/DynamicLayout;

    .line 1605
    .local v3, "dynamicLayout":Landroid/text/DynamicLayout;
    invoke-virtual {v3}, Landroid/text/DynamicLayout;->getBlockEndLines()[I

    move-result-object v0

    .line 1606
    .local v0, "blockEndLines":[I
    invoke-virtual {v3}, Landroid/text/DynamicLayout;->getBlockIndices()[I

    move-result-object v2

    .line 1607
    .local v2, "blockIndices":[I
    invoke-virtual {v3}, Landroid/text/DynamicLayout;->getNumberOfBlocks()I

    move-result v7

    .line 1609
    .local v7, "numberOfBlocks":I
    const/4 v5, 0x0

    .line 1611
    .local v5, "i":I
    :goto_0
    if-ge v5, v7, :cond_0

    .line 1612
    aget v8, v0, v5

    if-lt v8, v4, :cond_3

    .line 1617
    :cond_0
    :goto_1
    if-ge v5, v7, :cond_2

    .line 1618
    aget v1, v2, v5

    .line 1619
    .local v1, "blockIndex":I
    const/4 v8, -0x1

    if-eq v1, v8, :cond_1

    .line 1620
    iget-object v8, p0, Landroid/widget/Editor;->mTextDisplayLists:[Landroid/widget/Editor$TextDisplayList;

    aget-object v8, v8, v1

    const/4 v9, 0x1

    iput-boolean v9, v8, Landroid/widget/Editor$TextDisplayList;->isDirty:Z

    .line 1622
    :cond_1
    aget v8, v0, v5

    if-lt v8, v6, :cond_4

    .line 1626
    .end local v0    # "blockEndLines":[I
    .end local v1    # "blockIndex":I
    .end local v2    # "blockIndices":[I
    .end local v3    # "dynamicLayout":Landroid/text/DynamicLayout;
    .end local v4    # "firstLine":I
    .end local v5    # "i":I
    .end local v6    # "lastLine":I
    .end local v7    # "numberOfBlocks":I
    :cond_2
    return-void

    .line 1613
    .restart local v0    # "blockEndLines":[I
    .restart local v2    # "blockIndices":[I
    .restart local v3    # "dynamicLayout":Landroid/text/DynamicLayout;
    .restart local v4    # "firstLine":I
    .restart local v5    # "i":I
    .restart local v6    # "lastLine":I
    .restart local v7    # "numberOfBlocks":I
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1623
    .restart local v1    # "blockIndex":I
    :cond_4
    add-int/lit8 v5, v5, 0x1

    .line 1624
    goto :goto_1
.end method

.method public isCursorControllersShowing()Z
    .locals 1

    .prologue
    .line 6362
    const/4 v0, 0x0

    return v0
.end method

.method isCursorVisible()Z
    .locals 1

    .prologue
    .line 546
    iget-boolean v0, p0, Landroid/widget/Editor;->mCursorVisible:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnableNewActionPopupWindow()Z
    .locals 1

    .prologue
    .line 6201
    iget-boolean v0, p0, Landroid/widget/Editor;->mEnableActionPopupWindow:Z

    return v0
.end method

.method public isTranslatorEnabled()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 6150
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 6151
    .local v1, "pm":Landroid/content/pm/PackageManager;
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.sec.android.app.translator.TRANSLATE_FOR_NON_ACTIVITY"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 6153
    .local v0, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget-boolean v3, p0, Landroid/widget/Editor;->mTranslateEnable:Z

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_0

    .line 6154
    const/4 v2, 0x1

    .line 6156
    :cond_0
    return v2
.end method

.method makeBlink()V
    .locals 6

    .prologue
    .line 1998
    invoke-direct {p0}, Landroid/widget/Editor;->shouldBlink()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1999
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/Editor;->mShowCursor:J

    .line 2000
    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/Editor$Blink;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/widget/Editor$Blink;-><init>(Landroid/widget/Editor;Landroid/widget/Editor$1;)V

    iput-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    .line 2001
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    iget-object v1, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    invoke-virtual {v0, v1}, Landroid/widget/Editor$Blink;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2002
    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    iget-object v1, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    iget-wide v2, p0, Landroid/widget/Editor;->mShowCursor:J

    const-wide/16 v4, 0x1f4

    add-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/Editor$Blink;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 2006
    :cond_1
    :goto_0
    return-void

    .line 2004
    :cond_2
    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    iget-object v1, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    invoke-virtual {v0, v1}, Landroid/widget/Editor$Blink;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method onAttachedToWindow()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 296
    iget-boolean v1, p0, Landroid/widget/Editor;->mShowErrorAfterAttach:Z

    if-eqz v1, :cond_0

    .line 297
    invoke-direct {p0}, Landroid/widget/Editor;->showError()V

    .line 298
    iput-boolean v3, p0, Landroid/widget/Editor;->mShowErrorAfterAttach:Z

    .line 300
    :cond_0
    iput-boolean v3, p0, Landroid/widget/Editor;->mTemporaryDetach:Z

    .line 302
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 305
    .local v0, "observer":Landroid/view/ViewTreeObserver;
    iget-object v1, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    if-eqz v1, :cond_1

    .line 306
    iget-object v1, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 308
    :cond_1
    iget-object v1, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    if-eqz v1, :cond_2

    .line 309
    iget-object v1, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-virtual {v1}, Landroid/widget/Editor$SelectionModifierCursorController;->resetTouchOffsets()V

    .line 310
    iget-object v1, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 312
    :cond_2
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-direct {p0, v3, v1, v4}, Landroid/widget/Editor;->updateSpellCheckSpans(IIZ)V

    .line 315
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->hasTransientState()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v2

    if-eq v1, v2, :cond_3

    .line 320
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setHasTransientState(Z)V

    .line 323
    invoke-virtual {p0}, Landroid/widget/Editor;->startSelectionActionMode()Z

    .line 326
    :cond_3
    invoke-direct {p0}, Landroid/widget/Editor;->getPositionListener()Landroid/widget/Editor$PositionListener;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/Editor;->mCursorAnchorInfoNotifier:Landroid/widget/Editor$CursorAnchorInfoNotifier;

    invoke-virtual {v1, v2, v4}, Landroid/widget/Editor$PositionListener;->addSubscriber(Landroid/widget/Editor$TextViewPositionListener;Z)V

    .line 327
    return-void
.end method

.method public onCommitCorrection(Landroid/view/inputmethod/CorrectionInfo;)V
    .locals 2
    .param p1, "info"    # Landroid/view/inputmethod/CorrectionInfo;

    .prologue
    .line 1955
    iget-object v0, p0, Landroid/widget/Editor;->mCorrectionHighlighter:Landroid/widget/Editor$CorrectionHighlighter;

    if-nez v0, :cond_0

    .line 1956
    new-instance v0, Landroid/widget/Editor$CorrectionHighlighter;

    invoke-direct {v0, p0}, Landroid/widget/Editor$CorrectionHighlighter;-><init>(Landroid/widget/Editor;)V

    iput-object v0, p0, Landroid/widget/Editor;->mCorrectionHighlighter:Landroid/widget/Editor$CorrectionHighlighter;

    .line 1961
    :goto_0
    iget-object v0, p0, Landroid/widget/Editor;->mCorrectionHighlighter:Landroid/widget/Editor$CorrectionHighlighter;

    invoke-virtual {v0, p1}, Landroid/widget/Editor$CorrectionHighlighter;->highlight(Landroid/view/inputmethod/CorrectionInfo;)V

    .line 1962
    return-void

    .line 1958
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mCorrectionHighlighter:Landroid/widget/Editor$CorrectionHighlighter;

    const/4 v1, 0x0

    # invokes: Landroid/widget/Editor$CorrectionHighlighter;->invalidate(Z)V
    invoke-static {v0, v1}, Landroid/widget/Editor$CorrectionHighlighter;->access$700(Landroid/widget/Editor$CorrectionHighlighter;Z)V

    goto :goto_0
.end method

.method onDetachedFromWindow()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 330
    invoke-direct {p0}, Landroid/widget/Editor;->getPositionListener()Landroid/widget/Editor$PositionListener;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor;->mCursorAnchorInfoNotifier:Landroid/widget/Editor$CursorAnchorInfoNotifier;

    invoke-virtual {v0, v1}, Landroid/widget/Editor$PositionListener;->removeSubscriber(Landroid/widget/Editor$TextViewPositionListener;)V

    .line 332
    iget-object v0, p0, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 333
    invoke-direct {p0}, Landroid/widget/Editor;->hideError()V

    .line 336
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    if-eqz v0, :cond_1

    .line 337
    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    iget-object v1, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    invoke-virtual {v0, v1}, Landroid/widget/Editor$Blink;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 340
    :cond_1
    iget-object v0, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    if-eqz v0, :cond_2

    .line 341
    iget-object v0, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    invoke-virtual {v0}, Landroid/widget/Editor$InsertionPointCursorController;->onDetached()V

    .line 344
    :cond_2
    iget-object v0, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    if-eqz v0, :cond_3

    .line 345
    iget-object v0, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionModifierCursorController;->onDetached()V

    .line 348
    :cond_3
    iget-object v0, p0, Landroid/widget/Editor;->mShowSuggestionRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_4

    .line 349
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/Editor;->mShowSuggestionRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 352
    :cond_4
    invoke-direct {p0}, Landroid/widget/Editor;->destroyDisplayListsData()V

    .line 354
    iget-object v0, p0, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    if-eqz v0, :cond_5

    .line 355
    iget-object v0, p0, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    invoke-virtual {v0}, Landroid/widget/SpellChecker;->closeSession()V

    .line 358
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    .line 361
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Editor;->mPreserveDetachedSelection:Z

    .line 362
    invoke-virtual {p0}, Landroid/widget/Editor;->hideControllers()V

    .line 363
    iput-boolean v2, p0, Landroid/widget/Editor;->mPreserveDetachedSelection:Z

    .line 364
    iput-boolean v2, p0, Landroid/widget/Editor;->mTemporaryDetach:Z

    .line 367
    iget-object v0, p0, Landroid/widget/Editor;->mPositionListener:Landroid/widget/Editor$PositionListener;

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isWritingBuddyEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->getWritingBuddy(Z)Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 371
    invoke-virtual {p0, v2}, Landroid/widget/Editor;->setWBPositionListenerEnalbed(Z)V

    .line 374
    :cond_6
    return-void
.end method

.method onDraw(Landroid/graphics/Canvas;Landroid/text/Layout;Landroid/graphics/Path;Landroid/graphics/Paint;I)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "layout"    # Landroid/text/Layout;
    .param p3, "highlight"    # Landroid/graphics/Path;
    .param p4, "highlightPaint"    # Landroid/graphics/Paint;
    .param p5, "cursorOffsetVertical"    # I

    .prologue
    .line 1428
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v4

    .line 1429
    .local v4, "selectionStart":I
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v3

    .line 1431
    .local v3, "selectionEnd":I
    iget-object v1, p0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    .line 1432
    .local v1, "ims":Landroid/widget/Editor$InputMethodState;
    if-eqz v1, :cond_1

    iget v5, v1, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    if-nez v5, :cond_1

    .line 1433
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 1434
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_1

    .line 1435
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1436
    const/4 v2, 0x0

    .line 1437
    .local v2, "reported":Z
    iget-boolean v5, v1, Landroid/widget/Editor$InputMethodState;->mContentChanged:Z

    if-nez v5, :cond_0

    iget-boolean v5, v1, Landroid/widget/Editor$InputMethodState;->mSelectionModeChanged:Z

    if-eqz v5, :cond_1

    .line 1441
    :cond_0
    invoke-virtual {p0}, Landroid/widget/Editor;->reportExtractedText()Z

    .line 1447
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v2    # "reported":Z
    :cond_1
    iget-object v5, p0, Landroid/widget/Editor;->mCorrectionHighlighter:Landroid/widget/Editor$CorrectionHighlighter;

    if-eqz v5, :cond_2

    .line 1448
    iget-object v5, p0, Landroid/widget/Editor;->mCorrectionHighlighter:Landroid/widget/Editor$CorrectionHighlighter;

    invoke-virtual {v5, p1, p5}, Landroid/widget/Editor$CorrectionHighlighter;->draw(Landroid/graphics/Canvas;I)V

    .line 1451
    :cond_2
    if-eqz p3, :cond_5

    if-ne v4, v3, :cond_5

    iget v5, p0, Landroid/widget/Editor;->mCursorCount:I

    if-lez v5, :cond_5

    .line 1453
    iget-object v5, p0, Landroid/widget/Editor;->mSelectionActionMode:Landroid/view/ActionMode;

    if-nez v5, :cond_3

    iget-boolean v5, p0, Landroid/widget/Editor;->mNewSelectionActionMode:Z

    if-eqz v5, :cond_4

    .line 1454
    :cond_3
    invoke-virtual {p0}, Landroid/widget/Editor;->stopSelectionActionMode()V

    .line 1457
    :cond_4
    invoke-direct {p0, p1, p5}, Landroid/widget/Editor;->drawCursor(Landroid/graphics/Canvas;I)V

    .line 1460
    const/4 p3, 0x0

    .line 1463
    :cond_5
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->canHaveDisplayList()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1464
    invoke-direct/range {p0 .. p5}, Landroid/widget/Editor;->drawHardwareAccelerated(Landroid/graphics/Canvas;Landroid/text/Layout;Landroid/graphics/Path;Landroid/graphics/Paint;I)V

    .line 1469
    :goto_0
    return-void

    .line 1467
    :cond_6
    invoke-virtual {p2, p1, p3, p4, p5}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;I)V

    goto :goto_0
.end method

.method onDrop(Landroid/view/DragEvent;)V
    .locals 25
    .param p1, "event"    # Landroid/view/DragEvent;

    .prologue
    .line 2079
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v22, ""

    move-object/from16 v0, v22

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2080
    .local v4, "content":Ljava/lang/StringBuilder;
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getClipData()Landroid/content/ClipData;

    move-result-object v3

    .line 2083
    .local v3, "clipData":Landroid/content/ClipData;
    if-nez v3, :cond_0

    .line 2084
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/widget/TextView;->setOnDragResult(Z)V

    .line 2153
    :goto_0
    return-void

    .line 2089
    :cond_0
    invoke-virtual {v3}, Landroid/content/ClipData;->getItemCount()I

    move-result v11

    .line 2090
    .local v11, "itemCount":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    if-ge v9, v11, :cond_2

    .line 2091
    invoke-virtual {v3, v9}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v10

    .line 2092
    .local v10, "item":Landroid/content/ClipData$Item;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Landroid/content/ClipData$Item;->coerceToStyledTextForEditor(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v20

    .line 2093
    .local v20, "str":Ljava/lang/CharSequence;
    if-eqz v20, :cond_1

    .line 2094
    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 2090
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 2098
    .end local v10    # "item":Landroid/content/ClipData$Item;
    .end local v20    # "str":Ljava/lang/CharSequence;
    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v22

    if-nez v22, :cond_3

    .line 2099
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/widget/TextView;->setOnDragResult(Z)V

    goto :goto_0

    .line 2104
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v22, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getX()F

    move-result v23

    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getY()F

    move-result v24

    invoke-virtual/range {v22 .. v24}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v16

    .line 2106
    .local v16, "offset":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v12

    .line 2107
    .local v12, "localState":Ljava/lang/Object;
    const/4 v6, 0x0

    .line 2108
    .local v6, "dragLocalState":Landroid/widget/Editor$DragLocalState;
    instance-of v0, v12, Landroid/widget/Editor$DragLocalState;

    move/from16 v22, v0

    if-eqz v22, :cond_4

    move-object v6, v12

    .line 2109
    check-cast v6, Landroid/widget/Editor$DragLocalState;

    .line 2111
    :cond_4
    if-eqz v6, :cond_5

    iget-object v0, v6, Landroid/widget/Editor$DragLocalState;->sourceTextView:Landroid/widget/TextView;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_5

    const/4 v5, 0x1

    .line 2114
    .local v5, "dragDropIntoItself":Z
    :goto_2
    if-eqz v5, :cond_6

    .line 2115
    iget v0, v6, Landroid/widget/Editor$DragLocalState;->start:I

    move/from16 v22, v0

    move/from16 v0, v16

    move/from16 v1, v22

    if-lt v0, v1, :cond_6

    iget v0, v6, Landroid/widget/Editor$DragLocalState;->end:I

    move/from16 v22, v0

    move/from16 v0, v16

    move/from16 v1, v22

    if-ge v0, v1, :cond_6

    .line 2117
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/widget/TextView;->setOnDragResult(Z)V

    goto/16 :goto_0

    .line 2111
    .end local v5    # "dragDropIntoItself":Z
    :cond_5
    const/4 v5, 0x0

    goto :goto_2

    .line 2122
    .restart local v5    # "dragDropIntoItself":Z
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/lang/CharSequence;->length()I

    move-result v17

    .line 2123
    .local v17, "originalLength":I
    move/from16 v14, v16

    .line 2124
    .local v14, "min":I
    move/from16 v13, v16

    .line 2126
    .local v13, "max":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v22

    check-cast v22, Landroid/text/Spannable;

    move-object/from16 v0, v22

    invoke-static {v0, v13}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 2127
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v14, v13, v4}, Landroid/widget/TextView;->replaceText_internal(IILjava/lang/CharSequence;)V

    .line 2129
    if-eqz v5, :cond_8

    .line 2130
    iget v8, v6, Landroid/widget/Editor$DragLocalState;->start:I

    .line 2131
    .local v8, "dragSourceStart":I
    iget v7, v6, Landroid/widget/Editor$DragLocalState;->end:I

    .line 2132
    .local v7, "dragSourceEnd":I
    if-gt v13, v8, :cond_7

    .line 2134
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/lang/CharSequence;->length()I

    move-result v22

    sub-int v19, v22, v17

    .line 2135
    .local v19, "shift":I
    add-int v8, v8, v19

    .line 2136
    add-int v7, v7, v19

    .line 2140
    .end local v19    # "shift":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v8, v7}, Landroid/widget/TextView;->deleteText_internal(II)V

    .line 2143
    const/16 v22, 0x0

    add-int/lit8 v23, v8, -0x1

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->max(II)I

    move-result v18

    .line 2144
    .local v18, "prevCharIdx":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/lang/CharSequence;->length()I

    move-result v22

    add-int/lit8 v23, v8, 0x1

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 2145
    .local v15, "nextCharIdx":I
    add-int/lit8 v22, v18, 0x1

    move/from16 v0, v22

    if-le v15, v0, :cond_8

    .line 2146
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, v18

    invoke-virtual {v0, v1, v15}, Landroid/widget/TextView;->getTransformedText(II)Ljava/lang/CharSequence;

    move-result-object v21

    .line 2147
    .local v21, "t":Ljava/lang/CharSequence;
    const/16 v22, 0x0

    invoke-interface/range {v21 .. v22}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v22

    if-eqz v22, :cond_8

    const/16 v22, 0x1

    invoke-interface/range {v21 .. v22}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v22

    if-eqz v22, :cond_8

    .line 2148
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v22, v0

    add-int/lit8 v23, v18, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v18

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->deleteText_internal(II)V

    .line 2152
    .end local v7    # "dragSourceEnd":I
    .end local v8    # "dragSourceStart":I
    .end local v15    # "nextCharIdx":I
    .end local v18    # "prevCharIdx":I
    .end local v21    # "t":Ljava/lang/CharSequence;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Landroid/widget/TextView;->setOnDragResult(Z)V

    goto/16 :goto_0
.end method

.method onFocusChanged(ZI)V
    .locals 10
    .param p1, "focused"    # Z
    .param p2, "direction"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1017
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Landroid/widget/Editor;->mShowCursor:J

    .line 1018
    invoke-virtual {p0}, Landroid/widget/Editor;->ensureEndedBatchEdit()V

    .line 1020
    if-eqz p1, :cond_f

    .line 1021
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v4

    .line 1022
    .local v4, "selStart":I
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v3

    .line 1024
    .local v3, "selEnd":I
    iget-boolean v5, p0, Landroid/widget/Editor;->mNewActionPopup:Z

    if-eqz v5, :cond_1

    iget-boolean v5, p0, Landroid/widget/Editor;->mThemeIsDeviceDefault:Z

    if-eqz v5, :cond_1

    .line 1025
    if-ltz v4, :cond_1

    if-ltz v3, :cond_1

    if-eq v4, v3, :cond_1

    .line 1026
    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v5

    invoke-static {v5}, Landroid/widget/Editor$SelectionModifierCursorController;->access$200(Landroid/widget/Editor$SelectionModifierCursorController;)Landroid/widget/Editor$SelectionStartHandleView;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v5

    invoke-static {v5}, Landroid/widget/Editor$SelectionModifierCursorController;->access$300(Landroid/widget/Editor$SelectionModifierCursorController;)Landroid/widget/Editor$SelectionEndHandleView;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 1027
    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v5

    invoke-static {v5}, Landroid/widget/Editor$SelectionModifierCursorController;->access$200(Landroid/widget/Editor$SelectionModifierCursorController;)Landroid/widget/Editor$SelectionStartHandleView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Editor$SelectionStartHandleView;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v5

    invoke-static {v5}, Landroid/widget/Editor$SelectionModifierCursorController;->access$300(Landroid/widget/Editor$SelectionModifierCursorController;)Landroid/widget/Editor$SelectionEndHandleView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Editor$SelectionEndHandleView;->isShowing()Z

    move-result v5

    if-nez v5, :cond_b

    .line 1028
    :cond_0
    invoke-virtual {p0}, Landroid/widget/Editor;->showNewActionPopupWindow()V

    .line 1041
    :cond_1
    :goto_0
    iget-boolean v5, p0, Landroid/widget/Editor;->mSelectAllOnFocus:Z

    if-eqz v5, :cond_d

    if-nez v4, :cond_d

    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-ne v3, v5, :cond_d

    move v0, v6

    .line 1044
    .local v0, "isFocusHighlighted":Z
    :goto_1
    iget-boolean v5, p0, Landroid/widget/Editor;->mFrozenWithFocus:Z

    if-eqz v5, :cond_e

    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->hasSelection()Z

    move-result v5

    if-eqz v5, :cond_e

    if-nez v0, :cond_e

    move v5, v6

    :goto_2
    iput-boolean v5, p0, Landroid/widget/Editor;->mCreatedWithASelection:Z

    .line 1047
    iget-boolean v5, p0, Landroid/widget/Editor;->mFrozenWithFocus:Z

    if-eqz v5, :cond_2

    if-ltz v4, :cond_2

    if-gez v3, :cond_8

    .line 1050
    :cond_2
    invoke-direct {p0}, Landroid/widget/Editor;->getLastTapPosition()I

    move-result v1

    .line 1051
    .local v1, "lastTapPosition":I
    if-ltz v1, :cond_3

    .line 1052
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Landroid/text/Spannable;

    invoke-static {v5, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 1056
    :cond_3
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getMovementMethod()Landroid/text/method/MovementMethod;

    move-result-object v2

    .line 1057
    .local v2, "mMovement":Landroid/text/method/MovementMethod;
    if-eqz v2, :cond_4

    .line 1058
    iget-object v8, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Landroid/text/Spannable;

    invoke-interface {v2, v8, v5, p2}, Landroid/text/method/MovementMethod;->onTakeFocus(Landroid/widget/TextView;Landroid/text/Spannable;I)V

    .line 1066
    :cond_4
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    instance-of v5, v5, Landroid/inputmethodservice/ExtractEditText;

    if-nez v5, :cond_5

    iget-boolean v5, p0, Landroid/widget/Editor;->mSelectionMoved:Z

    if-eqz v5, :cond_6

    :cond_5
    if-ltz v4, :cond_6

    if-ltz v3, :cond_6

    .line 1077
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Landroid/text/Spannable;

    invoke-static {v5, v4, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 1080
    :cond_6
    iget-boolean v5, p0, Landroid/widget/Editor;->mSelectAllOnFocus:Z

    if-eqz v5, :cond_7

    .line 1081
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->selectAllText()Z

    .line 1084
    :cond_7
    iput-boolean v6, p0, Landroid/widget/Editor;->mTouchFocusSelected:Z

    .line 1087
    .end local v1    # "lastTapPosition":I
    .end local v2    # "mMovement":Landroid/text/method/MovementMethod;
    :cond_8
    iput-boolean v7, p0, Landroid/widget/Editor;->mFrozenWithFocus:Z

    .line 1088
    iput-boolean v7, p0, Landroid/widget/Editor;->mSelectionMoved:Z

    .line 1090
    iget-object v5, p0, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    if-eqz v5, :cond_9

    .line 1091
    invoke-direct {p0}, Landroid/widget/Editor;->showError()V

    .line 1094
    :cond_9
    invoke-virtual {p0}, Landroid/widget/Editor;->makeBlink()V

    .line 1121
    .end local v0    # "isFocusHighlighted":Z
    .end local v3    # "selEnd":I
    .end local v4    # "selStart":I
    :cond_a
    :goto_3
    return-void

    .line 1029
    .restart local v3    # "selEnd":I
    .restart local v4    # "selStart":I
    :cond_b
    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v5

    invoke-static {v5}, Landroid/widget/Editor$SelectionModifierCursorController;->access$200(Landroid/widget/Editor$SelectionModifierCursorController;)Landroid/widget/Editor$SelectionStartHandleView;

    move-result-object v5

    iget-object v5, v5, Landroid/widget/Editor$SelectionStartHandleView;->mNewActionPopupWindow:Landroid/widget/Editor$NewActionPopupWindow;

    if-eqz v5, :cond_c

    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v5

    invoke-static {v5}, Landroid/widget/Editor$SelectionModifierCursorController;->access$200(Landroid/widget/Editor$SelectionModifierCursorController;)Landroid/widget/Editor$SelectionStartHandleView;

    move-result-object v5

    iget-object v5, v5, Landroid/widget/Editor$SelectionStartHandleView;->mNewActionPopupWindow:Landroid/widget/Editor$NewActionPopupWindow;

    invoke-virtual {v5}, Landroid/widget/Editor$NewActionPopupWindow;->isShowing()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1031
    :cond_c
    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v5

    invoke-static {v5}, Landroid/widget/Editor$SelectionModifierCursorController;->access$300(Landroid/widget/Editor$SelectionModifierCursorController;)Landroid/widget/Editor$SelectionEndHandleView;

    move-result-object v5

    iget-object v5, v5, Landroid/widget/Editor$SelectionEndHandleView;->mNewActionPopupWindow:Landroid/widget/Editor$NewActionPopupWindow;

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v5

    invoke-static {v5}, Landroid/widget/Editor$SelectionModifierCursorController;->access$300(Landroid/widget/Editor$SelectionModifierCursorController;)Landroid/widget/Editor$SelectionEndHandleView;

    move-result-object v5

    iget-object v5, v5, Landroid/widget/Editor$SelectionEndHandleView;->mNewActionPopupWindow:Landroid/widget/Editor$NewActionPopupWindow;

    invoke-virtual {v5}, Landroid/widget/Editor$NewActionPopupWindow;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_1

    goto/16 :goto_0

    :cond_d
    move v0, v7

    .line 1041
    goto/16 :goto_1

    .restart local v0    # "isFocusHighlighted":Z
    :cond_e
    move v5, v7

    .line 1044
    goto/16 :goto_2

    .line 1096
    .end local v0    # "isFocusHighlighted":Z
    .end local v3    # "selEnd":I
    .end local v4    # "selStart":I
    :cond_f
    iget-object v5, p0, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    if-eqz v5, :cond_10

    .line 1097
    invoke-direct {p0}, Landroid/widget/Editor;->hideError()V

    .line 1100
    :cond_10
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->onEndBatchEdit()V

    .line 1102
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    instance-of v5, v5, Landroid/inputmethodservice/ExtractEditText;

    if-eqz v5, :cond_11

    .line 1105
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v4

    .line 1106
    .restart local v4    # "selStart":I
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v3

    .line 1107
    .restart local v3    # "selEnd":I
    invoke-virtual {p0}, Landroid/widget/Editor;->hideControllers()V

    .line 1108
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Landroid/text/Spannable;

    invoke-static {v5, v4, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 1117
    .end local v3    # "selEnd":I
    .end local v4    # "selStart":I
    :goto_4
    iget-object v5, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    if-eqz v5, :cond_a

    .line 1118
    iget-object v5, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-virtual {v5}, Landroid/widget/Editor$SelectionModifierCursorController;->resetTouchOffsets()V

    goto :goto_3

    .line 1110
    :cond_11
    iget-boolean v5, p0, Landroid/widget/Editor;->mTemporaryDetach:Z

    if-eqz v5, :cond_12

    iput-boolean v6, p0, Landroid/widget/Editor;->mPreserveDetachedSelection:Z

    .line 1111
    :cond_12
    invoke-virtual {p0}, Landroid/widget/Editor;->hideControllers()V

    .line 1112
    iget-boolean v5, p0, Landroid/widget/Editor;->mTemporaryDetach:Z

    if-eqz v5, :cond_13

    iput-boolean v7, p0, Landroid/widget/Editor;->mPreserveDetachedSelection:Z

    .line 1113
    :cond_13
    invoke-direct {p0}, Landroid/widget/Editor;->downgradeEasyCorrectionSpans()V

    goto :goto_4
.end method

.method onLocaleChanged()V
    .locals 1

    .prologue
    .line 812
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/Editor;->mWordIterator:Landroid/text/method/WordIterator;

    .line 813
    return-void
.end method

.method onScreenStateChanged(I)V
    .locals 0
    .param p1, "screenState"    # I

    .prologue
    .line 629
    packed-switch p1, :pswitch_data_0

    .line 637
    :goto_0
    return-void

    .line 631
    :pswitch_0
    invoke-direct {p0}, Landroid/widget/Editor;->resumeBlink()V

    goto :goto_0

    .line 634
    :pswitch_1
    invoke-direct {p0}, Landroid/widget/Editor;->suspendBlink()V

    goto :goto_0

    .line 629
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method onScrollChanged()V
    .locals 1

    .prologue
    .line 1977
    iget-object v0, p0, Landroid/widget/Editor;->mPositionListener:Landroid/widget/Editor$PositionListener;

    if-eqz v0, :cond_0

    .line 1978
    iget-object v0, p0, Landroid/widget/Editor;->mPositionListener:Landroid/widget/Editor$PositionListener;

    invoke-virtual {v0}, Landroid/widget/Editor$PositionListener;->onScrollChanged()V

    .line 1980
    :cond_0
    return-void
.end method

.method onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    .line 1210
    invoke-virtual {p0}, Landroid/widget/Editor;->hasSelectionController()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1211
    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Editor$SelectionModifierCursorController;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 1214
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mShowSuggestionRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 1215
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/Editor;->mShowSuggestionRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1216
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/Editor;->mShowSuggestionRunnable:Ljava/lang/Runnable;

    .line 1219
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_2

    .line 1220
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Landroid/widget/Editor;->mLastDownPositionX:F

    .line 1221
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Landroid/widget/Editor;->mLastDownPositionY:F

    .line 1225
    iput-boolean v2, p0, Landroid/widget/Editor;->mTouchFocusSelected:Z

    .line 1226
    iput-boolean v2, p0, Landroid/widget/Editor;->mIgnoreActionUpEvent:Z

    .line 1228
    :cond_2
    return-void
.end method

.method onTouchUpEvent(Landroid/view/MotionEvent;)V
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1783
    iget-boolean v3, p0, Landroid/widget/Editor;->mSelectAllOnFocus:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->didTouchFocusSelect()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v1, 0x1

    .line 1784
    .local v1, "selectAllGotFocus":Z
    :goto_0
    invoke-virtual {p0}, Landroid/widget/Editor;->hideControllers()V

    .line 1785
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    .line 1786
    .local v2, "text":Ljava/lang/CharSequence;
    if-nez v1, :cond_1

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 1788
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v0

    .line 1789
    .local v0, "offset":I
    check-cast v2, Landroid/text/Spannable;

    .end local v2    # "text":Ljava/lang/CharSequence;
    invoke-static {v2, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 1790
    iget-object v3, p0, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    if-eqz v3, :cond_0

    .line 1792
    iget-object v3, p0, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    invoke-virtual {v3}, Landroid/widget/SpellChecker;->onSelectionChanged()V

    .line 1794
    :cond_0
    invoke-direct {p0}, Landroid/widget/Editor;->extractedTextModeWillBeStarted()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1795
    invoke-direct {p0}, Landroid/widget/Editor;->isCursorInsideEasyCorrectionSpan()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1796
    new-instance v3, Landroid/widget/Editor$1;

    invoke-direct {v3, p0}, Landroid/widget/Editor$1;-><init>(Landroid/widget/Editor;)V

    iput-object v3, p0, Landroid/widget/Editor;->mShowSuggestionRunnable:Ljava/lang/Runnable;

    .line 1802
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v4, p0, Landroid/widget/Editor;->mShowSuggestionRunnable:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v5

    int-to-long v6, v5

    invoke-virtual {v3, v4, v6, v7}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1814
    .end local v0    # "offset":I
    :cond_1
    :goto_1
    return-void

    .line 1783
    .end local v1    # "selectAllGotFocus":Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 1804
    .restart local v0    # "offset":I
    .restart local v1    # "selectAllGotFocus":Z
    :cond_3
    invoke-virtual {p0}, Landroid/widget/Editor;->hasInsertionController()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1805
    invoke-virtual {p0}, Landroid/widget/Editor;->getInsertionController()Landroid/widget/Editor$InsertionPointCursorController;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Editor$InsertionPointCursorController;->show()V

    .line 1807
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v3

    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v4

    if-ne v3, v4, :cond_1

    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1808
    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Editor$SelectionModifierCursorController;->hide()V

    goto :goto_1
.end method

.method onWindowFocusChanged(Z)V
    .locals 2
    .param p1, "hasWindowFocus"    # Z

    .prologue
    const/4 v1, 0x0

    .line 1170
    if-eqz p1, :cond_1

    .line 1171
    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    if-eqz v0, :cond_0

    .line 1172
    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    invoke-virtual {v0}, Landroid/widget/Editor$Blink;->uncancel()V

    .line 1173
    invoke-virtual {p0}, Landroid/widget/Editor;->makeBlink()V

    .line 1207
    :cond_0
    :goto_0
    return-void

    .line 1176
    :cond_1
    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    if-eqz v0, :cond_2

    .line 1177
    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    invoke-virtual {v0}, Landroid/widget/Editor$Blink;->cancel()V

    .line 1179
    :cond_2
    iget-object v0, p0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    if-eqz v0, :cond_3

    .line 1180
    iget-object v0, p0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iput-boolean v1, v0, Landroid/widget/Editor$InputContentType;->enterDown:Z

    .line 1183
    :cond_3
    iget-object v0, p0, Landroid/widget/Editor;->mSelectionActionMode:Landroid/view/ActionMode;

    if-nez v0, :cond_6

    .line 1184
    iget-boolean v0, p0, Landroid/widget/Editor;->mNewSelectionActionMode:Z

    if-eqz v0, :cond_8

    .line 1185
    iget-boolean v0, p0, Landroid/widget/Editor;->mTemporaryDetach:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Editor;->mPreserveDetachedSelection:Z

    .line 1186
    :cond_4
    invoke-virtual {p0}, Landroid/widget/Editor;->hideControllers()V

    .line 1187
    iget-boolean v0, p0, Landroid/widget/Editor;->mTemporaryDetach:Z

    if-eqz v0, :cond_5

    iput-boolean v1, p0, Landroid/widget/Editor;->mPreserveDetachedSelection:Z

    .line 1188
    :cond_5
    invoke-direct {p0}, Landroid/widget/Editor;->downgradeEasyCorrectionSpans()V

    .line 1191
    iget-object v0, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    if-eqz v0, :cond_6

    .line 1192
    iget-object v0, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionModifierCursorController;->resetTouchOffsets()V

    .line 1200
    :cond_6
    :goto_1
    iget-object v0, p0, Landroid/widget/Editor;->mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

    if-eqz v0, :cond_7

    .line 1201
    iget-object v0, p0, Landroid/widget/Editor;->mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

    invoke-virtual {v0}, Landroid/widget/Editor$SuggestionsPopupWindow;->onParentLostFocus()V

    .line 1205
    :cond_7
    invoke-virtual {p0}, Landroid/widget/Editor;->ensureEndedBatchEdit()V

    goto :goto_0

    .line 1195
    :cond_8
    invoke-direct {p0}, Landroid/widget/Editor;->hideInsertionPointCursorController()V

    goto :goto_1
.end method

.method public performLongClick(Z)Z
    .locals 12
    .param p1, "handled"    # Z

    .prologue
    .line 952
    if-nez p1, :cond_0

    iget v9, p0, Landroid/widget/Editor;->mLastDownPositionX:F

    iget v10, p0, Landroid/widget/Editor;->mLastDownPositionY:F

    invoke-direct {p0, v9, v10}, Landroid/widget/Editor;->isPositionOnText(FF)Z

    move-result v9

    if-nez v9, :cond_0

    iget-boolean v9, p0, Landroid/widget/Editor;->mInsertionControllerEnabled:Z

    if-eqz v9, :cond_0

    .line 954
    iget-object v9, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget v10, p0, Landroid/widget/Editor;->mLastDownPositionX:F

    iget v11, p0, Landroid/widget/Editor;->mLastDownPositionY:F

    invoke-virtual {v9, v10, v11}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v5

    .line 956
    .local v5, "offset":I
    invoke-virtual {p0}, Landroid/widget/Editor;->stopSelectionActionMode()V

    .line 957
    iget-object v9, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    check-cast v9, Landroid/text/Spannable;

    invoke-static {v9, v5}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 958
    invoke-virtual {p0}, Landroid/widget/Editor;->getInsertionController()Landroid/widget/Editor$InsertionPointCursorController;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Editor$InsertionPointCursorController;->showWithActionPopup()V

    .line 959
    const/4 p1, 0x1

    .line 962
    .end local v5    # "offset":I
    :cond_0
    if-nez p1, :cond_3

    iget-object v9, p0, Landroid/widget/Editor;->mSelectionActionMode:Landroid/view/ActionMode;

    if-nez v9, :cond_1

    iget-boolean v9, p0, Landroid/widget/Editor;->mNewSelectionActionMode:Z

    if-eqz v9, :cond_3

    .line 963
    :cond_1
    invoke-direct {p0}, Landroid/widget/Editor;->touchPositionIsInSelection()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 965
    iget-object v9, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v8

    .line 966
    .local v8, "start":I
    iget-object v9, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    .line 967
    .local v1, "end":I
    iget-object v9, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v9, v8, v1}, Landroid/widget/TextView;->getTransformedText(II)Ljava/lang/CharSequence;

    move-result-object v7

    .line 968
    .local v7, "selectedText":Ljava/lang/CharSequence;
    const/4 v9, 0x0

    invoke-static {v9, v7}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    .line 969
    .local v0, "data":Landroid/content/ClipData;
    new-instance v4, Landroid/widget/Editor$DragLocalState;

    iget-object v9, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-direct {v4, v9, v8, v1}, Landroid/widget/Editor$DragLocalState;-><init>(Landroid/widget/TextView;II)V

    .line 971
    .local v4, "localState":Landroid/widget/Editor$DragLocalState;
    iget-object v9, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getInputType()I

    move-result v9

    const/16 v10, 0x81

    if-eq v9, v10, :cond_2

    .line 972
    iget-object v9, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-direct {p0, v7}, Landroid/widget/Editor;->getTextThumbnailBuilder(Ljava/lang/CharSequence;)Landroid/view/View$DragShadowBuilder;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v9, v0, v10, v4, v11}, Landroid/widget/TextView;->startDrag(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    .line 974
    :cond_2
    invoke-virtual {p0}, Landroid/widget/Editor;->stopSelectionActionMode()V

    .line 998
    .end local v0    # "data":Landroid/content/ClipData;
    .end local v1    # "end":I
    .end local v4    # "localState":Landroid/widget/Editor$DragLocalState;
    .end local v7    # "selectedText":Ljava/lang/CharSequence;
    .end local v8    # "start":I
    :goto_0
    const/4 p1, 0x1

    .line 1002
    :cond_3
    if-nez p1, :cond_4

    .line 1003
    invoke-virtual {p0}, Landroid/widget/Editor;->startSelectionActionMode()Z

    move-result p1

    .line 1006
    :cond_4
    return p1

    .line 976
    :cond_5
    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Editor$SelectionModifierCursorController;->hide()V

    .line 977
    invoke-direct {p0}, Landroid/widget/Editor;->selectCurrentWord()Z

    .line 979
    iget-object v9, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->hasSelection()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 980
    iget-object v9, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v8

    .line 981
    .restart local v8    # "start":I
    iget-object v9, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    .line 982
    .restart local v1    # "end":I
    iget-object v9, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v9, v8, v1}, Landroid/widget/TextView;->getTransformedText(II)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    .line 984
    .local v7, "selectedText":Ljava/lang/String;
    iget-object v9, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 985
    .local v6, "pm":Landroid/content/pm/PackageManager;
    new-instance v3, Landroid/content/Intent;

    const-string v9, "com.sec.android.app.dictionary.SEARCH"

    invoke-direct {v3, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 986
    .local v3, "intent":Landroid/content/Intent;
    const-string v9, "keyword"

    invoke-virtual {v3, v9, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 988
    const/16 v9, 0x20

    invoke-virtual {v6, v3, v9}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 989
    .local v2, "info":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_6

    .line 990
    iget-object v9, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 996
    .end local v1    # "end":I
    .end local v2    # "info":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v6    # "pm":Landroid/content/pm/PackageManager;
    .end local v7    # "selectedText":Ljava/lang/String;
    .end local v8    # "start":I
    :cond_6
    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Editor$SelectionModifierCursorController;->show()V

    goto :goto_0
.end method

.method prepareCursorControllers()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 550
    const/4 v3, 0x0

    .line 552
    .local v3, "windowSupportsHandles":Z
    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getRootView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 553
    .local v1, "params":Landroid/view/ViewGroup$LayoutParams;
    instance-of v6, v1, Landroid/view/WindowManager$LayoutParams;

    if-eqz v6, :cond_1

    move-object v2, v1

    .line 554
    check-cast v2, Landroid/view/WindowManager$LayoutParams;

    .line 555
    .local v2, "windowParams":Landroid/view/WindowManager$LayoutParams;
    iget v6, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v7, 0x3e8

    if-lt v6, v7, :cond_0

    iget v6, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v7, 0x7cf

    if-le v6, v7, :cond_4

    :cond_0
    move v3, v5

    .line 559
    .end local v2    # "windowParams":Landroid/view/WindowManager$LayoutParams;
    :cond_1
    :goto_0
    if-eqz v3, :cond_5

    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v6

    if-eqz v6, :cond_5

    move v0, v5

    .line 560
    .local v0, "enabled":Z
    :goto_1
    if-eqz v0, :cond_6

    invoke-virtual {p0}, Landroid/widget/Editor;->isCursorVisible()Z

    move-result v6

    if-eqz v6, :cond_6

    move v6, v5

    :goto_2
    iput-boolean v6, p0, Landroid/widget/Editor;->mInsertionControllerEnabled:Z

    .line 561
    if-eqz v0, :cond_7

    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->textCanBeSelected()Z

    move-result v6

    if-eqz v6, :cond_7

    :goto_3
    iput-boolean v5, p0, Landroid/widget/Editor;->mSelectionControllerEnabled:Z

    .line 563
    iget-boolean v4, p0, Landroid/widget/Editor;->mInsertionControllerEnabled:Z

    if-nez v4, :cond_2

    .line 564
    invoke-direct {p0}, Landroid/widget/Editor;->hideInsertionPointCursorController()V

    .line 565
    iget-object v4, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    if-eqz v4, :cond_2

    .line 566
    iget-object v4, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    invoke-virtual {v4}, Landroid/widget/Editor$InsertionPointCursorController;->onDetached()V

    .line 567
    iput-object v8, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    .line 571
    :cond_2
    iget-boolean v4, p0, Landroid/widget/Editor;->mSelectionControllerEnabled:Z

    if-nez v4, :cond_3

    .line 572
    invoke-virtual {p0}, Landroid/widget/Editor;->stopSelectionActionMode()V

    .line 573
    iget-object v4, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    if-eqz v4, :cond_3

    .line 574
    iget-object v4, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-virtual {v4}, Landroid/widget/Editor$SelectionModifierCursorController;->onDetached()V

    .line 575
    iput-object v8, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    .line 578
    :cond_3
    return-void

    .end local v0    # "enabled":Z
    .restart local v2    # "windowParams":Landroid/view/WindowManager$LayoutParams;
    :cond_4
    move v3, v4

    .line 555
    goto :goto_0

    .end local v2    # "windowParams":Landroid/view/WindowManager$LayoutParams;
    :cond_5
    move v0, v4

    .line 559
    goto :goto_1

    .restart local v0    # "enabled":Z
    :cond_6
    move v6, v4

    .line 560
    goto :goto_2

    :cond_7
    move v5, v4

    .line 561
    goto :goto_3
.end method

.method public relocateNewActionPopupWindow()V
    .locals 1

    .prologue
    .line 6169
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    instance-of v0, v0, Landroid/inputmethodservice/ExtractEditText;

    if-eqz v0, :cond_1

    .line 6181
    :cond_0
    :goto_0
    return-void

    .line 6173
    :cond_1
    iget-boolean v0, p0, Landroid/widget/Editor;->mSelectionControllerEnabled:Z

    if-eqz v0, :cond_0

    .line 6174
    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6175
    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionModifierCursorController;->relocateNewActionPopupWindow()V

    .line 6176
    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v0

    invoke-static {v0}, Landroid/widget/Editor$SelectionModifierCursorController;->access$200(Landroid/widget/Editor$SelectionModifierCursorController;)Landroid/widget/Editor$SelectionStartHandleView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v0

    invoke-static {v0}, Landroid/widget/Editor$SelectionModifierCursorController;->access$200(Landroid/widget/Editor$SelectionModifierCursorController;)Landroid/widget/Editor$SelectionStartHandleView;

    move-result-object v0

    iget-object v0, v0, Landroid/widget/Editor$SelectionStartHandleView;->mNewActionPopupWindow:Landroid/widget/Editor$NewActionPopupWindow;

    if-eqz v0, :cond_0

    goto :goto_0
.end method

.method reportExtractedText()Z
    .locals 11

    .prologue
    const/4 v10, -0x1

    const/4 v9, 0x0

    .line 1366
    iget-object v8, p0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    .line 1367
    .local v8, "ims":Landroid/widget/Editor$InputMethodState;
    if-eqz v8, :cond_2

    .line 1368
    iget-boolean v6, v8, Landroid/widget/Editor$InputMethodState;->mContentChanged:Z

    .line 1369
    .local v6, "contentChanged":Z
    if-nez v6, :cond_0

    iget-boolean v0, v8, Landroid/widget/Editor$InputMethodState;->mSelectionModeChanged:Z

    if-eqz v0, :cond_2

    .line 1370
    :cond_0
    iput-boolean v9, v8, Landroid/widget/Editor$InputMethodState;->mContentChanged:Z

    .line 1371
    iput-boolean v9, v8, Landroid/widget/Editor$InputMethodState;->mSelectionModeChanged:Z

    .line 1372
    iget-object v1, v8, Landroid/widget/Editor$InputMethodState;->mExtractedTextRequest:Landroid/view/inputmethod/ExtractedTextRequest;

    .line 1373
    .local v1, "req":Landroid/view/inputmethod/ExtractedTextRequest;
    if-eqz v1, :cond_2

    .line 1374
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v7

    .line 1375
    .local v7, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v7, :cond_2

    .line 1380
    iget v0, v8, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    if-gez v0, :cond_1

    if-nez v6, :cond_1

    .line 1381
    const/4 v0, -0x2

    iput v0, v8, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    .line 1383
    :cond_1
    iget v2, v8, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    iget v3, v8, Landroid/widget/Editor$InputMethodState;->mChangedEnd:I

    iget v4, v8, Landroid/widget/Editor$InputMethodState;->mChangedDelta:I

    iget-object v5, v8, Landroid/widget/Editor$InputMethodState;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/widget/Editor;->extractTextInternal(Landroid/view/inputmethod/ExtractedTextRequest;IIILandroid/view/inputmethod/ExtractedText;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1391
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget v2, v1, Landroid/view/inputmethod/ExtractedTextRequest;->token:I

    iget-object v3, v8, Landroid/widget/Editor$InputMethodState;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    invoke-virtual {v7, v0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->updateExtractedText(Landroid/view/View;ILandroid/view/inputmethod/ExtractedText;)V

    .line 1392
    iput v10, v8, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    .line 1393
    iput v10, v8, Landroid/widget/Editor$InputMethodState;->mChangedEnd:I

    .line 1394
    iput v9, v8, Landroid/widget/Editor$InputMethodState;->mChangedDelta:I

    .line 1395
    iput-boolean v9, v8, Landroid/widget/Editor$InputMethodState;->mContentChanged:Z

    .line 1396
    const/4 v0, 0x1

    .line 1402
    .end local v1    # "req":Landroid/view/inputmethod/ExtractedTextRequest;
    .end local v6    # "contentChanged":Z
    .end local v7    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :goto_0
    return v0

    :cond_2
    move v0, v9

    goto :goto_0
.end method

.method sendOnTextChanged(II)V
    .locals 2
    .param p1, "start"    # I
    .param p2, "after"    # I

    .prologue
    .line 1145
    add-int v0, p1, p2

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/Editor;->updateSpellCheckSpans(IIZ)V

    .line 1150
    invoke-direct {p0}, Landroid/widget/Editor;->hideCursorControllers()V

    .line 1151
    return-void
.end method

.method public sendToDictionary(Ljava/lang/String;II)V
    .locals 6
    .param p1, "word"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    const/16 v5, 0x20

    .line 6278
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 6279
    .local v2, "pm":Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.sec.android.app.dictionary.SEARCH"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6280
    .local v1, "intent":Landroid/content/Intent;
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->isMultiWindow()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6281
    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 6282
    const-string v3, "keyword"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6283
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 6296
    :cond_0
    :goto_0
    return-void

    .line 6285
    :cond_1
    invoke-virtual {v1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 6286
    const-string v3, "keyword"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6287
    const-string v3, "force"

    const-string/jumbo v4, "true"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6289
    invoke-virtual {v2, v1, v5}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 6290
    .local v0, "info":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 6291
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected setDeviceDefaultTheme(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 6317
    iput-boolean p1, p0, Landroid/widget/Editor;->mThemeIsDeviceDefault:Z

    .line 6318
    return-void
.end method

.method public setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "error"    # Ljava/lang/CharSequence;
    .param p2, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v1, 0x0

    .line 421
    invoke-static {p1}, Landroid/text/TextUtils;->stringOrSpannedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    .line 422
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Editor;->mErrorWasChanged:Z

    .line 424
    iget-object v0, p0, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    if-nez v0, :cond_3

    .line 425
    invoke-direct {p0, v1}, Landroid/widget/Editor;->setErrorIcon(Landroid/graphics/drawable/Drawable;)V

    .line 426
    iget-object v0, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    if-eqz v0, :cond_1

    .line 427
    iget-object v0, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    invoke-virtual {v0}, Landroid/widget/Editor$ErrorPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 428
    iget-object v0, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    invoke-virtual {v0}, Landroid/widget/Editor$ErrorPopup;->dismiss()V

    .line 431
    :cond_0
    iput-object v1, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    .line 433
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Editor;->mShowErrorAfterAttach:Z

    .line 440
    :cond_2
    :goto_0
    return-void

    .line 435
    :cond_3
    invoke-direct {p0, p2}, Landroid/widget/Editor;->setErrorIcon(Landroid/graphics/drawable/Drawable;)V

    .line 436
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 437
    invoke-direct {p0}, Landroid/widget/Editor;->showError()V

    goto :goto_0
.end method

.method setFrame()V
    .locals 7

    .prologue
    .line 696
    iget-object v0, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    if-eqz v0, :cond_0

    .line 697
    iget-object v0, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    invoke-virtual {v0}, Landroid/widget/Editor$ErrorPopup;->getContentView()Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 698
    .local v6, "tv":Landroid/widget/TextView;
    iget-object v0, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    iget-object v1, p0, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    invoke-direct {p0, v0, v1, v6}, Landroid/widget/Editor;->chooseSize(Landroid/widget/PopupWindow;Ljava/lang/CharSequence;Landroid/widget/TextView;)V

    .line 699
    iget-object v0, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-direct {p0}, Landroid/widget/Editor;->getErrorX()I

    move-result v2

    invoke-direct {p0}, Landroid/widget/Editor;->getErrorY()I

    move-result v3

    iget-object v4, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    invoke-virtual {v4}, Landroid/widget/Editor$ErrorPopup;->getWidth()I

    move-result v4

    iget-object v5, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    invoke-virtual {v5}, Landroid/widget/Editor$ErrorPopup;->getHeight()I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Editor$ErrorPopup;->update(Landroid/view/View;IIII)V

    .line 702
    .end local v6    # "tv":Landroid/widget/TextView;
    :cond_0
    return-void
.end method

.method public setNewActionPopupMenu(IZ)V
    .locals 0
    .param p1, "menuId"    # I
    .param p2, "value"    # Z

    .prologue
    .line 6213
    packed-switch p1, :pswitch_data_0

    .line 6234
    :goto_0
    return-void

    .line 6215
    :pswitch_0
    iput-boolean p2, p0, Landroid/widget/Editor;->mClipboardEnable:Z

    goto :goto_0

    .line 6219
    :pswitch_1
    iput-boolean p2, p0, Landroid/widget/Editor;->mTranslateEnable:Z

    goto :goto_0

    .line 6223
    :pswitch_2
    iput-boolean p2, p0, Landroid/widget/Editor;->mShareEnable:Z

    goto :goto_0

    .line 6227
    :pswitch_3
    iput-boolean p2, p0, Landroid/widget/Editor;->mWebSearchEnable:Z

    goto :goto_0

    .line 6231
    :pswitch_4
    iput-boolean p2, p0, Landroid/widget/Editor;->mDictionaryEnable:Z

    goto :goto_0

    .line 6213
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method setWBPositionListenerEnalbed(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 6333
    if-eqz p1, :cond_2

    .line 6334
    iget-object v0, p0, Landroid/widget/Editor;->mWBPositionListener:Landroid/widget/Editor$TextViewPositionListener;

    if-nez v0, :cond_0

    .line 6335
    new-instance v0, Landroid/widget/Editor$3;

    invoke-direct {v0, p0}, Landroid/widget/Editor$3;-><init>(Landroid/widget/Editor;)V

    iput-object v0, p0, Landroid/widget/Editor;->mWBPositionListener:Landroid/widget/Editor$TextViewPositionListener;

    .line 6347
    :cond_0
    invoke-direct {p0}, Landroid/widget/Editor;->getPositionListener()Landroid/widget/Editor$PositionListener;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor;->mWBPositionListener:Landroid/widget/Editor$TextViewPositionListener;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/Editor$PositionListener;->addSubscriber(Landroid/widget/Editor$TextViewPositionListener;Z)V

    .line 6354
    :cond_1
    :goto_0
    return-void

    .line 6349
    :cond_2
    iget-object v0, p0, Landroid/widget/Editor;->mWBPositionListener:Landroid/widget/Editor$TextViewPositionListener;

    if-eqz v0, :cond_1

    .line 6350
    invoke-direct {p0}, Landroid/widget/Editor;->getPositionListener()Landroid/widget/Editor$PositionListener;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor;->mWBPositionListener:Landroid/widget/Editor$TextViewPositionListener;

    invoke-virtual {v0, v1}, Landroid/widget/Editor$PositionListener;->removeSubscriber(Landroid/widget/Editor$TextViewPositionListener;)V

    .line 6351
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/Editor;->mWBPositionListener:Landroid/widget/Editor$TextViewPositionListener;

    goto :goto_0
.end method

.method public showNewActionPopupWindow()V
    .locals 1

    .prologue
    .line 6187
    iget-boolean v0, p0, Landroid/widget/Editor;->mNewActionPopup:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/Editor;->mThemeIsDeviceDefault:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6188
    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionModifierCursorController;->hideAllNewActionPopup()V

    .line 6189
    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionModifierCursorController;->showNewActionPopup()V

    .line 6191
    :cond_0
    return-void
.end method

.method showSuggestions()V
    .locals 1

    .prologue
    .line 1965
    iget-object v0, p0, Landroid/widget/Editor;->mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

    if-nez v0, :cond_0

    .line 1966
    new-instance v0, Landroid/widget/Editor$SuggestionsPopupWindow;

    invoke-direct {v0, p0}, Landroid/widget/Editor$SuggestionsPopupWindow;-><init>(Landroid/widget/Editor;)V

    iput-object v0, p0, Landroid/widget/Editor;->mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

    .line 1968
    :cond_0
    invoke-virtual {p0}, Landroid/widget/Editor;->hideControllers()V

    .line 1969
    iget-object v0, p0, Landroid/widget/Editor;->mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

    invoke-virtual {v0}, Landroid/widget/Editor$SuggestionsPopupWindow;->show()V

    .line 1970
    return-void
.end method

.method startSelectionActionMode()Z
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1683
    iget-object v8, p0, Landroid/widget/Editor;->mSelectionActionMode:Landroid/view/ActionMode;

    if-nez v8, :cond_0

    iget-boolean v8, p0, Landroid/widget/Editor;->mNewSelectionActionMode:Z

    if-eqz v8, :cond_1

    .line 1736
    :cond_0
    :goto_0
    return v7

    .line 1688
    :cond_1
    invoke-direct {p0}, Landroid/widget/Editor;->canSelectText()Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v8, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->requestFocus()Z

    move-result v8

    if-nez v8, :cond_3

    .line 1689
    :cond_2
    const-string v6, "TextView"

    const-string v8, "TextView does not support text selection. Action mode cancelled."

    invoke-static {v6, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1694
    :cond_3
    iget-object v8, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->hasSelection()Z

    move-result v8

    if-nez v8, :cond_4

    .line 1696
    invoke-direct {p0}, Landroid/widget/Editor;->selectCurrentWord()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1702
    :cond_4
    invoke-direct {p0}, Landroid/widget/Editor;->extractedTextModeWillBeStarted()Z

    move-result v5

    .line 1703
    .local v5, "willExtract":Z
    iget-object v8, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v8, v8, Landroid/content/res/Configuration;->orientation:I

    if-ne v8, v6, :cond_a

    move v3, v6

    .line 1705
    .local v3, "isPortrait":Z
    :goto_1
    iget-object v8, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    instance-of v8, v8, Landroid/inputmethodservice/ExtractEditText;

    if-nez v8, :cond_5

    if-eqz v3, :cond_5

    .line 1706
    const/4 v5, 0x0

    .line 1710
    :cond_5
    iget-object v8, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    instance-of v2, v8, Landroid/inputmethodservice/ExtractEditText;

    .line 1712
    .local v2, "isExtractEditText":Z
    iget-boolean v8, p0, Landroid/widget/Editor;->mThemeIsDeviceDefault:Z

    if-eqz v8, :cond_6

    iget-boolean v8, p0, Landroid/widget/Editor;->mNewActionPopup:Z

    if-eqz v8, :cond_6

    if-nez v2, :cond_6

    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v8

    if-eqz v8, :cond_6

    if-nez v5, :cond_6

    .line 1713
    iput-boolean v6, p0, Landroid/widget/Editor;->mNewSelectionActionMode:Z

    .line 1714
    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Editor$SelectionModifierCursorController;->show()V

    .line 1721
    :cond_6
    if-nez v5, :cond_7

    iget-boolean v8, p0, Landroid/widget/Editor;->mNewSelectionActionMode:Z

    if-nez v8, :cond_7

    .line 1722
    new-instance v0, Landroid/widget/Editor$SelectionActionModeCallback;

    invoke-direct {v0, p0, v9}, Landroid/widget/Editor$SelectionActionModeCallback;-><init>(Landroid/widget/Editor;Landroid/widget/Editor$1;)V

    .line 1723
    .local v0, "actionModeCallback":Landroid/view/ActionMode$Callback;
    iget-object v8, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v8

    iput-object v8, p0, Landroid/widget/Editor;->mSelectionActionMode:Landroid/view/ActionMode;

    .line 1727
    .end local v0    # "actionModeCallback":Landroid/view/ActionMode$Callback;
    :cond_7
    iget-object v8, p0, Landroid/widget/Editor;->mSelectionActionMode:Landroid/view/ActionMode;

    if-nez v8, :cond_8

    if-nez v5, :cond_8

    iget-boolean v8, p0, Landroid/widget/Editor;->mNewSelectionActionMode:Z

    if-eqz v8, :cond_b

    :cond_8
    move v4, v6

    .line 1728
    .local v4, "selectionStarted":Z
    :goto_2
    if-eqz v4, :cond_9

    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->isTextSelectable()Z

    move-result v6

    if-nez v6, :cond_9

    iget-boolean v6, p0, Landroid/widget/Editor;->mShowSoftInputOnFocus:Z

    if-eqz v6, :cond_9

    .line 1730
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    .line 1731
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v1, :cond_9

    .line 1732
    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v6, v7, v9}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;ILandroid/os/ResultReceiver;)Z

    .end local v1    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_9
    move v7, v4

    .line 1736
    goto/16 :goto_0

    .end local v2    # "isExtractEditText":Z
    .end local v3    # "isPortrait":Z
    .end local v4    # "selectionStarted":Z
    :cond_a
    move v3, v7

    .line 1703
    goto :goto_1

    .restart local v2    # "isExtractEditText":Z
    .restart local v3    # "isPortrait":Z
    :cond_b
    move v4, v7

    .line 1727
    goto :goto_2
.end method

.method stopCursorBlink(Z)V
    .locals 0
    .param p1, "stop"    # Z

    .prologue
    .line 6323
    if-eqz p1, :cond_0

    .line 6324
    invoke-direct {p0}, Landroid/widget/Editor;->suspendBlink()V

    .line 6328
    :goto_0
    return-void

    .line 6326
    :cond_0
    invoke-direct {p0}, Landroid/widget/Editor;->resumeBlink()V

    goto :goto_0
.end method

.method protected stopSelectionActionMode()V
    .locals 3

    .prologue
    .line 1817
    iget-object v1, p0, Landroid/widget/Editor;->mSelectionActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_1

    .line 1821
    :try_start_0
    iget-object v1, p0, Landroid/widget/Editor;->mSelectionActionMode:Landroid/view/ActionMode;

    invoke-virtual {v1}, Landroid/view/ActionMode;->finish()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1841
    :cond_0
    :goto_0
    return-void

    .line 1822
    :catch_0
    move-exception v0

    .line 1823
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 1827
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_1
    iget-boolean v1, p0, Landroid/widget/Editor;->mNewSelectionActionMode:Z

    if-eqz v1, :cond_0

    .line 1828
    iget-boolean v1, p0, Landroid/widget/Editor;->mPreserveDetachedSelection:Z

    if-nez v1, :cond_2

    .line 1829
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Landroid/text/Spannable;

    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v2

    invoke-static {v1, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 1834
    :cond_2
    iget-object v1, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    if-eqz v1, :cond_3

    .line 1835
    iget-object v1, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-virtual {v1}, Landroid/widget/Editor$SelectionModifierCursorController;->hide()V

    .line 1838
    :cond_3
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/Editor;->mNewSelectionActionMode:Z

    goto :goto_0
.end method

.method public translateRegister(Ljava/lang/String;II)V
    .locals 5
    .param p1, "trans"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    const/4 v4, 0x1

    .line 6088
    iput p2, p0, Landroid/widget/Editor;->selection_start:I

    .line 6089
    iput p3, p0, Landroid/widget/Editor;->selection_end:I

    .line 6091
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 6092
    .local v1, "intent":Landroid/content/Intent;
    iget v2, p0, Landroid/widget/Editor;->mInputType:I

    if-eqz v2, :cond_0

    .line 6093
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "com.sec.android.app.translator.TRANSLATE_RESULT"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 6094
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/Editor;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 6096
    const-string v2, "com.sec.android.app.translator.TRANSLATE_FOR_NON_ACTIVITY"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 6097
    const-string v2, "mode"

    const-string v3, "input"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6098
    const-string/jumbo v2, "source_text"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6099
    const-string/jumbo v2, "use_broadcast_receiver"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 6100
    const-string v2, "caller"

    iget-object v3, p0, Landroid/widget/Editor;->mCaller:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 6106
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :goto_0
    const-string v2, "auto_start_translation"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 6107
    const-string v2, "client_id"

    const-string v3, "XGPPDdj5SG"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6108
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 6109
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 6110
    return-void

    .line 6102
    :cond_0
    const-string v2, "com.sec.android.app.translator.TRANSLATE_FOR_NON_ACTIVITY"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 6103
    const-string v2, "mode"

    const-string/jumbo v3, "viewer"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6104
    const-string/jumbo v2, "source_text"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public updateCurrentOrientation(I)V
    .locals 1
    .param p1, "dir"    # I

    .prologue
    .line 6305
    invoke-virtual {p0}, Landroid/widget/Editor;->hasInsertionController()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->hasSelection()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6306
    invoke-direct {p0}, Landroid/widget/Editor;->hideInsertionPointCursorController()V

    .line 6309
    :cond_0
    return-void
.end method

.method updateCursorsPositions()V
    .locals 12

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v9, 0x2

    .line 1637
    iget-object v8, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget v8, v8, Landroid/widget/TextView;->mCursorDrawableRes:I

    if-nez v8, :cond_1

    .line 1638
    iput v11, p0, Landroid/widget/Editor;->mCursorCount:I

    .line 1665
    :cond_0
    :goto_0
    return-void

    .line 1642
    :cond_1
    iget-object v8, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    .line 1643
    .local v3, "layout":Landroid/text/Layout;
    iget-object v8, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getHintLayout()Landroid/text/Layout;

    move-result-object v2

    .line 1644
    .local v2, "hintLayout":Landroid/text/Layout;
    iget-object v8, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v6

    .line 1645
    .local v6, "offset":I
    invoke-virtual {v3, v6}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v4

    .line 1646
    .local v4, "line":I
    invoke-virtual {v3, v4}, Landroid/text/Layout;->getLineTop(I)I

    move-result v7

    .line 1647
    .local v7, "top":I
    add-int/lit8 v8, v4, 0x1

    invoke-virtual {v3, v8}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    .line 1649
    .local v0, "bottom":I
    invoke-virtual {v3, v6}, Landroid/text/Layout;->isLevelBoundary(I)Z

    move-result v8

    if-eqz v8, :cond_3

    move v8, v9

    :goto_1
    iput v8, p0, Landroid/widget/Editor;->mCursorCount:I

    .line 1651
    move v5, v0

    .line 1652
    .local v5, "middle":I
    iget v8, p0, Landroid/widget/Editor;->mCursorCount:I

    if-ne v8, v9, :cond_2

    .line 1654
    add-int v8, v7, v0

    shr-int/lit8 v5, v8, 0x1

    .line 1657
    :cond_2
    invoke-virtual {v3, v4}, Landroid/text/Layout;->shouldClampCursor(I)Z

    move-result v1

    .line 1658
    .local v1, "clamped":Z
    invoke-direct {p0, v3, v2, v6, v1}, Landroid/widget/Editor;->getPrimaryHorizontal(Landroid/text/Layout;Landroid/text/Layout;IZ)F

    move-result v8

    invoke-direct {p0, v11, v7, v5, v8}, Landroid/widget/Editor;->updateCursorPosition(IIIF)V

    .line 1661
    iget v8, p0, Landroid/widget/Editor;->mCursorCount:I

    if-ne v8, v9, :cond_0

    .line 1662
    invoke-virtual {v3, v6, v1}, Landroid/text/Layout;->getSecondaryHorizontal(IZ)F

    move-result v8

    invoke-direct {p0, v10, v5, v0, v8}, Landroid/widget/Editor;->updateCursorPosition(IIIF)V

    goto :goto_0

    .end local v1    # "clamped":Z
    .end local v5    # "middle":I
    :cond_3
    move v8, v10

    .line 1649
    goto :goto_1
.end method

.method updateSelectionHandler()V
    .locals 1

    .prologue
    .line 1743
    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v0

    invoke-static {v0}, Landroid/widget/Editor$SelectionModifierCursorController;->access$500(Landroid/widget/Editor$SelectionModifierCursorController;)V

    .line 1744
    return-void
.end method

.method public updateShowAsAction()V
    .locals 15

    .prologue
    .line 6002
    iget-object v10, p0, Landroid/widget/Editor;->mActionModeMenu:Landroid/view/Menu;

    if-nez v10, :cond_0

    .line 6051
    :goto_0
    return-void

    .line 6004
    :cond_0
    iget-object v6, p0, Landroid/widget/Editor;->mActionModeMenu:Landroid/view/Menu;

    .line 6005
    .local v6, "menu":Landroid/view/Menu;
    const/4 v1, 0x0

    .line 6007
    .local v1, "allowTextWithIcon":Z
    const/4 v0, 0x0

    .line 6010
    .local v0, "a":Landroid/content/res/TypedArray;
    :try_start_0
    iget-object v10, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v10

    const/4 v11, 0x0

    sget-object v12, Lcom/android/internal/R$styleable;->ActionMenuItemView:[I

    const v13, 0x10102d8

    const/4 v14, 0x0

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 6012
    iget-object v10, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x1120053

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getBoolean(I)Z
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 6018
    :goto_1
    if-eqz v1, :cond_1

    .line 6020
    invoke-interface {v6}, Landroid/view/Menu;->size()I

    move-result v10

    if-lez v10, :cond_3

    .line 6021
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    invoke-interface {v6}, Landroid/view/Menu;->size()I

    move-result v10

    if-ge v4, v10, :cond_3

    .line 6022
    invoke-interface {v6, v4}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v10

    const/4 v11, 0x5

    invoke-interface {v10, v11}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 6021
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 6014
    .end local v4    # "i":I
    :catch_0
    move-exception v3

    .line 6015
    .local v3, "e":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_1

    .line 6028
    .end local v3    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_1
    :try_start_1
    iget-object v10, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    iget v2, v10, Landroid/util/DisplayMetrics;->density:F

    .line 6029
    .local v2, "density":F
    iget-object v10, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    iget v9, v10, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 6030
    .local v9, "smallestScreenWidthDp":I
    const/4 v10, 0x0

    iget-object v11, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x105004f

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    invoke-virtual {v0, v10, v11}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    .line 6032
    .local v7, "minCellSize":I
    const/16 v8, 0x10

    .line 6034
    .local v8, "rightMarginOfClose":I
    add-int/lit8 v10, v9, -0x10

    int-to-float v10, v10

    mul-float/2addr v10, v2

    float-to-int v10, v10

    div-int/2addr v10, v7

    add-int/lit8 v5, v10, -0x1

    .line 6036
    .local v5, "maxActionModeItems":I
    invoke-interface {v6}, Landroid/view/Menu;->size()I

    move-result v10

    if-lez v10, :cond_2

    .line 6037
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_3
    invoke-interface {v6}, Landroid/view/Menu;->size()I

    move-result v10

    if-ge v4, v10, :cond_2

    .line 6038
    invoke-interface {v6, v4}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v10

    const/4 v11, 0x6

    invoke-interface {v10, v11}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 6037
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 6041
    .end local v4    # "i":I
    :cond_2
    if-lez v5, :cond_3

    invoke-interface {v6}, Landroid/view/Menu;->size()I

    move-result v10

    if-lt v10, v5, :cond_3

    .line 6042
    add-int/lit8 v4, v5, -0x1

    .restart local v4    # "i":I
    :goto_4
    invoke-interface {v6}, Landroid/view/Menu;->size()I

    move-result v10

    if-ge v4, v10, :cond_3

    .line 6043
    invoke-interface {v6, v4}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v10

    const/4 v11, 0x5

    invoke-interface {v10, v11}, Landroid/view/MenuItem;->setShowAsAction(I)V
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 6042
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 6046
    .end local v2    # "density":F
    .end local v4    # "i":I
    .end local v5    # "maxActionModeItems":I
    .end local v7    # "minCellSize":I
    .end local v8    # "rightMarginOfClose":I
    .end local v9    # "smallestScreenWidthDp":I
    :catch_1
    move-exception v3

    .line 6047
    .restart local v3    # "e":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 6050
    .end local v3    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_3
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto/16 :goto_0
.end method
