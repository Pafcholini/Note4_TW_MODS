.class public final Landroid/view/ViewRootImpl;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"

# interfaces
.implements Landroid/view/HardwareRenderer$HardwareDrawCallbacks;
.implements Landroid/view/View$AttachInfo$Callbacks;
.implements Landroid/view/ViewParent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ViewRootImpl$CocktailGripDetector;,
        Landroid/view/ViewRootImpl$MotionEventMonitor;,
        Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;,
        Landroid/view/ViewRootImpl$AccessibilityInteractionConnection;,
        Landroid/view/ViewRootImpl$HighContrastTextManager;,
        Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;,
        Landroid/view/ViewRootImpl$RunQueue;,
        Landroid/view/ViewRootImpl$CalledFromWrongThreadException;,
        Landroid/view/ViewRootImpl$W;,
        Landroid/view/ViewRootImpl$TakenSurfaceHolder;,
        Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;,
        Landroid/view/ViewRootImpl$ConsumeBatchedInputImmediatelyRunnable;,
        Landroid/view/ViewRootImpl$ConsumeBatchedInputRunnable;,
        Landroid/view/ViewRootImpl$WindowInputEventReceiver;,
        Landroid/view/ViewRootImpl$TraversalRunnable;,
        Landroid/view/ViewRootImpl$QueuedInputEvent;,
        Landroid/view/ViewRootImpl$SyntheticKeyboardHandler;,
        Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;,
        Landroid/view/ViewRootImpl$SyntheticJoystickHandler;,
        Landroid/view/ViewRootImpl$TrackballAxis;,
        Landroid/view/ViewRootImpl$SyntheticTrackballHandler;,
        Landroid/view/ViewRootImpl$SyntheticInputStage;,
        Landroid/view/ViewRootImpl$ViewPostImeInputStage;,
        Landroid/view/ViewRootImpl$NativePostImeInputStage;,
        Landroid/view/ViewRootImpl$EarlyPostImeInputStage;,
        Landroid/view/ViewRootImpl$ImeInputStage;,
        Landroid/view/ViewRootImpl$ViewPreImeInputStage;,
        Landroid/view/ViewRootImpl$NativePreImeInputStage;,
        Landroid/view/ViewRootImpl$AsyncInputStage;,
        Landroid/view/ViewRootImpl$InputStage;,
        Landroid/view/ViewRootImpl$ViewRootHandler;,
        Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final DEBUG_CONFIGURATION:Z = false

.field private static final DEBUG_DIALOG:Z = false

.field private static final DEBUG_DRAW:Z = false

.field private static final DEBUG_FPS:Z = false

.field private static final DEBUG_IMF:Z = false

.field private static final DEBUG_INPUT_RESIZE:Z = false

.field private static final DEBUG_INPUT_STAGES:Z = false

.field private static final DEBUG_LAYOUT:Z = false

.field private static final DEBUG_ORIENTATION:Z = false

.field private static final DEBUG_TRACKBALL:Z = false

.field private static final DYNAMIC_COLOR_SCALING_ENABLED:Z = false

.field private static final LOCAL_LOGV:Z = false

.field private static final MAX_QUEUED_INPUT_EVENT_POOL_SIZE:I = 0xa

.field static final MAX_TRACKBALL_DELAY:I = 0xfa

.field private static final MSG_CHECK_FOCUS:I = 0xd

.field private static final MSG_CLEAR_ACCESSIBILITY_FOCUS_HOST:I = 0x15

.field private static final MSG_CLOSE_SYSTEM_DIALOGS:I = 0xe

.field private static final MSG_DIE:I = 0x3

.field private static final MSG_DISPATCH_AIR_BUTTON_HIT_TEST:I = 0x1b

.field private static final MSG_DISPATCH_APP_VISIBILITY:I = 0x8

.field private static final MSG_DISPATCH_COVER_STATE:I = 0x1c

.field private static final MSG_DISPATCH_DONE_ANIMATING:I = 0x16

.field private static final MSG_DISPATCH_DRAG_EVENT:I = 0xf

.field private static final MSG_DISPATCH_DRAG_LOCATION_EVENT:I = 0x10

.field private static final MSG_DISPATCH_GET_NEW_SURFACE:I = 0x9

.field private static final MSG_DISPATCH_INPUT_EVENT:I = 0x7

.field private static final MSG_DISPATCH_KEY_FROM_IME:I = 0xb

.field private static final MSG_DISPATCH_SPEN_GESTURE:I = 0x1a

.field private static final MSG_DISPATCH_SYSTEM_UI_VISIBILITY:I = 0x11

.field private static final MSG_FINISH_INPUT_CONNECTION:I = 0xc

.field private static final MSG_INVALIDATE:I = 0x1

.field private static final MSG_INVALIDATE_RECT:I = 0x2

.field private static final MSG_INVALIDATE_WORLD:I = 0x17

.field private static final MSG_PROCESS_INPUT_EVENTS:I = 0x13

.field private static final MSG_RESIZED:I = 0x4

.field private static final MSG_RESIZED_REPORT:I = 0x5

.field private static final MSG_SYNTHESIZE_INPUT_EVENT:I = 0x19

.field private static final MSG_UPDATE_CONFIGURATION:I = 0x12

.field private static final MSG_WINDOW_FOCUS_CHANGED:I = 0x6

.field private static final MSG_WINDOW_MOVED:I = 0x18

.field private static final MULTI_WINDOW_DRAG_AND_DROP_IMAGE:Ljava/lang/String; = "Multiwindow drag and drop image"

.field private static final MULTI_WINDOW_DRAG_AND_DROP_TEXT:Ljava/lang/String; = "Multiwindow drag and drop text"

.field public static final PROPERTY_EMULATOR_CIRCULAR:Ljava/lang/String; = "ro.emulator.circular"

.field private static final PROPERTY_MEDIA_DISABLED:Ljava/lang/String; = "config.disable_media"

.field private static final PROPERTY_PROFILE_RENDERING:Ljava/lang/String; = "viewroot.profile_rendering"

.field private static final SAFE_DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "ViewRootImpl"

.field private static final TAG_DCS:Ljava/lang/String; = "SRIB_DCS"

.field static final bFactoryBinary:Z

.field static final mResizeInterpolator:Landroid/view/animation/Interpolator;

.field private static mUseGestureDetectorTouchEventEx:Z

.field static final sConfigCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ComponentCallbacks;",
            ">;"
        }
    .end annotation
.end field

.field static sFirstDrawComplete:Z

.field static final sFirstDrawHandlers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field static final sRunQueues:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Landroid/view/ViewRootImpl$RunQueue;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mAccessibilityFocusedHost:Landroid/view/View;

.field mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

.field mAccessibilityInteractionConnectionManager:Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;

.field mAccessibilityInteractionController:Landroid/view/AccessibilityInteractionController;

.field final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field mAdded:Z

.field mAddedTouchMode:Z

.field mAppVisible:Z

.field mApplyInsetsRequested:Z

.field final mAttachInfo:Landroid/view/View$AttachInfo;

.field mAudioManager:Landroid/media/AudioManager;

.field final mBasePackageName:Ljava/lang/String;

.field mBlockResizeBuffer:Z

.field mChoreographer:Landroid/view/Choreographer;

.field mClientWindowLayoutFlags:I

.field final mCocktailBar:Landroid/graphics/Rect;

.field private mCocktailGripDetector:Landroid/view/ViewRootImpl$CocktailGripDetector;

.field final mConsumeBatchedInputImmediatelyRunnable:Landroid/view/ViewRootImpl$ConsumeBatchedInputImmediatelyRunnable;

.field mConsumeBatchedInputImmediatelyScheduled:Z

.field mConsumeBatchedInputScheduled:Z

.field final mConsumedBatchedInputRunnable:Landroid/view/ViewRootImpl$ConsumeBatchedInputRunnable;

.field final mContentResolver:Landroid/content/ContentResolver;

.field final mContext:Landroid/content/Context;

.field mCurScrollY:I

.field mCurrentDragView:Landroid/view/View;

.field private mCurrentWritingBuddyView:Landroid/view/View;

.field private final mDensity:I

.field mDirty:Landroid/graphics/Rect;

.field final mDispatchContentInsets:Landroid/graphics/Rect;

.field final mDispatchStableInsets:Landroid/graphics/Rect;

.field final mDisplay:Landroid/view/Display;

.field final mDisplayAdjustments:Landroid/view/DisplayAdjustments;

.field private final mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field final mDisplayManager:Landroid/hardware/display/DisplayManager;

.field mDragDescription:Landroid/content/ClipDescription;

.field final mDragPoint:Landroid/graphics/PointF;

.field mDrawDuringWindowsAnimating:Z

.field mDrawingAllowed:Z

.field mFallbackEventHandler:Landroid/view/FallbackEventHandler;

.field mFirst:Z

.field mFirstInputStage:Landroid/view/ViewRootImpl$InputStage;

.field mFirstPostImeInputStage:Landroid/view/ViewRootImpl$InputStage;

.field private mFocusDragStartWin:Z

.field private mForceDraw:Z

.field private mFpsNumFrames:I

.field private mFpsPrevTime:J

.field private mFpsStartTime:J

.field mFullRedrawNeeded:Z

.field final mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

.field mHandlingLayoutInLayoutRequest:Z

.field mHardwareXOffset:I

.field mHardwareYOffset:I

.field mHasHadWindowFocus:Z

.field mHeight:I

.field mHighContrastTextManager:Landroid/view/ViewRootImpl$HighContrastTextManager;

.field private mInLayout:Z

.field mInputChannel:Landroid/view/InputChannel;

.field protected final mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

.field mInputEventReceiver:Landroid/view/ViewRootImpl$WindowInputEventReceiver;

.field mInputQueue:Landroid/view/InputQueue;

.field mInputQueueCallback:Landroid/view/InputQueue$Callback;

.field final mInvalidateOnAnimationRunnable:Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;

.field mIsAnimating:Z

.field private mIsCircularEmulator:Z

.field mIsCreating:Z

.field mIsDrawing:Z

.field private mIsEmulator:Z

.field mIsInTraversal:Z

.field final mLastConfiguration:Landroid/content/res/Configuration;

.field final mLastGivenInsets:Landroid/view/ViewTreeObserver$InternalInsetsInfo;

.field mLastInCompatMode:Z

.field mLastMeasuredMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

.field mLastOverscanRequested:Z

.field mLastPerformedMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

.field mLastScrolledFocus:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field mLastSystemUiVisibility:I

.field final mLastTouchPoint:Landroid/graphics/PointF;

.field mLastWasImTarget:Z

.field mLayoutRequested:Z

.field mLayoutRequesters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field volatile mLocalDragState:Ljava/lang/Object;

.field final mLocation:Landroid/view/WindowLeaked;

.field private mMediaDisabled:Z

.field private mMotionEventMonitor:Landroid/view/ViewRootImpl$MotionEventMonitor;

.field mMultiWindowBoarderRect:Landroid/graphics/Rect;

.field mNewScaleFactorNeeded:Z

.field mNewSurfaceNeeded:Z

.field private final mNoncompatDensity:I

.field mOrientationChanged:Z

.field mOrigWindowType:I

.field final mPendingConfiguration:Landroid/content/res/Configuration;

.field final mPendingContentInsets:Landroid/graphics/Rect;

.field mPendingInputEventCount:I

.field mPendingInputEventHead:Landroid/view/ViewRootImpl$QueuedInputEvent;

.field mPendingInputEventQueueLengthCounterName:Ljava/lang/String;

.field mPendingInputEventTail:Landroid/view/ViewRootImpl$QueuedInputEvent;

.field final mPendingOverscanInsets:Landroid/graphics/Rect;

.field final mPendingStableInsets:Landroid/graphics/Rect;

.field private mPendingTransitions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/LayoutTransition;",
            ">;"
        }
    .end annotation
.end field

.field final mPendingVisibleInsets:Landroid/graphics/Rect;

.field final mPreviousTransparentRegion:Landroid/graphics/Region;

.field mProcessInputEventsScheduled:Z

.field private mProfile:Z

.field private mProfileRendering:Z

.field private mQueuedInputEventPool:Landroid/view/ViewRootImpl$QueuedInputEvent;

.field private mQueuedInputEventPoolSize:I

.field private mRemoved:Z

.field private mRenderProfiler:Landroid/view/Choreographer$FrameCallback;

.field private mRenderProfilingEnabled:Z

.field mReportNextDraw:Z

.field mResizeAlpha:I

.field mResizeBuffer:Landroid/view/HardwareLayer;

.field mResizeBufferDuration:I

.field mResizeBufferStartTime:J

.field final mResizePaint:Landroid/graphics/Paint;

.field mScaleFactor:Landroid/graphics/PointF;

.field mScrollMayChange:Z

.field mScrollY:I

.field mScroller:Landroid/widget/Scroller;

.field mSendWindowContentChangedAccessibilityEvent:Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;

.field mSeq:I

.field mSmartClipContext:Landroid/content/Context;

.field mSoftInputMode:I

.field mStopped:Z

.field private final mSurface:Landroid/view/Surface;

.field mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

.field mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback2;

.field mSyntheticInputStage:Landroid/view/ViewRootImpl$InputStage;

.field final mTargetSdkVersion:I

.field mTempHashSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final mTempRect:Landroid/graphics/Rect;

.field final mThread:Ljava/lang/Thread;

.field final mTmpLocation:[I

.field final mTmpValue:Landroid/util/TypedValue;

.field private mToolBoxManager:Lcom/samsung/android/toolbox/TwToolBoxManager;

.field mTranscloudFocusedHost:Landroid/view/View;

.field mTranscloudFocusedType:I

.field mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

.field final mTransparentRegion:Landroid/graphics/Region;

.field mTraversalBarrier:I

.field final mTraversalRunnable:Landroid/view/ViewRootImpl$TraversalRunnable;

.field mTraversalScheduled:Z

.field private mTwToolBoxTracking:Z

.field mUnbufferedInputDispatch:Z

.field public mUseFloatingToolBox:Z

.field mView:Landroid/view/View;

.field final mViewConfiguration:Landroid/view/ViewConfiguration;

.field private mViewLayoutDirectionInitial:I

.field mViewVisibility:I

.field final mVisRect:Landroid/graphics/Rect;

.field mWidth:I

.field mWillDrawSoon:Z

.field final mWinFrame:Landroid/graphics/Rect;

.field final mWindow:Landroid/view/ViewRootImpl$W;

.field final mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

.field mWindowAttributesChanged:Z

.field mWindowAttributesChangesFlag:I

.field private final mWindowIsRound:Z

.field final mWindowSession:Landroid/view/IWindowSession;

.field mWindowsAnimating:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 162
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    if-ne v0, v2, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Landroid/view/ViewRootImpl;->SAFE_DEBUG:Z

    .line 195
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroid/view/ViewRootImpl;->sRunQueues:Ljava/lang/ThreadLocal;

    .line 197
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/view/ViewRootImpl;->sFirstDrawHandlers:Ljava/util/ArrayList;

    .line 198
    sput-boolean v1, Landroid/view/ViewRootImpl;->sFirstDrawComplete:Z

    .line 200
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/view/ViewRootImpl;->sConfigCallbacks:Ljava/util/ArrayList;

    .line 378
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    sput-object v0, Landroid/view/ViewRootImpl;->mResizeInterpolator:Landroid/view/animation/Interpolator;

    .line 437
    const-string/jumbo v0, "ro.factory.factory_binary"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "factory"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Landroid/view/ViewRootImpl;->bFactoryBinary:Z

    .line 446
    sput-boolean v2, Landroid/view/ViewRootImpl;->mUseGestureDetectorTouchEventEx:Z

    return-void

    :cond_0
    move v0, v2

    .line 162
    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/Display;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "display"    # Landroid/view/Display;

    .prologue
    const/4 v6, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v5, -0x1

    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 468
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 209
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mTmpLocation:[I

    .line 211
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mTmpValue:Landroid/util/TypedValue;

    .line 217
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    .line 240
    iput-boolean v6, p0, Landroid/view/ViewRootImpl;->mAppVisible:Z

    .line 241
    iput v5, p0, Landroid/view/ViewRootImpl;->mOrigWindowType:I

    .line 245
    iput-boolean v4, p0, Landroid/view/ViewRootImpl;->mStopped:Z

    .line 247
    iput-boolean v4, p0, Landroid/view/ViewRootImpl;->mLastInCompatMode:Z

    .line 300
    iput-boolean v4, p0, Landroid/view/ViewRootImpl;->mOrientationChanged:Z

    .line 301
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v2, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mScaleFactor:Landroid/graphics/PointF;

    .line 302
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mMultiWindowBoarderRect:Landroid/graphics/Rect;

    .line 303
    iput-boolean v4, p0, Landroid/view/ViewRootImpl;->mNewScaleFactorNeeded:Z

    .line 305
    iput-object v1, p0, Landroid/view/ViewRootImpl;->mLastMeasuredMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .line 306
    new-instance v0, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-direct {v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mLastPerformedMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .line 308
    iput-boolean v4, p0, Landroid/view/ViewRootImpl;->mFocusDragStartWin:Z

    .line 314
    iput-object v1, p0, Landroid/view/ViewRootImpl;->mSmartClipContext:Landroid/content/Context;

    .line 331
    const-string/jumbo v0, "pq"

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mPendingInputEventQueueLengthCounterName:Ljava/lang/String;

    .line 337
    iput-boolean v4, p0, Landroid/view/ViewRootImpl;->mWindowAttributesChanged:Z

    .line 338
    iput v4, p0, Landroid/view/ViewRootImpl;->mWindowAttributesChangesFlag:I

    .line 342
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0}, Landroid/view/Surface;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    .line 352
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mPendingOverscanInsets:Landroid/graphics/Rect;

    .line 353
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mPendingVisibleInsets:Landroid/graphics/Rect;

    .line 354
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mPendingStableInsets:Landroid/graphics/Rect;

    .line 355
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mPendingContentInsets:Landroid/graphics/Rect;

    .line 356
    new-instance v0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    invoke-direct {v0}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mLastGivenInsets:Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    .line 359
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mDispatchContentInsets:Landroid/graphics/Rect;

    .line 360
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mDispatchStableInsets:Landroid/graphics/Rect;

    .line 362
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mLastConfiguration:Landroid/content/res/Configuration;

    .line 363
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mPendingConfiguration:Landroid/content/res/Configuration;

    .line 387
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mDragPoint:Landroid/graphics/PointF;

    .line 388
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mLastTouchPoint:Landroid/graphics/PointF;

    .line 400
    iput-boolean v4, p0, Landroid/view/ViewRootImpl;->mUseFloatingToolBox:Z

    .line 401
    iput-object v1, p0, Landroid/view/ViewRootImpl;->mToolBoxManager:Lcom/samsung/android/toolbox/TwToolBoxManager;

    .line 405
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Landroid/view/ViewRootImpl;->mFpsStartTime:J

    .line 406
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Landroid/view/ViewRootImpl;->mFpsPrevTime:J

    .line 428
    iput-boolean v4, p0, Landroid/view/ViewRootImpl;->mInLayout:Z

    .line 429
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mLayoutRequesters:Ljava/util/ArrayList;

    .line 430
    iput-boolean v4, p0, Landroid/view/ViewRootImpl;->mHandlingLayoutInLayoutRequest:Z

    .line 450
    iput-object v1, p0, Landroid/view/ViewRootImpl;->mCocktailGripDetector:Landroid/view/ViewRootImpl$CocktailGripDetector;

    .line 457
    invoke-static {}, Landroid/view/InputEventConsistencyVerifier;->isInstrumentationEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Landroid/view/InputEventConsistencyVerifier;

    invoke-direct {v0, p0, v4}, Landroid/view/InputEventConsistencyVerifier;-><init>(Ljava/lang/Object;I)V

    :goto_0
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    .line 552
    iput-boolean v4, p0, Landroid/view/ViewRootImpl;->mProfile:Z

    .line 980
    new-instance v0, Landroid/view/ViewRootImpl$1;

    invoke-direct {v0, p0}, Landroid/view/ViewRootImpl$1;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 2521
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mResizePaint:Landroid/graphics/Paint;

    .line 3838
    iput-boolean v4, p0, Landroid/view/ViewRootImpl;->mTwToolBoxTracking:Z

    .line 3873
    new-instance v0, Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-direct {v0, p0}, Landroid/view/ViewRootImpl$ViewRootHandler;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    .line 6708
    new-instance v0, Landroid/view/ViewRootImpl$TraversalRunnable;

    invoke-direct {v0, p0}, Landroid/view/ViewRootImpl$TraversalRunnable;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mTraversalRunnable:Landroid/view/ViewRootImpl$TraversalRunnable;

    .line 6743
    new-instance v0, Landroid/view/ViewRootImpl$ConsumeBatchedInputRunnable;

    invoke-direct {v0, p0}, Landroid/view/ViewRootImpl$ConsumeBatchedInputRunnable;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mConsumedBatchedInputRunnable:Landroid/view/ViewRootImpl$ConsumeBatchedInputRunnable;

    .line 6753
    new-instance v0, Landroid/view/ViewRootImpl$ConsumeBatchedInputImmediatelyRunnable;

    invoke-direct {v0, p0}, Landroid/view/ViewRootImpl$ConsumeBatchedInputImmediatelyRunnable;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mConsumeBatchedInputImmediatelyRunnable:Landroid/view/ViewRootImpl$ConsumeBatchedInputImmediatelyRunnable;

    .line 6839
    new-instance v0, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;

    invoke-direct {v0, p0}, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mInvalidateOnAnimationRunnable:Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;

    .line 469
    iput-object p1, p0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    .line 470
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowSession()Landroid/view/IWindowSession;

    move-result-object v0

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    .line 471
    iput-object p2, p0, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    .line 472
    invoke-virtual {p1}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mBasePackageName:Ljava/lang/String;

    .line 474
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mContentResolver:Landroid/content/ContentResolver;

    .line 476
    invoke-virtual {p2}, Landroid/view/Display;->getDisplayAdjustments()Landroid/view/DisplayAdjustments;

    move-result-object v0

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mDisplayAdjustments:Landroid/view/DisplayAdjustments;

    .line 478
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mThread:Ljava/lang/Thread;

    .line 479
    new-instance v0, Landroid/view/WindowLeaked;

    invoke-direct {v0, v1}, Landroid/view/WindowLeaked;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mLocation:Landroid/view/WindowLeaked;

    .line 480
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mLocation:Landroid/view/WindowLeaked;

    invoke-virtual {v0}, Landroid/view/WindowLeaked;->fillInStackTrace()Ljava/lang/Throwable;

    .line 481
    iput v5, p0, Landroid/view/ViewRootImpl;->mWidth:I

    .line 482
    iput v5, p0, Landroid/view/ViewRootImpl;->mHeight:I

    .line 483
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mDirty:Landroid/graphics/Rect;

    .line 484
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    .line 485
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mVisRect:Landroid/graphics/Rect;

    .line 486
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    .line 487
    new-instance v0, Landroid/view/ViewRootImpl$W;

    invoke-direct {v0, p0}, Landroid/view/ViewRootImpl$W;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    .line 488
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iput v0, p0, Landroid/view/ViewRootImpl;->mTargetSdkVersion:I

    .line 489
    const/16 v0, 0x8

    iput v0, p0, Landroid/view/ViewRootImpl;->mViewVisibility:I

    .line 490
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mTransparentRegion:Landroid/graphics/Region;

    .line 491
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mPreviousTransparentRegion:Landroid/graphics/Region;

    .line 492
    iput-boolean v6, p0, Landroid/view/ViewRootImpl;->mFirst:Z

    .line 493
    iput-boolean v4, p0, Landroid/view/ViewRootImpl;->mAdded:Z

    .line 494
    new-instance v0, Landroid/view/View$AttachInfo;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    iget-object v5, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    move-object v3, p2

    move-object v4, p0

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Landroid/view/View$AttachInfo;-><init>(Landroid/view/IWindowSession;Landroid/view/IWindow;Landroid/view/Display;Landroid/view/ViewRootImpl;Landroid/os/Handler;Landroid/view/View$AttachInfo$Callbacks;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 495
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 496
    new-instance v0, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;

    invoke-direct {v0, p0}, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityInteractionConnectionManager:Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;

    .line 498
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAccessibilityInteractionConnectionManager:Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->addAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;)Z

    .line 500
    new-instance v0, Landroid/view/ViewRootImpl$HighContrastTextManager;

    invoke-direct {v0, p0}, Landroid/view/ViewRootImpl$HighContrastTextManager;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mHighContrastTextManager:Landroid/view/ViewRootImpl$HighContrastTextManager;

    .line 501
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHighContrastTextManager:Landroid/view/ViewRootImpl$HighContrastTextManager;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->addHighTextContrastStateChangeListener(Landroid/view/accessibility/AccessibilityManager$HighTextContrastChangeListener;)Z

    .line 503
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mViewConfiguration:Landroid/view/ViewConfiguration;

    .line 504
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v0, p0, Landroid/view/ViewRootImpl;->mDensity:I

    .line 505
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->noncompatDensityDpi:I

    iput v0, p0, Landroid/view/ViewRootImpl;->mNoncompatDensity:I

    .line 506
    invoke-static {p1}, Lcom/android/internal/policy/PolicyManager;->makeNewFallbackEventHandler(Landroid/content/Context;)Landroid/view/FallbackEventHandler;

    move-result-object v0

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mFallbackEventHandler:Landroid/view/FallbackEventHandler;

    .line 507
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    .line 508
    const-string v0, "display"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 509
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->loadSystemProperties()V

    .line 510
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1120070

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mWindowIsRound:Z

    .line 512
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mLastConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 515
    iput-object p1, p0, Landroid/view/ViewRootImpl;->mSmartClipContext:Landroid/content/Context;

    .line 519
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 520
    .local v7, "pm":Landroid/content/pm/PackageManager;
    if-eqz v7, :cond_0

    .line 521
    const-string v0, "com.sec.feature.spen_usp"

    invoke-virtual {v7, v0}, Landroid/content/pm/PackageManager;->getSystemFeatureLevel(Ljava/lang/String;)I

    move-result v8

    .line 522
    .local v8, "spenUspLevel":I
    const/4 v0, 0x3

    if-ne v8, v0, :cond_0

    .line 523
    new-instance v0, Landroid/view/ViewRootImpl$MotionEventMonitor;

    invoke-direct {v0}, Landroid/view/ViewRootImpl$MotionEventMonitor;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mMotionEventMonitor:Landroid/view/ViewRootImpl$MotionEventMonitor;

    .line 528
    .end local v8    # "spenUspLevel":I
    :cond_0
    sget-boolean v0, Lcom/samsung/android/toolbox/TwToolBoxService;->TOOLBOX_SUPPORT:Z

    if-eqz v0, :cond_1

    .line 529
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->twUpdateToolBox()V

    .line 533
    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mCocktailBar:Landroid/graphics/Rect;

    .line 535
    return-void

    .end local v7    # "pm":Landroid/content/pm/PackageManager;
    :cond_2
    move-object v0, v1

    .line 457
    goto/16 :goto_0
.end method

.method static synthetic access$000(Landroid/view/ViewRootImpl;)Z
    .locals 1
    .param p0, "x0"    # Landroid/view/ViewRootImpl;

    .prologue
    .line 157
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mRenderProfilingEnabled:Z

    return v0
.end method

.method static synthetic access$100(Landroid/view/ViewRootImpl;)Landroid/view/Choreographer$FrameCallback;
    .locals 1
    .param p0, "x0"    # Landroid/view/ViewRootImpl;

    .prologue
    .line 157
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mRenderProfiler:Landroid/view/Choreographer$FrameCallback;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/view/ViewRootImpl;)V
    .locals 0
    .param p0, "x0"    # Landroid/view/ViewRootImpl;

    .prologue
    .line 157
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->sendUserActionEvent()V

    return-void
.end method

.method static synthetic access$1100(Landroid/view/ViewRootImpl;Landroid/view/DragEvent;)V
    .locals 0
    .param p0, "x0"    # Landroid/view/ViewRootImpl;
    .param p1, "x1"    # Landroid/view/DragEvent;

    .prologue
    .line 157
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->handleDragEvent(Landroid/view/DragEvent;)V

    return-void
.end method

.method static synthetic access$1200(Landroid/view/ViewRootImpl;Landroid/view/View;II)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Landroid/view/ViewRootImpl;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 157
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewRootImpl;->findAirButtonViewByPosition(Landroid/view/View;II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Landroid/view/ViewRootImpl;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/view/ViewRootImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 157
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->handleDispatchCoverStateChanged(Z)V

    return-void
.end method

.method static synthetic access$1400(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$QueuedInputEvent;)V
    .locals 0
    .param p0, "x0"    # Landroid/view/ViewRootImpl;
    .param p1, "x1"    # Landroid/view/ViewRootImpl$QueuedInputEvent;

    .prologue
    .line 157
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->finishInputEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    return-void
.end method

.method static synthetic access$1500(Landroid/view/ViewRootImpl;Landroid/view/KeyEvent;)Z
    .locals 1
    .param p0, "x0"    # Landroid/view/ViewRootImpl;
    .param p1, "x1"    # Landroid/view/KeyEvent;

    .prologue
    .line 157
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->checkForLeavingTouchModeAndConsume(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Landroid/view/ViewRootImpl;)Landroid/view/ViewRootImpl$MotionEventMonitor;
    .locals 1
    .param p0, "x0"    # Landroid/view/ViewRootImpl;

    .prologue
    .line 157
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mMotionEventMonitor:Landroid/view/ViewRootImpl$MotionEventMonitor;

    return-object v0
.end method

.method static synthetic access$200(Landroid/view/ViewRootImpl;)Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .locals 1
    .param p0, "x0"    # Landroid/view/ViewRootImpl;

    .prologue
    .line 157
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2502(Landroid/view/ViewRootImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/view/ViewRootImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 157
    iput-boolean p1, p0, Landroid/view/ViewRootImpl;->mProfileRendering:Z

    return p1
.end method

.method static synthetic access$2602(Landroid/view/ViewRootImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/view/ViewRootImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 157
    iput-boolean p1, p0, Landroid/view/ViewRootImpl;->mMediaDisabled:Z

    return p1
.end method

.method static synthetic access$2702(Landroid/view/ViewRootImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/view/ViewRootImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 157
    iput-boolean p1, p0, Landroid/view/ViewRootImpl;->mIsEmulator:Z

    return p1
.end method

.method static synthetic access$2802(Landroid/view/ViewRootImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/view/ViewRootImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 157
    iput-boolean p1, p0, Landroid/view/ViewRootImpl;->mIsCircularEmulator:Z

    return p1
.end method

.method static synthetic access$300(Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Landroid/view/View;

    .prologue
    .line 157
    invoke-static {p0}, Landroid/view/ViewRootImpl;->forceLayout(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$3100(Landroid/view/ViewRootImpl;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/view/ViewRootImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 157
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->dispatchCoverStateChanged(Z)V

    return-void
.end method

.method static synthetic access$3300(Landroid/view/ViewRootImpl;Landroid/view/View;Landroid/view/View;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Landroid/view/ViewRootImpl;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Landroid/view/View;

    .prologue
    .line 157
    invoke-direct {p0, p1, p2}, Landroid/view/ViewRootImpl;->getCommonPredecessor(Landroid/view/View;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400()Z
    .locals 1

    .prologue
    .line 157
    sget-boolean v0, Landroid/view/ViewRootImpl;->SAFE_DEBUG:Z

    return v0
.end method

.method static synthetic access$500(Landroid/view/ViewRootImpl;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/view/ViewRootImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 157
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->profileRendering(Z)V

    return-void
.end method

.method static synthetic access$600(Landroid/view/ViewRootImpl;Z)Z
    .locals 1
    .param p0, "x0"    # Landroid/view/ViewRootImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 157
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->ensureTouchModeLocally(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Landroid/view/ViewRootImpl;)Landroid/view/Surface;
    .locals 1
    .param p0, "x0"    # Landroid/view/ViewRootImpl;

    .prologue
    .line 157
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    return-object v0
.end method

.method static synthetic access$800(Landroid/view/ViewRootImpl;)Lcom/samsung/android/toolbox/TwToolBoxManager;
    .locals 1
    .param p0, "x0"    # Landroid/view/ViewRootImpl;

    .prologue
    .line 157
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mToolBoxManager:Lcom/samsung/android/toolbox/TwToolBoxManager;

    return-object v0
.end method

.method static synthetic access$802(Landroid/view/ViewRootImpl;Lcom/samsung/android/toolbox/TwToolBoxManager;)Lcom/samsung/android/toolbox/TwToolBoxManager;
    .locals 0
    .param p0, "x0"    # Landroid/view/ViewRootImpl;
    .param p1, "x1"    # Lcom/samsung/android/toolbox/TwToolBoxManager;

    .prologue
    .line 157
    iput-object p1, p0, Landroid/view/ViewRootImpl;->mToolBoxManager:Lcom/samsung/android/toolbox/TwToolBoxManager;

    return-object p1
.end method

.method static synthetic access$900(Landroid/view/ViewRootImpl;)Z
    .locals 1
    .param p0, "x0"    # Landroid/view/ViewRootImpl;

    .prologue
    .line 157
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->isInLocalFocusMode()Z

    move-result v0

    return v0
.end method

.method public static addConfigCallback(Landroid/content/ComponentCallbacks;)V
    .locals 2
    .param p0, "callback"    # Landroid/content/ComponentCallbacks;

    .prologue
    .line 546
    sget-object v1, Landroid/view/ViewRootImpl;->sConfigCallbacks:Ljava/util/ArrayList;

    monitor-enter v1

    .line 547
    :try_start_0
    sget-object v0, Landroid/view/ViewRootImpl;->sConfigCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 548
    monitor-exit v1

    .line 549
    return-void

    .line 548
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static addFirstDrawHandler(Ljava/lang/Runnable;)V
    .locals 2
    .param p0, "callback"    # Ljava/lang/Runnable;

    .prologue
    .line 538
    sget-object v1, Landroid/view/ViewRootImpl;->sFirstDrawHandlers:Ljava/util/ArrayList;

    monitor-enter v1

    .line 539
    :try_start_0
    sget-boolean v0, Landroid/view/ViewRootImpl;->sFirstDrawComplete:Z

    if-nez v0, :cond_0

    .line 540
    sget-object v0, Landroid/view/ViewRootImpl;->sFirstDrawHandlers:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 542
    :cond_0
    monitor-exit v1

    .line 543
    return-void

    .line 542
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private applyKeepScreenOnFlag(Landroid/view/WindowManager$LayoutParams;)V
    .locals 2
    .param p1, "params"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 1237
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    if-eqz v0, :cond_0

    .line 1238
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1243
    :goto_0
    return-void

    .line 1240
    :cond_0
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, -0x81

    iget v1, p0, Landroid/view/ViewRootImpl;->mClientWindowLayoutFlags:I

    and-int/lit16 v1, v1, 0x80

    or-int/2addr v0, v1

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0
.end method

.method private checkForLeavingTouchModeAndConsume(Landroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x0

    .line 5760
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v2, v2, Landroid/view/View$AttachInfo;->mInTouchMode:Z

    if-nez v2, :cond_1

    .line 5792
    :cond_0
    :goto_0
    return v1

    .line 5765
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 5766
    .local v0, "action":I
    if-eqz v0, :cond_2

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 5771
    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v2

    and-int/lit8 v2, v2, 0x4

    if-nez v2, :cond_0

    .line 5780
    invoke-static {p1}, Landroid/view/ViewRootImpl;->isNavigationKey(Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 5781
    invoke-virtual {p0, v1}, Landroid/view/ViewRootImpl;->ensureTouchMode(Z)Z

    move-result v1

    goto :goto_0

    .line 5787
    :cond_3
    invoke-static {p1}, Landroid/view/ViewRootImpl;->isTypingKey(Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5788
    invoke-virtual {p0, v1}, Landroid/view/ViewRootImpl;->ensureTouchMode(Z)Z

    goto :goto_0
.end method

.method private checkPalmRejection(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x1

    .line 3994
    const/4 v1, 0x0

    .line 3995
    .local v1, "SsumMajor":I
    const/4 v2, 0x0

    .line 3997
    .local v2, "bPalm":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    .line 3998
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_2

    .line 3999
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPalm(I)F

    move-result v5

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_0

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPalm(I)F

    move-result v5

    const/high16 v6, 0x40400000    # 3.0f

    cmpl-float v5, v5, v6

    if-nez v5, :cond_1

    :cond_0
    const/4 v2, 0x1

    .line 4000
    :cond_1
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getTouchMajor(I)F

    move-result v5

    float-to-int v1, v5

    .line 3998
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4005
    :cond_2
    const/16 v5, 0x64

    if-ge v1, v5, :cond_3

    if-ne v2, v4, :cond_4

    .line 4008
    :cond_3
    :goto_1
    return v4

    :cond_4
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private collectViewAttributes()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 1246
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v3, v3, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    if-eqz v3, :cond_1

    .line 1248
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v2, v3, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    .line 1249
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v3, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    .line 1250
    .local v0, "oldScreenOn":Z
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v2, v3, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    .line 1251
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput v2, v3, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    .line 1252
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v2, v3, Landroid/view/View$AttachInfo;->mHasSystemUiListeners:Z

    .line 1253
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    iget-object v4, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    invoke-virtual {v3, v4, v2}, Landroid/view/View;->dispatchCollectViewAttributes(Landroid/view/View$AttachInfo;I)V

    .line 1254
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v4, v3, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    iget-object v5, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v5, v5, Landroid/view/View$AttachInfo;->mDisabledSystemUiVisibility:I

    xor-int/lit8 v5, v5, -0x1

    and-int/2addr v4, v5

    iput v4, v3, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    .line 1255
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    .line 1256
    .local v1, "params":Landroid/view/WindowManager$LayoutParams;
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v4, v3, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    invoke-direct {p0, v1}, Landroid/view/ViewRootImpl;->getImpliedSystemUiVisibility(Landroid/view/WindowManager$LayoutParams;)I

    move-result v5

    or-int/2addr v4, v5

    iput v4, v3, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    .line 1257
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v3, v3, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    if-ne v3, v0, :cond_0

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v3, v3, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    iget v4, v1, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v3, v3, Landroid/view/View$AttachInfo;->mHasSystemUiListeners:Z

    iget-boolean v4, v1, Landroid/view/WindowManager$LayoutParams;->hasSystemUiListeners:Z

    if-eq v3, v4, :cond_1

    .line 1260
    :cond_0
    invoke-direct {p0, v1}, Landroid/view/ViewRootImpl;->applyKeepScreenOnFlag(Landroid/view/WindowManager$LayoutParams;)V

    .line 1261
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v2, v2, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    .line 1262
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v2, v2, Landroid/view/View$AttachInfo;->mHasSystemUiListeners:Z

    iput-boolean v2, v1, Landroid/view/WindowManager$LayoutParams;->hasSystemUiListeners:Z

    .line 1263
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v3, v3, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    invoke-virtual {v2, v3}, Landroid/view/View;->dispatchWindowSystemUiVisiblityChanged(I)V

    .line 1264
    const/4 v2, 0x1

    .line 1267
    .end local v0    # "oldScreenOn":Z
    .end local v1    # "params":Landroid/view/WindowManager$LayoutParams;
    :cond_1
    return v2
.end method

.method private deliverInputEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)V
    .locals 13
    .param p1, "q"    # Landroid/view/ViewRootImpl$QueuedInputEvent;

    .prologue
    .line 6529
    const-wide/16 v10, 0x8

    const-string v9, "deliverInputEvent"

    iget-object v12, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    invoke-virtual {v12}, Landroid/view/InputEvent;->getSequenceNumber()I

    move-result v12

    invoke-static {v10, v11, v9, v12}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 6532
    iget-object v9, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    instance-of v9, v9, Landroid/view/MotionEvent;

    if-eqz v9, :cond_4

    .line 6534
    iget-object v1, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    check-cast v1, Landroid/view/MotionEvent;

    .line 6537
    .local v1, "event":Landroid/view/MotionEvent;
    iget-object v9, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v9, v9, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v10, -0x2

    if-ne v9, v10, :cond_0

    iget-object v9, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v9, v9, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v10, -0x2

    if-ne v9, v10, :cond_0

    const/4 v3, 0x1

    .line 6539
    .local v3, "isFloating":Z
    :goto_0
    if-nez v3, :cond_1

    iget-object v9, p0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    if-eqz v9, :cond_1

    iget-object v9, p0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->isTouchBlocked()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 6540
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->finishInputEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    .line 6631
    .end local v1    # "event":Landroid/view/MotionEvent;
    .end local v3    # "isFloating":Z
    :goto_1
    return-void

    .line 6537
    .restart local v1    # "event":Landroid/view/MotionEvent;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 6545
    .restart local v3    # "isFloating":Z
    :cond_1
    const/high16 v7, 0x3f800000    # 1.0f

    .line 6546
    .local v7, "xScale":F
    const/high16 v8, 0x3f800000    # 1.0f

    .line 6547
    .local v8, "yScale":F
    const/4 v5, 0x0

    .line 6549
    .local v5, "stackOffset":Landroid/graphics/Point;
    iget-object v9, p0, Landroid/view/ViewRootImpl;->mScaleFactor:Landroid/graphics/PointF;

    iget v9, v9, Landroid/graphics/PointF;->x:F

    const/high16 v10, 0x3f800000    # 1.0f

    cmpl-float v9, v9, v10

    if-nez v9, :cond_2

    iget-object v9, p0, Landroid/view/ViewRootImpl;->mScaleFactor:Landroid/graphics/PointF;

    iget v9, v9, Landroid/graphics/PointF;->y:F

    const/high16 v10, 0x3f800000    # 1.0f

    cmpl-float v9, v9, v10

    if-eqz v9, :cond_3

    .line 6550
    :cond_2
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->getStackPosition()Landroid/graphics/Point;

    move-result-object v5

    .line 6551
    if-eqz v5, :cond_3

    .line 6552
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    .line 6553
    .local v4, "pointerCount":I
    const/high16 v9, 0x3f800000    # 1.0f

    iget-object v10, p0, Landroid/view/ViewRootImpl;->mScaleFactor:Landroid/graphics/PointF;

    iget v10, v10, Landroid/graphics/PointF;->x:F

    div-float v7, v9, v10

    .line 6554
    const/high16 v9, 0x3f800000    # 1.0f

    iget-object v10, p0, Landroid/view/ViewRootImpl;->mScaleFactor:Landroid/graphics/PointF;

    iget v10, v10, Landroid/graphics/PointF;->y:F

    div-float v8, v9, v10

    .line 6555
    const/4 v9, 0x1

    if-ne v4, v9, :cond_7

    .line 6556
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    mul-float/2addr v9, v7

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    mul-float/2addr v10, v8

    invoke-virtual {v1, v9, v10}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 6569
    .end local v4    # "pointerCount":I
    :cond_3
    :goto_2
    invoke-virtual {v1, v7, v8}, Landroid/view/MotionEvent;->setScale(FF)V

    .line 6570
    if-eqz v5, :cond_4

    .line 6571
    iget v9, v5, Landroid/graphics/Point;->x:I

    iget v10, v5, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v9, v10}, Landroid/view/MotionEvent;->setScaledWindowOffset(II)V

    .line 6586
    .end local v1    # "event":Landroid/view/MotionEvent;
    .end local v3    # "isFloating":Z
    .end local v5    # "stackOffset":Landroid/graphics/Point;
    .end local v7    # "xScale":F
    .end local v8    # "yScale":F
    :cond_4
    iget-object v9, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    instance-of v9, v9, Landroid/view/MotionEvent;

    if-eqz v9, :cond_5

    .line 6588
    sget-boolean v9, Landroid/view/ViewRootImpl;->bFactoryBinary:Z

    if-nez v9, :cond_5

    .line 6590
    iget-object v1, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    check-cast v1, Landroid/view/MotionEvent;

    .line 6591
    .restart local v1    # "event":Landroid/view/MotionEvent;
    invoke-direct {p0, v1}, Landroid/view/ViewRootImpl;->checkPalmRejection(Landroid/view/MotionEvent;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 6592
    invoke-direct {p0, v1}, Landroid/view/ViewRootImpl;->getPalmRejection(Landroid/view/MotionEvent;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 6593
    const/4 v9, 0x3

    invoke-virtual {v1, v9}, Landroid/view/MotionEvent;->setAction(I)V

    .line 6615
    .end local v1    # "event":Landroid/view/MotionEvent;
    :cond_5
    iget-object v9, p0, Landroid/view/ViewRootImpl;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    if-eqz v9, :cond_6

    .line 6616
    iget-object v9, p0, Landroid/view/ViewRootImpl;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    iget-object v10, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/view/InputEventConsistencyVerifier;->onInputEvent(Landroid/view/InputEvent;I)V

    .line 6620
    :cond_6
    invoke-virtual {p1}, Landroid/view/ViewRootImpl$QueuedInputEvent;->shouldSendToSynthesizer()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 6621
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mSyntheticInputStage:Landroid/view/ViewRootImpl$InputStage;

    .line 6626
    .local v6, "stage":Landroid/view/ViewRootImpl$InputStage;
    :goto_3
    if-eqz v6, :cond_b

    .line 6627
    invoke-virtual {v6, p1}, Landroid/view/ViewRootImpl$InputStage;->deliver(Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    goto/16 :goto_1

    .line 6558
    .end local v6    # "stage":Landroid/view/ViewRootImpl$InputStage;
    .restart local v1    # "event":Landroid/view/MotionEvent;
    .restart local v3    # "isFloating":Z
    .restart local v4    # "pointerCount":I
    .restart local v5    # "stackOffset":Landroid/graphics/Point;
    .restart local v7    # "xScale":F
    .restart local v8    # "yScale":F
    :cond_7
    new-array v0, v4, [Landroid/view/MotionEvent$PointerCoords;

    .line 6559
    .local v0, "coords":[Landroid/view/MotionEvent$PointerCoords;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_4
    if-ge v2, v4, :cond_8

    .line 6560
    new-instance v9, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v9}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v9, v0, v2

    .line 6561
    aget-object v9, v0, v2

    invoke-virtual {v1, v2, v9}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    .line 6562
    aget-object v9, v0, v2

    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v10

    mul-float/2addr v10, v7

    iput v10, v9, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 6563
    aget-object v9, v0, v2

    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    mul-float/2addr v10, v8

    iput v10, v9, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 6559
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 6565
    :cond_8
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v10

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v9

    invoke-virtual {v1, v10, v11, v0, v9}, Landroid/view/MotionEvent;->addBatch(J[Landroid/view/MotionEvent$PointerCoords;I)V

    goto :goto_2

    .line 6623
    .end local v0    # "coords":[Landroid/view/MotionEvent$PointerCoords;
    .end local v1    # "event":Landroid/view/MotionEvent;
    .end local v2    # "i":I
    .end local v3    # "isFloating":Z
    .end local v4    # "pointerCount":I
    .end local v5    # "stackOffset":Landroid/graphics/Point;
    .end local v7    # "xScale":F
    .end local v8    # "yScale":F
    :cond_9
    invoke-virtual {p1}, Landroid/view/ViewRootImpl$QueuedInputEvent;->shouldSkipIme()Z

    move-result v9

    if-eqz v9, :cond_a

    iget-object v6, p0, Landroid/view/ViewRootImpl;->mFirstPostImeInputStage:Landroid/view/ViewRootImpl$InputStage;

    .restart local v6    # "stage":Landroid/view/ViewRootImpl$InputStage;
    :goto_5
    goto :goto_3

    .end local v6    # "stage":Landroid/view/ViewRootImpl$InputStage;
    :cond_a
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mFirstInputStage:Landroid/view/ViewRootImpl$InputStage;

    goto :goto_5

    .line 6629
    .restart local v6    # "stage":Landroid/view/ViewRootImpl$InputStage;
    :cond_b
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->finishInputEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    goto/16 :goto_1
.end method

.method private destroyHardwareRenderer()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 6304
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v1, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    .line 6306
    .local v0, "hardwareRenderer":Landroid/view/HardwareRenderer;
    if-eqz v0, :cond_1

    .line 6307
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 6308
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/HardwareRenderer;->destroyHardwareResources(Landroid/view/View;)V

    .line 6310
    :cond_0
    invoke-virtual {v0}, Landroid/view/HardwareRenderer;->destroy()V

    .line 6311
    invoke-virtual {v0, v3}, Landroid/view/HardwareRenderer;->setRequested(Z)V

    .line 6313
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    .line 6314
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v3, v1, Landroid/view/View$AttachInfo;->mHardwareAccelerated:Z

    .line 6316
    :cond_1
    return-void
.end method

.method private dispatchCoverStateChanged(Z)V
    .locals 2
    .param p1, "isOpen"    # Z

    .prologue
    .line 6994
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 6995
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x1c

    iput v1, v0, Landroid/os/Message;->what:I

    .line 6996
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 6997
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    .line 6999
    return-void

    .line 6996
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private draw(Z)V
    .locals 28
    .param p1, "fullRedrawNeeded"    # Z

    .prologue
    .line 2661
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    .line 2662
    .local v5, "surface":Landroid/view/Surface;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Landroid/view/Surface;->isValid()Z

    move-result v4

    if-nez v4, :cond_3

    .line 2663
    :cond_0
    if-nez v5, :cond_2

    .line 2664
    const-string v4, "ViewSystem"

    const-string v6, "ViewRootImpl #1 Surface is null."

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2821
    :cond_1
    :goto_0
    return-void

    .line 2666
    :cond_2
    invoke-virtual {v5}, Landroid/view/Surface;->isValid()Z

    move-result v4

    if-nez v4, :cond_1

    .line 2667
    const-string v4, "ViewSystem"

    const-string v6, "ViewRootImpl #2 Surface is not valid."

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2676
    :cond_3
    sget-boolean v4, Landroid/view/ViewRootImpl;->sFirstDrawComplete:Z

    if-nez v4, :cond_5

    .line 2677
    sget-object v6, Landroid/view/ViewRootImpl;->sFirstDrawHandlers:Ljava/util/ArrayList;

    monitor-enter v6

    .line 2678
    const/4 v4, 0x1

    :try_start_0
    sput-boolean v4, Landroid/view/ViewRootImpl;->sFirstDrawComplete:Z

    .line 2679
    sget-object v4, Landroid/view/ViewRootImpl;->sFirstDrawHandlers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 2680
    .local v14, "count":I
    const/16 v19, 0x0

    .local v19, "i":I
    :goto_1
    move/from16 v0, v19

    if-ge v0, v14, :cond_4

    .line 2681
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    move-object/from16 v24, v0

    sget-object v4, Landroid/view/ViewRootImpl;->sFirstDrawHandlers:Ljava/util/ArrayList;

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Runnable;

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/view/ViewRootImpl$ViewRootHandler;->post(Ljava/lang/Runnable;)Z

    .line 2680
    add-int/lit8 v19, v19, 0x1

    goto :goto_1

    .line 2683
    :cond_4
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2686
    .end local v14    # "count":I
    .end local v19    # "i":I
    :cond_5
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6}, Landroid/view/ViewRootImpl;->scrollToRectOrFocus(Landroid/graphics/Rect;Z)Z

    .line 2688
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v4, v4, Landroid/view/View$AttachInfo;->mViewScrollChanged:Z

    if-eqz v4, :cond_6

    .line 2689
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v6, 0x0

    iput-boolean v6, v4, Landroid/view/View$AttachInfo;->mViewScrollChanged:Z

    .line 2690
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v4}, Landroid/view/ViewTreeObserver;->dispatchOnScrollChanged()V

    .line 2693
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    if-eqz v4, :cond_a

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v4

    if-eqz v4, :cond_a

    const/4 v12, 0x1

    .line 2695
    .local v12, "animating":Z
    :goto_2
    if-eqz v12, :cond_b

    .line 2696
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrY()I

    move-result v15

    .line 2700
    .local v15, "curScrollY":I
    :goto_3
    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/ViewRootImpl;->mCurScrollY:I

    if-eq v4, v15, :cond_7

    .line 2701
    move-object/from16 v0, p0

    iput v15, v0, Landroid/view/ViewRootImpl;->mCurScrollY:I

    .line 2702
    const/16 p1, 0x1

    .line 2705
    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v13, v4, Landroid/view/View$AttachInfo;->mApplicationScale:F

    .line 2706
    .local v13, "appScale":F
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v9, v4, Landroid/view/View$AttachInfo;->mScalingRequired:Z

    .line 2708
    .local v9, "scalingRequired":Z
    const/16 v22, 0x0

    .line 2709
    .local v22, "resizeAlpha":I
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mResizeBuffer:Landroid/view/HardwareLayer;

    if-eqz v4, :cond_8

    .line 2710
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v24

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/view/ViewRootImpl;->mResizeBufferStartTime:J

    move-wide/from16 v26, v0

    sub-long v16, v24, v26

    .line 2711
    .local v16, "deltaTime":J
    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/ViewRootImpl;->mResizeBufferDuration:I

    int-to-long v0, v4

    move-wide/from16 v24, v0

    cmp-long v4, v16, v24

    if-gez v4, :cond_c

    .line 2712
    move-wide/from16 v0, v16

    long-to-float v4, v0

    move-object/from16 v0, p0

    iget v6, v0, Landroid/view/ViewRootImpl;->mResizeBufferDuration:I

    int-to-float v6, v6

    div-float v11, v4, v6

    .line 2713
    .local v11, "amt":F
    sget-object v4, Landroid/view/ViewRootImpl;->mResizeInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v4, v11}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v11

    .line 2714
    const/4 v12, 0x1

    .line 2715
    const/high16 v4, 0x437f0000    # 255.0f

    mul-float/2addr v4, v11

    float-to-int v4, v4

    rsub-int v0, v4, 0xff

    move/from16 v22, v0

    .line 2721
    .end local v11    # "amt":F
    .end local v16    # "deltaTime":J
    :cond_8
    :goto_4
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mDirty:Landroid/graphics/Rect;

    .line 2722
    .local v10, "dirty":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    if-eqz v4, :cond_d

    .line 2724
    invoke-virtual {v10}, Landroid/graphics/Rect;->setEmpty()V

    .line 2725
    if-eqz v12, :cond_1

    .line 2726
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    if-eqz v4, :cond_9

    .line 2727
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->abortAnimation()V

    .line 2729
    :cond_9
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->disposeResizeBuffer()V

    goto/16 :goto_0

    .line 2683
    .end local v9    # "scalingRequired":Z
    .end local v10    # "dirty":Landroid/graphics/Rect;
    .end local v12    # "animating":Z
    .end local v13    # "appScale":F
    .end local v15    # "curScrollY":I
    .end local v22    # "resizeAlpha":I
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 2693
    :cond_a
    const/4 v12, 0x0

    goto :goto_2

    .line 2698
    .restart local v12    # "animating":Z
    :cond_b
    move-object/from16 v0, p0

    iget v15, v0, Landroid/view/ViewRootImpl;->mScrollY:I

    .restart local v15    # "curScrollY":I
    goto :goto_3

    .line 2717
    .restart local v9    # "scalingRequired":Z
    .restart local v13    # "appScale":F
    .restart local v16    # "deltaTime":J
    .restart local v22    # "resizeAlpha":I
    :cond_c
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->disposeResizeBuffer()V

    goto :goto_4

    .line 2734
    .end local v16    # "deltaTime":J
    .restart local v10    # "dirty":Landroid/graphics/Rect;
    :cond_d
    if-eqz p1, :cond_e

    .line 2735
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v6, 0x1

    iput-boolean v6, v4, Landroid/view/View$AttachInfo;->mIgnoreDirtyState:Z

    .line 2736
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRootImpl;->mWidth:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    mul-float v24, v24, v13

    const/high16 v25, 0x3f000000    # 0.5f

    add-float v24, v24, v25

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRootImpl;->mHeight:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    mul-float v25, v25, v13

    const/high16 v26, 0x3f000000    # 0.5f

    add-float v25, v25, v26

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v10, v4, v6, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 2748
    :cond_e
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v4}, Landroid/view/ViewTreeObserver;->dispatchOnDraw()V

    .line 2750
    const/4 v7, 0x0

    .line 2751
    .local v7, "xOffset":I
    move v8, v15

    .line 2752
    .local v8, "yOffset":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v21, v0

    .line 2753
    .local v21, "params":Landroid/view/WindowManager$LayoutParams;
    if-eqz v21, :cond_15

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    .line 2754
    .local v23, "surfaceInsets":Landroid/graphics/Rect;
    :goto_5
    if-eqz v23, :cond_f

    .line 2755
    move-object/from16 v0, v23

    iget v4, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v4

    .line 2756
    move-object/from16 v0, v23

    iget v4, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v4

    .line 2759
    move-object/from16 v0, v23

    iget v4, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v23

    iget v6, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v10, v4, v6}, Landroid/graphics/Rect;->offset(II)V

    .line 2762
    :cond_f
    invoke-virtual {v10}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_10

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mIsAnimating:Z

    if-eqz v4, :cond_14

    .line 2763
    :cond_10
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    if-eqz v4, :cond_16

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    invoke-virtual {v4}, Landroid/view/HardwareRenderer;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_16

    .line 2765
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mIsAnimating:Z

    .line 2766
    const/16 v20, 0x0

    .line 2767
    .local v20, "invalidateRoot":Z
    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/ViewRootImpl;->mHardwareYOffset:I

    if-ne v4, v8, :cond_11

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/ViewRootImpl;->mHardwareXOffset:I

    if-eq v4, v7, :cond_12

    .line 2768
    :cond_11
    move-object/from16 v0, p0

    iput v8, v0, Landroid/view/ViewRootImpl;->mHardwareYOffset:I

    .line 2769
    move-object/from16 v0, p0

    iput v7, v0, Landroid/view/ViewRootImpl;->mHardwareXOffset:I

    .line 2770
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    invoke-virtual {v4}, Landroid/view/HardwareRenderer;->invalidateRoot()V

    .line 2772
    :cond_12
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewRootImpl;->mResizeAlpha:I

    .line 2777
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v4}, Landroid/view/Surface;->isValid()Z

    move-result v4

    if-eqz v4, :cond_13

    if-eqz v10, :cond_13

    .line 2778
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v4, v10}, Landroid/view/Surface;->setDirtyRect(Landroid/graphics/Rect;)V

    .line 2781
    :cond_13
    invoke-virtual {v10}, Landroid/graphics/Rect;->setEmpty()V

    .line 2783
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mBlockResizeBuffer:Z

    .line 2784
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-virtual {v4, v6, v0, v1}, Landroid/view/HardwareRenderer;->draw(Landroid/view/View;Landroid/view/View$AttachInfo;Landroid/view/HardwareRenderer$HardwareDrawCallbacks;)V

    .line 2817
    .end local v20    # "invalidateRoot":Z
    :cond_14
    if-eqz v12, :cond_1

    .line 2818
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    .line 2819
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    goto/16 :goto_0

    .line 2753
    .end local v23    # "surfaceInsets":Landroid/graphics/Rect;
    :cond_15
    const/16 v23, 0x0

    goto/16 :goto_5

    .line 2794
    .restart local v23    # "surfaceInsets":Landroid/graphics/Rect;
    :cond_16
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    if-eqz v4, :cond_17

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    invoke-virtual {v4}, Landroid/view/HardwareRenderer;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_17

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    invoke-virtual {v4}, Landroid/view/HardwareRenderer;->isRequested()Z

    move-result v4

    if-eqz v4, :cond_17

    .line 2799
    :try_start_2
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    move-object/from16 v0, p0

    iget v6, v0, Landroid/view/ViewRootImpl;->mWidth:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRootImpl;->mHeight:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    move-object/from16 v25, v0

    move/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v23

    invoke-virtual {v4, v6, v0, v1, v2}, Landroid/view/HardwareRenderer;->initializeIfNeeded(IILandroid/view/Surface;Landroid/graphics/Rect;)Z
    :try_end_2
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2806
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    .line 2807
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    goto/16 :goto_0

    .line 2801
    :catch_0
    move-exception v18

    .line 2802
    .local v18, "e":Landroid/view/Surface$OutOfResourcesException;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/view/ViewRootImpl;->handleOutOfResourcesException(Landroid/view/Surface$OutOfResourcesException;)V

    goto/16 :goto_0

    .line 2811
    .end local v18    # "e":Landroid/view/Surface$OutOfResourcesException;
    :cond_17
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v10}, Landroid/view/ViewRootImpl;->drawSoftware(Landroid/view/Surface;Landroid/view/View$AttachInfo;IIZLandroid/graphics/Rect;)Z

    move-result v4

    if-nez v4, :cond_14

    goto/16 :goto_0
.end method

.method private drawSoftware(Landroid/view/Surface;Landroid/view/View$AttachInfo;IIZLandroid/graphics/Rect;)Z
    .locals 8
    .param p1, "surface"    # Landroid/view/Surface;
    .param p2, "attachInfo"    # Landroid/view/View$AttachInfo;
    .param p3, "xoff"    # I
    .param p4, "yoff"    # I
    .param p5, "scalingRequired"    # Z
    .param p6, "dirty"    # Landroid/graphics/Rect;

    .prologue
    .line 2832
    :try_start_0
    iget v3, p6, Landroid/graphics/Rect;->left:I

    .line 2833
    .local v3, "left":I
    iget v5, p6, Landroid/graphics/Rect;->top:I

    .line 2834
    .local v5, "top":I
    iget v4, p6, Landroid/graphics/Rect;->right:I

    .line 2835
    .local v4, "right":I
    iget v0, p6, Landroid/graphics/Rect;->bottom:I

    .line 2837
    .local v0, "bottom":I
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v6, p6}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v1

    .line 2841
    .local v1, "canvas":Landroid/graphics/Canvas;
    iget v6, p6, Landroid/graphics/Rect;->left:I

    if-ne v3, v6, :cond_0

    iget v6, p6, Landroid/graphics/Rect;->top:I

    if-ne v5, v6, :cond_0

    iget v6, p6, Landroid/graphics/Rect;->right:I

    if-ne v4, v6, :cond_0

    iget v6, p6, Landroid/graphics/Rect;->bottom:I

    if-eq v0, v6, :cond_1

    .line 2843
    :cond_0
    const/4 v6, 0x1

    iput-boolean v6, p2, Landroid/view/View$AttachInfo;->mIgnoreDirtyState:Z

    .line 2847
    :cond_1
    iget v6, p0, Landroid/view/ViewRootImpl;->mDensity:I

    invoke-virtual {v1, v6}, Landroid/graphics/Canvas;->setDensity(I)V
    :try_end_0
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2875
    :try_start_1
    invoke-virtual {v1}, Landroid/graphics/Canvas;->isOpaque()Z

    move-result v6

    if-eqz v6, :cond_2

    if-nez p4, :cond_2

    if-eqz p3, :cond_3

    .line 2876
    :cond_2
    const/4 v6, 0x0

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v6, v7}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 2879
    :cond_3
    invoke-virtual {p6}, Landroid/graphics/Rect;->setEmpty()V

    .line 2880
    const/4 v6, 0x0

    iput-boolean v6, p0, Landroid/view/ViewRootImpl;->mIsAnimating:Z

    .line 2881
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iput-wide v6, p2, Landroid/view/View$AttachInfo;->mDrawingTime:J

    .line 2882
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    iget v7, v6, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v7, v7, 0x20

    iput v7, v6, Landroid/view/View;->mPrivateFlags:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2891
    neg-int v6, p3

    int-to-float v6, v6

    neg-int v7, p4

    int-to-float v7, v7

    :try_start_2
    invoke-virtual {v1, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2892
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v6, :cond_4

    .line 2893
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    invoke-virtual {v6, v1}, Landroid/content/res/CompatibilityInfo$Translator;->translateCanvas(Landroid/graphics/Canvas;)V

    .line 2895
    :cond_4
    if-eqz p5, :cond_6

    iget v6, p0, Landroid/view/ViewRootImpl;->mNoncompatDensity:I

    :goto_0
    invoke-virtual {v1, v6}, Landroid/graphics/Canvas;->setScreenDensity(I)V

    .line 2896
    const/4 v6, 0x0

    iput-boolean v6, p2, Landroid/view/View$AttachInfo;->mSetIgnoreDirtyState:Z

    .line 2898
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v6, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2900
    :try_start_3
    iget-boolean v6, p2, Landroid/view/View$AttachInfo;->mSetIgnoreDirtyState:Z

    if-nez v6, :cond_5

    .line 2902
    const/4 v6, 0x0

    iput-boolean v6, p2, Landroid/view/View$AttachInfo;->mIgnoreDirtyState:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2907
    :cond_5
    :try_start_4
    invoke-virtual {p1, v1}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_2

    .line 2919
    const/4 v6, 0x1

    .end local v0    # "bottom":I
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    .end local v3    # "left":I
    .end local v4    # "right":I
    .end local v5    # "top":I
    :goto_1
    return v6

    .line 2848
    :catch_0
    move-exception v2

    .line 2849
    .local v2, "e":Landroid/view/Surface$OutOfResourcesException;
    invoke-direct {p0, v2}, Landroid/view/ViewRootImpl;->handleOutOfResourcesException(Landroid/view/Surface$OutOfResourcesException;)V

    .line 2850
    const/4 v6, 0x0

    goto :goto_1

    .line 2851
    .end local v2    # "e":Landroid/view/Surface$OutOfResourcesException;
    :catch_1
    move-exception v2

    .line 2852
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    const-string v6, "ViewRootImpl"

    const-string v7, "Could not lock surface"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2856
    const/4 v6, 0x1

    iput-boolean v6, p0, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    .line 2857
    const/4 v6, 0x0

    goto :goto_1

    .line 2895
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v0    # "bottom":I
    .restart local v1    # "canvas":Landroid/graphics/Canvas;
    .restart local v3    # "left":I
    .restart local v4    # "right":I
    .restart local v5    # "top":I
    :cond_6
    const/4 v6, 0x0

    goto :goto_0

    .line 2900
    :catchall_0
    move-exception v6

    :try_start_5
    iget-boolean v7, p2, Landroid/view/View$AttachInfo;->mSetIgnoreDirtyState:Z

    if-nez v7, :cond_7

    .line 2902
    const/4 v7, 0x0

    iput-boolean v7, p2, Landroid/view/View$AttachInfo;->mIgnoreDirtyState:Z

    :cond_7
    throw v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 2906
    :catchall_1
    move-exception v6

    .line 2907
    :try_start_6
    invoke-virtual {p1, v1}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_3

    .line 2912
    throw v6

    .line 2908
    :catch_2
    move-exception v2

    .line 2909
    .restart local v2    # "e":Ljava/lang/IllegalArgumentException;
    const-string v6, "ViewRootImpl"

    const-string v7, "Could not unlock surface"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2910
    const/4 v6, 0x1

    iput-boolean v6, p0, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    .line 2912
    const/4 v6, 0x0

    goto :goto_1

    .line 2908
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v2

    .line 2909
    .restart local v2    # "e":Ljava/lang/IllegalArgumentException;
    const-string v6, "ViewRootImpl"

    const-string v7, "Could not unlock surface"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2910
    const/4 v6, 0x1

    iput-boolean v6, p0, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    .line 2912
    const/4 v6, 0x0

    goto :goto_1
.end method

.method private dumpViewHierarchy(Ljava/lang/String;Ljava/io/PrintWriter;Landroid/view/View;)V
    .locals 5
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "view"    # Landroid/view/View;

    .prologue
    .line 6157
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6158
    if-nez p3, :cond_1

    .line 6159
    const-string/jumbo v3, "null"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6175
    :cond_0
    return-void

    .line 6162
    :cond_1
    invoke-virtual {p3}, Landroid/view/View;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6163
    instance-of v3, p3, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    move-object v1, p3

    .line 6166
    check-cast v1, Landroid/view/ViewGroup;

    .line 6167
    .local v1, "grp":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 6168
    .local v0, "N":I
    if-lez v0, :cond_0

    .line 6171
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 6172
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 6173
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, p1, p2, v3}, Landroid/view/ViewRootImpl;->dumpViewHierarchy(Ljava/lang/String;Ljava/io/PrintWriter;Landroid/view/View;)V

    .line 6172
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private enableHardwareAcceleration(Landroid/view/WindowManager$LayoutParams;)V
    .locals 8
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 836
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v5, v6, Landroid/view/View$AttachInfo;->mHardwareAccelerated:Z

    .line 837
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v5, v6, Landroid/view/View$AttachInfo;->mHardwareAccelerationRequested:Z

    .line 855
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v6, :cond_1

    .line 900
    :cond_0
    :goto_0
    return-void

    .line 858
    :cond_1
    iget v6, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v7, 0x1000000

    and-int/2addr v6, v7

    if-eqz v6, :cond_2

    move v2, v4

    .line 861
    .local v2, "hardwareAccelerated":Z
    :goto_1
    if-eqz v2, :cond_0

    .line 862
    invoke-static {}, Landroid/view/HardwareRenderer;->isAvailable()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 875
    iget v6, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_3

    move v0, v4

    .line 877
    .local v0, "fakeHwAccelerated":Z
    :goto_2
    iget v6, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_4

    move v1, v4

    .line 880
    .local v1, "forceHwAccelerated":Z
    :goto_3
    if-eqz v0, :cond_5

    .line 884
    iget-object v5, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v4, v5, Landroid/view/View$AttachInfo;->mHardwareAccelerationRequested:Z

    goto :goto_0

    .end local v0    # "fakeHwAccelerated":Z
    .end local v1    # "forceHwAccelerated":Z
    .end local v2    # "hardwareAccelerated":Z
    :cond_2
    move v2, v5

    .line 858
    goto :goto_1

    .restart local v2    # "hardwareAccelerated":Z
    :cond_3
    move v0, v5

    .line 875
    goto :goto_2

    .restart local v0    # "fakeHwAccelerated":Z
    :cond_4
    move v1, v5

    .line 877
    goto :goto_3

    .line 885
    .restart local v1    # "forceHwAccelerated":Z
    :cond_5
    sget-boolean v6, Landroid/view/HardwareRenderer;->sRendererDisabled:Z

    if-eqz v6, :cond_6

    sget-boolean v6, Landroid/view/HardwareRenderer;->sSystemRendererDisabled:Z

    if-eqz v6, :cond_0

    if-eqz v1, :cond_0

    .line 887
    :cond_6
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v6, v6, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    if-eqz v6, :cond_7

    .line 888
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v6, v6, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    invoke-virtual {v6}, Landroid/view/HardwareRenderer;->destroy()V

    .line 891
    :cond_7
    iget v6, p1, Landroid/view/WindowManager$LayoutParams;->format:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_8

    move v3, v4

    .line 892
    .local v3, "translucent":Z
    :goto_4
    iget-object v5, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v6, p0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    invoke-static {v6, v3}, Landroid/view/HardwareRenderer;->create(Landroid/content/Context;Z)Landroid/view/HardwareRenderer;

    move-result-object v6

    iput-object v6, v5, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    .line 893
    iget-object v5, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v5, v5, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    if-eqz v5, :cond_0

    .line 894
    iget-object v5, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v5, v5, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    invoke-virtual {p1}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/HardwareRenderer;->setName(Ljava/lang/String;)V

    .line 895
    iget-object v5, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v6, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v4, v6, Landroid/view/View$AttachInfo;->mHardwareAccelerationRequested:Z

    iput-boolean v4, v5, Landroid/view/View$AttachInfo;->mHardwareAccelerated:Z

    goto :goto_0

    .end local v3    # "translucent":Z
    :cond_8
    move v3, v5

    .line 891
    goto :goto_4
.end method

.method private ensureTouchModeLocally(Z)Z
    .locals 1
    .param p1, "inTouchMode"    # Z

    .prologue
    .line 3912
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mInTouchMode:Z

    if-ne v0, p1, :cond_0

    const/4 v0, 0x0

    .line 3917
    :goto_0
    return v0

    .line 3914
    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean p1, v0, Landroid/view/View$AttachInfo;->mInTouchMode:Z

    .line 3915
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, p1}, Landroid/view/ViewTreeObserver;->dispatchOnTouchModeChanged(Z)V

    .line 3917
    if-eqz p1, :cond_1

    invoke-direct {p0}, Landroid/view/ViewRootImpl;->enterTouchMode()Z

    move-result v0

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->leaveTouchMode()Z

    move-result v0

    goto :goto_0
.end method

.method private enterTouchMode()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 3921
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->hasFocus()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3925
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v1

    .line 3926
    .local v1, "focused":Landroid/view/View;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->isFocusableInTouchMode()Z

    move-result v4

    if-nez v4, :cond_1

    .line 3927
    invoke-static {v1}, Landroid/view/ViewRootImpl;->findAncestorToTakeFocusInTouchMode(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v0

    .line 3928
    .local v0, "ancestorToTakeFocus":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 3932
    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestFocus()Z

    move-result v2

    .line 3941
    .end local v0    # "ancestorToTakeFocus":Landroid/view/ViewGroup;
    .end local v1    # "focused":Landroid/view/View;
    :goto_0
    return v2

    .line 3936
    .restart local v0    # "ancestorToTakeFocus":Landroid/view/ViewGroup;
    .restart local v1    # "focused":Landroid/view/View;
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v1, v4, v2, v3}, Landroid/view/View;->clearFocusInternal(Landroid/view/View;ZZ)V

    goto :goto_0

    .end local v0    # "ancestorToTakeFocus":Landroid/view/ViewGroup;
    .end local v1    # "focused":Landroid/view/View;
    :cond_1
    move v2, v3

    .line 3941
    goto :goto_0
.end method

.method private findAirButtonViewByPosition(Landroid/view/View;II)Landroid/view/View;
    .locals 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    const/4 v6, 0x0

    .line 8034
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eqz v7, :cond_2

    :cond_0
    move-object v4, v6

    .line 8062
    :cond_1
    :goto_0
    return-object v4

    .line 8038
    :cond_2
    invoke-static {p1}, Lcom/samsung/android/smartclip/SmartClipMetaUtils;->getScreenRectOfView(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v3

    .line 8040
    .local v3, "screenRect":Landroid/graphics/Rect;
    invoke-virtual {v3, p2, p3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_5

    .line 8041
    instance-of v7, p1, Landroid/view/ViewGroup;

    if-eqz v7, :cond_3

    move-object v5, p1

    .line 8042
    check-cast v5, Landroid/view/ViewGroup;

    .line 8043
    .local v5, "viewGroup":Landroid/view/ViewGroup;
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 8045
    .local v0, "childCount":I
    add-int/lit8 v2, v0, -0x1

    .local v2, "i":I
    :goto_1
    if-ltz v2, :cond_3

    .line 8046
    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 8048
    .local v1, "curView":Landroid/view/View;
    invoke-direct {p0, v1, p2, p3}, Landroid/view/ViewRootImpl;->findAirButtonViewByPosition(Landroid/view/View;II)Landroid/view/View;

    move-result-object v4

    .line 8049
    .local v4, "topMostView":Landroid/view/View;
    if-nez v4, :cond_1

    .line 8045
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 8055
    .end local v0    # "childCount":I
    .end local v1    # "curView":Landroid/view/View;
    .end local v2    # "i":I
    .end local v4    # "topMostView":Landroid/view/View;
    .end local v5    # "viewGroup":Landroid/view/ViewGroup;
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getAirButton()Lcom/samsung/android/airbutton/AirButtonImpl;

    move-result-object v7

    if-eqz v7, :cond_4

    move-object v4, p1

    .line 8056
    goto :goto_0

    :cond_4
    move-object v4, v6

    .line 8058
    goto :goto_0

    :cond_5
    move-object v4, v6

    .line 8062
    goto :goto_0
.end method

.method private static findAncestorToTakeFocusInTouchMode(Landroid/view/View;)Landroid/view/ViewGroup;
    .locals 5
    .param p0, "focused"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 3951
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 3952
    .local v0, "parent":Landroid/view/ViewParent;
    :goto_0
    instance-of v3, v0, Landroid/view/ViewGroup;

    if-eqz v3, :cond_2

    move-object v1, v0

    .line 3953
    check-cast v1, Landroid/view/ViewGroup;

    .line 3954
    .local v1, "vgParent":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v3

    const/high16 v4, 0x40000

    if-ne v3, v4, :cond_0

    invoke-virtual {v1}, Landroid/view/ViewGroup;->isFocusableInTouchMode()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3964
    .end local v1    # "vgParent":Landroid/view/ViewGroup;
    :goto_1
    return-object v1

    .line 3958
    .restart local v1    # "vgParent":Landroid/view/ViewGroup;
    :cond_0
    invoke-virtual {v1}, Landroid/view/ViewGroup;->isRootNamespace()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v1, v2

    .line 3959
    goto :goto_1

    .line 3961
    :cond_1
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 3963
    goto :goto_0

    .end local v1    # "vgParent":Landroid/view/ViewGroup;
    :cond_2
    move-object v1, v2

    .line 3964
    goto :goto_1
.end method

.method private finishInputEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)V
    .locals 5
    .param p1, "q"    # Landroid/view/ViewRootImpl$QueuedInputEvent;

    .prologue
    .line 6634
    const-wide/16 v2, 0x8

    const-string v1, "deliverInputEvent"

    iget-object v4, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    invoke-virtual {v4}, Landroid/view/InputEvent;->getSequenceNumber()I

    move-result v4

    invoke-static {v2, v3, v1, v4}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 6637
    iget-object v1, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mReceiver:Landroid/view/InputEventReceiver;

    if-eqz v1, :cond_1

    .line 6638
    iget v1, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mFlags:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 6639
    .local v0, "handled":Z
    :goto_0
    iget-object v1, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mReceiver:Landroid/view/InputEventReceiver;

    iget-object v2, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    invoke-virtual {v1, v2, v0}, Landroid/view/InputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 6644
    .end local v0    # "handled":Z
    :goto_1
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->recycleQueuedInputEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    .line 6645
    return-void

    .line 6638
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 6641
    :cond_1
    iget-object v1, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    invoke-virtual {v1}, Landroid/view/InputEvent;->recycleIfNeededAfterDispatch()V

    goto :goto_1
.end method

.method private static forceLayout(Landroid/view/View;)V
    .locals 4
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 3372
    invoke-virtual {p0}, Landroid/view/View;->forceLayout()V

    .line 3373
    instance-of v3, p0, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    move-object v1, p0

    .line 3374
    check-cast v1, Landroid/view/ViewGroup;

    .line 3375
    .local v1, "group":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 3376
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 3377
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroid/view/ViewRootImpl;->forceLayout(Landroid/view/View;)V

    .line 3376
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3380
    .end local v0    # "count":I
    .end local v1    # "group":Landroid/view/ViewGroup;
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method private getAudioManager()Landroid/media/AudioManager;
    .locals 2

    .prologue
    .line 5992
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 5993
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getAudioManager called when there is no mView"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5995
    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_1

    .line 5996
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mAudioManager:Landroid/media/AudioManager;

    .line 5998
    :cond_1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method private getCommonPredecessor(Landroid/view/View;Landroid/view/View;)Landroid/view/View;
    .locals 6
    .param p1, "first"    # Landroid/view/View;
    .param p2, "second"    # Landroid/view/View;

    .prologue
    .line 7175
    iget-object v5, p0, Landroid/view/ViewRootImpl;->mTempHashSet:Ljava/util/HashSet;

    if-nez v5, :cond_0

    .line 7176
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    iput-object v5, p0, Landroid/view/ViewRootImpl;->mTempHashSet:Ljava/util/HashSet;

    .line 7178
    :cond_0
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mTempHashSet:Ljava/util/HashSet;

    .line 7179
    .local v4, "seen":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/view/View;>;"
    invoke-virtual {v4}, Ljava/util/HashSet;->clear()V

    .line 7180
    move-object v0, p1

    .line 7181
    .local v0, "firstCurrent":Landroid/view/View;
    :goto_0
    if-eqz v0, :cond_2

    .line 7182
    invoke-virtual {v4, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 7183
    iget-object v1, v0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 7184
    .local v1, "firstCurrentParent":Landroid/view/ViewParent;
    instance-of v5, v1, Landroid/view/View;

    if-eqz v5, :cond_1

    move-object v0, v1

    .line 7185
    check-cast v0, Landroid/view/View;

    goto :goto_0

    .line 7187
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 7190
    .end local v1    # "firstCurrentParent":Landroid/view/ViewParent;
    :cond_2
    move-object v2, p2

    .line 7191
    .local v2, "secondCurrent":Landroid/view/View;
    :goto_1
    if-eqz v2, :cond_5

    .line 7192
    invoke-virtual {v4, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 7193
    invoke-virtual {v4}, Ljava/util/HashSet;->clear()V

    .line 7204
    .end local v2    # "secondCurrent":Landroid/view/View;
    :goto_2
    return-object v2

    .line 7196
    .restart local v2    # "secondCurrent":Landroid/view/View;
    :cond_3
    iget-object v3, v2, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 7197
    .local v3, "secondCurrentParent":Landroid/view/ViewParent;
    instance-of v5, v3, Landroid/view/View;

    if-eqz v5, :cond_4

    move-object v2, v3

    .line 7198
    check-cast v2, Landroid/view/View;

    goto :goto_1

    .line 7200
    :cond_4
    const/4 v2, 0x0

    goto :goto_1

    .line 7203
    .end local v3    # "secondCurrentParent":Landroid/view/ViewParent;
    :cond_5
    invoke-virtual {v4}, Ljava/util/HashSet;->clear()V

    .line 7204
    const/4 v2, 0x0

    goto :goto_2
.end method

.method private static getGfxInfo(Landroid/view/View;[I)V
    .locals 7
    .param p0, "view"    # Landroid/view/View;
    .param p1, "info"    # [I

    .prologue
    .line 6185
    iget-object v3, p0, Landroid/view/View;->mRenderNode:Landroid/view/RenderNode;

    .line 6186
    .local v3, "renderNode":Landroid/view/RenderNode;
    const/4 v4, 0x0

    aget v5, p1, v4

    add-int/lit8 v5, v5, 0x1

    aput v5, p1, v4

    .line 6187
    if-eqz v3, :cond_0

    .line 6188
    const/4 v4, 0x1

    aget v5, p1, v4

    invoke-virtual {v3}, Landroid/view/RenderNode;->getDebugSize()I

    move-result v6

    add-int/2addr v5, v6

    aput v5, p1, v4

    .line 6191
    :cond_0
    instance-of v4, p0, Landroid/view/ViewGroup;

    if-eqz v4, :cond_1

    move-object v1, p0

    .line 6192
    check-cast v1, Landroid/view/ViewGroup;

    .line 6194
    .local v1, "group":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 6195
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 6196
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4, p1}, Landroid/view/ViewRootImpl;->getGfxInfo(Landroid/view/View;[I)V

    .line 6195
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6199
    .end local v0    # "count":I
    .end local v1    # "group":Landroid/view/ViewGroup;
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method private getImpliedSystemUiVisibility(Landroid/view/WindowManager$LayoutParams;)I
    .locals 3
    .param p1, "params"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 1271
    const/4 v0, 0x0

    .line 1273
    .local v0, "vis":I
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x4000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    .line 1274
    or-int/lit16 v0, v0, 0x500

    .line 1276
    :cond_0
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x8000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    .line 1277
    or-int/lit16 v0, v0, 0x300

    .line 1279
    :cond_1
    return v0
.end method

.method private getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .locals 1

    .prologue
    .line 7966
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 7967
    sget-object v0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->sConstDefaultMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .line 7972
    :goto_0
    return-object v0

    .line 7969
    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 7970
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    goto :goto_0

    .line 7972
    :cond_1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAppMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    goto :goto_0
.end method

.method private getPalmRejection(Landroid/view/MotionEvent;)Z
    .locals 27
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 4013
    const/16 v24, 0xa

    move/from16 v0, v24

    new-array v13, v0, [I

    .line 4014
    .local v13, "Sxd":[I
    const/16 v24, 0xa

    move/from16 v0, v24

    new-array v14, v0, [I

    .line 4016
    .local v14, "Syd":[I
    const/16 v24, 0xa

    move/from16 v0, v24

    new-array v2, v0, [I

    .line 4017
    .local v2, "Major":[I
    const/16 v24, 0xa

    move/from16 v0, v24

    new-array v3, v0, [I

    .line 4019
    .local v3, "Minor":[I
    const/4 v12, 0x0

    .line 4021
    .local v12, "SvarX":F
    const/4 v10, 0x0

    .line 4022
    .local v10, "SsumX":F
    const/4 v11, 0x0

    .line 4024
    .local v11, "SsumY":F
    const/4 v7, 0x0

    .line 4025
    .local v7, "SsumEccen":F
    const/4 v8, 0x0

    .line 4026
    .local v8, "SsumMajor":F
    const/4 v9, 0x0

    .line 4027
    .local v9, "SsumMinor":F
    const/4 v5, 0x0

    .line 4028
    .local v5, "SmeanX":F
    const/4 v6, 0x0

    .line 4029
    .local v6, "SmeanY":F
    const/16 v16, 0x0

    .line 4032
    .local v16, "bPalm":Z
    const/high16 v15, 0x43480000    # 200.0f

    .line 4034
    .local v15, "TILT_TO_ZOOM_XVAR":F
    const/16 v21, 0x0

    .line 4035
    .local v21, "mScreenWidth":I
    const/16 v20, 0x0

    .line 4036
    .local v20, "mScreenHeight":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    .line 4039
    .local v4, "N":I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    if-eqz v24, :cond_0

    .line 4040
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    const-string/jumbo v25, "window"

    invoke-virtual/range {v24 .. v25}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/view/WindowManager;

    .line 4041
    .local v23, "wm":Landroid/view/WindowManager;
    invoke-interface/range {v23 .. v23}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v17

    .line 4042
    .local v17, "disp":Landroid/view/Display;
    new-instance v22, Landroid/util/DisplayMetrics;

    invoke-direct/range {v22 .. v22}, Landroid/util/DisplayMetrics;-><init>()V

    .line 4043
    .local v22, "metrics":Landroid/util/DisplayMetrics;
    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 4045
    move-object/from16 v0, v22

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v21, v0

    .line 4046
    move-object/from16 v0, v22

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v20, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4048
    .end local v17    # "disp":Landroid/view/Display;
    .end local v22    # "metrics":Landroid/util/DisplayMetrics;
    .end local v23    # "wm":Landroid/view/WindowManager;
    :cond_0
    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_1

    .line 4049
    move/from16 v0, v21

    int-to-float v15, v0

    .line 4057
    :goto_0
    const/16 v19, 0x0

    .local v19, "i":I
    :goto_1
    move/from16 v0, v19

    if-ge v0, v4, :cond_2

    .line 4058
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v24

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    aput v24, v13, v19

    .line 4059
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v24

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    aput v24, v14, v19

    .line 4060
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getTouchMajor(I)F

    move-result v24

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    aput v24, v2, v19

    .line 4061
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getTouchMinor(I)F

    move-result v24

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    aput v24, v3, v19

    .line 4057
    add-int/lit8 v19, v19, 0x1

    goto :goto_1

    .line 4051
    .end local v19    # "i":I
    :cond_1
    move/from16 v0, v20

    int-to-float v15, v0

    goto :goto_0

    .line 4053
    :catch_0
    move-exception v18

    .line 4054
    .local v18, "e":Ljava/lang/Exception;
    const-string v24, "ViewRootImpl"

    const-string v25, "[Surface touch] Default Rotate = false"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4064
    .end local v18    # "e":Ljava/lang/Exception;
    .restart local v19    # "i":I
    :cond_2
    const/16 v19, 0x0

    :goto_2
    move/from16 v0, v19

    if-ge v0, v4, :cond_3

    .line 4065
    aget v24, v13, v19

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    add-float v10, v10, v24

    .line 4066
    aget v24, v14, v19

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    add-float v11, v11, v24

    .line 4067
    aget v24, v2, v19

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    add-float v8, v8, v24

    .line 4068
    aget v24, v3, v19

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    add-float v9, v9, v24

    .line 4064
    add-int/lit8 v19, v19, 0x1

    goto :goto_2

    .line 4071
    :cond_3
    int-to-float v0, v4

    move/from16 v24, v0

    div-float v5, v10, v24

    .line 4072
    int-to-float v0, v4

    move/from16 v24, v0

    div-float v6, v11, v24

    .line 4073
    div-float v7, v8, v9

    .line 4077
    const/16 v19, 0x0

    :goto_3
    move/from16 v0, v19

    if-ge v0, v4, :cond_6

    .line 4078
    aget v24, v13, v19

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    sub-float v24, v24, v5

    aget v25, v13, v19

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    sub-float v25, v25, v5

    mul-float v24, v24, v25

    move/from16 v0, v24

    float-to-double v0, v0

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v24

    move-wide/from16 v0, v24

    double-to-float v0, v0

    move/from16 v24, v0

    add-float v12, v12, v24

    .line 4079
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPalm(I)F

    move-result v24

    const/high16 v25, 0x3f800000    # 1.0f

    cmpl-float v24, v24, v25

    if-eqz v24, :cond_4

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPalm(I)F

    move-result v24

    const/high16 v25, 0x40400000    # 3.0f

    cmpl-float v24, v24, v25

    if-nez v24, :cond_5

    :cond_4
    const/16 v16, 0x1

    .line 4077
    :cond_5
    add-int/lit8 v19, v19, 0x1

    goto :goto_3

    .line 4081
    :cond_6
    int-to-float v0, v4

    move/from16 v24, v0

    div-float v12, v12, v24

    .line 4083
    const/16 v24, 0x1

    move/from16 v0, v16

    move/from16 v1, v24

    if-ne v0, v1, :cond_7

    const/16 v24, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v24

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_7

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v24

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_7

    .line 4084
    const-string v24, "ViewRootImpl"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "[ViewRootImpl] action cancel - 1, eccen:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4085
    const/16 v24, 0x1

    .line 4093
    :goto_4
    return v24

    .line 4087
    :cond_7
    const/16 v24, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v24

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_8

    const/high16 v24, 0x42c80000    # 100.0f

    cmpl-float v24, v8, v24

    if-ltz v24, :cond_8

    const/high16 v24, 0x40000000    # 2.0f

    cmpl-float v24, v7, v24

    if-lez v24, :cond_8

    add-int/lit8 v24, v4, 0x4

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    div-float v24, v15, v24

    cmpg-float v24, v12, v24

    if-gez v24, :cond_8

    .line 4089
    const-string v24, "ViewRootImpl"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "[ViewRootImpl] action cancel - 2, Palm Sweep, SsumMajor:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " eccen:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " varX:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4090
    const/16 v24, 0x1

    goto :goto_4

    .line 4093
    :cond_8
    const/16 v24, 0x0

    goto :goto_4
.end method

.method private static getRootMeasureSpec(II)I
    .locals 2
    .param p0, "windowSize"    # I
    .param p1, "rootDimension"    # I

    .prologue
    const/high16 v1, 0x40000000    # 2.0f

    .line 2500
    packed-switch p1, :pswitch_data_0

    .line 2512
    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 2515
    .local v0, "measureSpec":I
    :goto_0
    return v0

    .line 2504
    .end local v0    # "measureSpec":I
    :pswitch_0
    invoke-static {p0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 2505
    .restart local v0    # "measureSpec":I
    goto :goto_0

    .line 2508
    .end local v0    # "measureSpec":I
    :pswitch_1
    const/high16 v1, -0x80000000

    invoke-static {p0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 2509
    .restart local v0    # "measureSpec":I
    goto :goto_0

    .line 2500
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static getRunQueue()Landroid/view/ViewRootImpl$RunQueue;
    .locals 2

    .prologue
    .line 7509
    sget-object v1, Landroid/view/ViewRootImpl;->sRunQueues:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewRootImpl$RunQueue;

    .line 7510
    .local v0, "rq":Landroid/view/ViewRootImpl$RunQueue;
    if-eqz v0, :cond_0

    .line 7515
    :goto_0
    return-object v0

    .line 7513
    :cond_0
    new-instance v0, Landroid/view/ViewRootImpl$RunQueue;

    .end local v0    # "rq":Landroid/view/ViewRootImpl$RunQueue;
    invoke-direct {v0}, Landroid/view/ViewRootImpl$RunQueue;-><init>()V

    .line 7514
    .restart local v0    # "rq":Landroid/view/ViewRootImpl$RunQueue;
    sget-object v1, Landroid/view/ViewRootImpl;->sRunQueues:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private getStackPosition()Landroid/graphics/Point;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 7976
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    if-nez v2, :cond_1

    .line 7983
    :cond_0
    :goto_0
    return-object v1

    .line 7979
    :cond_1
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 7980
    .local v0, "bound":Landroid/graphics/Rect;
    if-eqz v0, :cond_0

    .line 7981
    new-instance v1, Landroid/graphics/Point;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_0
.end method

.method private getValidLayoutRequesters(Ljava/util/ArrayList;Z)Ljava/util/ArrayList;
    .locals 8
    .param p2, "secondLayoutRequests"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;Z)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2423
    .local p1, "layoutRequesters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2424
    .local v2, "numViewsRequestingLayout":I
    const/4 v4, 0x0

    .line 2425
    .local v4, "validLayoutRequesters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_6

    .line 2426
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 2427
    .local v5, "view":Landroid/view/View;
    if-eqz v5, :cond_3

    iget-object v6, v5, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v6, :cond_3

    iget-object v6, v5, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v6, :cond_3

    if-nez p2, :cond_0

    iget v6, v5, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v6, v6, 0x1000

    const/16 v7, 0x1000

    if-ne v6, v7, :cond_3

    .line 2430
    :cond_0
    const/4 v0, 0x0

    .line 2431
    .local v0, "gone":Z
    move-object v3, v5

    .line 2433
    .local v3, "parent":Landroid/view/View;
    :goto_1
    if-eqz v3, :cond_1

    .line 2434
    iget v6, v3, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v6, v6, 0xc

    const/16 v7, 0x8

    if-ne v6, v7, :cond_4

    .line 2435
    const/4 v0, 0x1

    .line 2444
    :cond_1
    if-nez v0, :cond_3

    .line 2445
    if-nez v4, :cond_2

    .line 2446
    new-instance v4, Ljava/util/ArrayList;

    .end local v4    # "validLayoutRequesters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2448
    .restart local v4    # "validLayoutRequesters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_2
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2425
    .end local v0    # "gone":Z
    .end local v3    # "parent":Landroid/view/View;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2438
    .restart local v0    # "gone":Z
    .restart local v3    # "parent":Landroid/view/View;
    :cond_4
    iget-object v6, v3, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    instance-of v6, v6, Landroid/view/View;

    if-eqz v6, :cond_5

    .line 2439
    iget-object v3, v3, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .end local v3    # "parent":Landroid/view/View;
    check-cast v3, Landroid/view/View;

    .restart local v3    # "parent":Landroid/view/View;
    goto :goto_1

    .line 2441
    :cond_5
    const/4 v3, 0x0

    goto :goto_1

    .line 2452
    .end local v0    # "gone":Z
    .end local v3    # "parent":Landroid/view/View;
    .end local v5    # "view":Landroid/view/View;
    :cond_6
    if-nez p2, :cond_9

    .line 2454
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v2, :cond_9

    .line 2455
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 2456
    .restart local v5    # "view":Landroid/view/View;
    :goto_3
    if-eqz v5, :cond_8

    iget v6, v5, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v6, v6, 0x1000

    if-eqz v6, :cond_8

    .line 2458
    iget v6, v5, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v6, v6, -0x1001

    iput v6, v5, Landroid/view/View;->mPrivateFlags:I

    .line 2459
    iget-object v6, v5, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    instance-of v6, v6, Landroid/view/View;

    if-eqz v6, :cond_7

    .line 2460
    iget-object v5, v5, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .end local v5    # "view":Landroid/view/View;
    check-cast v5, Landroid/view/View;

    .restart local v5    # "view":Landroid/view/View;
    goto :goto_3

    .line 2462
    :cond_7
    const/4 v5, 0x0

    goto :goto_3

    .line 2454
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2467
    .end local v5    # "view":Landroid/view/View;
    :cond_9
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 2468
    return-object v4
.end method

.method private handleDispatchCoverStateChanged(Z)V
    .locals 1
    .param p1, "isOpen"    # Z

    .prologue
    .line 5969
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 5977
    :cond_0
    :goto_0
    return-void

    .line 5970
    :cond_1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mIsOpen:Z

    if-eq v0, p1, :cond_0

    .line 5973
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean p1, v0, Landroid/view/View$AttachInfo;->mIsOpen:Z

    .line 5974
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchCoverStateChanged(Z)V

    goto :goto_0
.end method

.method private handleDragEvent(Landroid/view/DragEvent;)V
    .locals 12
    .param p1, "event"    # Landroid/view/DragEvent;

    .prologue
    .line 5804
    iget-object v9, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v9, :cond_2

    iget-boolean v9, p0, Landroid/view/ViewRootImpl;->mAdded:Z

    if-eqz v9, :cond_2

    .line 5805
    iget v8, p1, Landroid/view/DragEvent;->mAction:I

    .line 5808
    .local v8, "what":I
    iget-object v9, p0, Landroid/view/ViewRootImpl;->mScaleFactor:Landroid/graphics/PointF;

    iget v9, v9, Landroid/graphics/PointF;->x:F

    const/high16 v10, 0x3f800000    # 1.0f

    cmpl-float v9, v9, v10

    if-nez v9, :cond_0

    iget-object v9, p0, Landroid/view/ViewRootImpl;->mScaleFactor:Landroid/graphics/PointF;

    iget v9, v9, Landroid/graphics/PointF;->y:F

    const/high16 v10, 0x3f800000    # 1.0f

    cmpl-float v9, v9, v10

    if-eqz v9, :cond_1

    .line 5809
    :cond_0
    iget v9, p1, Landroid/view/DragEvent;->mX:F

    const/high16 v10, 0x3f800000    # 1.0f

    iget-object v11, p0, Landroid/view/ViewRootImpl;->mScaleFactor:Landroid/graphics/PointF;

    iget v11, v11, Landroid/graphics/PointF;->x:F

    div-float/2addr v10, v11

    mul-float/2addr v9, v10

    iput v9, p1, Landroid/view/DragEvent;->mX:F

    .line 5810
    iget v9, p1, Landroid/view/DragEvent;->mY:F

    const/high16 v10, 0x3f800000    # 1.0f

    iget-object v11, p0, Landroid/view/ViewRootImpl;->mScaleFactor:Landroid/graphics/PointF;

    iget v11, v11, Landroid/graphics/PointF;->y:F

    div-float/2addr v10, v11

    mul-float/2addr v9, v10

    iput v9, p1, Landroid/view/DragEvent;->mY:F

    .line 5814
    :cond_1
    const/4 v9, 0x6

    if-ne v8, v9, :cond_3

    .line 5819
    iget-object v9, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v9, p1}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    .line 5930
    .end local v8    # "what":I
    :cond_2
    :goto_0
    invoke-virtual {p1}, Landroid/view/DragEvent;->recycle()V

    .line 5931
    return-void

    .line 5823
    .restart local v8    # "what":I
    :cond_3
    const/4 v9, 0x1

    if-ne v8, v9, :cond_e

    .line 5824
    const/4 v9, 0x0

    iput-object v9, p0, Landroid/view/ViewRootImpl;->mCurrentDragView:Landroid/view/View;

    .line 5825
    iget-object v9, p1, Landroid/view/DragEvent;->mClipDescription:Landroid/content/ClipDescription;

    iput-object v9, p0, Landroid/view/ViewRootImpl;->mDragDescription:Landroid/content/ClipDescription;

    .line 5827
    iget-object v9, p0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    if-eqz v9, :cond_4

    iget-object v9, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->hasWindowFocus()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 5828
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v4

    .line 5829
    .local v4, "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-virtual {v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v9

    if-eqz v9, :cond_4

    .line 5830
    const/4 v9, 0x1

    iput-boolean v9, p0, Landroid/view/ViewRootImpl;->mFocusDragStartWin:Z

    .line 5839
    .end local v4    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :cond_4
    :goto_1
    const/4 v9, 0x2

    if-eq v8, v9, :cond_5

    const/4 v9, 0x3

    if-ne v8, v9, :cond_8

    .line 5840
    :cond_5
    iget-object v9, p0, Landroid/view/ViewRootImpl;->mDragPoint:Landroid/graphics/PointF;

    iget v10, p1, Landroid/view/DragEvent;->mX:F

    iget v11, p1, Landroid/view/DragEvent;->mY:F

    invoke-virtual {v9, v10, v11}, Landroid/graphics/PointF;->set(FF)V

    .line 5841
    iget-object v9, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v9, :cond_6

    .line 5842
    iget-object v9, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    iget-object v10, p0, Landroid/view/ViewRootImpl;->mDragPoint:Landroid/graphics/PointF;

    invoke-virtual {v9, v10}, Landroid/content/res/CompatibilityInfo$Translator;->translatePointInScreenToAppWindow(Landroid/graphics/PointF;)V

    .line 5845
    :cond_6
    iget v9, p0, Landroid/view/ViewRootImpl;->mCurScrollY:I

    if-eqz v9, :cond_7

    .line 5846
    iget-object v9, p0, Landroid/view/ViewRootImpl;->mDragPoint:Landroid/graphics/PointF;

    const/4 v10, 0x0

    iget v11, p0, Landroid/view/ViewRootImpl;->mCurScrollY:I

    int-to-float v11, v11

    invoke-virtual {v9, v10, v11}, Landroid/graphics/PointF;->offset(FF)V

    .line 5849
    :cond_7
    iget-object v9, p0, Landroid/view/ViewRootImpl;->mDragPoint:Landroid/graphics/PointF;

    iget v9, v9, Landroid/graphics/PointF;->x:F

    iput v9, p1, Landroid/view/DragEvent;->mX:F

    .line 5850
    iget-object v9, p0, Landroid/view/ViewRootImpl;->mDragPoint:Landroid/graphics/PointF;

    iget v9, v9, Landroid/graphics/PointF;->y:F

    iput v9, p1, Landroid/view/DragEvent;->mY:F

    .line 5854
    :cond_8
    iget-object v5, p0, Landroid/view/ViewRootImpl;->mCurrentDragView:Landroid/view/View;

    .line 5857
    .local v5, "prevDragView":Landroid/view/View;
    iget-object v9, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v9, p1}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v6

    .line 5860
    .local v6, "result":Z
    iget-object v9, p0, Landroid/view/ViewRootImpl;->mCurrentDragView:Landroid/view/View;

    if-eq v5, v9, :cond_a

    .line 5862
    if-eqz v5, :cond_9

    .line 5863
    :try_start_0
    iget-object v9, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    iget-object v10, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-interface {v9, v10}, Landroid/view/IWindowSession;->dragRecipientExited(Landroid/view/IWindow;)V

    .line 5865
    :cond_9
    iget-object v9, p0, Landroid/view/ViewRootImpl;->mCurrentDragView:Landroid/view/View;

    if-eqz v9, :cond_a

    .line 5866
    iget-object v9, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    iget-object v10, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-interface {v9, v10}, Landroid/view/IWindowSession;->dragRecipientEntered(Landroid/view/IWindow;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5874
    :cond_a
    :goto_2
    const/4 v9, 0x3

    if-ne v8, v9, :cond_d

    .line 5875
    const/4 v9, 0x0

    iput-object v9, p0, Landroid/view/ViewRootImpl;->mDragDescription:Landroid/content/ClipDescription;

    .line 5877
    :try_start_1
    const-string v9, "ViewRootImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Reporting drop result: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5878
    iget-object v9, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    iget-object v10, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-interface {v9, v10, v6}, Landroid/view/IWindowSession;->reportDropResult(Landroid/view/IWindow;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 5884
    :goto_3
    if-nez v6, :cond_d

    iget-boolean v9, p0, Landroid/view/ViewRootImpl;->mFocusDragStartWin:Z

    if-nez v9, :cond_d

    invoke-virtual {p1}, Landroid/view/DragEvent;->getClipData()Landroid/content/ClipData;

    move-result-object v9

    if-eqz v9, :cond_d

    invoke-virtual {p1}, Landroid/view/DragEvent;->getClipData()Landroid/content/ClipData;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ClipData;->getItemCount()I

    move-result v9

    if-lez v9, :cond_d

    .line 5886
    invoke-virtual {p1}, Landroid/view/DragEvent;->getClipData()Landroid/content/ClipData;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v2

    .line 5887
    .local v2, "description":Landroid/content/ClipDescription;
    if-eqz v2, :cond_d

    invoke-virtual {v2}, Landroid/content/ClipDescription;->getLabel()Ljava/lang/CharSequence;

    move-result-object v9

    if-eqz v9, :cond_d

    .line 5888
    invoke-virtual {v2}, Landroid/content/ClipDescription;->getLabel()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "Multiwindow drag and drop image"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_b

    invoke-virtual {v2}, Landroid/content/ClipDescription;->getLabel()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "Multiwindow drag and drop text"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 5890
    :cond_b
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    .line 5891
    .local v0, "context":Landroid/content/Context;
    instance-of v9, v0, Landroid/app/Activity;

    if-nez v9, :cond_c

    .line 5892
    if-eqz v0, :cond_c

    instance-of v9, v0, Landroid/content/ContextWrapper;

    if-eqz v9, :cond_c

    .line 5893
    check-cast v0, Landroid/content/ContextWrapper;

    .end local v0    # "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    .line 5896
    .restart local v0    # "context":Landroid/content/Context;
    :cond_c
    if-eqz v0, :cond_d

    instance-of v9, v0, Landroid/app/Activity;

    if-eqz v9, :cond_d

    .line 5907
    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object v9, p0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    const v10, 0x1030128

    invoke-direct {v1, v9, v10}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 5913
    .local v1, "defaultContext":Landroid/content/Context;
    iget-object v9, p0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    const v10, 0x1040b7e

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    invoke-static {v1, v9, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    .line 5915
    .local v7, "toast":Landroid/widget/Toast;
    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 5925
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "defaultContext":Landroid/content/Context;
    .end local v2    # "description":Landroid/content/ClipDescription;
    .end local v7    # "toast":Landroid/widget/Toast;
    :cond_d
    const/4 v9, 0x4

    if-ne v8, v9, :cond_2

    .line 5926
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Landroid/view/ViewRootImpl;->setLocalDragState(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 5835
    .end local v5    # "prevDragView":Landroid/view/View;
    .end local v6    # "result":Z
    :cond_e
    iget-object v9, p0, Landroid/view/ViewRootImpl;->mDragDescription:Landroid/content/ClipDescription;

    iput-object v9, p1, Landroid/view/DragEvent;->mClipDescription:Landroid/content/ClipDescription;

    goto/16 :goto_1

    .line 5868
    .restart local v5    # "prevDragView":Landroid/view/View;
    .restart local v6    # "result":Z
    :catch_0
    move-exception v3

    .line 5869
    .local v3, "e":Landroid/os/RemoteException;
    const-string v9, "ViewRootImpl"

    const-string v10, "Unable to note drag target change"

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 5879
    .end local v3    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v3

    .line 5880
    .restart local v3    # "e":Landroid/os/RemoteException;
    const-string v9, "ViewRootImpl"

    const-string v10, "Unable to report drop result"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3
.end method

.method private handleOutOfResourcesException(Landroid/view/Surface$OutOfResourcesException;)V
    .locals 2
    .param p1, "e"    # Landroid/view/Surface$OutOfResourcesException;

    .prologue
    .line 2224
    const-string v0, "ViewRootImpl"

    const-string v1, "OutOfResourcesException initializing HW surface"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2226
    :try_start_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-interface {v0, v1}, Landroid/view/IWindowSession;->outOfMemory(Landroid/view/IWindow;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    .line 2228
    const-string v0, "ViewRootImpl"

    const-string v1, "No processes killed for memory; killing self"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2231
    const-string v0, "-k -t -z -d -o /data/log/dumpstate_surfaceoom"

    invoke-static {v0}, Landroid/os/Debug;->saveDumpstate(Ljava/lang/String;)V

    .line 2232
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2236
    :cond_0
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    .line 2237
    return-void

    .line 2234
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private isInLocalFocusMode()Z
    .locals 2

    .prologue
    .line 791
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v1, 0x10000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isInTouchMode()Z
    .locals 2

    .prologue
    .line 571
    invoke-static {}, Landroid/view/WindowManagerGlobal;->peekWindowSession()Landroid/view/IWindowSession;

    move-result-object v0

    .line 572
    .local v0, "windowSession":Landroid/view/IWindowSession;
    if-eqz v0, :cond_0

    .line 574
    :try_start_0
    invoke-interface {v0}, Landroid/view/IWindowSession;->getInTouchMode()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 578
    :goto_0
    return v1

    .line 575
    :catch_0
    move-exception v1

    .line 578
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isNavigationKey(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p0, "keyEvent"    # Landroid/view/KeyEvent;

    .prologue
    .line 5725
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 5740
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 5738
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 5725
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x15 -> :sswitch_0
        0x16 -> :sswitch_0
        0x17 -> :sswitch_0
        0x3d -> :sswitch_0
        0x3e -> :sswitch_0
        0x42 -> :sswitch_0
        0x5c -> :sswitch_0
        0x5d -> :sswitch_0
        0x7a -> :sswitch_0
        0x7b -> :sswitch_0
    .end sparse-switch
.end method

.method static isTerminalInputEvent(Landroid/view/InputEvent;)Z
    .locals 6
    .param p0, "event"    # Landroid/view/InputEvent;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 6648
    instance-of v5, p0, Landroid/view/KeyEvent;

    if-eqz v5, :cond_1

    move-object v1, p0

    .line 6649
    check-cast v1, Landroid/view/KeyEvent;

    .line 6650
    .local v1, "keyEvent":Landroid/view/KeyEvent;
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-ne v5, v3, :cond_0

    .line 6654
    .end local v1    # "keyEvent":Landroid/view/KeyEvent;
    :goto_0
    return v3

    .restart local v1    # "keyEvent":Landroid/view/KeyEvent;
    :cond_0
    move v3, v4

    .line 6650
    goto :goto_0

    .end local v1    # "keyEvent":Landroid/view/KeyEvent;
    :cond_1
    move-object v2, p0

    .line 6652
    check-cast v2, Landroid/view/MotionEvent;

    .line 6653
    .local v2, "motionEvent":Landroid/view/MotionEvent;
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 6654
    .local v0, "action":I
    if-eq v0, v3, :cond_2

    const/4 v5, 0x3

    if-eq v0, v5, :cond_2

    const/16 v5, 0xa

    if-ne v0, v5, :cond_3

    :cond_2
    move v4, v3

    :cond_3
    move v3, v4

    goto :goto_0
.end method

.method private static isTypingKey(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p0, "keyEvent"    # Landroid/view/KeyEvent;

    .prologue
    .line 5749
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z
    .locals 3
    .param p0, "child"    # Landroid/view/View;
    .param p1, "parent"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    .line 3363
    if-ne p0, p1, :cond_1

    .line 3368
    :cond_0
    :goto_0
    return v1

    .line 3367
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 3368
    .local v0, "theParent":Landroid/view/ViewParent;
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    check-cast v0, Landroid/view/View;

    .end local v0    # "theParent":Landroid/view/ViewParent;
    invoke-static {v0, p1}, Landroid/view/ViewRootImpl;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private leaveTouchMode()Z
    .locals 6

    .prologue
    const/16 v5, 0x82

    const/4 v2, 0x0

    .line 3968
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 3969
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3970
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v1

    .line 3971
    .local v1, "focusedView":Landroid/view/View;
    instance-of v3, v1, Landroid/view/ViewGroup;

    if-nez v3, :cond_1

    .line 3989
    .end local v1    # "focusedView":Landroid/view/View;
    :cond_0
    :goto_0
    return v2

    .line 3974
    .restart local v1    # "focusedView":Landroid/view/View;
    :cond_1
    check-cast v1, Landroid/view/ViewGroup;

    .end local v1    # "focusedView":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v3

    const/high16 v4, 0x40000

    if-ne v3, v4, :cond_0

    .line 3984
    :cond_2
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v5}, Landroid/view/ViewRootImpl;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 3985
    .local v0, "focused":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 3986
    invoke-virtual {v0, v5}, Landroid/view/View;->requestFocus(I)Z

    move-result v2

    goto :goto_0
.end method

.method private measureHierarchy(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;Landroid/content/res/Resources;II)Z
    .locals 10
    .param p1, "host"    # Landroid/view/View;
    .param p2, "lp"    # Landroid/view/WindowManager$LayoutParams;
    .param p3, "res"    # Landroid/content/res/Resources;
    .param p4, "desiredWindowWidth"    # I
    .param p5, "desiredWindowHeight"    # I

    .prologue
    const/high16 v9, 0x1000000

    .line 1286
    const/4 v5, 0x0

    .line 1292
    .local v5, "windowSizeMayChange":Z
    const/4 v3, 0x0

    .line 1293
    .local v3, "goodMeasure":Z
    iget v6, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v7, -0x2

    if-ne v6, v7, :cond_1

    .line 1298
    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 1299
    .local v4, "packageMetrics":Landroid/util/DisplayMetrics;
    const v6, 0x1050009

    iget-object v7, p0, Landroid/view/ViewRootImpl;->mTmpValue:Landroid/util/TypedValue;

    const/4 v8, 0x1

    invoke-virtual {p3, v6, v7, v8}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 1300
    const/4 v0, 0x0

    .line 1301
    .local v0, "baseSize":I
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mTmpValue:Landroid/util/TypedValue;

    iget v6, v6, Landroid/util/TypedValue;->type:I

    const/4 v7, 0x5

    if-ne v6, v7, :cond_0

    .line 1302
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mTmpValue:Landroid/util/TypedValue;

    invoke-virtual {v6, v4}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v6

    float-to-int v0, v6

    .line 1305
    :cond_0
    if-eqz v0, :cond_1

    if-le p4, v0, :cond_1

    iget v6, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v7, 0x834

    if-eq v6, v7, :cond_1

    .line 1309
    iget v6, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-static {v0, v6}, Landroid/view/ViewRootImpl;->getRootMeasureSpec(II)I

    move-result v2

    .line 1310
    .local v2, "childWidthMeasureSpec":I
    iget v6, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-static {p5, v6}, Landroid/view/ViewRootImpl;->getRootMeasureSpec(II)I

    move-result v1

    .line 1311
    .local v1, "childHeightMeasureSpec":I
    invoke-direct {p0, v2, v1}, Landroid/view/ViewRootImpl;->performMeasure(II)V

    .line 1314
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidthAndState()I

    move-result v6

    and-int/2addr v6, v9

    if-nez v6, :cond_4

    .line 1315
    const/4 v3, 0x1

    .line 1333
    .end local v0    # "baseSize":I
    .end local v1    # "childHeightMeasureSpec":I
    .end local v2    # "childWidthMeasureSpec":I
    .end local v4    # "packageMetrics":Landroid/util/DisplayMetrics;
    :cond_1
    :goto_0
    if-nez v3, :cond_3

    .line 1334
    iget v6, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-static {p4, v6}, Landroid/view/ViewRootImpl;->getRootMeasureSpec(II)I

    move-result v2

    .line 1335
    .restart local v2    # "childWidthMeasureSpec":I
    iget v6, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-static {p5, v6}, Landroid/view/ViewRootImpl;->getRootMeasureSpec(II)I

    move-result v1

    .line 1336
    .restart local v1    # "childHeightMeasureSpec":I
    invoke-direct {p0, v2, v1}, Landroid/view/ViewRootImpl;->performMeasure(II)V

    .line 1337
    iget v6, p0, Landroid/view/ViewRootImpl;->mWidth:I

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    if-ne v6, v7, :cond_2

    iget v6, p0, Landroid/view/ViewRootImpl;->mHeight:I

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    if-eq v6, v7, :cond_3

    .line 1338
    :cond_2
    const/4 v5, 0x1

    .line 1348
    .end local v1    # "childHeightMeasureSpec":I
    .end local v2    # "childWidthMeasureSpec":I
    :cond_3
    return v5

    .line 1318
    .restart local v0    # "baseSize":I
    .restart local v1    # "childHeightMeasureSpec":I
    .restart local v2    # "childWidthMeasureSpec":I
    .restart local v4    # "packageMetrics":Landroid/util/DisplayMetrics;
    :cond_4
    add-int v6, v0, p4

    div-int/lit8 v0, v6, 0x2

    .line 1321
    iget v6, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-static {v0, v6}, Landroid/view/ViewRootImpl;->getRootMeasureSpec(II)I

    move-result v2

    .line 1322
    invoke-direct {p0, v2, v1}, Landroid/view/ViewRootImpl;->performMeasure(II)V

    .line 1325
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidthAndState()I

    move-result v6

    and-int/2addr v6, v9

    if-nez v6, :cond_1

    .line 1327
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private obtainQueuedInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;I)Landroid/view/ViewRootImpl$QueuedInputEvent;
    .locals 3
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "receiver"    # Landroid/view/InputEventReceiver;
    .param p3, "flags"    # I

    .prologue
    const/4 v2, 0x0

    .line 6436
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mQueuedInputEventPool:Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 6437
    .local v0, "q":Landroid/view/ViewRootImpl$QueuedInputEvent;
    if-eqz v0, :cond_0

    .line 6438
    iget v1, p0, Landroid/view/ViewRootImpl;->mQueuedInputEventPoolSize:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/view/ViewRootImpl;->mQueuedInputEventPoolSize:I

    .line 6439
    iget-object v1, v0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mNext:Landroid/view/ViewRootImpl$QueuedInputEvent;

    iput-object v1, p0, Landroid/view/ViewRootImpl;->mQueuedInputEventPool:Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 6440
    iput-object v2, v0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mNext:Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 6445
    :goto_0
    iput-object p1, v0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    .line 6446
    iput-object p2, v0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mReceiver:Landroid/view/InputEventReceiver;

    .line 6447
    iput p3, v0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mFlags:I

    .line 6448
    return-object v0

    .line 6442
    :cond_0
    new-instance v0, Landroid/view/ViewRootImpl$QueuedInputEvent;

    .end local v0    # "q":Landroid/view/ViewRootImpl$QueuedInputEvent;
    invoke-direct {v0, v2}, Landroid/view/ViewRootImpl$QueuedInputEvent;-><init>(Landroid/view/ViewRootImpl$1;)V

    .restart local v0    # "q":Landroid/view/ViewRootImpl$QueuedInputEvent;
    goto :goto_0
.end method

.method private performDraw()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const-wide/16 v10, 0x8

    const/4 v9, 0x0

    .line 2604
    iget-object v8, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v8, v8, Landroid/view/View$AttachInfo;->mDisplayState:I

    if-ne v8, v12, :cond_1

    iget-boolean v8, p0, Landroid/view/ViewRootImpl;->mReportNextDraw:Z

    if-nez v8, :cond_1

    iget-boolean v8, p0, Landroid/view/ViewRootImpl;->mForceDraw:Z

    if-nez v8, :cond_1

    .line 2658
    :cond_0
    :goto_0
    return-void

    .line 2608
    :cond_1
    iput-boolean v9, p0, Landroid/view/ViewRootImpl;->mForceDraw:Z

    .line 2610
    iget-boolean v4, p0, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    .line 2611
    .local v4, "fullRedrawNeeded":Z
    iput-boolean v9, p0, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    .line 2613
    iput-boolean v12, p0, Landroid/view/ViewRootImpl;->mIsDrawing:Z

    .line 2614
    const-string v8, "draw"

    invoke-static {v10, v11, v8}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2616
    :try_start_0
    invoke-direct {p0, v4}, Landroid/view/ViewRootImpl;->draw(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2618
    iput-boolean v9, p0, Landroid/view/ViewRootImpl;->mIsDrawing:Z

    .line 2619
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    .line 2624
    iget-object v8, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v8, v8, Landroid/view/View$AttachInfo;->mPendingAnimatingRenderNodes:Ljava/util/List;

    if-eqz v8, :cond_3

    .line 2625
    iget-object v8, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v8, v8, Landroid/view/View$AttachInfo;->mPendingAnimatingRenderNodes:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v3

    .line 2626
    .local v3, "count":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v3, :cond_2

    .line 2627
    iget-object v8, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v8, v8, Landroid/view/View$AttachInfo;->mPendingAnimatingRenderNodes:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/RenderNode;

    invoke-virtual {v8}, Landroid/view/RenderNode;->endAllAnimators()V

    .line 2626
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 2618
    .end local v3    # "count":I
    .end local v5    # "i":I
    :catchall_0
    move-exception v8

    iput-boolean v9, p0, Landroid/view/ViewRootImpl;->mIsDrawing:Z

    .line 2619
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    throw v8

    .line 2629
    .restart local v3    # "count":I
    .restart local v5    # "i":I
    :cond_2
    iget-object v8, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v8, v8, Landroid/view/View$AttachInfo;->mPendingAnimatingRenderNodes:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->clear()V

    .line 2632
    .end local v3    # "count":I
    .end local v5    # "i":I
    :cond_3
    iget-boolean v8, p0, Landroid/view/ViewRootImpl;->mReportNextDraw:Z

    if-eqz v8, :cond_0

    .line 2633
    iput-boolean v9, p0, Landroid/view/ViewRootImpl;->mReportNextDraw:Z

    .line 2634
    iget-object v8, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v8, v8, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    if-eqz v8, :cond_4

    .line 2635
    iget-object v8, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v8, v8, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    invoke-virtual {v8}, Landroid/view/HardwareRenderer;->fence()V

    .line 2641
    :cond_4
    iget-object v8, p0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    if-eqz v8, :cond_6

    iget-object v8, p0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v8}, Landroid/view/Surface;->isValid()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 2642
    iget-object v8, p0, Landroid/view/ViewRootImpl;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback2;

    iget-object v9, p0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-interface {v8, v9}, Landroid/view/SurfaceHolder$Callback2;->surfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V

    .line 2643
    iget-object v8, p0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v8}, Lcom/android/internal/view/BaseSurfaceHolder;->getCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v2

    .line 2644
    .local v2, "callbacks":[Landroid/view/SurfaceHolder$Callback;
    if-eqz v2, :cond_6

    .line 2645
    move-object v0, v2

    .local v0, "arr$":[Landroid/view/SurfaceHolder$Callback;
    array-length v7, v0

    .local v7, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_2
    if-ge v6, v7, :cond_6

    aget-object v1, v0, v6

    .line 2646
    .local v1, "c":Landroid/view/SurfaceHolder$Callback;
    instance-of v8, v1, Landroid/view/SurfaceHolder$Callback2;

    if-eqz v8, :cond_5

    .line 2647
    check-cast v1, Landroid/view/SurfaceHolder$Callback2;

    .end local v1    # "c":Landroid/view/SurfaceHolder$Callback;
    iget-object v8, p0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-interface {v1, v8}, Landroid/view/SurfaceHolder$Callback2;->surfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V

    .line 2645
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 2654
    .end local v0    # "arr$":[Landroid/view/SurfaceHolder$Callback;
    .end local v2    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .end local v6    # "i$":I
    .end local v7    # "len$":I
    :cond_6
    :try_start_1
    iget-object v8, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    iget-object v9, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-interface {v8, v9}, Landroid/view/IWindowSession;->finishDrawing(Landroid/view/IWindow;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 2655
    :catch_0
    move-exception v8

    goto/16 :goto_0
.end method

.method private performLayout(Landroid/view/WindowManager$LayoutParams;II)V
    .locals 12
    .param p1, "lp"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "desiredWindowWidth"    # I
    .param p3, "desiredWindowHeight"    # I

    .prologue
    .line 2337
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    .line 2338
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mScrollMayChange:Z

    .line 2339
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mInLayout:Z

    .line 2341
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .line 2347
    .local v1, "host":Landroid/view/View;
    const-wide/16 v2, 0x8

    const-string/jumbo v0, "layout"

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2349
    const/4 v0, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 2351
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mInLayout:Z

    .line 2352
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mLayoutRequesters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 2353
    .local v9, "numViewsRequestingLayout":I
    if-lez v9, :cond_1

    .line 2358
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mLayoutRequesters:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Landroid/view/ViewRootImpl;->getValidLayoutRequesters(Ljava/util/ArrayList;Z)Ljava/util/ArrayList;

    move-result-object v10

    .line 2360
    .local v10, "validLayoutRequesters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz v10, :cond_1

    .line 2364
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mHandlingLayoutInLayoutRequest:Z

    .line 2367
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 2368
    .local v8, "numValidRequests":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v8, :cond_0

    .line 2369
    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/View;

    .line 2370
    .local v11, "view":Landroid/view/View;
    const-string v0, "View"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestLayout() improperly called by "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " during layout: running second layout pass"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2372
    invoke-virtual {v11}, Landroid/view/View;->requestLayout()V

    .line 2368
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 2374
    .end local v11    # "view":Landroid/view/View;
    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move-object v0, p0

    move-object v2, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/view/ViewRootImpl;->measureHierarchy(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;Landroid/content/res/Resources;II)Z

    .line 2376
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mInLayout:Z

    .line 2377
    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 2379
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mHandlingLayoutInLayoutRequest:Z

    .line 2383
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mLayoutRequesters:Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Landroid/view/ViewRootImpl;->getValidLayoutRequesters(Ljava/util/ArrayList;Z)Ljava/util/ArrayList;

    move-result-object v10

    .line 2384
    if-eqz v10, :cond_1

    .line 2385
    move-object v6, v10

    .line 2387
    .local v6, "finalRequesters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-static {}, Landroid/view/ViewRootImpl;->getRunQueue()Landroid/view/ViewRootImpl$RunQueue;

    move-result-object v0

    new-instance v2, Landroid/view/ViewRootImpl$2;

    invoke-direct {v2, p0, v6}, Landroid/view/ViewRootImpl$2;-><init>(Landroid/view/ViewRootImpl;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v2}, Landroid/view/ViewRootImpl$RunQueue;->post(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2404
    .end local v6    # "finalRequesters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v7    # "i":I
    .end local v8    # "numValidRequests":I
    .end local v10    # "validLayoutRequesters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_1
    const-wide/16 v2, 0x8

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 2406
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mInLayout:Z

    .line 2407
    return-void

    .line 2404
    .end local v9    # "numViewsRequestingLayout":I
    :catchall_0
    move-exception v0

    const-wide/16 v2, 0x8

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method private performMeasure(II)V
    .locals 13
    .param p1, "childWidthMeasureSpec"    # I
    .param p2, "childHeightMeasureSpec"    # I

    .prologue
    const/high16 v12, 0x40000000    # 2.0f

    const/4 v9, 0x1

    const-wide/16 v10, 0x8

    .line 2240
    const-string/jumbo v7, "measure"

    invoke-static {v10, v11, v7}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2242
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    if-eqz v7, :cond_3

    .line 2245
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq v7, v9, :cond_0

    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_3

    :cond_0
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->width:I

    if-gtz v7, :cond_1

    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->height:I

    if-lez v7, :cond_3

    .line 2248
    :cond_1
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v4

    .line 2249
    .local v4, "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    iput-object v4, p0, Landroid/view/ViewRootImpl;->mLastMeasuredMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .line 2250
    invoke-virtual {v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v7

    if-ne v7, v9, :cond_3

    .line 2251
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 2252
    .local v5, "widthSpecMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 2253
    .local v6, "widthSpecSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 2254
    .local v1, "heightSpecMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 2255
    .local v2, "heightSpecSize":I
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "multiwindow_facade"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/multiwindow/MultiWindowFacade;

    .line 2256
    .local v3, "multiWindowFacade":Lcom/samsung/android/multiwindow/MultiWindowFacade;
    if-eqz v3, :cond_3

    .line 2257
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getBaseActivityToken()Landroid/os/IBinder;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getStackBound(Landroid/os/IBinder;)Landroid/graphics/Rect;

    move-result-object v0

    .line 2258
    .local v0, "currStackBound":Landroid/graphics/Rect;
    if-eqz v0, :cond_3

    .line 2259
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->width:I

    if-lez v7, :cond_2

    .line 2260
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v7

    if-le v6, v7, :cond_2

    .line 2261
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v6

    .line 2262
    invoke-static {v6, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 2265
    :cond_2
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->height:I

    if-lez v7, :cond_3

    .line 2266
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v7

    if-le v2, v7, :cond_3

    .line 2267
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 2268
    invoke-static {v2, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 2278
    .end local v0    # "currStackBound":Landroid/graphics/Rect;
    .end local v1    # "heightSpecMode":I
    .end local v2    # "heightSpecSize":I
    .end local v3    # "multiWindowFacade":Lcom/samsung/android/multiwindow/MultiWindowFacade;
    .end local v4    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .end local v5    # "widthSpecMode":I
    .end local v6    # "widthSpecSize":I
    :cond_3
    :try_start_0
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v7, p1, p2}, Landroid/view/View;->measure(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2280
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    .line 2282
    return-void

    .line 2280
    :catchall_0
    move-exception v7

    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    throw v7
.end method

.method private performTraversals()V
    .locals 72

    .prologue
    .line 1382
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .line 1390
    .local v5, "host":Landroid/view/View;
    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mAdded:Z

    if-nez v4, :cond_1

    .line 2221
    :cond_0
    :goto_0
    return-void

    .line 1393
    :cond_1
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mIsInTraversal:Z

    .line 1394
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mWillDrawSoon:Z

    .line 1395
    const/16 v71, 0x0

    .line 1396
    .local v71, "windowSizeMayChange":Z
    const/16 v51, 0x0

    .line 1397
    .local v51, "newSurface":Z
    const/16 v61, 0x0

    .line 1398
    .local v61, "surfaceChanged":Z
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    .line 1403
    .local v6, "lp":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->getHostVisibility()I

    move-result v65

    .line 1404
    .local v65, "viewVisibility":I
    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/ViewRootImpl;->mViewVisibility:I

    move/from16 v0, v65

    if-ne v4, v0, :cond_2

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mNewSurfaceNeeded:Z

    if-eqz v4, :cond_14

    :cond_2
    const/16 v66, 0x1

    .line 1407
    .local v66, "viewVisibilityChanged":Z
    :goto_1
    const/16 v54, 0x0

    .line 1408
    .local v54, "params":Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mWindowAttributesChanged:Z

    if-eqz v4, :cond_3

    .line 1409
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mWindowAttributesChanged:Z

    .line 1410
    const/16 v61, 0x1

    .line 1411
    move-object/from16 v54, v6

    .line 1413
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mDisplayAdjustments:Landroid/view/DisplayAdjustments;

    invoke-virtual {v4}, Landroid/view/DisplayAdjustments;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v29

    .line 1414
    .local v29, "compatibilityInfo":Landroid/content/res/CompatibilityInfo;
    invoke-virtual/range {v29 .. v29}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v4

    move-object/from16 v0, p0

    iget-boolean v10, v0, Landroid/view/ViewRootImpl;->mLastInCompatMode:Z

    if-ne v4, v10, :cond_4

    .line 1415
    move-object/from16 v54, v6

    .line 1416
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    .line 1417
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    .line 1418
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mLastInCompatMode:Z

    if-eqz v4, :cond_15

    .line 1419
    move-object/from16 v0, v54

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v4, v4, -0x81

    move-object/from16 v0, v54

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 1420
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mLastInCompatMode:Z

    .line 1427
    :cond_4
    :goto_2
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Landroid/view/ViewRootImpl;->mWindowAttributesChangesFlag:I

    .line 1429
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    move-object/from16 v36, v0

    .line 1430
    .local v36, "frame":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mFirst:Z

    if-eqz v4, :cond_17

    .line 1431
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    .line 1432
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    .line 1434
    iget v4, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v10, 0x7de

    if-eq v4, v10, :cond_5

    iget v4, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v10, 0x7db

    if-ne v4, v10, :cond_16

    .line 1437
    :cond_5
    new-instance v57, Landroid/graphics/Point;

    invoke-direct/range {v57 .. v57}, Landroid/graphics/Point;-><init>()V

    .line 1438
    .local v57, "size":Landroid/graphics/Point;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    move-object/from16 v0, v57

    invoke-virtual {v4, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 1439
    move-object/from16 v0, v57

    iget v8, v0, Landroid/graphics/Point;->x:I

    .line 1440
    .local v8, "desiredWindowWidth":I
    move-object/from16 v0, v57

    iget v9, v0, Landroid/graphics/Point;->y:I

    .line 1468
    .end local v57    # "size":Landroid/graphics/Point;
    .local v9, "desiredWindowHeight":I
    :cond_6
    :goto_3
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v10, 0x1

    iput-boolean v10, v4, Landroid/view/View$AttachInfo;->mUse32BitDrawingCache:Z

    .line 1469
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v10, 0x0

    iput-boolean v10, v4, Landroid/view/View$AttachInfo;->mHasWindowFocus:Z

    .line 1470
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    move/from16 v0, v65

    iput v0, v4, Landroid/view/View$AttachInfo;->mWindowVisibility:I

    .line 1471
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v10, 0x0

    iput-boolean v10, v4, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    .line 1472
    const/16 v66, 0x0

    .line 1474
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v4, v4, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    move-object/from16 v0, p0

    iput v4, v0, Landroid/view/ViewRootImpl;->mLastSystemUiVisibility:I

    .line 1476
    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/ViewRootImpl;->mViewLayoutDirectionInitial:I

    const/4 v10, 0x2

    if-ne v4, v10, :cond_7

    .line 1477
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mLastConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v4}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v4

    invoke-virtual {v5, v4}, Landroid/view/View;->setLayoutDirection(I)V

    .line 1479
    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v10, 0x0

    invoke-virtual {v5, v4, v10}, Landroid/view/View;->dispatchAttachedToWindow(Landroid/view/View$AttachInfo;I)V

    .line 1480
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    const/4 v10, 0x1

    invoke-virtual {v4, v10}, Landroid/view/ViewTreeObserver;->dispatchOnWindowAttachedChange(Z)V

    .line 1481
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/view/ViewRootImpl;->dispatchApplyInsets(Landroid/view/View;)V

    .line 1496
    :cond_8
    :goto_4
    if-eqz v66, :cond_b

    .line 1497
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    move/from16 v0, v65

    iput v0, v4, Landroid/view/View$AttachInfo;->mWindowVisibility:I

    .line 1498
    move/from16 v0, v65

    invoke-virtual {v5, v0}, Landroid/view/View;->dispatchWindowVisibilityChanged(I)V

    .line 1499
    if-nez v65, :cond_9

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mNewSurfaceNeeded:Z

    if-eqz v4, :cond_a

    .line 1500
    :cond_9
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->destroyHardwareResources()V

    .line 1502
    :cond_a
    const/16 v4, 0x8

    move/from16 v0, v65

    if-ne v0, v4, :cond_b

    .line 1505
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mHasHadWindowFocus:Z

    .line 1510
    :cond_b
    invoke-static {}, Landroid/view/ViewRootImpl;->getRunQueue()Landroid/view/ViewRootImpl$RunQueue;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v10, v10, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v10}, Landroid/view/ViewRootImpl$RunQueue;->executeActions(Landroid/os/Handler;)V

    .line 1512
    const/16 v44, 0x0

    .line 1514
    .local v44, "insetsChanged":Z
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    if-eqz v4, :cond_19

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mStopped:Z

    if-nez v4, :cond_19

    const/16 v46, 0x1

    .line 1515
    .local v46, "layoutRequested":Z
    :goto_5
    const/16 v35, 0x0

    .line 1518
    .local v35, "forceRelayout":Z
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mOrientationChanged:Z

    if-eqz v4, :cond_1a

    if-nez v65, :cond_1a

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v10, 0x2

    if-eq v4, v10, :cond_c

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v10, 0x1

    if-ne v4, v10, :cond_1a

    :cond_c
    const/16 v35, 0x1

    .line 1521
    :goto_6
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    if-eqz v4, :cond_1b

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mStopped:Z

    if-eqz v4, :cond_d

    if-eqz v35, :cond_1b

    :cond_d
    const/16 v46, 0x1

    .line 1522
    :goto_7
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mOrientationChanged:Z

    .line 1525
    if-eqz v46, :cond_f

    .line 1527
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 1529
    .local v7, "res":Landroid/content/res/Resources;
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mFirst:Z

    if-eqz v4, :cond_1d

    .line 1532
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mAddedTouchMode:Z

    if-nez v4, :cond_1c

    const/4 v4, 0x1

    :goto_8
    iput-boolean v4, v10, Landroid/view/View$AttachInfo;->mInTouchMode:Z

    .line 1533
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mAddedTouchMode:Z

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Landroid/view/ViewRootImpl;->ensureTouchModeLocally(Z)Z

    :cond_e
    :goto_9
    move-object/from16 v4, p0

    .line 1578
    invoke-direct/range {v4 .. v9}, Landroid/view/ViewRootImpl;->measureHierarchy(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;Landroid/content/res/Resources;II)Z

    move-result v4

    or-int v71, v71, v4

    .line 1582
    .end local v7    # "res":Landroid/content/res/Resources;
    :cond_f
    invoke-direct/range {p0 .. p0}, Landroid/view/ViewRootImpl;->collectViewAttributes()Z

    move-result v4

    if-eqz v4, :cond_10

    .line 1583
    move-object/from16 v54, v6

    .line 1585
    :cond_10
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v4, v4, Landroid/view/View$AttachInfo;->mForceReportNewAttributes:Z

    if-eqz v4, :cond_11

    .line 1586
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v10, 0x0

    iput-boolean v10, v4, Landroid/view/View$AttachInfo;->mForceReportNewAttributes:Z

    .line 1587
    move-object/from16 v54, v6

    .line 1590
    :cond_11
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mFirst:Z

    if-nez v4, :cond_12

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v4, v4, Landroid/view/View$AttachInfo;->mViewVisibilityChanged:Z

    if-eqz v4, :cond_28

    .line 1591
    :cond_12
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v10, 0x0

    iput-boolean v10, v4, Landroid/view/View$AttachInfo;->mViewVisibilityChanged:Z

    .line 1592
    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/ViewRootImpl;->mSoftInputMode:I

    and-int/lit16 v0, v4, 0xf0

    move/from16 v56, v0

    .line 1596
    .local v56, "resizeMode":I
    if-nez v56, :cond_28

    .line 1597
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mScrollContainers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v22

    .line 1598
    .local v22, "N":I
    const/16 v40, 0x0

    .local v40, "i":I
    :goto_a
    move/from16 v0, v40

    move/from16 v1, v22

    if-ge v0, v1, :cond_26

    .line 1599
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mScrollContainers:Ljava/util/ArrayList;

    move/from16 v0, v40

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->isShown()Z

    move-result v4

    if-eqz v4, :cond_13

    .line 1600
    const/16 v56, 0x10

    .line 1598
    :cond_13
    add-int/lit8 v40, v40, 0x1

    goto :goto_a

    .line 1404
    .end local v8    # "desiredWindowWidth":I
    .end local v9    # "desiredWindowHeight":I
    .end local v22    # "N":I
    .end local v29    # "compatibilityInfo":Landroid/content/res/CompatibilityInfo;
    .end local v35    # "forceRelayout":Z
    .end local v36    # "frame":Landroid/graphics/Rect;
    .end local v40    # "i":I
    .end local v44    # "insetsChanged":Z
    .end local v46    # "layoutRequested":Z
    .end local v54    # "params":Landroid/view/WindowManager$LayoutParams;
    .end local v56    # "resizeMode":I
    .end local v66    # "viewVisibilityChanged":Z
    :cond_14
    const/16 v66, 0x0

    goto/16 :goto_1

    .line 1422
    .restart local v29    # "compatibilityInfo":Landroid/content/res/CompatibilityInfo;
    .restart local v54    # "params":Landroid/view/WindowManager$LayoutParams;
    .restart local v66    # "viewVisibilityChanged":Z
    :cond_15
    move-object/from16 v0, v54

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit16 v4, v4, 0x80

    move-object/from16 v0, v54

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 1423
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mLastInCompatMode:Z

    goto/16 :goto_2

    .line 1442
    .restart local v36    # "frame":Landroid/graphics/Rect;
    :cond_16
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v53

    .line 1444
    .local v53, "packageMetrics":Landroid/util/DisplayMetrics;
    move-object/from16 v0, v53

    iget v8, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1445
    .restart local v8    # "desiredWindowWidth":I
    move-object/from16 v0, v53

    iget v9, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 1448
    .restart local v9    # "desiredWindowHeight":I
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    if-eqz v4, :cond_6

    iget v4, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v10, 0x3eb

    if-eq v4, v10, :cond_6

    .line 1450
    invoke-direct/range {p0 .. p0}, Landroid/view/ViewRootImpl;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v50

    .line 1451
    .local v50, "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    if-eqz v50, :cond_6

    invoke-virtual/range {v50 .. v50}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v4

    const/4 v10, 0x1

    if-ne v4, v10, :cond_6

    .line 1452
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v10, "multiwindow_facade"

    invoke-virtual {v4, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v49

    check-cast v49, Lcom/samsung/android/multiwindow/MultiWindowFacade;

    .line 1453
    .local v49, "multiWindowFacade":Lcom/samsung/android/multiwindow/MultiWindowFacade;
    if-eqz v49, :cond_6

    .line 1454
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getBaseActivityToken()Landroid/os/IBinder;

    move-result-object v4

    move-object/from16 v0, v49

    invoke-virtual {v0, v4}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getStackBound(Landroid/os/IBinder;)Landroid/graphics/Rect;

    move-result-object v60

    .line 1455
    .local v60, "stackBounds":Landroid/graphics/Rect;
    if-eqz v60, :cond_6

    .line 1456
    invoke-virtual/range {v60 .. v60}, Landroid/graphics/Rect;->width()I

    move-result v8

    .line 1457
    invoke-virtual/range {v60 .. v60}, Landroid/graphics/Rect;->height()I

    move-result v9

    goto/16 :goto_3

    .line 1485
    .end local v8    # "desiredWindowWidth":I
    .end local v9    # "desiredWindowHeight":I
    .end local v49    # "multiWindowFacade":Lcom/samsung/android/multiwindow/MultiWindowFacade;
    .end local v50    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .end local v53    # "packageMetrics":Landroid/util/DisplayMetrics;
    .end local v60    # "stackBounds":Landroid/graphics/Rect;
    :cond_17
    invoke-virtual/range {v36 .. v36}, Landroid/graphics/Rect;->width()I

    move-result v8

    .line 1486
    .restart local v8    # "desiredWindowWidth":I
    invoke-virtual/range {v36 .. v36}, Landroid/graphics/Rect;->height()I

    move-result v9

    .line 1487
    .restart local v9    # "desiredWindowHeight":I
    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/ViewRootImpl;->mWidth:I

    if-ne v8, v4, :cond_18

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/ViewRootImpl;->mHeight:I

    if-eq v9, v4, :cond_8

    .line 1490
    :cond_18
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    .line 1491
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    .line 1492
    const/16 v71, 0x1

    goto/16 :goto_4

    .line 1514
    .restart local v44    # "insetsChanged":Z
    :cond_19
    const/16 v46, 0x0

    goto/16 :goto_5

    .line 1518
    .restart local v35    # "forceRelayout":Z
    .restart local v46    # "layoutRequested":Z
    :cond_1a
    const/16 v35, 0x0

    goto/16 :goto_6

    .line 1521
    :cond_1b
    const/16 v46, 0x0

    goto/16 :goto_7

    .line 1532
    .restart local v7    # "res":Landroid/content/res/Resources;
    :cond_1c
    const/4 v4, 0x0

    goto/16 :goto_8

    .line 1535
    :cond_1d
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingOverscanInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v10, v10, Landroid/view/View$AttachInfo;->mOverscanInsets:Landroid/graphics/Rect;

    invoke-virtual {v4, v10}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1e

    .line 1536
    const/16 v44, 0x1

    .line 1538
    :cond_1e
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingContentInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v10, v10, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v4, v10}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1f

    .line 1539
    const/16 v44, 0x1

    .line 1541
    :cond_1f
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingStableInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v10, v10, Landroid/view/View$AttachInfo;->mStableInsets:Landroid/graphics/Rect;

    invoke-virtual {v4, v10}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_20

    .line 1542
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v10, 0x2

    if-ne v4, v10, :cond_24

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_24

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v4, :cond_24

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getZ()F

    move-result v4

    const/4 v10, 0x0

    cmpl-float v4, v4, v10

    if-lez v4, :cond_24

    .line 1547
    const-string v4, "ViewRootImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Ignore stableInsets changed, SI="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v11, v11, Landroid/view/View$AttachInfo;->mStableInsets:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " PSI="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/view/ViewRootImpl;->mPendingStableInsets:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1553
    :cond_20
    :goto_b
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingVisibleInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v10, v10, Landroid/view/View$AttachInfo;->mVisibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v4, v10}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_21

    .line 1554
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mVisibleInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mPendingVisibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v4, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1558
    :cond_21
    iget v4, v6, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v10, -0x2

    if-eq v4, v10, :cond_22

    iget v4, v6, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v10, -0x2

    if-ne v4, v10, :cond_e

    .line 1560
    :cond_22
    const/16 v71, 0x1

    .line 1562
    iget v4, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v10, 0x7de

    if-eq v4, v10, :cond_23

    iget v4, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v10, 0x7db

    if-ne v4, v10, :cond_25

    .line 1565
    :cond_23
    new-instance v57, Landroid/graphics/Point;

    invoke-direct/range {v57 .. v57}, Landroid/graphics/Point;-><init>()V

    .line 1566
    .restart local v57    # "size":Landroid/graphics/Point;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    move-object/from16 v0, v57

    invoke-virtual {v4, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 1567
    move-object/from16 v0, v57

    iget v8, v0, Landroid/graphics/Point;->x:I

    .line 1568
    move-object/from16 v0, v57

    iget v9, v0, Landroid/graphics/Point;->y:I

    .line 1569
    goto/16 :goto_9

    .line 1550
    .end local v57    # "size":Landroid/graphics/Point;
    :cond_24
    const/16 v44, 0x1

    goto :goto_b

    .line 1570
    :cond_25
    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v53

    .line 1571
    .restart local v53    # "packageMetrics":Landroid/util/DisplayMetrics;
    move-object/from16 v0, v53

    iget v8, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1572
    move-object/from16 v0, v53

    iget v9, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    goto/16 :goto_9

    .line 1603
    .end local v7    # "res":Landroid/content/res/Resources;
    .end local v53    # "packageMetrics":Landroid/util/DisplayMetrics;
    .restart local v22    # "N":I
    .restart local v40    # "i":I
    .restart local v56    # "resizeMode":I
    :cond_26
    if-nez v56, :cond_27

    .line 1604
    const/16 v56, 0x20

    .line 1606
    :cond_27
    iget v4, v6, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit16 v4, v4, 0xf0

    move/from16 v0, v56

    if-eq v4, v0, :cond_28

    .line 1608
    iget v4, v6, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit16 v4, v4, -0xf1

    or-int v4, v4, v56

    iput v4, v6, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 1611
    move-object/from16 v54, v6

    .line 1616
    .end local v22    # "N":I
    .end local v40    # "i":I
    .end local v56    # "resizeMode":I
    :cond_28
    if-eqz v54, :cond_2a

    .line 1617
    iget v4, v5, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v4, v4, 0x200

    if-eqz v4, :cond_29

    .line 1618
    move-object/from16 v0, v54

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    invoke-static {v4}, Landroid/graphics/PixelFormat;->formatHasAlpha(I)Z

    move-result v4

    if-nez v4, :cond_29

    .line 1619
    const/4 v4, -0x3

    move-object/from16 v0, v54

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 1622
    :cond_29
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v0, v54

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v11, 0x2000000

    and-int/2addr v4, v11

    if-eqz v4, :cond_45

    const/4 v4, 0x1

    :goto_c
    iput-boolean v4, v10, Landroid/view/View$AttachInfo;->mOverscanRequested:Z

    .line 1626
    :cond_2a
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mApplyInsetsRequested:Z

    if-eqz v4, :cond_2b

    .line 1627
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mApplyInsetsRequested:Z

    .line 1628
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v4, v4, Landroid/view/View$AttachInfo;->mOverscanRequested:Z

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mLastOverscanRequested:Z

    .line 1629
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/view/ViewRootImpl;->dispatchApplyInsets(Landroid/view/View;)V

    .line 1630
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    if-eqz v4, :cond_2b

    .line 1634
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    move-object/from16 v10, p0

    move-object v11, v5

    move-object v12, v6

    move v14, v8

    move v15, v9

    invoke-direct/range {v10 .. v15}, Landroid/view/ViewRootImpl;->measureHierarchy(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;Landroid/content/res/Resources;II)Z

    move-result v4

    or-int v71, v71, v4

    .line 1640
    :cond_2b
    if-eqz v46, :cond_2c

    .line 1644
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    .line 1647
    :cond_2c
    if-eqz v46, :cond_46

    if-eqz v71, :cond_46

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/ViewRootImpl;->mWidth:I

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    if-ne v4, v10, :cond_2e

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/ViewRootImpl;->mHeight:I

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    if-ne v4, v10, :cond_2e

    iget v4, v6, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v10, -0x2

    if-ne v4, v10, :cond_2d

    invoke-virtual/range {v36 .. v36}, Landroid/graphics/Rect;->width()I

    move-result v4

    if-ge v4, v8, :cond_2d

    invoke-virtual/range {v36 .. v36}, Landroid/graphics/Rect;->width()I

    move-result v4

    move-object/from16 v0, p0

    iget v10, v0, Landroid/view/ViewRootImpl;->mWidth:I

    if-ne v4, v10, :cond_2e

    :cond_2d
    iget v4, v6, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v10, -0x2

    if-ne v4, v10, :cond_46

    invoke-virtual/range {v36 .. v36}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-ge v4, v9, :cond_46

    invoke-virtual/range {v36 .. v36}, Landroid/graphics/Rect;->height()I

    move-result v4

    move-object/from16 v0, p0

    iget v10, v0, Landroid/view/ViewRootImpl;->mHeight:I

    if-eq v4, v10, :cond_46

    :cond_2e
    const/16 v70, 0x1

    .line 1655
    .local v70, "windowShouldResize":Z
    :goto_d
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    if-eqz v4, :cond_31

    .line 1656
    invoke-direct/range {p0 .. p0}, Landroid/view/ViewRootImpl;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v50

    .line 1657
    .restart local v50    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    if-eqz v50, :cond_30

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mLastPerformedMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v0, v50

    invoke-virtual {v4, v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->equals(Lcom/samsung/android/multiwindow/MultiWindowStyle;)Z

    move-result v4

    if-nez v4, :cond_30

    .line 1659
    invoke-virtual/range {v50 .. v50}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mLastPerformedMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v10}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v10

    if-eq v4, v10, :cond_47

    .line 1661
    const/16 v70, 0x1

    .line 1667
    :cond_2f
    :goto_e
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mLastPerformedMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v0, v50

    invoke-virtual {v4, v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setTo(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 1669
    :cond_30
    const/4 v4, 0x4

    move-object/from16 v0, v50

    invoke-virtual {v0, v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_31

    .line 1670
    if-eqz v54, :cond_31

    move-object/from16 v0, v54

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    invoke-static {v4}, Landroid/graphics/PixelFormat;->formatHasAlpha(I)Z

    move-result v4

    if-nez v4, :cond_31

    .line 1671
    const/4 v4, -0x2

    move-object/from16 v0, v54

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 1679
    .end local v50    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :cond_31
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v4}, Landroid/view/ViewTreeObserver;->hasComputeInternalInsetsListeners()Z

    move-result v4

    if-nez v4, :cond_32

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v4, v4, Landroid/view/View$AttachInfo;->mHasNonEmptyGivenInternalInsets:Z

    if-eqz v4, :cond_48

    :cond_32
    const/16 v30, 0x1

    .line 1683
    .local v30, "computesInternalInsets":Z
    :goto_f
    const/16 v45, 0x0

    .line 1684
    .local v45, "insetsPending":Z
    const/16 v55, 0x0

    .line 1686
    .local v55, "relayoutResult":I
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mFirst:Z

    if-nez v4, :cond_33

    if-nez v70, :cond_33

    if-nez v44, :cond_33

    if-nez v66, :cond_33

    if-nez v54, :cond_33

    if-nez v35, :cond_33

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mNewScaleFactorNeeded:Z

    if-eqz v4, :cond_70

    .line 1690
    :cond_33
    if-nez v65, :cond_35

    .line 1700
    if-eqz v30, :cond_49

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mFirst:Z

    if-nez v4, :cond_34

    if-eqz v66, :cond_49

    :cond_34
    const/16 v45, 0x1

    .line 1703
    :cond_35
    :goto_10
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    if-eqz v4, :cond_36

    .line 1704
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    iget-object v4, v4, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1705
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mDrawingAllowed:Z

    .line 1708
    :cond_36
    const/16 v39, 0x0

    .line 1709
    .local v39, "hwInitialized":Z
    const/16 v31, 0x0

    .line 1710
    .local v31, "contentInsetsChanged":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v4}, Landroid/view/Surface;->isValid()Z

    move-result v37

    .line 1718
    .local v37, "hadSurface":Z
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    if-eqz v4, :cond_37

    .line 1722
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v4, v10}, Landroid/view/HardwareRenderer;->pauseSurface(Landroid/view/Surface;)V

    .line 1724
    :cond_37
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v4}, Landroid/view/Surface;->getGenerationId()I

    move-result v62

    .line 1725
    .local v62, "surfaceGenerationId":I
    move-object/from16 v0, p0

    move-object/from16 v1, v54

    move/from16 v2, v65

    move/from16 v3, v45

    invoke-direct {v0, v1, v2, v3}, Landroid/view/ViewRootImpl;->relayoutWindow(Landroid/view/WindowManager$LayoutParams;IZ)I

    move-result v55

    .line 1726
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mDrawDuringWindowsAnimating:Z

    if-nez v4, :cond_38

    and-int/lit8 v4, v55, 0x8

    if-eqz v4, :cond_38

    .line 1728
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mWindowsAnimating:Z

    .line 1738
    :cond_38
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingConfiguration:Landroid/content/res/Configuration;

    iget v4, v4, Landroid/content/res/Configuration;->seq:I

    if-eqz v4, :cond_39

    .line 1741
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mPendingConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mFirst:Z

    if-nez v4, :cond_4a

    const/4 v4, 0x1

    :goto_11
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v4}, Landroid/view/ViewRootImpl;->updateConfiguration(Landroid/content/res/Configuration;Z)V

    .line 1742
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingConfiguration:Landroid/content/res/Configuration;

    const/4 v10, 0x0

    iput v10, v4, Landroid/content/res/Configuration;->seq:I

    .line 1745
    :cond_39
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingOverscanInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v10, v10, Landroid/view/View$AttachInfo;->mOverscanInsets:Landroid/graphics/Rect;

    invoke-virtual {v4, v10}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4b

    const/16 v52, 0x1

    .line 1747
    .local v52, "overscanInsetsChanged":Z
    :goto_12
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingContentInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v10, v10, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v4, v10}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4c

    const/16 v31, 0x1

    .line 1749
    :goto_13
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingVisibleInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v10, v10, Landroid/view/View$AttachInfo;->mVisibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v4, v10}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4d

    const/16 v67, 0x1

    .line 1751
    .local v67, "visibleInsetsChanged":Z
    :goto_14
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingStableInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v10, v10, Landroid/view/View$AttachInfo;->mStableInsets:Landroid/graphics/Rect;

    invoke-virtual {v4, v10}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4e

    const/16 v59, 0x1

    .line 1753
    .local v59, "stableInsetsChanged":Z
    :goto_15
    if-eqz v31, :cond_3b

    .line 1754
    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/ViewRootImpl;->mWidth:I

    if-lez v4, :cond_3a

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/ViewRootImpl;->mHeight:I

    if-lez v4, :cond_3a

    if-eqz v6, :cond_3a

    iget v4, v6, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    iget v10, v6, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    or-int/2addr v4, v10

    and-int/lit16 v4, v4, 0x600

    if-nez v4, :cond_3a

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    if-eqz v4, :cond_3a

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v4}, Landroid/view/Surface;->isValid()Z

    move-result v4

    if-eqz v4, :cond_3a

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v4, v4, Landroid/view/View$AttachInfo;->mTurnOffWindowResizeAnim:Z

    if-nez v4, :cond_3a

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    if-eqz v4, :cond_3a

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    invoke-virtual {v4}, Landroid/view/HardwareRenderer;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_3a

    if-eqz v6, :cond_3a

    iget v4, v6, Landroid/view/WindowManager$LayoutParams;->format:I

    invoke-static {v4}, Landroid/graphics/PixelFormat;->formatHasAlpha(I)Z

    move-result v4

    if-nez v4, :cond_3a

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mBlockResizeBuffer:Z

    if-nez v4, :cond_3a

    .line 1764
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->disposeResizeBuffer()V

    .line 1816
    :cond_3a
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mPendingContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v4, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1820
    :cond_3b
    if-eqz v52, :cond_3c

    .line 1821
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mOverscanInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mPendingOverscanInsets:Landroid/graphics/Rect;

    invoke-virtual {v4, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1825
    const/16 v31, 0x1

    .line 1827
    :cond_3c
    if-eqz v59, :cond_3d

    .line 1828
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mStableInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mPendingStableInsets:Landroid/graphics/Rect;

    invoke-virtual {v4, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1832
    const/16 v31, 0x1

    .line 1834
    :cond_3d
    if-nez v31, :cond_3e

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/ViewRootImpl;->mLastSystemUiVisibility:I

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v10, v10, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    if-ne v4, v10, :cond_3e

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mApplyInsetsRequested:Z

    if-nez v4, :cond_3e

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mLastOverscanRequested:Z

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v10, v10, Landroid/view/View$AttachInfo;->mOverscanRequested:Z

    if-eq v4, v10, :cond_3f

    .line 1837
    :cond_3e
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v4, v4, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    move-object/from16 v0, p0

    iput v4, v0, Landroid/view/ViewRootImpl;->mLastSystemUiVisibility:I

    .line 1838
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v4, v4, Landroid/view/View$AttachInfo;->mOverscanRequested:Z

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mLastOverscanRequested:Z

    .line 1839
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mApplyInsetsRequested:Z

    .line 1840
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/view/ViewRootImpl;->dispatchApplyInsets(Landroid/view/View;)V

    .line 1842
    :cond_3f
    if-eqz v67, :cond_40

    .line 1843
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mVisibleInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mPendingVisibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v4, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1848
    :cond_40
    if-nez v37, :cond_4f

    .line 1849
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v4}, Landroid/view/Surface;->isValid()Z

    move-result v4

    if-eqz v4, :cond_41

    .line 1857
    const/16 v51, 0x1

    .line 1858
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    .line 1859
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPreviousTransparentRegion:Landroid/graphics/Region;

    invoke-virtual {v4}, Landroid/graphics/Region;->setEmpty()V

    .line 1861
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v4, :cond_41

    .line 1863
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v4, v10}, Landroid/view/HardwareRenderer;->initialize(Landroid/view/Surface;)Z
    :try_end_1
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v39

    .line 1903
    .end local v52    # "overscanInsetsChanged":Z
    .end local v59    # "stableInsetsChanged":Z
    .end local v62    # "surfaceGenerationId":I
    .end local v67    # "visibleInsetsChanged":Z
    :cond_41
    :goto_16
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v0, v36

    iget v10, v0, Landroid/graphics/Rect;->left:I

    iput v10, v4, Landroid/view/View$AttachInfo;->mWindowLeft:I

    .line 1904
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v0, v36

    iget v10, v0, Landroid/graphics/Rect;->top:I

    iput v10, v4, Landroid/view/View$AttachInfo;->mWindowTop:I

    .line 1909
    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/ViewRootImpl;->mWidth:I

    invoke-virtual/range {v36 .. v36}, Landroid/graphics/Rect;->width()I

    move-result v10

    if-ne v4, v10, :cond_42

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/ViewRootImpl;->mHeight:I

    invoke-virtual/range {v36 .. v36}, Landroid/graphics/Rect;->height()I

    move-result v10

    if-eq v4, v10, :cond_43

    .line 1910
    :cond_42
    invoke-virtual/range {v36 .. v36}, Landroid/graphics/Rect;->width()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Landroid/view/ViewRootImpl;->mWidth:I

    .line 1911
    invoke-virtual/range {v36 .. v36}, Landroid/graphics/Rect;->height()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Landroid/view/ViewRootImpl;->mHeight:I

    .line 1914
    :cond_43
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    if-eqz v4, :cond_56

    .line 1916
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v4}, Landroid/view/Surface;->isValid()Z

    move-result v4

    if-eqz v4, :cond_44

    .line 1919
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    iput-object v10, v4, Lcom/android/internal/view/BaseSurfaceHolder;->mSurface:Landroid/view/Surface;

    .line 1921
    :cond_44
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object/from16 v0, p0

    iget v10, v0, Landroid/view/ViewRootImpl;->mWidth:I

    move-object/from16 v0, p0

    iget v11, v0, Landroid/view/ViewRootImpl;->mHeight:I

    invoke-virtual {v4, v10, v11}, Lcom/android/internal/view/BaseSurfaceHolder;->setSurfaceFrameSize(II)V

    .line 1922
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    iget-object v4, v4, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1923
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v4}, Landroid/view/Surface;->isValid()Z

    move-result v4

    if-eqz v4, :cond_6c

    .line 1924
    if-nez v37, :cond_54

    .line 1925
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v4}, Lcom/android/internal/view/BaseSurfaceHolder;->ungetCallbacks()V

    .line 1927
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mIsCreating:Z

    .line 1928
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback2;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-interface {v4, v10}, Landroid/view/SurfaceHolder$Callback2;->surfaceCreated(Landroid/view/SurfaceHolder;)V

    .line 1929
    const-string v4, "ViewSystem"

    const-string v10, "ViewRootImpl >> surfaceCreated"

    invoke-static {v4, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1930
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v4}, Lcom/android/internal/view/BaseSurfaceHolder;->getCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v25

    .line 1931
    .local v25, "callbacks":[Landroid/view/SurfaceHolder$Callback;
    if-eqz v25, :cond_53

    .line 1932
    move-object/from16 v23, v25

    .local v23, "arr$":[Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v47, v0

    .local v47, "len$":I
    const/16 v41, 0x0

    .local v41, "i$":I
    :goto_17
    move/from16 v0, v41

    move/from16 v1, v47

    if-ge v0, v1, :cond_53

    aget-object v24, v23, v41

    .line 1933
    .local v24, "c":Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object/from16 v0, v24

    invoke-interface {v0, v4}, Landroid/view/SurfaceHolder$Callback;->surfaceCreated(Landroid/view/SurfaceHolder;)V

    .line 1932
    add-int/lit8 v41, v41, 0x1

    goto :goto_17

    .line 1622
    .end local v23    # "arr$":[Landroid/view/SurfaceHolder$Callback;
    .end local v24    # "c":Landroid/view/SurfaceHolder$Callback;
    .end local v25    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .end local v30    # "computesInternalInsets":Z
    .end local v31    # "contentInsetsChanged":Z
    .end local v37    # "hadSurface":Z
    .end local v39    # "hwInitialized":Z
    .end local v41    # "i$":I
    .end local v45    # "insetsPending":Z
    .end local v47    # "len$":I
    .end local v55    # "relayoutResult":I
    .end local v70    # "windowShouldResize":Z
    :cond_45
    const/4 v4, 0x0

    goto/16 :goto_c

    .line 1647
    :cond_46
    const/16 v70, 0x0

    goto/16 :goto_d

    .line 1662
    .restart local v50    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .restart local v70    # "windowShouldResize":Z
    :cond_47
    const/4 v4, 0x4

    move-object/from16 v0, v50

    invoke-virtual {v0, v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v4

    if-nez v4, :cond_2f

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mLastPerformedMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/4 v10, 0x4

    invoke-virtual {v4, v10}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 1665
    const/16 v70, 0x1

    goto/16 :goto_e

    .line 1679
    .end local v50    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :cond_48
    const/16 v30, 0x0

    goto/16 :goto_f

    .line 1700
    .restart local v30    # "computesInternalInsets":Z
    .restart local v45    # "insetsPending":Z
    .restart local v55    # "relayoutResult":I
    :cond_49
    const/16 v45, 0x0

    goto/16 :goto_10

    .line 1741
    .restart local v31    # "contentInsetsChanged":Z
    .restart local v37    # "hadSurface":Z
    .restart local v39    # "hwInitialized":Z
    .restart local v62    # "surfaceGenerationId":I
    :cond_4a
    const/4 v4, 0x0

    goto/16 :goto_11

    .line 1745
    :cond_4b
    const/16 v52, 0x0

    goto/16 :goto_12

    .line 1747
    .restart local v52    # "overscanInsetsChanged":Z
    :cond_4c
    const/16 v31, 0x0

    goto/16 :goto_13

    .line 1749
    :cond_4d
    const/16 v67, 0x0

    goto/16 :goto_14

    .line 1751
    .restart local v67    # "visibleInsetsChanged":Z
    :cond_4e
    const/16 v59, 0x0

    goto/16 :goto_15

    .line 1865
    .restart local v59    # "stableInsetsChanged":Z
    :catch_0
    move-exception v33

    .line 1866
    .local v33, "e":Landroid/view/Surface$OutOfResourcesException;
    :try_start_2
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Landroid/view/ViewRootImpl;->handleOutOfResourcesException(Landroid/view/Surface$OutOfResourcesException;)V

    goto/16 :goto_0

    .line 1897
    .end local v33    # "e":Landroid/view/Surface$OutOfResourcesException;
    .end local v52    # "overscanInsetsChanged":Z
    .end local v59    # "stableInsetsChanged":Z
    .end local v62    # "surfaceGenerationId":I
    .end local v67    # "visibleInsetsChanged":Z
    :catch_1
    move-exception v4

    goto/16 :goto_16

    .line 1871
    .restart local v52    # "overscanInsetsChanged":Z
    .restart local v59    # "stableInsetsChanged":Z
    .restart local v62    # "surfaceGenerationId":I
    .restart local v67    # "visibleInsetsChanged":Z
    :cond_4f
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v4}, Landroid/view/Surface;->isValid()Z

    move-result v4

    if-nez v4, :cond_52

    .line 1874
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mLastScrolledFocus:Ljava/lang/ref/WeakReference;

    if-eqz v4, :cond_50

    .line 1875
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mLastScrolledFocus:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->clear()V

    .line 1877
    :cond_50
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Landroid/view/ViewRootImpl;->mCurScrollY:I

    move-object/from16 v0, p0

    iput v4, v0, Landroid/view/ViewRootImpl;->mScrollY:I

    .line 1878
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    if-eqz v4, :cond_51

    .line 1879
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1881
    :cond_51
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->disposeResizeBuffer()V

    .line 1883
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    if-eqz v4, :cond_41

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    invoke-virtual {v4}, Landroid/view/HardwareRenderer;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_41

    .line 1885
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    invoke-virtual {v4}, Landroid/view/HardwareRenderer;->destroy()V

    goto/16 :goto_16

    .line 1887
    :cond_52
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v4}, Landroid/view/Surface;->getGenerationId()I

    move-result v4

    move/from16 v0, v62

    if-eq v0, v4, :cond_41

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    if-nez v4, :cond_41

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    if-eqz v4, :cond_41

    .line 1889
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1891
    :try_start_3
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v4, v10}, Landroid/view/HardwareRenderer;->updateSurface(Landroid/view/Surface;)V
    :try_end_3
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_16

    .line 1892
    :catch_2
    move-exception v33

    .line 1893
    .restart local v33    # "e":Landroid/view/Surface$OutOfResourcesException;
    :try_start_4
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Landroid/view/ViewRootImpl;->handleOutOfResourcesException(Landroid/view/Surface$OutOfResourcesException;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 1936
    .end local v33    # "e":Landroid/view/Surface$OutOfResourcesException;
    .end local v52    # "overscanInsetsChanged":Z
    .end local v59    # "stableInsetsChanged":Z
    .end local v62    # "surfaceGenerationId":I
    .end local v67    # "visibleInsetsChanged":Z
    .restart local v25    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    :cond_53
    const/16 v61, 0x1

    .line 1938
    .end local v25    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    :cond_54
    if-eqz v61, :cond_55

    .line 1939
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback2;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    iget v11, v6, Landroid/view/WindowManager$LayoutParams;->format:I

    move-object/from16 v0, p0

    iget v12, v0, Landroid/view/ViewRootImpl;->mWidth:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRootImpl;->mHeight:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-interface {v4, v10, v11, v12, v0}, Landroid/view/SurfaceHolder$Callback2;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    .line 1941
    const-string v4, "ViewSystem"

    const-string v10, "ViewRootImpl >> surfaceChanged W=%d, H=%d)"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRootImpl;->mWidth:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v11, v12

    const/4 v12, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRootImpl;->mHeight:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1942
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v4}, Lcom/android/internal/view/BaseSurfaceHolder;->getCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v25

    .line 1943
    .restart local v25    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    if-eqz v25, :cond_55

    .line 1944
    move-object/from16 v23, v25

    .restart local v23    # "arr$":[Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v47, v0

    .restart local v47    # "len$":I
    const/16 v41, 0x0

    .restart local v41    # "i$":I
    :goto_18
    move/from16 v0, v41

    move/from16 v1, v47

    if-ge v0, v1, :cond_55

    aget-object v24, v23, v41

    .line 1945
    .restart local v24    # "c":Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    iget v10, v6, Landroid/view/WindowManager$LayoutParams;->format:I

    move-object/from16 v0, p0

    iget v11, v0, Landroid/view/ViewRootImpl;->mWidth:I

    move-object/from16 v0, p0

    iget v12, v0, Landroid/view/ViewRootImpl;->mHeight:I

    move-object/from16 v0, v24

    invoke-interface {v0, v4, v10, v11, v12}, Landroid/view/SurfaceHolder$Callback;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    .line 1944
    add-int/lit8 v41, v41, 0x1

    goto :goto_18

    .line 1950
    .end local v23    # "arr$":[Landroid/view/SurfaceHolder$Callback;
    .end local v24    # "c":Landroid/view/SurfaceHolder$Callback;
    .end local v25    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .end local v41    # "i$":I
    .end local v47    # "len$":I
    :cond_55
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mIsCreating:Z

    .line 1970
    :cond_56
    :goto_19
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    if-eqz v4, :cond_58

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    invoke-virtual {v4}, Landroid/view/HardwareRenderer;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_58

    .line 1972
    if-nez v39, :cond_57

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/ViewRootImpl;->mWidth:I

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v10, v10, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    invoke-virtual {v10}, Landroid/view/HardwareRenderer;->getWidth()I

    move-result v10

    if-ne v4, v10, :cond_57

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/ViewRootImpl;->mHeight:I

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v10, v10, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    invoke-virtual {v10}, Landroid/view/HardwareRenderer;->getHeight()I

    move-result v10

    if-eq v4, v10, :cond_58

    .line 1975
    :cond_57
    if-eqz v54, :cond_6e

    move-object/from16 v0, v54

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    move-object/from16 v63, v0

    .line 1976
    .local v63, "surfaceInsets":Landroid/graphics/Rect;
    :goto_1a
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    move-object/from16 v0, p0

    iget v10, v0, Landroid/view/ViewRootImpl;->mWidth:I

    move-object/from16 v0, p0

    iget v11, v0, Landroid/view/ViewRootImpl;->mHeight:I

    move-object/from16 v0, v63

    invoke-virtual {v4, v10, v11, v0}, Landroid/view/HardwareRenderer;->setup(IILandroid/graphics/Rect;)V

    .line 1977
    if-nez v39, :cond_58

    .line 1978
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v4, v10}, Landroid/view/HardwareRenderer;->invalidate(Landroid/view/Surface;)V

    .line 1979
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    .line 1984
    .end local v63    # "surfaceInsets":Landroid/graphics/Rect;
    :cond_58
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mStopped:Z

    if-eqz v4, :cond_59

    if-eqz v35, :cond_5e

    .line 1985
    :cond_59
    and-int/lit8 v4, v55, 0x1

    if-eqz v4, :cond_6f

    const/4 v4, 0x1

    :goto_1b
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Landroid/view/ViewRootImpl;->ensureTouchModeLocally(Z)Z

    move-result v34

    .line 1987
    .local v34, "focusChangedDueToTouchMode":Z
    if-nez v34, :cond_5a

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/ViewRootImpl;->mWidth:I

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    if-ne v4, v10, :cond_5a

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/ViewRootImpl;->mHeight:I

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    if-ne v4, v10, :cond_5a

    if-nez v31, :cond_5a

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mNewScaleFactorNeeded:Z

    if-eqz v4, :cond_5e

    .line 1990
    :cond_5a
    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/ViewRootImpl;->mWidth:I

    iget v10, v6, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-static {v4, v10}, Landroid/view/ViewRootImpl;->getRootMeasureSpec(II)I

    move-result v28

    .line 1991
    .local v28, "childWidthMeasureSpec":I
    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/ViewRootImpl;->mHeight:I

    iget v10, v6, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-static {v4, v10}, Landroid/view/ViewRootImpl;->getRootMeasureSpec(II)I

    move-result v27

    .line 2000
    .local v27, "childHeightMeasureSpec":I
    move-object/from16 v0, p0

    move/from16 v1, v28

    move/from16 v2, v27

    invoke-direct {v0, v1, v2}, Landroid/view/ViewRootImpl;->performMeasure(II)V

    .line 2005
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v68

    .line 2006
    .local v68, "width":I
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v38

    .line 2007
    .local v38, "height":I
    const/16 v48, 0x0

    .line 2009
    .local v48, "measureAgain":Z
    iget v4, v6, Landroid/view/WindowManager$LayoutParams;->horizontalWeight:F

    const/4 v10, 0x0

    cmpl-float v4, v4, v10

    if-lez v4, :cond_5b

    .line 2010
    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/ViewRootImpl;->mWidth:I

    sub-int v4, v4, v68

    int-to-float v4, v4

    iget v10, v6, Landroid/view/WindowManager$LayoutParams;->horizontalWeight:F

    mul-float/2addr v4, v10

    float-to-int v4, v4

    add-int v68, v68, v4

    .line 2011
    const/high16 v4, 0x40000000    # 2.0f

    move/from16 v0, v68

    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v28

    .line 2013
    const/16 v48, 0x1

    .line 2015
    :cond_5b
    iget v4, v6, Landroid/view/WindowManager$LayoutParams;->verticalWeight:F

    const/4 v10, 0x0

    cmpl-float v4, v4, v10

    if-lez v4, :cond_5c

    .line 2016
    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/ViewRootImpl;->mHeight:I

    sub-int v4, v4, v38

    int-to-float v4, v4

    iget v10, v6, Landroid/view/WindowManager$LayoutParams;->verticalWeight:F

    mul-float/2addr v4, v10

    float-to-int v4, v4

    add-int v38, v38, v4

    .line 2017
    const/high16 v4, 0x40000000    # 2.0f

    move/from16 v0, v38

    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v27

    .line 2019
    const/16 v48, 0x1

    .line 2022
    :cond_5c
    if-eqz v48, :cond_5d

    .line 2026
    move-object/from16 v0, p0

    move/from16 v1, v28

    move/from16 v2, v27

    invoke-direct {v0, v1, v2}, Landroid/view/ViewRootImpl;->performMeasure(II)V

    .line 2029
    :cond_5d
    const/16 v46, 0x1

    .line 2058
    .end local v27    # "childHeightMeasureSpec":I
    .end local v28    # "childWidthMeasureSpec":I
    .end local v31    # "contentInsetsChanged":Z
    .end local v34    # "focusChangedDueToTouchMode":Z
    .end local v37    # "hadSurface":Z
    .end local v38    # "height":I
    .end local v39    # "hwInitialized":Z
    .end local v48    # "measureAgain":Z
    .end local v68    # "width":I
    :cond_5e
    :goto_1c
    if-eqz v46, :cond_74

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mStopped:Z

    if-eqz v4, :cond_5f

    if-eqz v35, :cond_74

    :cond_5f
    const/16 v32, 0x1

    .line 2059
    .local v32, "didLayout":Z
    :goto_1d
    if-nez v32, :cond_60

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v4, v4, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    if-eqz v4, :cond_75

    :cond_60
    const/16 v64, 0x1

    .line 2061
    .local v64, "triggerGlobalLayoutListener":Z
    :goto_1e
    if-eqz v32, :cond_62

    .line 2062
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v8, v9}, Landroid/view/ViewRootImpl;->performLayout(Landroid/view/WindowManager$LayoutParams;II)V

    .line 2067
    iget v4, v5, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v4, v4, 0x200

    if-eqz v4, :cond_62

    .line 2070
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mTmpLocation:[I

    invoke-virtual {v5, v4}, Landroid/view/View;->getLocationInWindow([I)V

    .line 2071
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mTransparentRegion:Landroid/graphics/Region;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mTmpLocation:[I

    const/4 v11, 0x0

    aget v10, v10, v11

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/view/ViewRootImpl;->mTmpLocation:[I

    const/4 v12, 0x1

    aget v11, v11, v12

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/view/ViewRootImpl;->mTmpLocation:[I

    const/16 v17, 0x0

    aget v12, v12, v17

    iget v0, v5, Landroid/view/View;->mRight:I

    move/from16 v17, v0

    add-int v12, v12, v17

    iget v0, v5, Landroid/view/View;->mLeft:I

    move/from16 v17, v0

    sub-int v12, v12, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mTmpLocation:[I

    move-object/from16 v17, v0

    const/16 v18, 0x1

    aget v17, v17, v18

    iget v0, v5, Landroid/view/View;->mBottom:I

    move/from16 v18, v0

    add-int v17, v17, v18

    iget v0, v5, Landroid/view/View;->mTop:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move/from16 v0, v17

    invoke-virtual {v4, v10, v11, v12, v0}, Landroid/graphics/Region;->set(IIII)Z

    .line 2075
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mTransparentRegion:Landroid/graphics/Region;

    invoke-virtual {v5, v4}, Landroid/view/View;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    .line 2076
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v4, :cond_61

    .line 2077
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mTransparentRegion:Landroid/graphics/Region;

    invoke-virtual {v4, v10}, Landroid/content/res/CompatibilityInfo$Translator;->translateRegionInWindowToScreen(Landroid/graphics/Region;)V

    .line 2080
    :cond_61
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mTransparentRegion:Landroid/graphics/Region;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mPreviousTransparentRegion:Landroid/graphics/Region;

    invoke-virtual {v4, v10}, Landroid/graphics/Region;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_62

    .line 2081
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPreviousTransparentRegion:Landroid/graphics/Region;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mTransparentRegion:Landroid/graphics/Region;

    invoke-virtual {v4, v10}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 2082
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    .line 2085
    :try_start_5
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/view/ViewRootImpl;->mTransparentRegion:Landroid/graphics/Region;

    invoke-interface {v4, v10, v11}, Landroid/view/IWindowSession;->setTransparentRegion(Landroid/view/IWindow;Landroid/graphics/Region;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_4

    .line 2098
    :cond_62
    :goto_1f
    if-eqz v64, :cond_63

    .line 2099
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v10, 0x0

    iput-boolean v10, v4, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    .line 2100
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v4}, Landroid/view/ViewTreeObserver;->dispatchOnGlobalLayout()V

    .line 2103
    :cond_63
    if-eqz v30, :cond_65

    .line 2105
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v4, Landroid/view/View$AttachInfo;->mGivenInternalInsets:Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    move-object/from16 v43, v0

    .line 2106
    .local v43, "insets":Landroid/view/ViewTreeObserver$InternalInsetsInfo;
    invoke-virtual/range {v43 .. v43}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->reset()V

    .line 2109
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    move-object/from16 v0, v43

    invoke-virtual {v4, v0}, Landroid/view/ViewTreeObserver;->dispatchOnComputeInternalInsets(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V

    .line 2110
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    invoke-virtual/range {v43 .. v43}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_76

    const/4 v4, 0x1

    :goto_20
    iput-boolean v4, v10, Landroid/view/View$AttachInfo;->mHasNonEmptyGivenInternalInsets:Z

    .line 2113
    if-nez v45, :cond_64

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mLastGivenInsets:Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    move-object/from16 v0, v43

    invoke-virtual {v4, v0}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_65

    .line 2114
    :cond_64
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mLastGivenInsets:Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    move-object/from16 v0, v43

    invoke-virtual {v4, v0}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->set(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V

    .line 2120
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v4, :cond_77

    .line 2121
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object/from16 v0, v43

    iget-object v10, v0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->contentInsets:Landroid/graphics/Rect;

    invoke-virtual {v4, v10}, Landroid/content/res/CompatibilityInfo$Translator;->getTranslatedContentInsets(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v13

    .line 2122
    .local v13, "contentInsets":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object/from16 v0, v43

    iget-object v10, v0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->visibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v4, v10}, Landroid/content/res/CompatibilityInfo$Translator;->getTranslatedVisibleInsets(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v14

    .line 2123
    .local v14, "visibleInsets":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object/from16 v0, v43

    iget-object v10, v0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v4, v10}, Landroid/content/res/CompatibilityInfo$Translator;->getTranslatedTouchableArea(Landroid/graphics/Region;)Landroid/graphics/Region;

    move-result-object v15

    .line 2131
    .local v15, "touchableRegion":Landroid/graphics/Region;
    :goto_21
    :try_start_6
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    move-object/from16 v0, v43

    iget v12, v0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->mTouchableInsets:I

    invoke-interface/range {v10 .. v15}, Landroid/view/IWindowSession;->setInsets(Landroid/view/IWindow;ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Region;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_3

    .line 2138
    .end local v13    # "contentInsets":Landroid/graphics/Rect;
    .end local v14    # "visibleInsets":Landroid/graphics/Rect;
    .end local v15    # "touchableRegion":Landroid/graphics/Region;
    .end local v43    # "insets":Landroid/view/ViewTreeObserver$InternalInsetsInfo;
    :cond_65
    :goto_22
    const/16 v58, 0x0

    .line 2140
    .local v58, "skipDraw":Z
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mFirst:Z

    if-eqz v4, :cond_78

    .line 2144
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v4, :cond_66

    .line 2145
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->hasFocus()Z

    move-result v4

    if-nez v4, :cond_66

    .line 2146
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    const/4 v10, 0x2

    invoke-virtual {v4, v10}, Landroid/view/View;->requestFocus(I)Z

    .line 2154
    :cond_66
    and-int/lit8 v4, v55, 0x8

    if-eqz v4, :cond_67

    .line 2158
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mWindowsAnimating:Z

    .line 2164
    :cond_67
    :goto_23
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mFirst:Z

    .line 2165
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mWillDrawSoon:Z

    .line 2166
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mNewSurfaceNeeded:Z

    .line 2167
    move/from16 v0, v65

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewRootImpl;->mViewVisibility:I

    .line 2170
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mNewScaleFactorNeeded:Z

    .line 2174
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v4, v4, Landroid/view/View$AttachInfo;->mHasWindowFocus:Z

    if-eqz v4, :cond_68

    invoke-direct/range {p0 .. p0}, Landroid/view/ViewRootImpl;->isInLocalFocusMode()Z

    move-result v4

    if-nez v4, :cond_68

    .line 2175
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-static {v4}, Landroid/view/WindowManager$LayoutParams;->mayUseInputMethod(I)Z

    move-result v42

    .line 2177
    .local v42, "imTarget":Z
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mLastWasImTarget:Z

    move/from16 v0, v42

    if-eq v0, v4, :cond_68

    .line 2178
    move/from16 v0, v42

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewRootImpl;->mLastWasImTarget:Z

    .line 2179
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v16

    .line 2180
    .local v16, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v16, :cond_68

    if-eqz v42, :cond_68

    .line 2181
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/view/inputmethod/InputMethodManager;->startGettingWindowFocus(Landroid/view/View;)V

    .line 2182
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v0, v4, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mHasHadWindowFocus:Z

    if-nez v4, :cond_79

    const/16 v20, 0x1

    :goto_24
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v0, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v21, v0

    invoke-virtual/range {v16 .. v21}, Landroid/view/inputmethod/InputMethodManager;->onWindowFocus(Landroid/view/View;Landroid/view/View;IZI)V

    .line 2190
    .end local v16    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v42    # "imTarget":Z
    :cond_68
    and-int/lit8 v4, v55, 0x2

    if-eqz v4, :cond_69

    .line 2191
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mReportNextDraw:Z

    .line 2194
    :cond_69
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v4}, Landroid/view/ViewTreeObserver;->dispatchOnPreDraw()Z

    move-result v4

    if-nez v4, :cond_6a

    if-eqz v65, :cond_7a

    :cond_6a
    const/16 v26, 0x1

    .line 2197
    .local v26, "cancelDraw":Z
    :goto_25
    if-nez v26, :cond_7e

    if-nez v51, :cond_7e

    .line 2198
    if-eqz v58, :cond_6b

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mReportNextDraw:Z

    if-eqz v4, :cond_7d

    .line 2199
    :cond_6b
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    if-eqz v4, :cond_7c

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_7c

    .line 2200
    const/16 v40, 0x0

    .restart local v40    # "i":I
    :goto_26
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v40

    if-ge v0, v4, :cond_7b

    .line 2201
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    move/from16 v0, v40

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/LayoutTransition;

    invoke-virtual {v4}, Landroid/animation/LayoutTransition;->startChangingAnimations()V

    .line 2200
    add-int/lit8 v40, v40, 0x1

    goto :goto_26

    .line 1951
    .end local v26    # "cancelDraw":Z
    .end local v32    # "didLayout":Z
    .end local v40    # "i":I
    .end local v58    # "skipDraw":Z
    .end local v64    # "triggerGlobalLayoutListener":Z
    .restart local v31    # "contentInsetsChanged":Z
    .restart local v37    # "hadSurface":Z
    .restart local v39    # "hwInitialized":Z
    :cond_6c
    if-eqz v37, :cond_56

    .line 1952
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v4}, Lcom/android/internal/view/BaseSurfaceHolder;->ungetCallbacks()V

    .line 1953
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v4}, Lcom/android/internal/view/BaseSurfaceHolder;->getCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v25

    .line 1954
    .restart local v25    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback2;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-interface {v4, v10}, Landroid/view/SurfaceHolder$Callback2;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 1955
    const-string v4, "ViewSystem"

    const-string v10, "ViewRootImpl >> surfaceDestroyed"

    invoke-static {v4, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1956
    if-eqz v25, :cond_6d

    .line 1957
    move-object/from16 v23, v25

    .restart local v23    # "arr$":[Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v47, v0

    .restart local v47    # "len$":I
    const/16 v41, 0x0

    .restart local v41    # "i$":I
    :goto_27
    move/from16 v0, v41

    move/from16 v1, v47

    if-ge v0, v1, :cond_6d

    aget-object v24, v23, v41

    .line 1958
    .restart local v24    # "c":Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object/from16 v0, v24

    invoke-interface {v0, v4}, Landroid/view/SurfaceHolder$Callback;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 1957
    add-int/lit8 v41, v41, 0x1

    goto :goto_27

    .line 1961
    .end local v23    # "arr$":[Landroid/view/SurfaceHolder$Callback;
    .end local v24    # "c":Landroid/view/SurfaceHolder$Callback;
    .end local v41    # "i$":I
    .end local v47    # "len$":I
    :cond_6d
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    iget-object v4, v4, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1963
    :try_start_7
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    new-instance v10, Landroid/view/Surface;

    invoke-direct {v10}, Landroid/view/Surface;-><init>()V

    iput-object v10, v4, Lcom/android/internal/view/BaseSurfaceHolder;->mSurface:Landroid/view/Surface;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1965
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    iget-object v4, v4, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_19

    :catchall_0
    move-exception v4

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    iget-object v10, v10, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v10}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v4

    .line 1975
    .end local v25    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    :cond_6e
    const/16 v63, 0x0

    goto/16 :goto_1a

    .line 1985
    :cond_6f
    const/4 v4, 0x0

    goto/16 :goto_1b

    .line 2047
    .end local v31    # "contentInsetsChanged":Z
    .end local v37    # "hadSurface":Z
    .end local v39    # "hwInitialized":Z
    :cond_70
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v4, v4, Landroid/view/View$AttachInfo;->mWindowLeft:I

    move-object/from16 v0, v36

    iget v10, v0, Landroid/graphics/Rect;->left:I

    if-ne v4, v10, :cond_71

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v4, v4, Landroid/view/View$AttachInfo;->mWindowTop:I

    move-object/from16 v0, v36

    iget v10, v0, Landroid/graphics/Rect;->top:I

    if-eq v4, v10, :cond_73

    :cond_71
    const/16 v69, 0x1

    .line 2049
    .local v69, "windowMoved":Z
    :goto_28
    if-eqz v69, :cond_5e

    .line 2050
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v4, :cond_72

    .line 2051
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object/from16 v0, v36

    invoke-virtual {v4, v0}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWinFrame(Landroid/graphics/Rect;)V

    .line 2053
    :cond_72
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v0, v36

    iget v10, v0, Landroid/graphics/Rect;->left:I

    iput v10, v4, Landroid/view/View$AttachInfo;->mWindowLeft:I

    .line 2054
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v0, v36

    iget v10, v0, Landroid/graphics/Rect;->top:I

    iput v10, v4, Landroid/view/View$AttachInfo;->mWindowTop:I

    goto/16 :goto_1c

    .line 2047
    .end local v69    # "windowMoved":Z
    :cond_73
    const/16 v69, 0x0

    goto :goto_28

    .line 2058
    :cond_74
    const/16 v32, 0x0

    goto/16 :goto_1d

    .line 2059
    .restart local v32    # "didLayout":Z
    :cond_75
    const/16 v64, 0x0

    goto/16 :goto_1e

    .line 2110
    .restart local v43    # "insets":Landroid/view/ViewTreeObserver$InternalInsetsInfo;
    .restart local v64    # "triggerGlobalLayoutListener":Z
    :cond_76
    const/4 v4, 0x0

    goto/16 :goto_20

    .line 2125
    :cond_77
    move-object/from16 v0, v43

    iget-object v13, v0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->contentInsets:Landroid/graphics/Rect;

    .line 2126
    .restart local v13    # "contentInsets":Landroid/graphics/Rect;
    move-object/from16 v0, v43

    iget-object v14, v0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->visibleInsets:Landroid/graphics/Rect;

    .line 2127
    .restart local v14    # "visibleInsets":Landroid/graphics/Rect;
    move-object/from16 v0, v43

    iget-object v15, v0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    .restart local v15    # "touchableRegion":Landroid/graphics/Region;
    goto/16 :goto_21

    .line 2160
    .end local v13    # "contentInsets":Landroid/graphics/Rect;
    .end local v14    # "visibleInsets":Landroid/graphics/Rect;
    .end local v15    # "touchableRegion":Landroid/graphics/Region;
    .end local v43    # "insets":Landroid/view/ViewTreeObserver$InternalInsetsInfo;
    .restart local v58    # "skipDraw":Z
    :cond_78
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mWindowsAnimating:Z

    if-eqz v4, :cond_67

    .line 2161
    const/16 v58, 0x1

    goto/16 :goto_23

    .line 2182
    .restart local v16    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .restart local v42    # "imTarget":Z
    :cond_79
    const/16 v20, 0x0

    goto/16 :goto_24

    .line 2194
    .end local v16    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v42    # "imTarget":Z
    :cond_7a
    const/16 v26, 0x0

    goto/16 :goto_25

    .line 2203
    .restart local v26    # "cancelDraw":Z
    .restart local v40    # "i":I
    :cond_7b
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 2206
    .end local v40    # "i":I
    :cond_7c
    invoke-direct/range {p0 .. p0}, Landroid/view/ViewRootImpl;->performDraw()V

    .line 2220
    :cond_7d
    :goto_29
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mIsInTraversal:Z

    goto/16 :goto_0

    .line 2209
    :cond_7e
    if-nez v65, :cond_7f

    .line 2211
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    goto :goto_29

    .line 2212
    :cond_7f
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    if-eqz v4, :cond_7d

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_7d

    .line 2213
    const/16 v40, 0x0

    .restart local v40    # "i":I
    :goto_2a
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v40

    if-ge v0, v4, :cond_80

    .line 2214
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    move/from16 v0, v40

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/LayoutTransition;

    invoke-virtual {v4}, Landroid/animation/LayoutTransition;->endChangingAnimations()V

    .line 2213
    add-int/lit8 v40, v40, 0x1

    goto :goto_2a

    .line 2216
    :cond_80
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    goto :goto_29

    .line 2133
    .end local v26    # "cancelDraw":Z
    .end local v40    # "i":I
    .end local v58    # "skipDraw":Z
    .restart local v13    # "contentInsets":Landroid/graphics/Rect;
    .restart local v14    # "visibleInsets":Landroid/graphics/Rect;
    .restart local v15    # "touchableRegion":Landroid/graphics/Region;
    .restart local v43    # "insets":Landroid/view/ViewTreeObserver$InternalInsetsInfo;
    :catch_3
    move-exception v4

    goto/16 :goto_22

    .line 2086
    .end local v13    # "contentInsets":Landroid/graphics/Rect;
    .end local v14    # "visibleInsets":Landroid/graphics/Rect;
    .end local v15    # "touchableRegion":Landroid/graphics/Region;
    .end local v43    # "insets":Landroid/view/ViewTreeObserver$InternalInsetsInfo;
    :catch_4
    move-exception v4

    goto/16 :goto_1f
.end method

.method private postSendWindowContentChangedCallback(Landroid/view/View;I)V
    .locals 2
    .param p1, "source"    # Landroid/view/View;
    .param p2, "changeType"    # I

    .prologue
    .line 7009
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mSendWindowContentChangedAccessibilityEvent:Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;

    if-nez v0, :cond_0

    .line 7010
    new-instance v0, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;-><init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$1;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mSendWindowContentChangedAccessibilityEvent:Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;

    .line 7013
    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mSendWindowContentChangedAccessibilityEvent:Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;->runOrPost(Landroid/view/View;I)V

    .line 7014
    return-void
.end method

.method private profileRendering(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 2551
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mProfileRendering:Z

    if-eqz v0, :cond_2

    .line 2552
    iput-boolean p1, p0, Landroid/view/ViewRootImpl;->mRenderProfilingEnabled:Z

    .line 2554
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mRenderProfiler:Landroid/view/Choreographer$FrameCallback;

    if-eqz v0, :cond_0

    .line 2555
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mRenderProfiler:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 2557
    :cond_0
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mRenderProfilingEnabled:Z

    if-eqz v0, :cond_3

    .line 2558
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mRenderProfiler:Landroid/view/Choreographer$FrameCallback;

    if-nez v0, :cond_1

    .line 2559
    new-instance v0, Landroid/view/ViewRootImpl$3;

    invoke-direct {v0, p0}, Landroid/view/ViewRootImpl$3;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mRenderProfiler:Landroid/view/Choreographer$FrameCallback;

    .line 2570
    :cond_1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mRenderProfiler:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 2575
    :cond_2
    :goto_0
    return-void

    .line 2572
    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mRenderProfiler:Landroid/view/Choreographer$FrameCallback;

    goto :goto_0
.end method

.method private recycleQueuedInputEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)V
    .locals 2
    .param p1, "q"    # Landroid/view/ViewRootImpl$QueuedInputEvent;

    .prologue
    const/4 v0, 0x0

    .line 6452
    iput-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    .line 6453
    iput-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mReceiver:Landroid/view/InputEventReceiver;

    .line 6455
    iget v0, p0, Landroid/view/ViewRootImpl;->mQueuedInputEventPoolSize:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 6456
    iget v0, p0, Landroid/view/ViewRootImpl;->mQueuedInputEventPoolSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/view/ViewRootImpl;->mQueuedInputEventPoolSize:I

    .line 6457
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mQueuedInputEventPool:Landroid/view/ViewRootImpl$QueuedInputEvent;

    iput-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mNext:Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 6458
    iput-object p1, p0, Landroid/view/ViewRootImpl;->mQueuedInputEventPool:Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 6460
    :cond_0
    return-void
.end method

.method private relayoutWindow(Landroid/view/WindowManager$LayoutParams;IZ)I
    .locals 21
    .param p1, "params"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "viewVisibility"    # I
    .param p3, "insetsPending"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6015
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v0, v1, Landroid/view/View$AttachInfo;->mApplicationScale:F

    move/from16 v18, v0

    .line 6016
    .local v18, "appScale":F
    const/16 v20, 0x0

    .line 6017
    .local v20, "restore":Z
    if-eqz p1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v1, :cond_0

    .line 6018
    const/16 v20, 0x1

    .line 6019
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowManager$LayoutParams;->backup()V

    .line 6020
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/content/res/CompatibilityInfo$Translator;->translateWindowLayout(Landroid/view/WindowManager$LayoutParams;)V

    .line 6022
    :cond_0
    if-eqz p1, :cond_1

    .line 6025
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/ViewRootImpl;->mPendingConfiguration:Landroid/content/res/Configuration;

    const/4 v2, 0x0

    iput v2, v1, Landroid/content/res/Configuration;->seq:I

    .line 6027
    if-eqz p1, :cond_2

    move-object/from16 v0, p0

    iget v1, v0, Landroid/view/ViewRootImpl;->mOrigWindowType:I

    move-object/from16 v0, p1

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq v1, v2, :cond_2

    .line 6029
    move-object/from16 v0, p0

    iget v1, v0, Landroid/view/ViewRootImpl;->mTargetSdkVersion:I

    const/16 v2, 0xe

    if-ge v1, v2, :cond_2

    .line 6030
    const-string v1, "ViewRootImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Window type can not be changed after the window is added; ignoring change of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6032
    move-object/from16 v0, p0

    iget v1, v0, Landroid/view/ViewRootImpl;->mOrigWindowType:I

    move-object/from16 v0, p1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 6035
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/ViewRootImpl;->mSeq:I

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v18

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v4, v5

    float-to-int v5, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v18

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v4, v6

    float-to-int v6, v4

    if-eqz p3, :cond_5

    const/4 v8, 0x1

    :goto_0
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mPendingOverscanInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/view/ViewRootImpl;->mPendingContentInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/view/ViewRootImpl;->mPendingVisibleInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/view/ViewRootImpl;->mPendingStableInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/view/ViewRootImpl;->mPendingConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mScaleFactor:Landroid/graphics/PointF;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mCocktailBar:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v4, p1

    move/from16 v7, p2

    invoke-interface/range {v1 .. v17}, Landroid/view/IWindowSession;->relayout(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IIIILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/content/res/Configuration;Landroid/view/Surface;Landroid/graphics/PointF;Landroid/graphics/Rect;)I

    move-result v19

    .line 6045
    .local v19, "relayoutResult":I
    if-eqz v20, :cond_3

    .line 6046
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowManager$LayoutParams;->restore()V

    .line 6049
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v1, :cond_4

    .line 6050
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWinFrame(Landroid/graphics/Rect;)V

    .line 6051
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mPendingOverscanInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWindow(Landroid/graphics/Rect;)V

    .line 6052
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mPendingContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWindow(Landroid/graphics/Rect;)V

    .line 6053
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mPendingVisibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWindow(Landroid/graphics/Rect;)V

    .line 6054
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mPendingStableInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWindow(Landroid/graphics/Rect;)V

    .line 6056
    :cond_4
    return v19

    .line 6035
    .end local v19    # "relayoutResult":I
    :cond_5
    const/4 v8, 0x0

    goto :goto_0
.end method

.method private removeSendWindowContentChangedCallback()V
    .locals 2

    .prologue
    .line 7021
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mSendWindowContentChangedAccessibilityEvent:Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;

    if-eqz v0, :cond_0

    .line 7022
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mSendWindowContentChangedAccessibilityEvent:Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 7024
    :cond_0
    return-void
.end method

.method private scheduleProcessInputEvents()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 6495
    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mProcessInputEventsScheduled:Z

    if-nez v1, :cond_0

    .line 6496
    iput-boolean v3, p0, Landroid/view/ViewRootImpl;->mProcessInputEventsScheduled:Z

    .line 6497
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v2, 0x13

    invoke-virtual {v1, v2}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 6498
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0, v3}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 6499
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    .line 6501
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private sendUserActionEvent()V
    .locals 6

    .prologue
    .line 7635
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-nez v2, :cond_1

    .line 7636
    const-string v2, "ViewRootImpl"

    const-string/jumbo v3, "sendUserActionEvent() mView == null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7645
    :cond_0
    :goto_0
    return-void

    .line 7639
    :cond_1
    const-string v2, "1"

    const-string v3, "gsm.sim.userEvent"

    const/4 v4, 0x0

    const-string v5, "0"

    invoke-static {v3, v4, v5}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "1"

    const-string v3, "gsm.sim.userEvent"

    const/4 v4, 0x1

    const-string v5, "0"

    invoke-static {v3, v4, v5}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7640
    :cond_2
    new-instance v0, Lcom/android/internal/telephony/cat/CatEventDownload;

    const/4 v2, 0x4

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/cat/CatEventDownload;-><init>(I)V

    .line 7641
    .local v0, "catEventUserActivity":Lcom/android/internal/telephony/cat/CatEventDownload;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.stk.event"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 7642
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "STK EVENT"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 7643
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private trackFPS()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 2583
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 2584
    .local v4, "nowTime":J
    iget-wide v8, p0, Landroid/view/ViewRootImpl;->mFpsStartTime:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-gez v8, :cond_1

    .line 2585
    iput-wide v4, p0, Landroid/view/ViewRootImpl;->mFpsPrevTime:J

    iput-wide v4, p0, Landroid/view/ViewRootImpl;->mFpsStartTime:J

    .line 2586
    iput v12, p0, Landroid/view/ViewRootImpl;->mFpsNumFrames:I

    .line 2601
    :cond_0
    :goto_0
    return-void

    .line 2588
    :cond_1
    iget v8, p0, Landroid/view/ViewRootImpl;->mFpsNumFrames:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Landroid/view/ViewRootImpl;->mFpsNumFrames:I

    .line 2589
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 2590
    .local v1, "thisHash":Ljava/lang/String;
    iget-wide v8, p0, Landroid/view/ViewRootImpl;->mFpsPrevTime:J

    sub-long v2, v4, v8

    .line 2591
    .local v2, "frameTime":J
    iget-wide v8, p0, Landroid/view/ViewRootImpl;->mFpsStartTime:J

    sub-long v6, v4, v8

    .line 2592
    .local v6, "totalTime":J
    const-string v8, "ViewRootImpl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "0x"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\tFrame time:\t"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2593
    iput-wide v4, p0, Landroid/view/ViewRootImpl;->mFpsPrevTime:J

    .line 2594
    const-wide/16 v8, 0x3e8

    cmp-long v8, v6, v8

    if-lez v8, :cond_0

    .line 2595
    iget v8, p0, Landroid/view/ViewRootImpl;->mFpsNumFrames:I

    int-to-float v8, v8

    const/high16 v9, 0x447a0000    # 1000.0f

    mul-float/2addr v8, v9

    long-to-float v9, v6

    div-float v0, v8, v9

    .line 2596
    .local v0, "fps":F
    const-string v8, "ViewRootImpl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "0x"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\tFPS:\t"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2597
    iput-wide v4, p0, Landroid/view/ViewRootImpl;->mFpsStartTime:J

    .line 2598
    iput v12, p0, Landroid/view/ViewRootImpl;->mFpsNumFrames:I

    goto :goto_0
.end method


# virtual methods
.method public bringChildToFront(Landroid/view/View;)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 1142
    return-void
.end method

.method public canResolveLayoutDirection()Z
    .locals 1

    .prologue
    .line 7131
    const/4 v0, 0x1

    return v0
.end method

.method public canResolveTextAlignment()Z
    .locals 1

    .prologue
    .line 7161
    const/4 v0, 0x1

    return v0
.end method

.method public canResolveTextDirection()Z
    .locals 1

    .prologue
    .line 7146
    const/4 v0, 0x1

    return v0
.end method

.method public cancelInvalidate(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 6862
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/view/ViewRootImpl$ViewRootHandler;->removeMessages(ILjava/lang/Object;)V

    .line 6865
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/view/ViewRootImpl$ViewRootHandler;->removeMessages(ILjava/lang/Object;)V

    .line 6866
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mInvalidateOnAnimationRunnable:Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;

    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->removeView(Landroid/view/View;)V

    .line 6867
    return-void
.end method

.method changeCanvasOpacity(Z)V
    .locals 3
    .param p1, "opaque"    # Z

    .prologue
    .line 7273
    const-string v0, "ViewRootImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeCanvasOpacity: opaque="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7274
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    if-eqz v0, :cond_0

    .line 7275
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    invoke-virtual {v0, p1}, Landroid/view/HardwareRenderer;->setOpaque(Z)V

    .line 7277
    :cond_0
    return-void
.end method

.method checkThread()V
    .locals 2

    .prologue
    .line 7208
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mThread:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 7209
    new-instance v0, Landroid/view/ViewRootImpl$CalledFromWrongThreadException;

    const-string v1, "Only the original thread that created a view hierarchy can touch its views."

    invoke-direct {v0, v1}, Landroid/view/ViewRootImpl$CalledFromWrongThreadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7212
    :cond_0
    return-void
.end method

.method public childDrawableStateChanged(Landroid/view/View;)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 7042
    return-void
.end method

.method public childHasTransientStateChanged(Landroid/view/View;Z)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;
    .param p2, "hasTransientState"    # Z

    .prologue
    .line 7238
    return-void
.end method

.method public clearChildFocus(Landroid/view/View;)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 3216
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    .line 3217
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    .line 3218
    return-void
.end method

.method public createContextMenu(Landroid/view/ContextMenu;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/ContextMenu;

    .prologue
    .line 7038
    return-void
.end method

.method public debug()V
    .locals 1

    .prologue
    .line 6125
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->debug()V

    .line 6126
    return-void
.end method

.method destroyHardwareResources()V
    .locals 2

    .prologue
    .line 795
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    if-eqz v0, :cond_0

    .line 796
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/HardwareRenderer;->destroyHardwareResources(Landroid/view/View;)V

    .line 797
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    invoke-virtual {v0}, Landroid/view/HardwareRenderer;->destroy()V

    .line 799
    :cond_0
    return-void
.end method

.method public detachFunctor(J)V
    .locals 1
    .param p1, "functor"    # J

    .prologue
    .line 803
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mBlockResizeBuffer:Z

    .line 804
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    if-eqz v0, :cond_0

    .line 807
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    invoke-virtual {v0}, Landroid/view/HardwareRenderer;->stopDrawing()V

    .line 809
    :cond_0
    return-void
.end method

.method die(Z)Z
    .locals 3
    .param p1, "immediate"    # Z

    .prologue
    .line 6208
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mIsInTraversal:Z

    if-nez v0, :cond_0

    .line 6209
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->doDie()V

    .line 6210
    const/4 v0, 0x0

    .line 6220
    :goto_0
    return v0

    .line 6213
    :cond_0
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mIsDrawing:Z

    if-nez v0, :cond_1

    .line 6214
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->destroyHardwareRenderer()V

    .line 6219
    :goto_1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendEmptyMessage(I)Z

    .line 6220
    const/4 v0, 0x1

    goto :goto_0

    .line 6216
    :cond_1
    const-string v0, "ViewRootImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempting to destroy the window while drawing!\n  window="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", title="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v2}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public dispatchAirButtonHitTest(III)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 6954
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 6955
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "id"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 6956
    const-string/jumbo v2, "x"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 6957
    const-string/jumbo v2, "y"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 6959
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 6960
    .local v1, "msg":Landroid/os/Message;
    const/16 v2, 0x1b

    iput v2, v1, Landroid/os/Message;->what:I

    .line 6961
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 6963
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v2, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    .line 6964
    return-void
.end method

.method public dispatchAppVisibility(Z)V
    .locals 3
    .param p1, "visible"    # Z

    .prologue
    .line 6908
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 6909
    .local v0, "msg":Landroid/os/Message;
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 6910
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    .line 6911
    return-void

    .line 6909
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method dispatchApplyInsets(Landroid/view/View;)V
    .locals 5
    .param p1, "host"    # Landroid/view/View;

    .prologue
    .line 1372
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mDispatchContentInsets:Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1373
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mDispatchStableInsets:Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mStableInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1374
    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mIsEmulator:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mIsCircularEmulator:Z

    if-nez v1, :cond_1

    :cond_0
    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mWindowIsRound:Z

    if-eqz v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 1375
    .local v0, "isRound":Z
    :goto_0
    new-instance v1, Landroid/view/WindowInsets;

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mDispatchContentInsets:Landroid/graphics/Rect;

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/view/ViewRootImpl;->mDispatchStableInsets:Landroid/graphics/Rect;

    invoke-direct {v1, v2, v3, v4, v0}, Landroid/view/WindowInsets;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    invoke-virtual {p1, v1}, Landroid/view/View;->dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    .line 1378
    return-void

    .line 1374
    .end local v0    # "isRound":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchCheckFocus()V
    .locals 2

    .prologue
    const/16 v1, 0xd

    .line 6982
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6984
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendEmptyMessage(I)Z

    .line 6986
    :cond_0
    return-void
.end method

.method public dispatchCloseSystemDialogs(Ljava/lang/String;)V
    .locals 2
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 6927
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 6928
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0xe

    iput v1, v0, Landroid/os/Message;->what:I

    .line 6929
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 6930
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    .line 6931
    return-void
.end method

.method dispatchDetachedFromWindow()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 3259
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    iget-object v0, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    .line 3260
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, v4}, Landroid/view/ViewTreeObserver;->dispatchOnWindowAttachedChange(Z)V

    .line 3261
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->dispatchDetachedFromWindow()V

    .line 3264
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mToolBoxManager:Lcom/samsung/android/toolbox/TwToolBoxManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mToolBoxManager:Lcom/samsung/android/toolbox/TwToolBoxManager;

    const-string v1, ""

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2, v4}, Lcom/samsung/android/toolbox/TwToolBoxManager;->sendMessage(Ljava/lang/String;II)V

    .line 3269
    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityInteractionConnectionManager:Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;->ensureNoConnection()V

    .line 3270
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAccessibilityInteractionConnectionManager:Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->removeAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;)Z

    .line 3272
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHighContrastTextManager:Landroid/view/ViewRootImpl$HighContrastTextManager;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->removeHighTextContrastStateChangeListener(Landroid/view/accessibility/AccessibilityManager$HighTextContrastChangeListener;)Z

    .line 3274
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->removeSendWindowContentChangedCallback()V

    .line 3276
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->destroyHardwareRenderer()V

    .line 3278
    invoke-virtual {p0, v3, v3}, Landroid/view/ViewRootImpl;->setAccessibilityFocus(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 3280
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->assignParent(Landroid/view/ViewParent;)V

    .line 3281
    iput-object v3, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .line 3282
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-object v3, v0, Landroid/view/View$AttachInfo;->mRootView:Landroid/view/View;

    .line 3284
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 3286
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mInputQueueCallback:Landroid/view/InputQueue$Callback;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mInputQueue:Landroid/view/InputQueue;

    if-eqz v0, :cond_1

    .line 3287
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mInputQueueCallback:Landroid/view/InputQueue$Callback;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mInputQueue:Landroid/view/InputQueue;

    invoke-interface {v0, v1}, Landroid/view/InputQueue$Callback;->onInputQueueDestroyed(Landroid/view/InputQueue;)V

    .line 3288
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mInputQueue:Landroid/view/InputQueue;

    invoke-virtual {v0}, Landroid/view/InputQueue;->dispose()V

    .line 3289
    iput-object v3, p0, Landroid/view/ViewRootImpl;->mInputQueueCallback:Landroid/view/InputQueue$Callback;

    .line 3290
    iput-object v3, p0, Landroid/view/ViewRootImpl;->mInputQueue:Landroid/view/InputQueue;

    .line 3292
    :cond_1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mInputEventReceiver:Landroid/view/ViewRootImpl$WindowInputEventReceiver;

    if-eqz v0, :cond_2

    .line 3293
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mInputEventReceiver:Landroid/view/ViewRootImpl$WindowInputEventReceiver;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl$WindowInputEventReceiver;->dispose()V

    .line 3294
    iput-object v3, p0, Landroid/view/ViewRootImpl;->mInputEventReceiver:Landroid/view/ViewRootImpl$WindowInputEventReceiver;

    .line 3297
    :cond_2
    :try_start_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-interface {v0, v1}, Landroid/view/IWindowSession;->remove(Landroid/view/IWindow;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3303
    :goto_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mInputChannel:Landroid/view/InputChannel;

    if-eqz v0, :cond_3

    .line 3304
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mInputChannel:Landroid/view/InputChannel;

    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    .line 3305
    iput-object v3, p0, Landroid/view/ViewRootImpl;->mInputChannel:Landroid/view/InputChannel;

    .line 3308
    :cond_3
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    .line 3310
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->unscheduleTraversals()V

    .line 3311
    return-void

    .line 3298
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public dispatchDoneAnimating()V
    .locals 2

    .prologue
    .line 6978
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v1, 0x16

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendEmptyMessage(I)Z

    .line 6979
    return-void
.end method

.method public dispatchDragEvent(Landroid/view/DragEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/view/DragEvent;

    .prologue
    .line 6935
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 6936
    const/16 v1, 0x10

    .line 6937
    .local v1, "what":I
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v2, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->removeMessages(I)V

    .line 6941
    :goto_0
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v2, v1, p1}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 6942
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v2, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    .line 6943
    return-void

    .line 6939
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "what":I
    :cond_0
    const/16 v1, 0xf

    .restart local v1    # "what":I
    goto :goto_0
.end method

.method public dispatchFinishInputConnection(Landroid/view/inputmethod/InputConnection;)V
    .locals 3
    .param p1, "connection"    # Landroid/view/inputmethod/InputConnection;

    .prologue
    .line 6319
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v2, 0xc

    invoke-virtual {v1, v2, p1}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 6320
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    .line 6321
    return-void
.end method

.method public dispatchGetNewSurface()V
    .locals 3

    .prologue
    .line 6914
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 6915
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    .line 6916
    return-void
.end method

.method public dispatchInputEvent(Landroid/view/InputEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/InputEvent;

    .prologue
    .line 6870
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewRootImpl;->dispatchInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;)V

    .line 6871
    return-void
.end method

.method public dispatchInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;)V
    .locals 4
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "receiver"    # Landroid/view/InputEventReceiver;

    .prologue
    .line 6874
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 6875
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 6876
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 6877
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/4 v3, 0x7

    invoke-virtual {v2, v3, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 6878
    .local v1, "msg":Landroid/os/Message;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 6879
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v2, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    .line 6880
    return-void
.end method

.method public dispatchInvalidateDelayed(Landroid/view/View;J)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "delayMilliseconds"    # J

    .prologue
    .line 6843
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 6844
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v1, v0, p2, p3}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 6845
    return-void
.end method

.method public dispatchInvalidateOnAnimation(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 6854
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mInvalidateOnAnimationRunnable:Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;

    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->addView(Landroid/view/View;)V

    .line 6855
    return-void
.end method

.method public dispatchInvalidateRectDelayed(Landroid/view/View$AttachInfo$InvalidateInfo;J)V
    .locals 4
    .param p1, "info"    # Landroid/view/View$AttachInfo$InvalidateInfo;
    .param p2, "delayMilliseconds"    # J

    .prologue
    .line 6849
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p1}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 6850
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v1, v0, p2, p3}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 6851
    return-void
.end method

.method public dispatchInvalidateRectOnAnimation(Landroid/view/View$AttachInfo$InvalidateInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/View$AttachInfo$InvalidateInfo;

    .prologue
    .line 6858
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mInvalidateOnAnimationRunnable:Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;

    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->addViewRect(Landroid/view/View$AttachInfo$InvalidateInfo;)V

    .line 6859
    return-void
.end method

.method public dispatchKeyFromIme(Landroid/view/KeyEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 6889
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v2, 0xb

    invoke-virtual {v1, v2, p1}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 6890
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 6891
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    .line 6892
    return-void
.end method

.method public dispatchMoved(II)V
    .locals 6
    .param p1, "newX"    # I
    .param p2, "newY"    # I

    .prologue
    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    .line 6350
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v2, :cond_0

    .line 6351
    new-instance v1, Landroid/graphics/PointF;

    int-to-float v2, p1

    int-to-float v3, p2

    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    .line 6352
    .local v1, "point":Landroid/graphics/PointF;
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    invoke-virtual {v2, v1}, Landroid/content/res/CompatibilityInfo$Translator;->translatePointInScreenToAppWindow(Landroid/graphics/PointF;)V

    .line 6353
    iget v2, v1, Landroid/graphics/PointF;->x:F

    float-to-double v2, v2

    add-double/2addr v2, v4

    double-to-int p1, v2

    .line 6354
    iget v2, v1, Landroid/graphics/PointF;->y:F

    float-to-double v2, v2

    add-double/2addr v2, v4

    double-to-int p2, v2

    .line 6356
    .end local v1    # "point":Landroid/graphics/PointF;
    :cond_0
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v3, 0x18

    invoke-virtual {v2, v3, p1, p2}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 6357
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v2, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    .line 6358
    return-void
.end method

.method public dispatchResized(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/content/res/Configuration;)V
    .locals 5
    .param p1, "frame"    # Landroid/graphics/Rect;
    .param p2, "overscanInsets"    # Landroid/graphics/Rect;
    .param p3, "contentInsets"    # Landroid/graphics/Rect;
    .param p4, "visibleInsets"    # Landroid/graphics/Rect;
    .param p5, "stableInsets"    # Landroid/graphics/Rect;
    .param p6, "reportDraw"    # Z
    .param p7, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 6329
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    if-eqz p6, :cond_7

    const/4 v3, 0x5

    :goto_0
    invoke-virtual {v4, v3}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 6330
    .local v1, "msg":Landroid/os/Message;
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v3, :cond_0

    .line 6331
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    invoke-virtual {v3, p1}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWindow(Landroid/graphics/Rect;)V

    .line 6332
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    invoke-virtual {v3, p2}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWindow(Landroid/graphics/Rect;)V

    .line 6333
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    invoke-virtual {v3, p3}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWindow(Landroid/graphics/Rect;)V

    .line 6334
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    invoke-virtual {v3, p4}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWindow(Landroid/graphics/Rect;)V

    .line 6336
    :cond_0
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 6337
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    if-ne v3, v4, :cond_8

    const/4 v2, 0x1

    .line 6338
    .local v2, "sameProcessCall":Z
    :goto_1
    if-eqz v2, :cond_1

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move-object p1, v3

    .end local p1    # "frame":Landroid/graphics/Rect;
    :cond_1
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 6339
    if-eqz v2, :cond_2

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, p3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move-object p3, v3

    .end local p3    # "contentInsets":Landroid/graphics/Rect;
    :cond_2
    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 6340
    if-eqz v2, :cond_3

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, p4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move-object p4, v3

    .end local p4    # "visibleInsets":Landroid/graphics/Rect;
    :cond_3
    iput-object p4, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 6341
    if-eqz v2, :cond_4

    if-eqz p7, :cond_4

    new-instance v3, Landroid/content/res/Configuration;

    invoke-direct {v3, p7}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    move-object p7, v3

    .end local p7    # "newConfig":Landroid/content/res/Configuration;
    :cond_4
    iput-object p7, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    .line 6342
    if-eqz v2, :cond_5

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move-object p2, v3

    .end local p2    # "overscanInsets":Landroid/graphics/Rect;
    :cond_5
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    .line 6343
    if-eqz v2, :cond_6

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, p5}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move-object p5, v3

    .end local p5    # "stableInsets":Landroid/graphics/Rect;
    :cond_6
    iput-object p5, v0, Lcom/android/internal/os/SomeArgs;->arg6:Ljava/lang/Object;

    .line 6344
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 6345
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v3, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    .line 6346
    return-void

    .line 6329
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v1    # "msg":Landroid/os/Message;
    .end local v2    # "sameProcessCall":Z
    .restart local p1    # "frame":Landroid/graphics/Rect;
    .restart local p2    # "overscanInsets":Landroid/graphics/Rect;
    .restart local p3    # "contentInsets":Landroid/graphics/Rect;
    .restart local p4    # "visibleInsets":Landroid/graphics/Rect;
    .restart local p5    # "stableInsets":Landroid/graphics/Rect;
    .restart local p7    # "newConfig":Landroid/content/res/Configuration;
    :cond_7
    const/4 v3, 0x4

    goto :goto_0

    .line 6337
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .restart local v1    # "msg":Landroid/os/Message;
    :cond_8
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public dispatchSmartClipDataExtractionEvent(Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;

    .prologue
    .line 6947
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 6948
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x1a

    iput v1, v0, Landroid/os/Message;->what:I

    .line 6949
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 6950
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    .line 6951
    return-void
.end method

.method public dispatchSystemUiVisibilityChanged(IIII)V
    .locals 4
    .param p1, "seq"    # I
    .param p2, "globalVisibility"    # I
    .param p3, "localValue"    # I
    .param p4, "localChanges"    # I

    .prologue
    .line 6969
    new-instance v0, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;

    invoke-direct {v0}, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;-><init>()V

    .line 6970
    .local v0, "args":Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;
    iput p1, v0, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->seq:I

    .line 6971
    iput p2, v0, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->globalVisibility:I

    .line 6972
    iput p3, v0, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->localValue:I

    .line 6973
    iput p4, v0, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->localChanges:I

    .line 6974
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v3, 0x11

    invoke-virtual {v2, v3, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    .line 6975
    return-void
.end method

.method public dispatchUnhandledInputEvent(Landroid/view/InputEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/InputEvent;

    .prologue
    .line 6901
    instance-of v0, p1, Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    .line 6902
    check-cast p1, Landroid/view/MotionEvent;

    .end local p1    # "event":Landroid/view/InputEvent;
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    .line 6904
    .restart local p1    # "event":Landroid/view/InputEvent;
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/ViewRootImpl;->synthesizeInputEvent(Landroid/view/InputEvent;)V

    .line 6905
    return-void
.end method

.method disposeResizeBuffer()V
    .locals 1

    .prologue
    .line 1149
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mResizeBuffer:Landroid/view/HardwareLayer;

    if-eqz v0, :cond_0

    .line 1150
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mResizeBuffer:Landroid/view/HardwareLayer;

    invoke-virtual {v0}, Landroid/view/HardwareLayer;->destroy()V

    .line 1151
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mResizeBuffer:Landroid/view/HardwareLayer;

    .line 1153
    :cond_0
    return-void
.end method

.method doConsumeBatchedInput(J)V
    .locals 3
    .param p1, "frameTimeNanos"    # J

    .prologue
    .line 6685
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mConsumeBatchedInputScheduled:Z

    if-eqz v0, :cond_1

    .line 6686
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mConsumeBatchedInputScheduled:Z

    .line 6687
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mInputEventReceiver:Landroid/view/ViewRootImpl$WindowInputEventReceiver;

    if-eqz v0, :cond_0

    .line 6688
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mInputEventReceiver:Landroid/view/ViewRootImpl$WindowInputEventReceiver;

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewRootImpl$WindowInputEventReceiver;->consumeBatchedInputEvents(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 6695
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleConsumeBatchedInput()V

    .line 6698
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->doProcessInputEvents()V

    .line 6700
    :cond_1
    return-void
.end method

.method doDie()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 6224
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    .line 6226
    monitor-enter p0

    .line 6227
    :try_start_0
    iget-boolean v3, p0, Landroid/view/ViewRootImpl;->mRemoved:Z

    if-eqz v3, :cond_0

    .line 6228
    monitor-exit p0

    .line 6261
    :goto_0
    return-void

    .line 6230
    :cond_0
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/view/ViewRootImpl;->mRemoved:Z

    .line 6231
    iget-boolean v3, p0, Landroid/view/ViewRootImpl;->mAdded:Z

    if-eqz v3, :cond_1

    .line 6232
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->dispatchDetachedFromWindow()V

    .line 6235
    :cond_1
    iget-boolean v3, p0, Landroid/view/ViewRootImpl;->mAdded:Z

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Landroid/view/ViewRootImpl;->mFirst:Z

    if-nez v3, :cond_4

    .line 6236
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->destroyHardwareRenderer()V

    .line 6238
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v3, :cond_4

    .line 6239
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v0

    .line 6240
    .local v0, "viewVisibility":I
    iget v3, p0, Landroid/view/ViewRootImpl;->mViewVisibility:I

    if-eq v3, v0, :cond_5

    .line 6241
    .local v1, "viewVisibilityChanged":Z
    :goto_1
    iget-boolean v2, p0, Landroid/view/ViewRootImpl;->mWindowAttributesChanged:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_2

    if-eqz v1, :cond_3

    .line 6246
    :cond_2
    :try_start_1
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    const/4 v3, 0x0

    invoke-direct {p0, v2, v0, v3}, Landroid/view/ViewRootImpl;->relayoutWindow(Landroid/view/WindowManager$LayoutParams;IZ)I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_3

    .line 6248
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-interface {v2, v3}, Landroid/view/IWindowSession;->finishDrawing(Landroid/view/IWindow;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6254
    :cond_3
    :goto_2
    :try_start_2
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v2}, Landroid/view/Surface;->release()V

    .line 6258
    .end local v0    # "viewVisibility":I
    .end local v1    # "viewVisibilityChanged":Z
    :cond_4
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/view/ViewRootImpl;->mAdded:Z

    .line 6259
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 6260
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/WindowManagerGlobal;->doRemoveView(Landroid/view/ViewRootImpl;)V

    goto :goto_0

    .restart local v0    # "viewVisibility":I
    :cond_5
    move v1, v2

    .line 6240
    goto :goto_1

    .line 6259
    .end local v0    # "viewVisibility":I
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 6250
    .restart local v0    # "viewVisibility":I
    .restart local v1    # "viewVisibilityChanged":Z
    :catch_0
    move-exception v2

    goto :goto_2
.end method

.method doProcessInputEvents()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 6505
    :goto_0
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mPendingInputEventHead:Landroid/view/ViewRootImpl$QueuedInputEvent;

    if-eqz v1, :cond_1

    .line 6506
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mPendingInputEventHead:Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 6507
    .local v0, "q":Landroid/view/ViewRootImpl$QueuedInputEvent;
    iget-object v1, v0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mNext:Landroid/view/ViewRootImpl$QueuedInputEvent;

    iput-object v1, p0, Landroid/view/ViewRootImpl;->mPendingInputEventHead:Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 6508
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mPendingInputEventHead:Landroid/view/ViewRootImpl$QueuedInputEvent;

    if-nez v1, :cond_0

    .line 6509
    iput-object v5, p0, Landroid/view/ViewRootImpl;->mPendingInputEventTail:Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 6511
    :cond_0
    iput-object v5, v0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mNext:Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 6513
    iget v1, p0, Landroid/view/ViewRootImpl;->mPendingInputEventCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/view/ViewRootImpl;->mPendingInputEventCount:I

    .line 6514
    const-wide/16 v2, 0x4

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mPendingInputEventQueueLengthCounterName:Ljava/lang/String;

    iget v4, p0, Landroid/view/ViewRootImpl;->mPendingInputEventCount:I

    invoke-static {v2, v3, v1, v4}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 6517
    invoke-direct {p0, v0}, Landroid/view/ViewRootImpl;->deliverInputEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    goto :goto_0

    .line 6522
    .end local v0    # "q":Landroid/view/ViewRootImpl$QueuedInputEvent;
    :cond_1
    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mProcessInputEventsScheduled:Z

    if-eqz v1, :cond_2

    .line 6523
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/view/ViewRootImpl;->mProcessInputEventsScheduled:Z

    .line 6524
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v2, 0x13

    invoke-virtual {v1, v2}, Landroid/view/ViewRootImpl$ViewRootHandler;->removeMessages(I)V

    .line 6526
    :cond_2
    return-void
.end method

.method doTraversal()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const-wide/16 v2, 0x8

    .line 1211
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mTraversalScheduled:Z

    if-eqz v0, :cond_1

    .line 1212
    iput-boolean v4, p0, Landroid/view/ViewRootImpl;->mTraversalScheduled:Z

    .line 1213
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iget v1, p0, Landroid/view/ViewRootImpl;->mTraversalBarrier:I

    invoke-virtual {v0, v1}, Landroid/os/Looper;->removeSyncBarrier(I)V

    .line 1215
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mProfile:Z

    if-eqz v0, :cond_0

    .line 1216
    const-string v0, "ViewAncestor"

    invoke-static {v0}, Landroid/os/Debug;->startMethodTracing(Ljava/lang/String;)V

    .line 1219
    :cond_0
    const-string/jumbo v0, "performTraversals"

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1221
    :try_start_0
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->performTraversals()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1223
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 1226
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mProfile:Z

    if-eqz v0, :cond_1

    .line 1227
    invoke-static {}, Landroid/os/Debug;->stopMethodTracing()V

    .line 1228
    iput-boolean v4, p0, Landroid/view/ViewRootImpl;->mProfile:Z

    .line 1231
    :cond_1
    return-void

    .line 1223
    :catchall_0
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .prologue
    .line 6129
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6130
    .local v0, "innerPrefix":Ljava/lang/String;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "ViewRoot:"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6131
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mAdded="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mAdded:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 6132
    const-string v1, " mRemoved="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mRemoved:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 6133
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mConsumeBatchedInputScheduled="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6134
    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mConsumeBatchedInputScheduled:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 6135
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mConsumeBatchedInputImmediatelyScheduled="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6136
    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mConsumeBatchedInputImmediatelyScheduled:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 6137
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mPendingInputEventCount="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6138
    iget v1, p0, Landroid/view/ViewRootImpl;->mPendingInputEventCount:I

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 6139
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mProcessInputEventsScheduled="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6140
    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mProcessInputEventsScheduled:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 6141
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mTraversalScheduled="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6142
    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mTraversalScheduled:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 6143
    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mTraversalScheduled:Z

    if-eqz v1, :cond_0

    .line 6144
    const-string v1, " (barrier="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Landroid/view/ViewRootImpl;->mTraversalBarrier:I

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, ")"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6148
    :goto_0
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mFirstInputStage:Landroid/view/ViewRootImpl$InputStage;

    invoke-virtual {v1, v0, p3}, Landroid/view/ViewRootImpl$InputStage;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 6150
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    invoke-virtual {v1, p1, p3}, Landroid/view/Choreographer;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 6152
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "View Hierarchy:"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6153
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-direct {p0, v0, p3, v1}, Landroid/view/ViewRootImpl;->dumpViewHierarchy(Ljava/lang/String;Ljava/io/PrintWriter;Landroid/view/View;)V

    .line 6154
    return-void

    .line 6146
    :cond_0
    invoke-virtual {p3}, Ljava/io/PrintWriter;->println()V

    goto :goto_0
.end method

.method public dumpGfxInfo([I)V
    .locals 2
    .param p1, "info"    # [I

    .prologue
    const/4 v1, 0x0

    .line 6178
    const/4 v0, 0x1

    aput v1, p1, v0

    aput v1, p1, v1

    .line 6179
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 6180
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-static {v0, p1}, Landroid/view/ViewRootImpl;->getGfxInfo(Landroid/view/View;[I)V

    .line 6182
    :cond_0
    return-void
.end method

.method enqueueInputEvent(Landroid/view/InputEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/InputEvent;

    .prologue
    const/4 v1, 0x0

    .line 6463
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v1, v1}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;IZ)V

    .line 6464
    return-void
.end method

.method enqueueInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;IZ)V
    .locals 6
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "receiver"    # Landroid/view/InputEventReceiver;
    .param p3, "flags"    # I
    .param p4, "processImmediately"    # Z

    .prologue
    .line 6468
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewRootImpl;->obtainQueuedInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;I)Landroid/view/ViewRootImpl$QueuedInputEvent;

    move-result-object v1

    .line 6475
    .local v1, "q":Landroid/view/ViewRootImpl$QueuedInputEvent;
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mPendingInputEventTail:Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 6476
    .local v0, "last":Landroid/view/ViewRootImpl$QueuedInputEvent;
    if-nez v0, :cond_0

    .line 6477
    iput-object v1, p0, Landroid/view/ViewRootImpl;->mPendingInputEventHead:Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 6478
    iput-object v1, p0, Landroid/view/ViewRootImpl;->mPendingInputEventTail:Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 6483
    :goto_0
    iget v2, p0, Landroid/view/ViewRootImpl;->mPendingInputEventCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/view/ViewRootImpl;->mPendingInputEventCount:I

    .line 6484
    const-wide/16 v2, 0x4

    iget-object v4, p0, Landroid/view/ViewRootImpl;->mPendingInputEventQueueLengthCounterName:Ljava/lang/String;

    iget v5, p0, Landroid/view/ViewRootImpl;->mPendingInputEventCount:I

    invoke-static {v2, v3, v4, v5}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 6487
    if-eqz p4, :cond_1

    .line 6488
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->doProcessInputEvents()V

    .line 6492
    :goto_1
    return-void

    .line 6480
    :cond_0
    iput-object v1, v0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mNext:Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 6481
    iput-object v1, p0, Landroid/view/ViewRootImpl;->mPendingInputEventTail:Landroid/view/ViewRootImpl$QueuedInputEvent;

    goto :goto_0

    .line 6490
    :cond_1
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->scheduleProcessInputEvents()V

    goto :goto_1
.end method

.method ensureTouchMode(Z)Z
    .locals 2
    .param p1, "inTouchMode"    # Z

    .prologue
    .line 3887
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v1, v1, Landroid/view/View$AttachInfo;->mInTouchMode:Z

    if-ne v1, p1, :cond_0

    const/4 v1, 0x0

    .line 3899
    :goto_0
    return v1

    .line 3891
    :cond_0
    :try_start_0
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->isInLocalFocusMode()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3892
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    invoke-interface {v1, p1}, Landroid/view/IWindowSession;->setInTouchMode(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3899
    :cond_1
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->ensureTouchModeLocally(Z)Z

    move-result v1

    goto :goto_0

    .line 3894
    :catch_0
    move-exception v0

    .line 3895
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public focusSearch(Landroid/view/View;I)Landroid/view/View;
    .locals 2
    .param p1, "focused"    # Landroid/view/View;
    .param p2, "direction"    # I

    .prologue
    .line 6117
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    .line 6118
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 6119
    const/4 v0, 0x0

    .line 6121
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v1

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0, p1, p2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public focusableViewAvailable(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 3227
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    .line 3228
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 3229
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->hasFocus()Z

    move-result v2

    if-nez v2, :cond_1

    .line 3230
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 3245
    :cond_0
    :goto_0
    return-void

    .line 3235
    :cond_1
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 3236
    .local v0, "focused":Landroid/view/View;
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 3237
    check-cast v1, Landroid/view/ViewGroup;

    .line 3238
    .local v1, "group":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v2

    const/high16 v3, 0x40000

    if-ne v2, v3, :cond_0

    invoke-static {p1, v0}, Landroid/view/ViewRootImpl;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3240
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    goto :goto_0
.end method

.method getAccessibilityFocusedDrawable()Landroid/graphics/drawable/Drawable;
    .locals 5

    .prologue
    .line 2924
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mAccessibilityFocusDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_0

    .line 2925
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 2926
    .local v1, "value":Landroid/util/TypedValue;
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    iget-object v2, v2, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x101050c

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v0

    .line 2928
    .local v0, "resolved":Z
    if-eqz v0, :cond_0

    .line 2929
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    iget-object v3, v3, Landroid/view/View;->mContext:Landroid/content/Context;

    iget v4, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, v2, Landroid/view/View$AttachInfo;->mAccessibilityFocusDrawable:Landroid/graphics/drawable/Drawable;

    .line 2971
    .end local v0    # "resolved":Z
    .end local v1    # "value":Landroid/util/TypedValue;
    :cond_0
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mAccessibilityFocusDrawable:Landroid/graphics/drawable/Drawable;

    return-object v2
.end method

.method public getAccessibilityFocusedHost()Landroid/view/View;
    .locals 1

    .prologue
    .line 3117
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedHost:Landroid/view/View;

    return-object v0
.end method

.method public getAccessibilityFocusedVirtualView()Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 1

    .prologue
    .line 3134
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    return-object v0
.end method

.method public getAccessibilityInteractionController()Landroid/view/AccessibilityInteractionController;
    .locals 2

    .prologue
    .line 6002
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 6003
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getAccessibilityInteractionController called when there is no mView"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6006
    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityInteractionController:Landroid/view/AccessibilityInteractionController;

    if-nez v0, :cond_1

    .line 6007
    new-instance v0, Landroid/view/AccessibilityInteractionController;

    invoke-direct {v0, p0}, Landroid/view/AccessibilityInteractionController;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityInteractionController:Landroid/view/AccessibilityInteractionController;

    .line 6009
    :cond_1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityInteractionController:Landroid/view/AccessibilityInteractionController;

    return-object v0
.end method

.method public getChildVisibleRect(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;)Z
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "r"    # Landroid/graphics/Rect;
    .param p3, "offset"    # Landroid/graphics/Point;

    .prologue
    const/4 v2, 0x0

    .line 1132
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eq p1, v0, :cond_0

    .line 1133
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "child is not mine, honest!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1137
    :cond_0
    iget v0, p0, Landroid/view/ViewRootImpl;->mWidth:I

    iget v1, p0, Landroid/view/ViewRootImpl;->mHeight:I

    invoke-virtual {p2, v2, v2, v0, v1}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result v0

    return v0
.end method

.method public getCocktailBarRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 8084
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mCocktailBar:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getCurrentWritingBuddyView()Landroid/view/View;
    .locals 1

    .prologue
    .line 7956
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mCurrentWritingBuddyView:Landroid/view/View;

    return-object v0
.end method

.method getHostVisibility()I
    .locals 1

    .prologue
    .line 1145
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mAppVisible:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public getLastTouchPoint(Landroid/graphics/Point;)V
    .locals 1
    .param p1, "outLocation"    # Landroid/graphics/Point;

    .prologue
    .line 5981
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mLastTouchPoint:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Point;->x:I

    .line 5982
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mLastTouchPoint:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Point;->y:I

    .line 5983
    return-void
.end method

.method public getLayoutDirection()I
    .locals 1

    .prologue
    .line 7141
    const/4 v0, 0x0

    return v0
.end method

.method final getLocation()Landroid/view/WindowLeaked;
    .locals 1

    .prologue
    .line 907
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mLocation:Landroid/view/WindowLeaked;

    return-object v0
.end method

.method public getMotionEventMonitor()Landroid/view/ViewRootImpl$MotionEventMonitor;
    .locals 1

    .prologue
    .line 7949
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mMotionEventMonitor:Landroid/view/ViewRootImpl$MotionEventMonitor;

    return-object v0
.end method

.method public getMultiWindowScale()Landroid/graphics/PointF;
    .locals 1

    .prologue
    .line 7991
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mScaleFactor:Landroid/graphics/PointF;

    return-object v0
.end method

.method public getParent()Landroid/view/ViewParent;
    .locals 1

    .prologue
    .line 1127
    const/4 v0, 0x0

    return-object v0
.end method

.method public getParentForAccessibility()Landroid/view/ViewParent;
    .locals 1

    .prologue
    .line 3222
    const/4 v0, 0x0

    return-object v0
.end method

.method public getStopped()Z
    .locals 1

    .prologue
    .line 1121
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mStopped:Z

    return v0
.end method

.method public getTextAlignment()I
    .locals 1

    .prologue
    .line 7171
    const/4 v0, 0x1

    return v0
.end method

.method public getTextDirection()I
    .locals 1

    .prologue
    .line 7156
    const/4 v0, 0x1

    return v0
.end method

.method public getTranscloudFocusedHost()Landroid/view/View;
    .locals 1

    .prologue
    .line 3125
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mTranscloudFocusedHost:Landroid/view/View;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 903
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    return-object v0
.end method

.method handleAppVisibility(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 965
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mAppVisible:Z

    if-eq v0, p1, :cond_0

    .line 966
    iput-boolean p1, p0, Landroid/view/ViewRootImpl;->mAppVisible:Z

    .line 967
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    .line 968
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mAppVisible:Z

    if-nez v0, :cond_0

    .line 969
    invoke-static {}, Landroid/view/WindowManagerGlobal;->trimForeground()V

    .line 972
    :cond_0
    return-void
.end method

.method public handleDispatchDoneAnimating()V
    .locals 1

    .prologue
    .line 5955
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mWindowsAnimating:Z

    if-eqz v0, :cond_1

    .line 5956
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mWindowsAnimating:Z

    .line 5957
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mDirty:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mIsAnimating:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    if-eqz v0, :cond_1

    .line 5958
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    .line 5961
    :cond_1
    return-void
.end method

.method public handleDispatchSystemUiVisibilityChanged(Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;)V
    .locals 4
    .param p1, "args"    # Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;

    .prologue
    .line 5934
    iget v1, p0, Landroid/view/ViewRootImpl;->mSeq:I

    iget v2, p1, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->seq:I

    if-eq v1, v2, :cond_0

    .line 5938
    iget v1, p1, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->seq:I

    iput v1, p0, Landroid/view/ViewRootImpl;->mSeq:I

    .line 5939
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/view/View$AttachInfo;->mForceReportNewAttributes:Z

    .line 5940
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    .line 5942
    :cond_0
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-nez v1, :cond_2

    .line 5952
    :cond_1
    :goto_0
    return-void

    .line 5943
    :cond_2
    iget v1, p1, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->localChanges:I

    if-eqz v1, :cond_3

    .line 5944
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    iget v2, p1, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->localValue:I

    iget v3, p1, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->localChanges:I

    invoke-virtual {v1, v2, v3}, Landroid/view/View;->updateLocalSystemUiVisibility(II)Z

    .line 5947
    :cond_3
    iget v1, p1, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->globalVisibility:I

    and-int/lit8 v0, v1, 0x7

    .line 5948
    .local v0, "visibility":I
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v1, v1, Landroid/view/View$AttachInfo;->mGlobalSystemUiVisibility:I

    if-eq v0, v1, :cond_1

    .line 5949
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput v0, v1, Landroid/view/View$AttachInfo;->mGlobalSystemUiVisibility:I

    .line 5950
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->dispatchSystemUiVisibilityChanged(I)V

    goto :goto_0
.end method

.method handleGetNewSurface()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 975
    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mNewSurfaceNeeded:Z

    .line 976
    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    .line 977
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    .line 978
    return-void
.end method

.method invalidate()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1040
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mDirty:Landroid/graphics/Rect;

    iget v1, p0, Landroid/view/ViewRootImpl;->mWidth:I

    iget v2, p0, Landroid/view/ViewRootImpl;->mHeight:I

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 1041
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mWillDrawSoon:Z

    if-nez v0, :cond_0

    .line 1042
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    .line 1044
    :cond_0
    return-void
.end method

.method public invalidateChild(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "dirty"    # Landroid/graphics/Rect;

    .prologue
    .line 1058
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p2}, Landroid/view/ViewRootImpl;->invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;

    .line 1059
    return-void
.end method

.method public invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;
    .locals 10
    .param p1, "location"    # [I
    .param p2, "dirty"    # Landroid/graphics/Rect;

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    const/high16 v9, 0x3f000000    # 0.5f

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 1063
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    .line 1066
    if-nez p2, :cond_1

    .line 1067
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->invalidate()V

    .line 1107
    :cond_0
    :goto_0
    return-object v8

    .line 1069
    :cond_1
    invoke-virtual {p2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Landroid/view/ViewRootImpl;->mIsAnimating:Z

    if-eqz v3, :cond_0

    .line 1073
    :cond_2
    iget v3, p0, Landroid/view/ViewRootImpl;->mCurScrollY:I

    if-nez v3, :cond_3

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v3, :cond_6

    .line 1074
    :cond_3
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1075
    iget-object p2, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    .line 1076
    iget v3, p0, Landroid/view/ViewRootImpl;->mCurScrollY:I

    if-eqz v3, :cond_4

    .line 1077
    iget v3, p0, Landroid/view/ViewRootImpl;->mCurScrollY:I

    neg-int v3, v3

    invoke-virtual {p2, v7, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 1079
    :cond_4
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v3, :cond_5

    .line 1080
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    invoke-virtual {v3, p2}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInAppWindowToScreen(Landroid/graphics/Rect;)V

    .line 1082
    :cond_5
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v3, v3, Landroid/view/View$AttachInfo;->mScalingRequired:Z

    if-eqz v3, :cond_6

    .line 1083
    invoke-virtual {p2, v4, v4}, Landroid/graphics/Rect;->inset(II)V

    .line 1087
    :cond_6
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mDirty:Landroid/graphics/Rect;

    .line 1088
    .local v2, "localDirty":Landroid/graphics/Rect;
    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_7

    invoke-virtual {v2, p2}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 1089
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v5, v3, Landroid/view/View$AttachInfo;->mSetIgnoreDirtyState:Z

    .line 1090
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v5, v3, Landroid/view/View$AttachInfo;->mIgnoreDirtyState:Z

    .line 1094
    :cond_7
    iget v3, p2, Landroid/graphics/Rect;->left:I

    iget v4, p2, Landroid/graphics/Rect;->top:I

    iget v5, p2, Landroid/graphics/Rect;->right:I

    iget v6, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;->union(IIII)V

    .line 1097
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v0, v3, Landroid/view/View$AttachInfo;->mApplicationScale:F

    .line 1098
    .local v0, "appScale":F
    iget v3, p0, Landroid/view/ViewRootImpl;->mWidth:I

    int-to-float v3, v3

    mul-float/2addr v3, v0

    add-float/2addr v3, v9

    float-to-int v3, v3

    iget v4, p0, Landroid/view/ViewRootImpl;->mHeight:I

    int-to-float v4, v4

    mul-float/2addr v4, v0

    add-float/2addr v4, v9

    float-to-int v4, v4

    invoke-virtual {v2, v7, v7, v3, v4}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result v1

    .line 1100
    .local v1, "intersected":Z
    if-nez v1, :cond_8

    .line 1101
    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    .line 1103
    :cond_8
    iget-boolean v3, p0, Landroid/view/ViewRootImpl;->mWillDrawSoon:Z

    if-nez v3, :cond_0

    if-nez v1, :cond_9

    iget-boolean v3, p0, Landroid/view/ViewRootImpl;->mIsAnimating:Z

    if-eqz v3, :cond_0

    .line 1104
    :cond_9
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    goto :goto_0
.end method

.method invalidateWorld(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1047
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 1048
    instance-of v2, p1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    move-object v1, p1

    .line 1049
    check-cast v1, Landroid/view/ViewGroup;

    .line 1050
    .local v1, "parent":Landroid/view/ViewGroup;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 1051
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/view/ViewRootImpl;->invalidateWorld(Landroid/view/View;)V

    .line 1050
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1054
    .end local v0    # "i":I
    .end local v1    # "parent":Landroid/view/ViewGroup;
    :cond_0
    return-void
.end method

.method public invokeFunctor(JZ)V
    .locals 1
    .param p1, "functor"    # J
    .param p3, "waitForCompletion"    # Z

    .prologue
    .line 821
    invoke-static {p1, p2, p3}, Landroid/view/ThreadedRenderer;->invokeFunctor(JZ)V

    .line 822
    return-void
.end method

.method isInLayout()Z
    .locals 1

    .prologue
    .line 2291
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mInLayout:Z

    return v0
.end method

.method public isLayoutDirectionResolved()Z
    .locals 1

    .prologue
    .line 7136
    const/4 v0, 0x1

    return v0
.end method

.method public isLayoutRequested()Z
    .locals 1

    .prologue
    .line 1036
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    return v0
.end method

.method public isTextAlignmentResolved()Z
    .locals 1

    .prologue
    .line 7166
    const/4 v0, 0x1

    return v0
.end method

.method public isTextDirectionResolved()Z
    .locals 1

    .prologue
    .line 7151
    const/4 v0, 0x1

    return v0
.end method

.method public loadSystemProperties()V
    .locals 2

    .prologue
    .line 6269
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    new-instance v1, Landroid/view/ViewRootImpl$4;

    invoke-direct {v1, p0}, Landroid/view/ViewRootImpl$4;-><init>(Landroid/view/ViewRootImpl;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->post(Ljava/lang/Runnable;)Z

    .line 6301
    return-void
.end method

.method notifyRendererOfFramePending()V
    .locals 1

    .prologue
    .line 1183
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    if-eqz v0, :cond_0

    .line 1184
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    invoke-virtual {v0}, Landroid/view/HardwareRenderer;->notifyFramePending()V

    .line 1186
    :cond_0
    return-void
.end method

.method public notifySubtreeAccessibilityStateChanged(Landroid/view/View;Landroid/view/View;I)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;
    .param p2, "source"    # Landroid/view/View;
    .param p3, "changeType"    # I

    .prologue
    .line 7126
    invoke-direct {p0, p2, p3}, Landroid/view/ViewRootImpl;->postSendWindowContentChangedCallback(Landroid/view/View;I)V

    .line 7127
    return-void
.end method

.method public onHardwarePostDraw(Landroid/view/HardwareCanvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/view/HardwareCanvas;

    .prologue
    .line 2530
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mResizeBuffer:Landroid/view/HardwareLayer;

    if-eqz v0, :cond_0

    .line 2531
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mResizePaint:Landroid/graphics/Paint;

    iget v1, p0, Landroid/view/ViewRootImpl;->mResizeAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 2532
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mResizeBuffer:Landroid/view/HardwareLayer;

    iget v1, p0, Landroid/view/ViewRootImpl;->mHardwareXOffset:I

    int-to-float v1, v1

    iget v2, p0, Landroid/view/ViewRootImpl;->mHardwareYOffset:I

    int-to-float v2, v2

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mResizePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/HardwareCanvas;->drawHardwareLayer(Landroid/view/HardwareLayer;FFLandroid/graphics/Paint;)V

    .line 2535
    :cond_0
    return-void
.end method

.method public onHardwarePreDraw(Landroid/view/HardwareCanvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/view/HardwareCanvas;

    .prologue
    .line 2525
    iget v0, p0, Landroid/view/ViewRootImpl;->mHardwareXOffset:I

    neg-int v0, v0

    int-to-float v0, v0

    iget v1, p0, Landroid/view/ViewRootImpl;->mHardwareYOffset:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/view/HardwareCanvas;->translate(FF)V

    .line 2526
    return-void
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .locals 1
    .param p1, "target"    # Landroid/view/View;
    .param p2, "velocityX"    # F
    .param p3, "velocityY"    # F
    .param p4, "consumed"    # Z

    .prologue
    .line 7264
    const/4 v0, 0x0

    return v0
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .locals 1
    .param p1, "target"    # Landroid/view/View;
    .param p2, "velocityX"    # F
    .param p3, "velocityY"    # F

    .prologue
    .line 7269
    const/4 v0, 0x0

    return v0
.end method

.method public onNestedPreScroll(Landroid/view/View;II[I)V
    .locals 0
    .param p1, "target"    # Landroid/view/View;
    .param p2, "dx"    # I
    .param p3, "dy"    # I
    .param p4, "consumed"    # [I

    .prologue
    .line 7260
    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .locals 0
    .param p1, "target"    # Landroid/view/View;
    .param p2, "dxConsumed"    # I
    .param p3, "dyConsumed"    # I
    .param p4, "dxUnconsumed"    # I
    .param p5, "dyUnconsumed"    # I

    .prologue
    .line 7256
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "nestedScrollAxes"    # I

    .prologue
    .line 7251
    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "nestedScrollAxes"    # I

    .prologue
    .line 7242
    const/4 v0, 0x0

    return v0
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .locals 0
    .param p1, "target"    # Landroid/view/View;

    .prologue
    .line 7247
    return-void
.end method

.method outputDisplayList(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 2541
    invoke-virtual {p1}, Landroid/view/View;->getDisplayList()Landroid/view/RenderNode;

    move-result-object v0

    .line 2542
    .local v0, "renderNode":Landroid/view/RenderNode;
    if-eqz v0, :cond_0

    .line 2543
    invoke-virtual {v0}, Landroid/view/RenderNode;->output()V

    .line 2545
    :cond_0
    return-void
.end method

.method public performHapticFeedback(IZ)Z
    .locals 3
    .param p1, "effectId"    # I
    .param p2, "always"    # Z

    .prologue
    .line 6106
    :try_start_0
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-interface {v1, v2, p1, p2}, Landroid/view/IWindowSession;->performHapticFeedback(Landroid/view/IWindow;IZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 6108
    :goto_0
    return v1

    .line 6107
    :catch_0
    move-exception v0

    .line 6108
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public playSoundEffect(I)V
    .locals 5
    .param p1, "effectId"    # I

    .prologue
    .line 6064
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    .line 6066
    iget-boolean v2, p0, Landroid/view/ViewRootImpl;->mMediaDisabled:Z

    if-eqz v2, :cond_0

    .line 6098
    :goto_0
    return-void

    .line 6071
    :cond_0
    :try_start_0
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    .line 6073
    .local v0, "audioManager":Landroid/media/AudioManager;
    packed-switch p1, :pswitch_data_0

    .line 6090
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unknown effect id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " not defined in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-class v4, Landroid/view/SoundEffectConstants;

    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6093
    .end local v0    # "audioManager":Landroid/media/AudioManager;
    :catch_0
    move-exception v1

    .line 6095
    .local v1, "e":Ljava/lang/IllegalStateException;
    const-string v2, "ViewRootImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FATAL EXCEPTION when attempting to play sound effect: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6096
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    .line 6075
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    .restart local v0    # "audioManager":Landroid/media/AudioManager;
    :pswitch_0
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->playSoundEffect(I)V

    goto :goto_0

    .line 6078
    :pswitch_1
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->playSoundEffect(I)V

    goto :goto_0

    .line 6081
    :pswitch_2
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->playSoundEffect(I)V

    goto :goto_0

    .line 6084
    :pswitch_3
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->playSoundEffect(I)V

    goto :goto_0

    .line 6087
    :pswitch_4
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->playSoundEffect(I)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 6073
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method public profile()V
    .locals 1

    .prologue
    .line 559
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mProfile:Z

    .line 560
    return-void
.end method

.method public recomputeViewAttributes(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 3249
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    .line 3250
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-ne v0, p1, :cond_0

    .line 3251
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    .line 3252
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mWillDrawSoon:Z

    if-nez v0, :cond_0

    .line 3253
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    .line 3256
    :cond_0
    return-void
.end method

.method public registerAnimatingRenderNode(Landroid/view/RenderNode;)V
    .locals 2
    .param p1, "animator"    # Landroid/view/RenderNode;

    .prologue
    .line 825
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    if-eqz v0, :cond_0

    .line 826
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    invoke-virtual {v0, p1}, Landroid/view/HardwareRenderer;->registerAnimatingRenderNode(Landroid/view/RenderNode;)V

    .line 833
    :goto_0
    return-void

    .line 828
    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mPendingAnimatingRenderNodes:Ljava/util/List;

    if-nez v0, :cond_1

    .line 829
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Landroid/view/View$AttachInfo;->mPendingAnimatingRenderNodes:Ljava/util/List;

    .line 831
    :cond_1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mPendingAnimatingRenderNodes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;
    .param p2, "focused"    # Landroid/view/View;

    .prologue
    .line 3207
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    .line 3208
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    .line 3209
    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "rectangle"    # Landroid/graphics/Rect;
    .param p3, "immediate"    # Z

    .prologue
    .line 7221
    invoke-virtual {p0, p2, p3}, Landroid/view/ViewRootImpl;->scrollToRectOrFocus(Landroid/graphics/Rect;Z)Z

    move-result v0

    .line 7222
    .local v0, "scrolled":Z
    if-eqz p2, :cond_0

    .line 7223
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 7224
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    const/4 v2, 0x0

    iget v3, p0, Landroid/view/ViewRootImpl;->mCurScrollY:I

    neg-int v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 7225
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v2, v2, Landroid/view/View$AttachInfo;->mWindowLeft:I

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v3, v3, Landroid/view/View$AttachInfo;->mWindowTop:I

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 7227
    :try_start_0
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    invoke-interface {v1, v2, v3}, Landroid/view/IWindowSession;->onRectangleOnScreenRequested(Landroid/os/IBinder;Landroid/graphics/Rect;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7232
    :cond_0
    :goto_0
    return v0

    .line 7228
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 0
    .param p1, "disallowIntercept"    # Z

    .prologue
    .line 7217
    return-void
.end method

.method public requestFitSystemWindows()V
    .locals 1

    .prologue
    .line 1020
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    .line 1021
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mApplyInsetsRequested:Z

    .line 1022
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    .line 1023
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 1027
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mHandlingLayoutInLayoutRequest:Z

    if-nez v0, :cond_0

    .line 1028
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    .line 1029
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    .line 1030
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    .line 1032
    :cond_0
    return-void
.end method

.method requestLayoutDuringLayout(Landroid/view/View;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x1

    .line 2317
    iget-object v1, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v1, :cond_0

    iget-object v1, p1, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-nez v1, :cond_1

    .line 2331
    :cond_0
    :goto_0
    return v0

    .line 2321
    :cond_1
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mLayoutRequesters:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2322
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mLayoutRequesters:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2324
    :cond_2
    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mHandlingLayoutInLayoutRequest:Z

    if-eqz v1, :cond_0

    .line 2331
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public requestOnStylusButtonEvent(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 8068
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Landroid/view/ViewTreeObserver;->dispatchOnPenButtonEventListener(Landroid/view/MotionEvent;I)V

    .line 8069
    return-void
.end method

.method public requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 18
    .param p1, "child"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 7046
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-nez v15, :cond_0

    .line 7047
    const/4 v15, 0x0

    .line 7121
    :goto_0
    return v15

    .line 7051
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v6

    .line 7052
    .local v6, "eventType":I
    sparse-switch v6, :sswitch_data_0

    .line 7120
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/view/ViewRootImpl;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 7121
    const/4 v15, 0x1

    goto :goto_0

    .line 7054
    :sswitch_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/accessibility/AccessibilityEvent;->getSourceNodeId()J

    move-result-wide v12

    .line 7055
    .local v12, "sourceNodeId":J
    invoke-static {v12, v13}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    move-result v2

    .line 7057
    .local v2, "accessibilityViewId":I
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v15, v2}, Landroid/view/View;->findViewByAccessibilityId(I)Landroid/view/View;

    move-result-object v10

    .line 7058
    .local v10, "source":Landroid/view/View;
    if-eqz v10, :cond_1

    .line 7059
    invoke-virtual {v10}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v9

    .line 7060
    .local v9, "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    if-eqz v9, :cond_1

    .line 7061
    invoke-static {v12, v13}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v14

    .line 7064
    .local v14, "virtualNodeId":I
    const v15, 0x7fffffff

    if-ne v14, v15, :cond_2

    .line 7065
    const/4 v15, -0x1

    invoke-virtual {v9, v15}, Landroid/view/accessibility/AccessibilityNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v8

    .line 7070
    .local v8, "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v8}, Landroid/view/ViewRootImpl;->setAccessibilityFocus(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    goto :goto_1

    .line 7068
    .end local v8    # "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_2
    invoke-virtual {v9, v14}, Landroid/view/accessibility/AccessibilityNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v8

    .restart local v8    # "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    goto :goto_2

    .line 7075
    .end local v2    # "accessibilityViewId":I
    .end local v8    # "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v9    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    .end local v10    # "source":Landroid/view/View;
    .end local v12    # "sourceNodeId":J
    .end local v14    # "virtualNodeId":I
    :sswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/view/accessibility/AccessibilityEvent;->getSourceNodeId()J

    move-result-wide v12

    .line 7076
    .restart local v12    # "sourceNodeId":J
    invoke-static {v12, v13}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    move-result v2

    .line 7078
    .restart local v2    # "accessibilityViewId":I
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v15, v2}, Landroid/view/View;->findViewByAccessibilityId(I)Landroid/view/View;

    move-result-object v10

    .line 7079
    .restart local v10    # "source":Landroid/view/View;
    if-eqz v10, :cond_1

    .line 7080
    invoke-virtual {v10}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v9

    .line 7081
    .restart local v9    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    if-eqz v9, :cond_1

    .line 7082
    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Landroid/view/ViewRootImpl;->setAccessibilityFocus(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    goto :goto_1

    .line 7089
    .end local v2    # "accessibilityViewId":I
    .end local v9    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    .end local v10    # "source":Landroid/view/View;
    .end local v12    # "sourceNodeId":J
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedHost:Landroid/view/View;

    if-eqz v15, :cond_1

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    if-eqz v15, :cond_1

    .line 7091
    invoke-virtual/range {p2 .. p2}, Landroid/view/accessibility/AccessibilityEvent;->getSourceNodeId()J

    move-result-wide v4

    .line 7092
    .local v4, "eventSourceId":J
    invoke-static {v4, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    move-result v7

    .line 7094
    .local v7, "hostViewId":I
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedHost:Landroid/view/View;

    invoke-virtual {v15}, Landroid/view/View;->getAccessibilityViewId()I

    move-result v15

    if-ne v7, v15, :cond_1

    .line 7099
    invoke-virtual/range {p2 .. p2}, Landroid/view/accessibility/AccessibilityEvent;->getContentChangeTypes()I

    move-result v3

    .line 7100
    .local v3, "changes":I
    and-int/lit8 v15, v3, 0x1

    if-nez v15, :cond_3

    if-nez v3, :cond_1

    .line 7102
    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedHost:Landroid/view/View;

    invoke-virtual {v15}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v9

    .line 7104
    .restart local v9    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    if-eqz v9, :cond_1

    .line 7105
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v15}, Landroid/view/accessibility/AccessibilityNodeInfo;->getSourceNodeId()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v11

    .line 7107
    .local v11, "virtualChildId":I
    const v15, 0x7fffffff

    if-ne v11, v15, :cond_4

    .line 7108
    const/4 v15, -0x1

    invoke-virtual {v9, v15}, Landroid/view/accessibility/AccessibilityNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    goto/16 :goto_1

    .line 7112
    :cond_4
    invoke-virtual {v9, v11}, Landroid/view/accessibility/AccessibilityNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    goto/16 :goto_1

    .line 7052
    :sswitch_data_0
    .sparse-switch
        0x800 -> :sswitch_2
        0x8000 -> :sswitch_0
        0x10000 -> :sswitch_1
    .end sparse-switch
.end method

.method public requestTransitionStart(Landroid/animation/LayoutTransition;)V
    .locals 1
    .param p1, "transition"    # Landroid/animation/LayoutTransition;

    .prologue
    .line 1169
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1170
    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 1171
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    .line 1173
    :cond_1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1175
    :cond_2
    return-void
.end method

.method public requestTransparentRegion(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 2474
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    .line 2475
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-ne v0, p1, :cond_0

    .line 2476
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    iget v1, v0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit16 v1, v1, 0x200

    iput v1, v0, Landroid/view/View;->mPrivateFlags:I

    .line 2479
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mWindowAttributesChanged:Z

    .line 2480
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/ViewRootImpl;->mWindowAttributesChangesFlag:I

    .line 2481
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->requestLayout()V

    .line 2483
    :cond_0
    return-void
.end method

.method public requestUpdateConfiguration(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "config"    # Landroid/content/res/Configuration;

    .prologue
    .line 6264
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v2, 0x12

    invoke-virtual {v1, v2, p1}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 6265
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    .line 6266
    return-void
.end method

.method scheduleConsumeBatchedInput()V
    .locals 4

    .prologue
    .line 6661
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mConsumeBatchedInputScheduled:Z

    if-nez v0, :cond_0

    .line 6662
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mConsumeBatchedInputScheduled:Z

    .line 6663
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mConsumedBatchedInputRunnable:Landroid/view/ViewRootImpl$ConsumeBatchedInputRunnable;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    .line 6666
    :cond_0
    return-void
.end method

.method scheduleConsumeBatchedInputImmediately()V
    .locals 2

    .prologue
    .line 6677
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mConsumeBatchedInputImmediatelyScheduled:Z

    if-nez v0, :cond_0

    .line 6678
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->unscheduleConsumeBatchedInput()V

    .line 6679
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mConsumeBatchedInputImmediatelyScheduled:Z

    .line 6680
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mConsumeBatchedInputImmediatelyRunnable:Landroid/view/ViewRootImpl$ConsumeBatchedInputImmediatelyRunnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->post(Ljava/lang/Runnable;)Z

    .line 6682
    :cond_0
    return-void
.end method

.method scheduleTraversals()V
    .locals 4

    .prologue
    .line 1189
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mTraversalScheduled:Z

    if-nez v0, :cond_1

    .line 1190
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mTraversalScheduled:Z

    .line 1191
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->postSyncBarrier()I

    move-result v0

    iput v0, p0, Landroid/view/ViewRootImpl;->mTraversalBarrier:I

    .line 1192
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    const/4 v1, 0x2

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mTraversalRunnable:Landroid/view/ViewRootImpl$TraversalRunnable;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    .line 1194
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mUnbufferedInputDispatch:Z

    if-nez v0, :cond_0

    .line 1195
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleConsumeBatchedInput()V

    .line 1197
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->notifyRendererOfFramePending()V

    .line 1199
    :cond_1
    return-void
.end method

.method scrollToRectOrFocus(Landroid/graphics/Rect;Z)Z
    .locals 10
    .param p1, "rectangle"    # Landroid/graphics/Rect;
    .param p2, "immediate"    # Z

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 2985
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v6, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    .line 2986
    .local v0, "ci":Landroid/graphics/Rect;
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v5, v6, Landroid/view/View$AttachInfo;->mVisibleInsets:Landroid/graphics/Rect;

    .line 2987
    .local v5, "vi":Landroid/graphics/Rect;
    const/4 v4, 0x0

    .line 2988
    .local v4, "scrollY":I
    const/4 v2, 0x0

    .line 2990
    .local v2, "handled":Z
    iget v6, v5, Landroid/graphics/Rect;->left:I

    iget v9, v0, Landroid/graphics/Rect;->left:I

    if-gt v6, v9, :cond_0

    iget v6, v5, Landroid/graphics/Rect;->top:I

    iget v9, v0, Landroid/graphics/Rect;->top:I

    if-gt v6, v9, :cond_0

    iget v6, v5, Landroid/graphics/Rect;->right:I

    iget v9, v0, Landroid/graphics/Rect;->right:I

    if-gt v6, v9, :cond_0

    iget v6, v5, Landroid/graphics/Rect;->bottom:I

    iget v9, v0, Landroid/graphics/Rect;->bottom:I

    if-le v6, v9, :cond_4

    .line 2996
    :cond_0
    iget v4, p0, Landroid/view/ViewRootImpl;->mScrollY:I

    .line 3003
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v1

    .line 3007
    .local v1, "focus":Landroid/view/View;
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v6, v6, Landroid/view/View$AttachInfo;->mHasWindowFocus:Z

    if-nez v6, :cond_1

    .line 3008
    if-eqz v1, :cond_1

    instance-of v6, v1, Landroid/widget/EditText;

    if-eqz v6, :cond_1

    move v6, v7

    .line 3110
    .end local v1    # "focus":Landroid/view/View;
    :goto_0
    return v6

    .line 3015
    .restart local v1    # "focus":Landroid/view/View;
    :cond_1
    if-nez v1, :cond_2

    move v6, v7

    .line 3016
    goto :goto_0

    .line 3018
    :cond_2
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mLastScrolledFocus:Ljava/lang/ref/WeakReference;

    if-eqz v6, :cond_8

    iget-object v6, p0, Landroid/view/ViewRootImpl;->mLastScrolledFocus:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    move-object v3, v6

    .line 3019
    .local v3, "lastScrolledFocus":Landroid/view/View;
    :goto_1
    if-eq v1, v3, :cond_3

    .line 3023
    const/4 p1, 0x0

    .line 3028
    :cond_3
    if-ne v1, v3, :cond_9

    iget-boolean v6, p0, Landroid/view/ViewRootImpl;->mScrollMayChange:Z

    if-nez v6, :cond_9

    if-nez p1, :cond_9

    .line 3096
    .end local v1    # "focus":Landroid/view/View;
    .end local v3    # "lastScrolledFocus":Landroid/view/View;
    :cond_4
    :goto_2
    iget v6, p0, Landroid/view/ViewRootImpl;->mScrollY:I

    if-eq v4, v6, :cond_7

    .line 3099
    if-nez p2, :cond_f

    iget-object v6, p0, Landroid/view/ViewRootImpl;->mResizeBuffer:Landroid/view/HardwareLayer;

    if-nez v6, :cond_f

    .line 3100
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    if-nez v6, :cond_5

    .line 3101
    new-instance v6, Landroid/widget/Scroller;

    iget-object v8, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v6, v8}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    .line 3103
    :cond_5
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    iget v8, p0, Landroid/view/ViewRootImpl;->mScrollY:I

    iget v9, p0, Landroid/view/ViewRootImpl;->mScrollY:I

    sub-int v9, v4, v9

    invoke-virtual {v6, v7, v8, v7, v9}, Landroid/widget/Scroller;->startScroll(IIII)V

    .line 3107
    :cond_6
    :goto_3
    iput v4, p0, Landroid/view/ViewRootImpl;->mScrollY:I

    :cond_7
    move v6, v2

    .line 3110
    goto :goto_0

    .restart local v1    # "focus":Landroid/view/View;
    :cond_8
    move-object v3, v8

    .line 3018
    goto :goto_1

    .line 3038
    .restart local v3    # "lastScrolledFocus":Landroid/view/View;
    :cond_9
    new-instance v6, Ljava/lang/ref/WeakReference;

    invoke-direct {v6, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v6, p0, Landroid/view/ViewRootImpl;->mLastScrolledFocus:Ljava/lang/ref/WeakReference;

    .line 3039
    iput-boolean v7, p0, Landroid/view/ViewRootImpl;->mScrollMayChange:Z

    .line 3042
    const/4 v4, 0x0

    .line 3045
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mVisRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v6, v8}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 3050
    if-nez p1, :cond_c

    .line 3051
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v6}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 3054
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    instance-of v6, v6, Landroid/view/ViewGroup;

    if-eqz v6, :cond_a

    .line 3055
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    check-cast v6, Landroid/view/ViewGroup;

    iget-object v8, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v1, v8}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 3069
    :cond_a
    :goto_4
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    iget-object v8, p0, Landroid/view/ViewRootImpl;->mVisRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v8}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 3073
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    iget-object v8, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v8

    iget v9, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v9

    iget v9, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v9

    if-le v6, v8, :cond_d

    .line 3090
    :cond_b
    :goto_5
    const/4 v2, 0x1

    goto :goto_2

    .line 3063
    :cond_c
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v6, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_4

    .line 3079
    :cond_d
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v4

    iget v8, v5, Landroid/graphics/Rect;->top:I

    if-ge v6, v8, :cond_e

    .line 3080
    iget v6, v5, Landroid/graphics/Rect;->top:I

    iget-object v8, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v4

    sub-int/2addr v6, v8

    sub-int/2addr v4, v6

    goto :goto_5

    .line 3083
    :cond_e
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v4

    iget-object v8, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v8

    iget v9, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v9

    if-le v6, v8, :cond_b

    .line 3085
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v4

    iget-object v8, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v8

    iget v9, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v9

    sub-int/2addr v6, v8

    add-int/2addr v4, v6

    goto :goto_5

    .line 3104
    .end local v1    # "focus":Landroid/view/View;
    .end local v3    # "lastScrolledFocus":Landroid/view/View;
    :cond_f
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    if-eqz v6, :cond_6

    .line 3105
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->abortAnimation()V

    goto/16 :goto_3
.end method

.method setAccessibilityFocus(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "node"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    const/4 v6, 0x0

    .line 3140
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    if-eqz v4, :cond_1

    .line 3142
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 3143
    .local v1, "focusNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedHost:Landroid/view/View;

    .line 3150
    .local v0, "focusHost":Landroid/view/View;
    iput-object v6, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedHost:Landroid/view/View;

    .line 3151
    iput-object v6, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 3155
    invoke-virtual {v0}, Landroid/view/View;->clearAccessibilityFocusNoCallbacks()V

    .line 3157
    invoke-virtual {v0}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v2

    .line 3158
    .local v2, "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    if-eqz v2, :cond_0

    .line 3160
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInParent(Landroid/graphics/Rect;)V

    .line 3161
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v4}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    .line 3163
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getSourceNodeId()J

    move-result-wide v4

    invoke-static {v4, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v3

    .line 3165
    .local v3, "virtualNodeId":I
    const/16 v4, 0x80

    invoke-virtual {v2, v3, v4, v6}, Landroid/view/accessibility/AccessibilityNodeProvider;->performAction(IILandroid/os/Bundle;)Z

    .line 3168
    .end local v3    # "virtualNodeId":I
    :cond_0
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    .line 3170
    .end local v0    # "focusHost":Landroid/view/View;
    .end local v1    # "focusNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v2    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    :cond_1
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedHost:Landroid/view/View;

    if-eqz v4, :cond_2

    .line 3172
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedHost:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->clearAccessibilityFocusNoCallbacks()V

    .line 3176
    :cond_2
    iput-object p1, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedHost:Landroid/view/View;

    .line 3177
    iput-object p2, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 3179
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    if-eqz v4, :cond_3

    .line 3180
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    invoke-virtual {v4}, Landroid/view/HardwareRenderer;->invalidateRoot()V

    .line 3182
    :cond_3
    return-void
.end method

.method public setCurrentWritingBuddyView(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 7960
    iput-object p1, p0, Landroid/view/ViewRootImpl;->mCurrentWritingBuddyView:Landroid/view/View;

    .line 7961
    return-void
.end method

.method public setDragFocus(Landroid/view/View;)V
    .locals 1
    .param p1, "newDragTarget"    # Landroid/view/View;

    .prologue
    .line 5986
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mCurrentDragView:Landroid/view/View;

    if-eq v0, p1, :cond_0

    .line 5987
    iput-object p1, p0, Landroid/view/ViewRootImpl;->mCurrentDragView:Landroid/view/View;

    .line 5989
    :cond_0
    return-void
.end method

.method public setDrawDuringWindowsAnimating(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 2978
    iput-boolean p1, p0, Landroid/view/ViewRootImpl;->mDrawDuringWindowsAnimating:Z

    .line 2979
    if-eqz p1, :cond_0

    .line 2980
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->handleDispatchDoneAnimating()V

    .line 2982
    :cond_0
    return-void
.end method

.method public setForcePerformDraw(Z)V
    .locals 3
    .param p1, "forceDraw"    # Z

    .prologue
    .line 8110
    const-string v0, "ViewRootImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setForcePerformDraw():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8111
    iput-boolean p1, p0, Landroid/view/ViewRootImpl;->mForceDraw:Z

    .line 8112
    return-void
.end method

.method setLayoutParams(Landroid/view/WindowManager$LayoutParams;Z)V
    .locals 9
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "newView"    # Z

    .prologue
    .line 911
    monitor-enter p0

    .line 912
    :try_start_0
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v6, v6, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v2, v6, Landroid/graphics/Rect;->left:I

    .line 913
    .local v2, "oldInsetLeft":I
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v6, v6, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v4, v6, Landroid/graphics/Rect;->top:I

    .line 914
    .local v4, "oldInsetTop":I
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v6, v6, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v3, v6, Landroid/graphics/Rect;->right:I

    .line 915
    .local v3, "oldInsetRight":I
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v6, v6, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v1, v6, Landroid/graphics/Rect;->bottom:I

    .line 916
    .local v1, "oldInsetBottom":I
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v5, v6, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 919
    .local v5, "oldSoftInputMode":I
    iget v6, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    iput v6, p0, Landroid/view/ViewRootImpl;->mClientWindowLayoutFlags:I

    .line 922
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v0, v6, 0x80

    .line 926
    .local v0, "compatibleWindowFlag":I
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    iput v6, p1, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    .line 927
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    iput v6, p1, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    .line 929
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v6, p1}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    move-result v6

    iput v6, p0, Landroid/view/ViewRootImpl;->mWindowAttributesChangesFlag:I

    .line 930
    iget v6, p0, Landroid/view/ViewRootImpl;->mWindowAttributesChangesFlag:I

    const/high16 v7, 0x80000

    and-int/2addr v6, v7

    if-eqz v6, :cond_0

    .line 933
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v7, 0x1

    iput-boolean v7, v6, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    .line 935
    :cond_0
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v6, v6, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    if-nez v6, :cond_1

    .line 936
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v7, p0, Landroid/view/ViewRootImpl;->mBasePackageName:Ljava/lang/String;

    iput-object v7, v6, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 938
    :cond_1
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v7, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/2addr v7, v0

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 941
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v6, v6, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    invoke-virtual {v6, v2, v4, v3, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 944
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p0, v6}, Landroid/view/ViewRootImpl;->applyKeepScreenOnFlag(Landroid/view/WindowManager$LayoutParams;)V

    .line 946
    if-eqz p2, :cond_2

    .line 947
    iget v6, p1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    iput v6, p0, Landroid/view/ViewRootImpl;->mSoftInputMode:I

    .line 948
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->requestLayout()V

    .line 952
    :cond_2
    iget v6, p1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit16 v6, v6, 0xf0

    if-nez v6, :cond_3

    .line 954
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit16 v7, v7, -0xf1

    and-int/lit16 v8, v5, 0xf0

    or-int/2addr v7, v8

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 959
    :cond_3
    const/4 v6, 0x1

    iput-boolean v6, p0, Landroid/view/ViewRootImpl;->mWindowAttributesChanged:Z

    .line 960
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    .line 961
    monitor-exit p0

    .line 962
    return-void

    .line 961
    .end local v0    # "compatibleWindowFlag":I
    .end local v1    # "oldInsetBottom":I
    .end local v2    # "oldInsetLeft":I
    .end local v3    # "oldInsetRight":I
    .end local v4    # "oldInsetTop":I
    .end local v5    # "oldSoftInputMode":I
    :catchall_0
    move-exception v6

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6
.end method

.method setLocalDragState(Ljava/lang/Object;)V
    .locals 0
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 5797
    iput-object p1, p0, Landroid/view/ViewRootImpl;->mLocalDragState:Ljava/lang/Object;

    .line 5798
    return-void
.end method

.method public setMultiWindowScale(FF)V
    .locals 4
    .param p1, "hScale"    # F
    .param p2, "vScale"    # F

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 7999
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x834

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x836

    if-ne v1, v2, :cond_1

    .line 8018
    :cond_0
    :goto_0
    return-void

    .line 8004
    :cond_1
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mScaleFactor:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    cmpl-float v1, v1, p1

    if-nez v1, :cond_2

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mScaleFactor:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    cmpl-float v1, v1, p2

    if-eqz v1, :cond_0

    .line 8007
    :cond_2
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    .line 8008
    .local v0, "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    const/16 v1, 0x800

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 8010
    :cond_3
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mScaleFactor:Landroid/graphics/PointF;

    iput v3, v1, Landroid/graphics/PointF;->x:F

    .line 8011
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mScaleFactor:Landroid/graphics/PointF;

    iput v3, v1, Landroid/graphics/PointF;->y:F

    goto :goto_0

    .line 8014
    :cond_4
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/ViewRootImpl;->mNewScaleFactorNeeded:Z

    .line 8015
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mScaleFactor:Landroid/graphics/PointF;

    iput p1, v1, Landroid/graphics/PointF;->x:F

    .line 8016
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mScaleFactor:Landroid/graphics/PointF;

    iput p2, v1, Landroid/graphics/PointF;->y:F

    goto :goto_0
.end method

.method setStopped(Z)V
    .locals 1
    .param p1, "stopped"    # Z

    .prologue
    .line 1111
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mStopped:Z

    if-eq v0, p1, :cond_0

    .line 1112
    iput-boolean p1, p0, Landroid/view/ViewRootImpl;->mStopped:Z

    .line 1113
    if-nez p1, :cond_0

    .line 1114
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    .line 1117
    :cond_0
    return-void
.end method

.method setTranscloudFocus(Landroid/view/View;I)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "type"    # I

    .prologue
    .line 3187
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mTranscloudFocusedHost:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 3189
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mTranscloudFocusedHost:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearTranscloudFocusNoCallbacks()V

    .line 3193
    :cond_0
    iput-object p1, p0, Landroid/view/ViewRootImpl;->mTranscloudFocusedHost:Landroid/view/View;

    .line 3194
    iput p2, p0, Landroid/view/ViewRootImpl;->mTranscloudFocusedType:I

    .line 3196
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    if-eqz v0, :cond_1

    .line 3197
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    invoke-virtual {v0}, Landroid/view/HardwareRenderer;->invalidateRoot()V

    .line 3199
    :cond_1
    return-void
.end method

.method public setTransparentRegion(Landroid/graphics/Region;)V
    .locals 2
    .param p1, "region"    # Landroid/graphics/Region;

    .prologue
    .line 8026
    :try_start_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-interface {v0, v1, p1}, Landroid/view/IWindowSession;->setTransparentRegion(Landroid/view/IWindow;Landroid/graphics/Region;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8029
    :goto_0
    return-void

    .line 8027
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setUseGestureDetectorEx(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 8079
    sput-boolean p1, Landroid/view/ViewRootImpl;->mUseGestureDetectorTouchEventEx:Z

    .line 8080
    return-void
.end method

.method public setView(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;Landroid/view/View;)V
    .locals 24
    .param p1, "view"    # Landroid/view/View;
    .param p2, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p3, "panelParentView"    # Landroid/view/View;

    .prologue
    .line 585
    monitor-enter p0

    .line 586
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-nez v4, :cond_12

    .line 587
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .line 589
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    invoke-virtual {v5}, Landroid/view/Display;->getState()I

    move-result v5

    iput v5, v4, Landroid/view/View$AttachInfo;->mDisplayState:I

    .line 590
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v4, v5, v6}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 592
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getRawLayoutDirection()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Landroid/view/ViewRootImpl;->mViewLayoutDirectionInitial:I

    .line 593
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mFallbackEventHandler:Landroid/view/FallbackEventHandler;

    move-object/from16 v0, p1

    invoke-interface {v4, v0}, Landroid/view/FallbackEventHandler;->setView(Landroid/view/View;)V

    .line 594
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 595
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v4, v4, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    if-nez v4, :cond_0

    .line 596
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl;->mBasePackageName:Ljava/lang/String;

    iput-object v5, v4, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 598
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 p2, v0

    .line 600
    move-object/from16 v0, p2

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move-object/from16 v0, p0

    iput v4, v0, Landroid/view/ViewRootImpl;->mClientWindowLayoutFlags:I

    .line 602
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewRootImpl;->setAccessibilityFocus(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 604
    move-object/from16 v0, p1

    instance-of v4, v0, Lcom/android/internal/view/RootViewSurfaceTaker;

    if-eqz v4, :cond_1

    .line 605
    move-object/from16 v0, p1

    check-cast v0, Lcom/android/internal/view/RootViewSurfaceTaker;

    move-object v4, v0

    invoke-interface {v4}, Lcom/android/internal/view/RootViewSurfaceTaker;->willYouTakeTheSurface()Landroid/view/SurfaceHolder$Callback2;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback2;

    .line 607
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback2;

    if-eqz v4, :cond_1

    .line 608
    new-instance v4, Landroid/view/ViewRootImpl$TakenSurfaceHolder;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Landroid/view/ViewRootImpl$TakenSurfaceHolder;-><init>(Landroid/view/ViewRootImpl;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    .line 609
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/internal/view/BaseSurfaceHolder;->setFormat(I)V

    .line 615
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getZ()F

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v0, v4

    move/from16 v21, v0

    .line 616
    .local v21, "surfaceInset":I
    move-object/from16 v0, p2

    iget-object v4, v0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    move/from16 v0, v21

    move/from16 v1, v21

    move/from16 v2, v21

    move/from16 v3, v21

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 618
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mDisplayAdjustments:Landroid/view/DisplayAdjustments;

    invoke-virtual {v4}, Landroid/view/DisplayAdjustments;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v12

    .line 619
    .local v12, "compatibilityInfo":Landroid/content/res/CompatibilityInfo;
    invoke-virtual {v12}, Landroid/content/res/CompatibilityInfo;->getTranslator()Landroid/content/res/CompatibilityInfo$Translator;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    .line 620
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mDisplayAdjustments:Landroid/view/DisplayAdjustments;

    move-object/from16 v0, p2

    iget-object v5, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Landroid/view/DisplayAdjustments;->setActivityToken(Landroid/os/IBinder;)V

    .line 623
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    if-nez v4, :cond_2

    .line 624
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/view/ViewRootImpl;->enableHardwareAcceleration(Landroid/view/WindowManager$LayoutParams;)V

    .line 627
    :cond_2
    const/16 v20, 0x0

    .line 628
    .local v20, "restore":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v4, :cond_3

    .line 629
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    invoke-virtual {v4, v5}, Landroid/view/Surface;->setCompatibilityTranslator(Landroid/content/res/CompatibilityInfo$Translator;)V

    .line 630
    const/16 v20, 0x1

    .line 631
    invoke-virtual/range {p2 .. p2}, Landroid/view/WindowManager$LayoutParams;->backup()V

    .line 632
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Landroid/content/res/CompatibilityInfo$Translator;->translateWindowLayout(Landroid/view/WindowManager$LayoutParams;)V

    .line 636
    :cond_3
    invoke-virtual {v12}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v4

    if-nez v4, :cond_4

    .line 637
    move-object/from16 v0, p2

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit16 v4, v4, 0x80

    move-object/from16 v0, p2

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 638
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mLastInCompatMode:Z

    .line 641
    :cond_4
    move-object/from16 v0, p2

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    move-object/from16 v0, p0

    iput v4, v0, Landroid/view/ViewRootImpl;->mSoftInputMode:I

    .line 642
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mWindowAttributesChanged:Z

    .line 643
    const/4 v4, -0x1

    move-object/from16 v0, p0

    iput v4, v0, Landroid/view/ViewRootImpl;->mWindowAttributesChangesFlag:I

    .line 644
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v0, p1

    iput-object v0, v4, Landroid/view/View$AttachInfo;->mRootView:Landroid/view/View;

    .line 645
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v4, :cond_9

    const/4 v4, 0x1

    :goto_0
    iput-boolean v4, v5, Landroid/view/View$AttachInfo;->mScalingRequired:Z

    .line 646
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-nez v4, :cond_a

    const/high16 v4, 0x3f800000    # 1.0f

    :goto_1
    iput v4, v5, Landroid/view/View$AttachInfo;->mApplicationScale:F

    .line 648
    if-eqz p3, :cond_5

    .line 649
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v5

    iput-object v5, v4, Landroid/view/View$AttachInfo;->mPanelParentWindowToken:Landroid/os/IBinder;

    .line 652
    :cond_5
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mAdded:Z

    .line 658
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->requestLayout()V

    .line 659
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    and-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_6

    .line 661
    new-instance v4, Landroid/view/InputChannel;

    invoke-direct {v4}, Landroid/view/InputChannel;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/view/ViewRootImpl;->mInputChannel:Landroid/view/InputChannel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 664
    :cond_6
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    move-object/from16 v0, p0

    iput v4, v0, Landroid/view/ViewRootImpl;->mOrigWindowType:I

    .line 665
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    .line 666
    invoke-direct/range {p0 .. p0}, Landroid/view/ViewRootImpl;->collectViewAttributes()Z

    .line 667
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    move-object/from16 v0, p0

    iget v6, v0, Landroid/view/ViewRootImpl;->mSeq:I

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->getHostVisibility()I

    move-result v8

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    invoke-virtual {v9}, Landroid/view/Display;->getDisplayId()I

    move-result v9

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v10, v10, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/view/ViewRootImpl;->mInputChannel:Landroid/view/InputChannel;

    invoke-interface/range {v4 .. v11}, Landroid/view/IWindowSession;->addToDisplay(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IILandroid/graphics/Rect;Landroid/view/InputChannel;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v19

    .line 680
    .local v19, "res":I
    if-eqz v20, :cond_7

    .line 681
    :try_start_2
    invoke-virtual/range {p2 .. p2}, Landroid/view/WindowManager$LayoutParams;->restore()V

    .line 685
    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v4, :cond_8

    .line 686
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v5, v5, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWindow(Landroid/graphics/Rect;)V

    .line 688
    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingOverscanInsets:Landroid/graphics/Rect;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 689
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingContentInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v5, v5, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 690
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingStableInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v5, v5, Landroid/view/View$AttachInfo;->mStableInsets:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 691
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingVisibleInsets:Landroid/graphics/Rect;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 693
    if-gez v19, :cond_c

    .line 694
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v5, 0x0

    iput-object v5, v4, Landroid/view/View$AttachInfo;->mRootView:Landroid/view/View;

    .line 695
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mAdded:Z

    .line 696
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mFallbackEventHandler:Landroid/view/FallbackEventHandler;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Landroid/view/FallbackEventHandler;->setView(Landroid/view/View;)V

    .line 697
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->unscheduleTraversals()V

    .line 698
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewRootImpl;->setAccessibilityFocus(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 699
    packed-switch v19, :pswitch_data_0

    .line 734
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to add window -- unknown error code "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 786
    .end local v12    # "compatibilityInfo":Landroid/content/res/CompatibilityInfo;
    .end local v19    # "res":I
    .end local v20    # "restore":Z
    .end local v21    # "surfaceInset":I
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 645
    .restart local v12    # "compatibilityInfo":Landroid/content/res/CompatibilityInfo;
    .restart local v20    # "restore":Z
    .restart local v21    # "surfaceInset":I
    :cond_9
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 646
    :cond_a
    :try_start_3
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    iget v4, v4, Landroid/content/res/CompatibilityInfo$Translator;->applicationScale:F
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    .line 670
    :catch_0
    move-exception v14

    .line 671
    .local v14, "e":Landroid/os/RemoteException;
    const/4 v4, 0x0

    :try_start_4
    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mAdded:Z

    .line 672
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .line 673
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v5, 0x0

    iput-object v5, v4, Landroid/view/View$AttachInfo;->mRootView:Landroid/view/View;

    .line 674
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/view/ViewRootImpl;->mInputChannel:Landroid/view/InputChannel;

    .line 675
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mFallbackEventHandler:Landroid/view/FallbackEventHandler;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Landroid/view/FallbackEventHandler;->setView(Landroid/view/View;)V

    .line 676
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->unscheduleTraversals()V

    .line 677
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewRootImpl;->setAccessibilityFocus(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 678
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Adding window failed"

    invoke-direct {v4, v5, v14}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 680
    .end local v14    # "e":Landroid/os/RemoteException;
    :catchall_1
    move-exception v4

    if-eqz v20, :cond_b

    .line 681
    :try_start_5
    invoke-virtual/range {p2 .. p2}, Landroid/view/WindowManager$LayoutParams;->restore()V

    :cond_b
    throw v4

    .line 702
    .restart local v19    # "res":I
    :pswitch_0
    new-instance v4, Landroid/view/WindowManager$BadTokenException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to add window -- token "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    iget-object v6, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is not valid; is your activity running?"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/view/WindowManager$BadTokenException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 706
    :pswitch_1
    new-instance v4, Landroid/view/WindowManager$BadTokenException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to add window -- token "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    iget-object v6, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is not for an application"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/view/WindowManager$BadTokenException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 710
    :pswitch_2
    new-instance v4, Landroid/view/WindowManager$BadTokenException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to add window -- app for token "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    iget-object v6, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is exiting"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/view/WindowManager$BadTokenException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 714
    :pswitch_3
    new-instance v4, Landroid/view/WindowManager$BadTokenException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to add window -- window "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " has already been added"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/view/WindowManager$BadTokenException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 720
    :pswitch_4
    monitor-exit p0

    .line 787
    .end local v12    # "compatibilityInfo":Landroid/content/res/CompatibilityInfo;
    .end local v19    # "res":I
    .end local v20    # "restore":Z
    .end local v21    # "surfaceInset":I
    :goto_2
    return-void

    .line 722
    .restart local v12    # "compatibilityInfo":Landroid/content/res/CompatibilityInfo;
    .restart local v19    # "res":I
    .restart local v20    # "restore":Z
    .restart local v21    # "surfaceInset":I
    :pswitch_5
    new-instance v4, Landroid/view/WindowManager$BadTokenException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to add window "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " -- another window of this type already exists"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/view/WindowManager$BadTokenException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 726
    :pswitch_6
    new-instance v4, Landroid/view/WindowManager$BadTokenException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to add window "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " -- permission denied for this window type"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/view/WindowManager$BadTokenException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 730
    :pswitch_7
    new-instance v4, Landroid/view/WindowManager$InvalidDisplayException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to add window "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " -- the specified display can not be found"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/view/WindowManager$InvalidDisplayException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 738
    :cond_c
    move-object/from16 v0, p1

    instance-of v4, v0, Lcom/android/internal/view/RootViewSurfaceTaker;

    if-eqz v4, :cond_d

    .line 739
    move-object/from16 v0, p1

    check-cast v0, Lcom/android/internal/view/RootViewSurfaceTaker;

    move-object v4, v0

    invoke-interface {v4}, Lcom/android/internal/view/RootViewSurfaceTaker;->willYouTakeTheInputQueue()Landroid/view/InputQueue$Callback;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/view/ViewRootImpl;->mInputQueueCallback:Landroid/view/InputQueue$Callback;

    .line 742
    :cond_d
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mInputChannel:Landroid/view/InputChannel;

    if-eqz v4, :cond_f

    .line 743
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mInputQueueCallback:Landroid/view/InputQueue$Callback;

    if-eqz v4, :cond_e

    .line 744
    new-instance v4, Landroid/view/InputQueue;

    invoke-direct {v4}, Landroid/view/InputQueue;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/view/ViewRootImpl;->mInputQueue:Landroid/view/InputQueue;

    .line 745
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mInputQueueCallback:Landroid/view/InputQueue$Callback;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl;->mInputQueue:Landroid/view/InputQueue;

    invoke-interface {v4, v5}, Landroid/view/InputQueue$Callback;->onInputQueueCreated(Landroid/view/InputQueue;)V

    .line 747
    :cond_e
    new-instance v4, Landroid/view/ViewRootImpl$WindowInputEventReceiver;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl;->mInputChannel:Landroid/view/InputChannel;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5, v6}, Landroid/view/ViewRootImpl$WindowInputEventReceiver;-><init>(Landroid/view/ViewRootImpl;Landroid/view/InputChannel;Landroid/os/Looper;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/view/ViewRootImpl;->mInputEventReceiver:Landroid/view/ViewRootImpl$WindowInputEventReceiver;

    .line 751
    :cond_f
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->assignParent(Landroid/view/ViewParent;)V

    .line 752
    and-int/lit8 v4, v19, 0x1

    if-eqz v4, :cond_13

    const/4 v4, 0x1

    :goto_3
    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mAddedTouchMode:Z

    .line 753
    and-int/lit8 v4, v19, 0x2

    if-eqz v4, :cond_14

    const/4 v4, 0x1

    :goto_4
    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mAppVisible:Z

    .line 755
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_10

    .line 756
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAccessibilityInteractionConnectionManager:Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;

    invoke-virtual {v4}, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;->ensureConnection()V

    .line 759
    :cond_10
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v4

    if-nez v4, :cond_11

    .line 760
    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 764
    :cond_11
    invoke-virtual/range {p2 .. p2}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v13

    .line 765
    .local v13, "counterSuffix":Ljava/lang/CharSequence;
    new-instance v4, Landroid/view/ViewRootImpl$SyntheticInputStage;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Landroid/view/ViewRootImpl$SyntheticInputStage;-><init>(Landroid/view/ViewRootImpl;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/view/ViewRootImpl;->mSyntheticInputStage:Landroid/view/ViewRootImpl$InputStage;

    .line 766
    new-instance v22, Landroid/view/ViewRootImpl$ViewPostImeInputStage;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSyntheticInputStage:Landroid/view/ViewRootImpl$InputStage;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4}, Landroid/view/ViewRootImpl$ViewPostImeInputStage;-><init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$InputStage;)V

    .line 767
    .local v22, "viewPostImeStage":Landroid/view/ViewRootImpl$InputStage;
    new-instance v17, Landroid/view/ViewRootImpl$NativePostImeInputStage;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "aq:native-post-ime:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2, v4}, Landroid/view/ViewRootImpl$NativePostImeInputStage;-><init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$InputStage;Ljava/lang/String;)V

    .line 769
    .local v17, "nativePostImeStage":Landroid/view/ViewRootImpl$InputStage;
    new-instance v15, Landroid/view/ViewRootImpl$EarlyPostImeInputStage;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v15, v0, v1}, Landroid/view/ViewRootImpl$EarlyPostImeInputStage;-><init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$InputStage;)V

    .line 770
    .local v15, "earlyPostImeStage":Landroid/view/ViewRootImpl$InputStage;
    new-instance v16, Landroid/view/ViewRootImpl$ImeInputStage;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "aq:ime:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v15, v4}, Landroid/view/ViewRootImpl$ImeInputStage;-><init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$InputStage;Ljava/lang/String;)V

    .line 772
    .local v16, "imeStage":Landroid/view/ViewRootImpl$InputStage;
    new-instance v23, Landroid/view/ViewRootImpl$ViewPreImeInputStage;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Landroid/view/ViewRootImpl$ViewPreImeInputStage;-><init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$InputStage;)V

    .line 773
    .local v23, "viewPreImeStage":Landroid/view/ViewRootImpl$InputStage;
    new-instance v18, Landroid/view/ViewRootImpl$NativePreImeInputStage;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "aq:native-pre-ime:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2, v4}, Landroid/view/ViewRootImpl$NativePreImeInputStage;-><init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$InputStage;Ljava/lang/String;)V

    .line 776
    .local v18, "nativePreImeStage":Landroid/view/ViewRootImpl$InputStage;
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ViewRootImpl;->mFirstInputStage:Landroid/view/ViewRootImpl$InputStage;

    .line 777
    move-object/from16 v0, p0

    iput-object v15, v0, Landroid/view/ViewRootImpl;->mFirstPostImeInputStage:Landroid/view/ViewRootImpl$InputStage;

    .line 778
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "aq:pending:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/view/ViewRootImpl;->mPendingInputEventQueueLengthCounterName:Ljava/lang/String;

    .line 786
    .end local v12    # "compatibilityInfo":Landroid/content/res/CompatibilityInfo;
    .end local v13    # "counterSuffix":Ljava/lang/CharSequence;
    .end local v15    # "earlyPostImeStage":Landroid/view/ViewRootImpl$InputStage;
    .end local v16    # "imeStage":Landroid/view/ViewRootImpl$InputStage;
    .end local v17    # "nativePostImeStage":Landroid/view/ViewRootImpl$InputStage;
    .end local v18    # "nativePreImeStage":Landroid/view/ViewRootImpl$InputStage;
    .end local v19    # "res":I
    .end local v20    # "restore":Z
    .end local v21    # "surfaceInset":I
    .end local v22    # "viewPostImeStage":Landroid/view/ViewRootImpl$InputStage;
    .end local v23    # "viewPreImeStage":Landroid/view/ViewRootImpl$InputStage;
    :cond_12
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_2

    .line 752
    .restart local v12    # "compatibilityInfo":Landroid/content/res/CompatibilityInfo;
    .restart local v19    # "res":I
    .restart local v20    # "restore":Z
    .restart local v21    # "surfaceInset":I
    :cond_13
    const/4 v4, 0x0

    goto/16 :goto_3

    .line 753
    :cond_14
    const/4 v4, 0x0

    goto/16 :goto_4

    .line 699
    :pswitch_data_0
    .packed-switch -0x9
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public showContextMenuForChild(Landroid/view/View;)Z
    .locals 1
    .param p1, "originalView"    # Landroid/view/View;

    .prologue
    .line 7028
    const/4 v0, 0x0

    return v0
.end method

.method public startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1
    .param p1, "originalView"    # Landroid/view/View;
    .param p2, "callback"    # Landroid/view/ActionMode$Callback;

    .prologue
    .line 7033
    const/4 v0, 0x0

    return-object v0
.end method

.method public synthesizeInputEvent(Landroid/view/InputEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/view/InputEvent;

    .prologue
    .line 6883
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v2, 0x19

    invoke-virtual {v1, v2, p1}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 6884
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 6885
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    .line 6886
    return-void
.end method

.method transformMatrixToGlobal(Landroid/graphics/Matrix;)V
    .locals 2
    .param p1, "m"    # Landroid/graphics/Matrix;

    .prologue
    .line 1358
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v0, v0, Landroid/view/View$AttachInfo;->mWindowLeft:I

    int-to-float v0, v0

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v1, v1, Landroid/view/View$AttachInfo;->mWindowTop:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 1359
    return-void
.end method

.method transformMatrixToLocal(Landroid/graphics/Matrix;)V
    .locals 2
    .param p1, "m"    # Landroid/graphics/Matrix;

    .prologue
    .line 1368
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v0, v0, Landroid/view/View$AttachInfo;->mWindowLeft:I

    neg-int v0, v0

    int-to-float v0, v0

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v1, v1, Landroid/view/View$AttachInfo;->mWindowTop:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1369
    return-void
.end method

.method public twProcessTwToolBox(Landroid/view/MotionEvent;I)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "action"    # I

    .prologue
    const/4 v3, 0x0

    .line 3844
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v4

    const/high16 v5, 0x20000000

    and-int/2addr v4, v5

    if-eqz v4, :cond_0

    move v0, v3

    .line 3860
    :goto_0
    return v0

    .line 3848
    :cond_0
    if-nez p2, :cond_3

    .line 3849
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mToolBoxManager:Lcom/samsung/android/toolbox/TwToolBoxManager;

    if-nez v3, :cond_1

    new-instance v3, Lcom/samsung/android/toolbox/TwToolBoxManager;

    iget-object v4, p0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/samsung/android/toolbox/TwToolBoxManager;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Landroid/view/ViewRootImpl;->mToolBoxManager:Lcom/samsung/android/toolbox/TwToolBoxManager;

    .line 3850
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    float-to-int v1, v3

    .line 3851
    .local v1, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    float-to-int v2, v3

    .line 3852
    .local v2, "y":I
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mToolBoxManager:Lcom/samsung/android/toolbox/TwToolBoxManager;

    invoke-virtual {v3, v1, v2}, Lcom/samsung/android/toolbox/TwToolBoxManager;->isContain(II)Z

    move-result v3

    iput-boolean v3, p0, Landroid/view/ViewRootImpl;->mTwToolBoxTracking:Z

    .line 3860
    .end local v1    # "x":I
    .end local v2    # "y":I
    :cond_2
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mTwToolBoxTracking:Z

    goto :goto_0

    .line 3854
    :cond_3
    const/4 v4, 0x1

    if-eq p2, v4, :cond_4

    const/4 v4, 0x3

    if-ne p2, v4, :cond_2

    .line 3855
    :cond_4
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mTwToolBoxTracking:Z

    .line 3856
    .local v0, "tracking":Z
    iput-boolean v3, p0, Landroid/view/ViewRootImpl;->mTwToolBoxTracking:Z

    goto :goto_0
.end method

.method public twUpdateToolBox()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3867
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "toolbox_onoff"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mUseFloatingToolBox:Z

    .line 3870
    return-void

    :cond_0
    move v0, v1

    .line 3867
    goto :goto_0
.end method

.method unscheduleConsumeBatchedInput()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 6669
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mConsumeBatchedInputScheduled:Z

    if-eqz v0, :cond_0

    .line 6670
    iput-boolean v3, p0, Landroid/view/ViewRootImpl;->mConsumeBatchedInputScheduled:Z

    .line 6671
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mConsumedBatchedInputRunnable:Landroid/view/ViewRootImpl$ConsumeBatchedInputRunnable;

    const/4 v2, 0x0

    invoke-virtual {v0, v3, v1, v2}, Landroid/view/Choreographer;->removeCallbacks(ILjava/lang/Runnable;Ljava/lang/Object;)V

    .line 6674
    :cond_0
    return-void
.end method

.method unscheduleTraversals()V
    .locals 4

    .prologue
    .line 1202
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mTraversalScheduled:Z

    if-eqz v0, :cond_0

    .line 1203
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mTraversalScheduled:Z

    .line 1204
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iget v1, p0, Landroid/view/ViewRootImpl;->mTraversalBarrier:I

    invoke-virtual {v0, v1}, Landroid/os/Looper;->removeSyncBarrier(I)V

    .line 1205
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    const/4 v1, 0x2

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mTraversalRunnable:Landroid/view/ViewRootImpl$TraversalRunnable;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/Choreographer;->removeCallbacks(ILjava/lang/Runnable;Ljava/lang/Object;)V

    .line 1208
    :cond_0
    return-void
.end method

.method updateConfiguration(Landroid/content/res/Configuration;Z)V
    .locals 10
    .param p1, "config"    # Landroid/content/res/Configuration;
    .param p2, "force"    # Z

    .prologue
    const/4 v9, 0x1

    const/high16 v8, 0x3f800000    # 1.0f

    .line 3319
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mDisplayAdjustments:Landroid/view/DisplayAdjustments;

    invoke-virtual {v6}, Landroid/view/DisplayAdjustments;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v0

    .line 3320
    .local v0, "ci":Landroid/content/res/CompatibilityInfo;
    sget-object v6, Landroid/content/res/CompatibilityInfo;->DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {v0, v6}, Landroid/content/res/CompatibilityInfo;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 3321
    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 3322
    .end local p1    # "config":Landroid/content/res/Configuration;
    .local v1, "config":Landroid/content/res/Configuration;
    iget v6, p0, Landroid/view/ViewRootImpl;->mNoncompatDensity:I

    invoke-virtual {v0, v6, v1}, Landroid/content/res/CompatibilityInfo;->applyToConfiguration(ILandroid/content/res/Configuration;)V

    move-object p1, v1

    .line 3325
    .end local v1    # "config":Landroid/content/res/Configuration;
    .restart local p1    # "config":Landroid/content/res/Configuration;
    :cond_0
    sget-object v7, Landroid/view/ViewRootImpl;->sConfigCallbacks:Ljava/util/ArrayList;

    monitor-enter v7

    .line 3326
    :try_start_0
    sget-object v6, Landroid/view/ViewRootImpl;->sConfigCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v4, v6, -0x1

    .local v4, "i":I
    :goto_0
    if-ltz v4, :cond_1

    .line 3327
    sget-object v6, Landroid/view/ViewRootImpl;->sConfigCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ComponentCallbacks;

    invoke-interface {v6, p1}, Landroid/content/ComponentCallbacks;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 3326
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 3329
    :cond_1
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3330
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v6, :cond_7

    .line 3334
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    .line 3337
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mLastConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v6, p1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v3

    .line 3338
    .local v3, "diff":I
    and-int/lit16 v6, v3, 0x80

    if-eqz v6, :cond_2

    iput-boolean v9, p0, Landroid/view/ViewRootImpl;->mOrientationChanged:Z

    .line 3339
    :cond_2
    and-int/lit16 v6, v3, 0x80

    if-eqz v6, :cond_4

    iget-object v6, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    and-int/lit8 v6, v6, 0x10

    if-eqz v6, :cond_4

    iget-object v6, p0, Landroid/view/ViewRootImpl;->mScaleFactor:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    cmpg-float v6, v6, v8

    if-ltz v6, :cond_3

    iget-object v6, p0, Landroid/view/ViewRootImpl;->mScaleFactor:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    cmpg-float v6, v6, v8

    if-gez v6, :cond_4

    .line 3342
    :cond_3
    iput-boolean v9, p0, Landroid/view/ViewRootImpl;->mNewScaleFactorNeeded:Z

    .line 3346
    :cond_4
    if-nez p2, :cond_5

    iget-object v6, p0, Landroid/view/ViewRootImpl;->mLastConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v6, p1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v6

    if-eqz v6, :cond_7

    .line 3347
    :cond_5
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mLastConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v6}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v5

    .line 3348
    .local v5, "lastLayoutDirection":I
    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v2

    .line 3349
    .local v2, "currentLayoutDirection":I
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mLastConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v6, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 3350
    if-eq v5, v2, :cond_6

    iget v6, p0, Landroid/view/ViewRootImpl;->mViewLayoutDirectionInitial:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_6

    .line 3352
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v6, v2}, Landroid/view/View;->setLayoutDirection(I)V

    .line 3354
    :cond_6
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v6, p1}, Landroid/view/View;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 3357
    .end local v2    # "currentLayoutDirection":I
    .end local v3    # "diff":I
    .end local v5    # "lastLayoutDirection":I
    :cond_7
    return-void

    .line 3329
    .end local v4    # "i":I
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6
.end method

.method public windowFocusChanged(ZZ)V
    .locals 4
    .param p1, "hasFocus"    # Z
    .param p2, "inTouchMode"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 6919
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 6920
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x6

    iput v1, v0, Landroid/os/Message;->what:I

    .line 6921
    if-eqz p1, :cond_0

    move v1, v2

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 6922
    if-eqz p2, :cond_1

    :goto_1
    iput v2, v0, Landroid/os/Message;->arg2:I

    .line 6923
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    .line 6924
    return-void

    :cond_0
    move v1, v3

    .line 6921
    goto :goto_0

    :cond_1
    move v2, v3

    .line 6922
    goto :goto_1
.end method
