.class public abstract Landroid/widget/AbsHorizontalListView;
.super Landroid/widget/AdapterView;
.source "AbsHorizontalListView.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;
.implements Landroid/widget/Filter$FilterListener;
.implements Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/AbsHorizontalListView$HoverScrollHandler;,
        Landroid/widget/AbsHorizontalListView$RecycleBin;,
        Landroid/widget/AbsHorizontalListView$RecyclerListener;,
        Landroid/widget/AbsHorizontalListView$LayoutParams;,
        Landroid/widget/AbsHorizontalListView$MultiChoiceModeWrapper;,
        Landroid/widget/AbsHorizontalListView$MultiChoiceModeListener;,
        Landroid/widget/AbsHorizontalListView$AdapterDataSetObserver;,
        Landroid/widget/AbsHorizontalListView$TwSmoothScrollByMove;,
        Landroid/widget/AbsHorizontalListView$PositionScroller;,
        Landroid/widget/AbsHorizontalListView$FlingRunnable;,
        Landroid/widget/AbsHorizontalListView$CheckForTap;,
        Landroid/widget/AbsHorizontalListView$CheckForKeyLongPress;,
        Landroid/widget/AbsHorizontalListView$CheckForLongPress;,
        Landroid/widget/AbsHorizontalListView$PerformClick;,
        Landroid/widget/AbsHorizontalListView$WindowRunnnable;,
        Landroid/widget/AbsHorizontalListView$ListItemAccessibilityDelegate;,
        Landroid/widget/AbsHorizontalListView$SavedState;,
        Landroid/widget/AbsHorizontalListView$SelectionBoundsAdjuster;,
        Landroid/widget/AbsHorizontalListView$OnScrollListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/AdapterView",
        "<",
        "Landroid/widget/ListAdapter;",
        ">;",
        "Landroid/text/TextWatcher;",
        "Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;",
        "Landroid/widget/Filter$FilterListener;",
        "Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;",
        "Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;"
    }
.end annotation


# static fields
.field private static final CHECK_POSITION_SEARCH_DISTANCE:I = 0x14

.field public static final CHOICE_MODE_MULTIPLE:I = 0x2

.field public static final CHOICE_MODE_MULTIPLE_MODAL:I = 0x3

.field public static final CHOICE_MODE_NONE:I = 0x0

.field public static final CHOICE_MODE_SINGLE:I = 0x1

.field private static final DRAGSCROLL_WORKING_ZONE_DP:I = 0x19

.field private static final HOVERSCROLL_LEFT:I = 0x1

.field private static final HOVERSCROLL_MOVE:I = 0x1

.field private static final HOVERSCROLL_RIGHT:I = 0x2

.field private static final INVALID_POINTER:I = -0x1

.field static final LAYOUT_FORCE_BOTTOM:I = 0x3

.field static final LAYOUT_FORCE_TOP:I = 0x1

.field static final LAYOUT_MOVE_SELECTION:I = 0x6

.field static final LAYOUT_NORMAL:I = 0x0

.field static final LAYOUT_SET_SELECTION:I = 0x2

.field static final LAYOUT_SPECIFIC:I = 0x4

.field static final LAYOUT_SYNC:I = 0x5

.field static final OVERSCROLL_LIMIT_DIVISOR:I = 0x3

.field private static final PROFILE_FLINGING:Z = false

.field private static final PROFILE_SCROLLING:Z = false

.field private static final TAG:Ljava/lang/String; = "AbsHorizontalListView"

.field static final TOUCH_MODE_DONE_WAITING:I = 0x2

.field static final TOUCH_MODE_DOWN:I = 0x0

.field static final TOUCH_MODE_FLING:I = 0x4

.field private static final TOUCH_MODE_OFF:I = 0x1

.field private static final TOUCH_MODE_ON:I = 0x0

.field static final TOUCH_MODE_OVERFLING:I = 0x6

.field static final TOUCH_MODE_OVERSCROLL:I = 0x5

.field static final TOUCH_MODE_REST:I = -0x1

.field static final TOUCH_MODE_SCROLL:I = 0x3

.field static final TOUCH_MODE_TAP:I = 0x1

.field private static final TOUCH_MODE_UNKNOWN:I = -0x1

.field public static final TRANSCRIPT_MODE_ALWAYS_SCROLL:I = 0x2

.field public static final TRANSCRIPT_MODE_DISABLED:I = 0x0

.field public static final TRANSCRIPT_MODE_NORMAL:I = 0x1

.field static final sLinearInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field protected AIR_VIEW_WINSET:Z

.field private HOVERSCROLL_DELAY:I

.field private HOVERSCROLL_SPEED:I

.field private USE_SET_INTEGRATOR_HAPTIC:Z

.field private isHoveringUIEnabled:Z

.field private mAccessibilityDelegate:Landroid/widget/AbsHorizontalListView$ListItemAccessibilityDelegate;

.field private mActivePointerId:I

.field mAdapter:Landroid/widget/ListAdapter;

.field mAdapterHasStableIds:Z

.field private mAlwaysDisableHoverHighlight:Z

.field private mAudioManager:Landroid/media/AudioManager;

.field private mCacheColorHint:I

.field mCachingActive:Z

.field mCachingStarted:Z

.field mCheckStates:Landroid/util/SparseBooleanArray;

.field mCheckedIdStates:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mCheckedItemCount:I

.field mChoiceActionMode:Landroid/view/ActionMode;

.field mChoiceMode:I

.field private mClearScrollingCache:Ljava/lang/Runnable;

.field private mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

.field public mCurrentKeyCode:I

.field private mDVFSCookie:I

.field private mDVFSHelper:Landroid/os/DVFSHelper;

.field private mDVFSHelperCore:Landroid/os/DVFSHelper;

.field private mDVFSLockAcquired:Z

.field mDataSetObserver:Landroid/widget/AbsHorizontalListView$AdapterDataSetObserver;

.field private mDefInputConnection:Landroid/view/inputmethod/InputConnection;

.field private mDeferNotifyDataSetChanged:Z

.field private mDensityScale:F

.field private mDirection:I

.field private mDragScrollWorkingZonePx:I

.field mDrawSelectorOnTop:Z

.field private mEdgeGlowLeft:Landroid/widget/EdgeEffect;

.field private mEdgeGlowRight:Landroid/widget/EdgeEffect;

.field mFastScrollAlwaysVisible:Z

.field mFastScrollEnabled:Z

.field private mFastScroller:Landroid/widget/HorizontalFastScroller;

.field private mFiltered:Z

.field private mFirstPositionDistanceGuess:I

.field public mFirstPressedPoint:I

.field private mFlingProfilingStarted:Z

.field private mFlingRunnable:Landroid/widget/AbsHorizontalListView$FlingRunnable;

.field private mFlingStrictSpan:Landroid/os/StrictMode$Span;

.field private mForceTranscriptScroll:Z

.field private mForcedClick:Z

.field private mGlobalLayoutListenerAddedFilter:Z

.field private mGlowPaddingBottom:I

.field private mGlowPaddingTop:I

.field private mHapticOverScroll:Z

.field private mHapticPreDrawListener:Landroid/view/HapticPreDrawListener;

.field private mHasWindowFocusForMotion:Z

.field mHeightMeasureSpec:I

.field public mHoverAreaEnter:Z

.field private mHoverHandler:Landroid/widget/AbsHorizontalListView$HoverScrollHandler;

.field private mHoverLeftAreaWidth:I

.field private mHoverLeftAreaWidth_DP:I

.field private mHoverPosition:I

.field private mHoverRecognitionCurrentTime:I

.field private mHoverRecognitionDurationTime:I

.field private mHoverRecognitionStartTime:I

.field private mHoverRightAreaWidth:I

.field private mHoverRightAreaWidth_DP:I

.field private mHoverScrollDirection:I

.field private mHoverScrollEnable:Z

.field private mHoverScrollSpeed:I

.field private mHoverScrollStartTime:I

.field private mHoverScrollTimeInterval:I

.field private mHoveredOnEllipsizedText:Z

.field private mIsChildViewEnabled:Z

.field private mIsCtrlkeyPressed:Z

.field private mIsDragScrolled:Z

.field private mIsHoverOverscrolled:Z

.field private mIsHoveredByMouse:Z

.field private mIsMultiFocusEnabled:Z

.field private mIsPnePressed:Z

.field final mIsScrap:[Z

.field private mIsShiftkeyPressed:Z

.field private mLastAccessibilityScrollEventFromIndex:I

.field private mLastAccessibilityScrollEventToIndex:I

.field private mLastHandledItemCount:I

.field private mLastPosition:I

.field private mLastPositionDistanceGuess:I

.field private mLastScrollState:I

.field private mLastTouchMode:I

.field mLastX:I

.field mLayoutMode:I

.field mListPadding:Landroid/graphics/Rect;

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field mMotionCorrection:I

.field private mMotionEnable:Z

.field private mMotionListener:Landroid/hardware/motion/MRListener;

.field mMotionPosition:I

.field private mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

.field mMotionViewNewLeft:I

.field mMotionViewOriginalLeft:I

.field mMotionX:I

.field mMotionY:I

.field mMultiChoiceModeCallback:Landroid/widget/AbsHorizontalListView$MultiChoiceModeWrapper;

.field mMultiFocusImage:Landroid/graphics/drawable/Drawable;

.field public mOldAdapterItemCount:I

.field public mOldKeyCode:I

.field private mOnScrollListener:Landroid/widget/AbsHorizontalListView$OnScrollListener;

.field mOverflingDistance:I

.field mOverscrollDistance:I

.field mOverscrollMax:I

.field private final mOwnerThread:Ljava/lang/Thread;

.field private mPendingCheckForKeyLongPress:Landroid/widget/AbsHorizontalListView$CheckForKeyLongPress;

.field private mPendingCheckForLongPress:Landroid/widget/AbsHorizontalListView$CheckForLongPress;

.field private mPendingCheckForTap:Ljava/lang/Runnable;

.field private mPendingSync:Landroid/widget/AbsHorizontalListView$SavedState;

.field private mPerformClick:Landroid/widget/AbsHorizontalListView$PerformClick;

.field private mPointerCount:I

.field mPopup:Landroid/widget/PopupWindow;

.field private mPopupHidden:Z

.field mPositionScrollAfterLayout:Ljava/lang/Runnable;

.field mPositionScroller:Landroid/widget/AbsHorizontalListView$PositionScroller;

.field private mPublicInputConnection:Landroid/view/inputmethod/InputConnectionWrapper;

.field final mRecycler:Landroid/widget/AbsHorizontalListView$RecycleBin;

.field private mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

.field mResurrectToPosition:I

.field mScrollLeft:Landroid/view/View;

.field private mScrollProfilingStarted:Z

.field mScrollRight:Landroid/view/View;

.field private mScrollStrictSpan:Landroid/os/StrictMode$Span;

.field mScrollingCacheEnabled:Z

.field public mSecondPressedPoint:I

.field mSelectedLeft:I

.field mSelectionBottomPadding:I

.field mSelectionLeftPadding:I

.field mSelectionRightPadding:I

.field mSelectionTopPadding:I

.field mSelector:Landroid/graphics/drawable/Drawable;

.field mSelectorPosition:I

.field mSelectorRect:Landroid/graphics/Rect;

.field private mSmoothScrollbarEnabled:Z

.field mStackFromBottom:Z

.field mTextFilter:Landroid/widget/EditText;

.field private mTextFilterEnabled:Z

.field private mTouchFrame:Landroid/graphics/Rect;

.field mTouchMode:I

.field private mTouchModeReset:Ljava/lang/Runnable;

.field private mTouchSlop:I

.field private mTranscriptMode:I

.field public mTwCurrentFocusPosition:I

.field private mTwCustomMultiChoiceMode:Z

.field public mTwPressItemListArray:[I

.field public mTwPressItemListIndex:I

.field private final mTwScrollAmount:I

.field private mTwSmoothScrollByMove:Landroid/widget/AbsHorizontalListView$TwSmoothScrollByMove;

.field private mTwTwScrollRemains:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mVelocityScale:F

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private methodPauseGc:Ljava/lang/reflect/Method;

.field private methodResumeGc:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 808
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Landroid/widget/AbsHorizontalListView;->sLinearInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 989
    invoke-direct {p0, p1}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;)V

    .line 140
    iput-boolean v3, p0, Landroid/widget/AbsHorizontalListView;->mMotionEnable:Z

    .line 141
    iput-boolean v3, p0, Landroid/widget/AbsHorizontalListView;->mHasWindowFocusForMotion:Z

    .line 142
    iput-object v5, p0, Landroid/widget/AbsHorizontalListView;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

    .line 144
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_FRAMEWORK_ENABLE_INTEGRATOR_HAPTIC"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Landroid/widget/AbsHorizontalListView;->USE_SET_INTEGRATOR_HAPTIC:Z

    .line 275
    iput v3, p0, Landroid/widget/AbsHorizontalListView;->mChoiceMode:I

    .line 308
    iput v3, p0, Landroid/widget/AbsHorizontalListView;->mLayoutMode:I

    .line 333
    iput-boolean v3, p0, Landroid/widget/AbsHorizontalListView;->mDeferNotifyDataSetChanged:Z

    .line 338
    iput-boolean v3, p0, Landroid/widget/AbsHorizontalListView;->mDrawSelectorOnTop:Z

    .line 348
    iput v4, p0, Landroid/widget/AbsHorizontalListView;->mSelectorPosition:I

    .line 353
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/widget/AbsHorizontalListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 359
    new-instance v1, Landroid/widget/AbsHorizontalListView$RecycleBin;

    invoke-direct {v1, p0}, Landroid/widget/AbsHorizontalListView$RecycleBin;-><init>(Landroid/widget/AbsHorizontalListView;)V

    iput-object v1, p0, Landroid/widget/AbsHorizontalListView;->mRecycler:Landroid/widget/AbsHorizontalListView$RecycleBin;

    .line 364
    iput v3, p0, Landroid/widget/AbsHorizontalListView;->mSelectionLeftPadding:I

    .line 369
    iput v3, p0, Landroid/widget/AbsHorizontalListView;->mSelectionTopPadding:I

    .line 374
    iput v3, p0, Landroid/widget/AbsHorizontalListView;->mSelectionRightPadding:I

    .line 379
    iput v3, p0, Landroid/widget/AbsHorizontalListView;->mSelectionBottomPadding:I

    .line 384
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    .line 389
    iput v3, p0, Landroid/widget/AbsHorizontalListView;->mHeightMeasureSpec:I

    .line 437
    iput v4, p0, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    .line 468
    iput v3, p0, Landroid/widget/AbsHorizontalListView;->mSelectedLeft:I

    .line 511
    iput-boolean v6, p0, Landroid/widget/AbsHorizontalListView;->mSmoothScrollbarEnabled:Z

    .line 531
    iput v4, p0, Landroid/widget/AbsHorizontalListView;->mResurrectToPosition:I

    .line 533
    iput-object v5, p0, Landroid/widget/AbsHorizontalListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 559
    iput v4, p0, Landroid/widget/AbsHorizontalListView;->mLastTouchMode:I

    .line 562
    iput-boolean v3, p0, Landroid/widget/AbsHorizontalListView;->mScrollProfilingStarted:Z

    .line 565
    iput-boolean v3, p0, Landroid/widget/AbsHorizontalListView;->mFlingProfilingStarted:Z

    .line 573
    iput-object v5, p0, Landroid/widget/AbsHorizontalListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 574
    iput-object v5, p0, Landroid/widget/AbsHorizontalListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 621
    iput v3, p0, Landroid/widget/AbsHorizontalListView;->mLastScrollState:I

    .line 640
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Landroid/widget/AbsHorizontalListView;->mVelocityScale:F

    .line 642
    new-array v1, v6, [Z

    iput-object v1, p0, Landroid/widget/AbsHorizontalListView;->mIsScrap:[Z

    .line 652
    iput v4, p0, Landroid/widget/AbsHorizontalListView;->mActivePointerId:I

    .line 657
    iput v3, p0, Landroid/widget/AbsHorizontalListView;->mPointerCount:I

    .line 664
    iput-boolean v3, p0, Landroid/widget/AbsHorizontalListView;->mHapticOverScroll:Z

    .line 715
    iput v3, p0, Landroid/widget/AbsHorizontalListView;->mDirection:I

    .line 747
    const/16 v1, 0xf

    iput v1, p0, Landroid/widget/AbsHorizontalListView;->mHoverLeftAreaWidth_DP:I

    .line 749
    const/16 v1, 0x19

    iput v1, p0, Landroid/widget/AbsHorizontalListView;->mHoverRightAreaWidth_DP:I

    .line 751
    iput v3, p0, Landroid/widget/AbsHorizontalListView;->mHoverLeftAreaWidth:I

    .line 753
    iput v3, p0, Landroid/widget/AbsHorizontalListView;->mHoverRightAreaWidth:I

    .line 763
    iput v3, p0, Landroid/widget/AbsHorizontalListView;->mHoverRecognitionDurationTime:I

    .line 765
    iput v3, p0, Landroid/widget/AbsHorizontalListView;->mHoverRecognitionCurrentTime:I

    .line 767
    iput v3, p0, Landroid/widget/AbsHorizontalListView;->mHoverRecognitionStartTime:I

    .line 769
    const/16 v1, 0x12c

    iput v1, p0, Landroid/widget/AbsHorizontalListView;->mHoverScrollTimeInterval:I

    .line 771
    iput v3, p0, Landroid/widget/AbsHorizontalListView;->mHoverScrollStartTime:I

    .line 773
    iput v4, p0, Landroid/widget/AbsHorizontalListView;->mHoverScrollDirection:I

    .line 778
    iput-boolean v3, p0, Landroid/widget/AbsHorizontalListView;->mIsHoverOverscrolled:Z

    .line 783
    iput-boolean v6, p0, Landroid/widget/AbsHorizontalListView;->mHoverScrollEnable:Z

    .line 788
    iput-boolean v3, p0, Landroid/widget/AbsHorizontalListView;->mHoverAreaEnter:Z

    .line 793
    const/16 v1, 0xa

    iput v1, p0, Landroid/widget/AbsHorizontalListView;->HOVERSCROLL_SPEED:I

    .line 798
    iput v3, p0, Landroid/widget/AbsHorizontalListView;->HOVERSCROLL_DELAY:I

    .line 803
    iput-boolean v3, p0, Landroid/widget/AbsHorizontalListView;->isHoveringUIEnabled:Z

    .line 826
    iput-boolean v3, p0, Landroid/widget/AbsHorizontalListView;->mTwCustomMultiChoiceMode:Z

    .line 831
    iput-boolean v3, p0, Landroid/widget/AbsHorizontalListView;->mIsCtrlkeyPressed:Z

    .line 836
    iput-boolean v3, p0, Landroid/widget/AbsHorizontalListView;->mIsShiftkeyPressed:Z

    .line 838
    iput-boolean v3, p0, Landroid/widget/AbsHorizontalListView;->mIsMultiFocusEnabled:Z

    .line 843
    iput v3, p0, Landroid/widget/AbsHorizontalListView;->mTwPressItemListIndex:I

    .line 845
    iput v4, p0, Landroid/widget/AbsHorizontalListView;->mFirstPressedPoint:I

    .line 847
    iput v4, p0, Landroid/widget/AbsHorizontalListView;->mSecondPressedPoint:I

    .line 851
    iput v3, p0, Landroid/widget/AbsHorizontalListView;->mOldAdapterItemCount:I

    .line 853
    iput v3, p0, Landroid/widget/AbsHorizontalListView;->mOldKeyCode:I

    .line 855
    iput v3, p0, Landroid/widget/AbsHorizontalListView;->mCurrentKeyCode:I

    .line 857
    iput v4, p0, Landroid/widget/AbsHorizontalListView;->mTwCurrentFocusPosition:I

    .line 925
    iput-object v5, p0, Landroid/widget/AbsHorizontalListView;->mDVFSHelper:Landroid/os/DVFSHelper;

    .line 926
    iput-object v5, p0, Landroid/widget/AbsHorizontalListView;->mDVFSHelperCore:Landroid/os/DVFSHelper;

    .line 927
    iput-boolean v3, p0, Landroid/widget/AbsHorizontalListView;->mDVFSLockAcquired:Z

    .line 928
    iput v3, p0, Landroid/widget/AbsHorizontalListView;->mDVFSCookie:I

    .line 929
    iput-object v5, p0, Landroid/widget/AbsHorizontalListView;->methodPauseGc:Ljava/lang/reflect/Method;

    .line 930
    iput-object v5, p0, Landroid/widget/AbsHorizontalListView;->methodResumeGc:Ljava/lang/reflect/Method;

    .line 982
    iput-boolean v3, p0, Landroid/widget/AbsHorizontalListView;->AIR_VIEW_WINSET:Z

    .line 3362
    iput-boolean v3, p0, Landroid/widget/AbsHorizontalListView;->mForcedClick:Z

    .line 4298
    iput v3, p0, Landroid/widget/AbsHorizontalListView;->mDragScrollWorkingZonePx:I

    .line 4299
    iput-boolean v3, p0, Landroid/widget/AbsHorizontalListView;->mIsDragScrolled:Z

    .line 4906
    iput v4, p0, Landroid/widget/AbsHorizontalListView;->mHoverPosition:I

    .line 4908
    iput-boolean v3, p0, Landroid/widget/AbsHorizontalListView;->mHoveredOnEllipsizedText:Z

    .line 4909
    iput-boolean v3, p0, Landroid/widget/AbsHorizontalListView;->mIsHoveredByMouse:Z

    .line 4910
    iput-boolean v3, p0, Landroid/widget/AbsHorizontalListView;->mAlwaysDisableHoverHighlight:Z

    .line 4911
    iput-boolean v3, p0, Landroid/widget/AbsHorizontalListView;->mIsPnePressed:Z

    .line 6207
    iput-object v5, p0, Landroid/widget/AbsHorizontalListView;->mTwSmoothScrollByMove:Landroid/widget/AbsHorizontalListView$TwSmoothScrollByMove;

    .line 6208
    iput-object v5, p0, Landroid/widget/AbsHorizontalListView;->mTwTwScrollRemains:Ljava/util/LinkedList;

    .line 6209
    const/16 v1, 0x1f4

    iput v1, p0, Landroid/widget/AbsHorizontalListView;->mTwScrollAmount:I

    .line 8286
    new-instance v1, Landroid/widget/AbsHorizontalListView$6;

    invoke-direct {v1, p0}, Landroid/widget/AbsHorizontalListView$6;-><init>(Landroid/widget/AbsHorizontalListView;)V

    iput-object v1, p0, Landroid/widget/AbsHorizontalListView;->mMotionListener:Landroid/hardware/motion/MRListener;

    .line 8355
    iput v3, p0, Landroid/widget/AbsHorizontalListView;->mHoverScrollSpeed:I

    .line 990
    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->initAbsListView()V

    .line 992
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/AbsHorizontalListView;->mOwnerThread:Ljava/lang/Thread;

    .line 994
    invoke-virtual {p0, v6}, Landroid/widget/AbsHorizontalListView;->setHorizontalScrollBarEnabled(Z)V

    .line 995
    sget-object v1, Lcom/android/internal/R$styleable;->View:[I

    invoke-virtual {p1, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 996
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {p0, v0}, Landroid/widget/AbsHorizontalListView;->initializeScrollbars(Landroid/content/res/TypedArray;)V

    .line 997
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1002
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-nez v1, :cond_0

    .line 1003
    const-string v1, "AbsHorizontalListView"

    const-string v2, "Get MotionRecognitionManager"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1004
    const-string/jumbo v1, "motion_recognition"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/motion/MotionRecognitionManager;

    iput-object v1, p0, Landroid/widget/AbsHorizontalListView;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

    .line 1008
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.sec.feature.hovering_ui"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Landroid/widget/AbsHorizontalListView;->isHoveringUIEnabled:Z

    .line 1009
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 1012
    const v0, 0x101006a

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/AbsHorizontalListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1013
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 1016
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 140
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/AbsHorizontalListView;->mMotionEnable:Z

    .line 141
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/AbsHorizontalListView;->mHasWindowFocusForMotion:Z

    .line 142
    const/4 v9, 0x0

    iput-object v9, p0, Landroid/widget/AbsHorizontalListView;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

    .line 144
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v9

    const-string v10, "SEC_FLOATING_FEATURE_FRAMEWORK_ENABLE_INTEGRATOR_HAPTIC"

    invoke-virtual {v9, v10}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v9

    iput-boolean v9, p0, Landroid/widget/AbsHorizontalListView;->USE_SET_INTEGRATOR_HAPTIC:Z

    .line 275
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsHorizontalListView;->mChoiceMode:I

    .line 308
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsHorizontalListView;->mLayoutMode:I

    .line 333
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/AbsHorizontalListView;->mDeferNotifyDataSetChanged:Z

    .line 338
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/AbsHorizontalListView;->mDrawSelectorOnTop:Z

    .line 348
    const/4 v9, -0x1

    iput v9, p0, Landroid/widget/AbsHorizontalListView;->mSelectorPosition:I

    .line 353
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    iput-object v9, p0, Landroid/widget/AbsHorizontalListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 359
    new-instance v9, Landroid/widget/AbsHorizontalListView$RecycleBin;

    invoke-direct {v9, p0}, Landroid/widget/AbsHorizontalListView$RecycleBin;-><init>(Landroid/widget/AbsHorizontalListView;)V

    iput-object v9, p0, Landroid/widget/AbsHorizontalListView;->mRecycler:Landroid/widget/AbsHorizontalListView$RecycleBin;

    .line 364
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsHorizontalListView;->mSelectionLeftPadding:I

    .line 369
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsHorizontalListView;->mSelectionTopPadding:I

    .line 374
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsHorizontalListView;->mSelectionRightPadding:I

    .line 379
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsHorizontalListView;->mSelectionBottomPadding:I

    .line 384
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    iput-object v9, p0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    .line 389
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsHorizontalListView;->mHeightMeasureSpec:I

    .line 437
    const/4 v9, -0x1

    iput v9, p0, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    .line 468
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsHorizontalListView;->mSelectedLeft:I

    .line 511
    const/4 v9, 0x1

    iput-boolean v9, p0, Landroid/widget/AbsHorizontalListView;->mSmoothScrollbarEnabled:Z

    .line 531
    const/4 v9, -0x1

    iput v9, p0, Landroid/widget/AbsHorizontalListView;->mResurrectToPosition:I

    .line 533
    const/4 v9, 0x0

    iput-object v9, p0, Landroid/widget/AbsHorizontalListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 559
    const/4 v9, -0x1

    iput v9, p0, Landroid/widget/AbsHorizontalListView;->mLastTouchMode:I

    .line 562
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/AbsHorizontalListView;->mScrollProfilingStarted:Z

    .line 565
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/AbsHorizontalListView;->mFlingProfilingStarted:Z

    .line 573
    const/4 v9, 0x0

    iput-object v9, p0, Landroid/widget/AbsHorizontalListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 574
    const/4 v9, 0x0

    iput-object v9, p0, Landroid/widget/AbsHorizontalListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 621
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsHorizontalListView;->mLastScrollState:I

    .line 640
    const/high16 v9, 0x3f800000    # 1.0f

    iput v9, p0, Landroid/widget/AbsHorizontalListView;->mVelocityScale:F

    .line 642
    const/4 v9, 0x1

    new-array v9, v9, [Z

    iput-object v9, p0, Landroid/widget/AbsHorizontalListView;->mIsScrap:[Z

    .line 652
    const/4 v9, -0x1

    iput v9, p0, Landroid/widget/AbsHorizontalListView;->mActivePointerId:I

    .line 657
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsHorizontalListView;->mPointerCount:I

    .line 664
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/AbsHorizontalListView;->mHapticOverScroll:Z

    .line 715
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsHorizontalListView;->mDirection:I

    .line 747
    const/16 v9, 0xf

    iput v9, p0, Landroid/widget/AbsHorizontalListView;->mHoverLeftAreaWidth_DP:I

    .line 749
    const/16 v9, 0x19

    iput v9, p0, Landroid/widget/AbsHorizontalListView;->mHoverRightAreaWidth_DP:I

    .line 751
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsHorizontalListView;->mHoverLeftAreaWidth:I

    .line 753
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsHorizontalListView;->mHoverRightAreaWidth:I

    .line 763
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsHorizontalListView;->mHoverRecognitionDurationTime:I

    .line 765
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsHorizontalListView;->mHoverRecognitionCurrentTime:I

    .line 767
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsHorizontalListView;->mHoverRecognitionStartTime:I

    .line 769
    const/16 v9, 0x12c

    iput v9, p0, Landroid/widget/AbsHorizontalListView;->mHoverScrollTimeInterval:I

    .line 771
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsHorizontalListView;->mHoverScrollStartTime:I

    .line 773
    const/4 v9, -0x1

    iput v9, p0, Landroid/widget/AbsHorizontalListView;->mHoverScrollDirection:I

    .line 778
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/AbsHorizontalListView;->mIsHoverOverscrolled:Z

    .line 783
    const/4 v9, 0x1

    iput-boolean v9, p0, Landroid/widget/AbsHorizontalListView;->mHoverScrollEnable:Z

    .line 788
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/AbsHorizontalListView;->mHoverAreaEnter:Z

    .line 793
    const/16 v9, 0xa

    iput v9, p0, Landroid/widget/AbsHorizontalListView;->HOVERSCROLL_SPEED:I

    .line 798
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsHorizontalListView;->HOVERSCROLL_DELAY:I

    .line 803
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/AbsHorizontalListView;->isHoveringUIEnabled:Z

    .line 826
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/AbsHorizontalListView;->mTwCustomMultiChoiceMode:Z

    .line 831
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/AbsHorizontalListView;->mIsCtrlkeyPressed:Z

    .line 836
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/AbsHorizontalListView;->mIsShiftkeyPressed:Z

    .line 838
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/AbsHorizontalListView;->mIsMultiFocusEnabled:Z

    .line 843
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsHorizontalListView;->mTwPressItemListIndex:I

    .line 845
    const/4 v9, -0x1

    iput v9, p0, Landroid/widget/AbsHorizontalListView;->mFirstPressedPoint:I

    .line 847
    const/4 v9, -0x1

    iput v9, p0, Landroid/widget/AbsHorizontalListView;->mSecondPressedPoint:I

    .line 851
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsHorizontalListView;->mOldAdapterItemCount:I

    .line 853
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsHorizontalListView;->mOldKeyCode:I

    .line 855
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsHorizontalListView;->mCurrentKeyCode:I

    .line 857
    const/4 v9, -0x1

    iput v9, p0, Landroid/widget/AbsHorizontalListView;->mTwCurrentFocusPosition:I

    .line 925
    const/4 v9, 0x0

    iput-object v9, p0, Landroid/widget/AbsHorizontalListView;->mDVFSHelper:Landroid/os/DVFSHelper;

    .line 926
    const/4 v9, 0x0

    iput-object v9, p0, Landroid/widget/AbsHorizontalListView;->mDVFSHelperCore:Landroid/os/DVFSHelper;

    .line 927
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/AbsHorizontalListView;->mDVFSLockAcquired:Z

    .line 928
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsHorizontalListView;->mDVFSCookie:I

    .line 929
    const/4 v9, 0x0

    iput-object v9, p0, Landroid/widget/AbsHorizontalListView;->methodPauseGc:Ljava/lang/reflect/Method;

    .line 930
    const/4 v9, 0x0

    iput-object v9, p0, Landroid/widget/AbsHorizontalListView;->methodResumeGc:Ljava/lang/reflect/Method;

    .line 982
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/AbsHorizontalListView;->AIR_VIEW_WINSET:Z

    .line 3362
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/AbsHorizontalListView;->mForcedClick:Z

    .line 4298
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsHorizontalListView;->mDragScrollWorkingZonePx:I

    .line 4299
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/AbsHorizontalListView;->mIsDragScrolled:Z

    .line 4906
    const/4 v9, -0x1

    iput v9, p0, Landroid/widget/AbsHorizontalListView;->mHoverPosition:I

    .line 4908
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/AbsHorizontalListView;->mHoveredOnEllipsizedText:Z

    .line 4909
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/AbsHorizontalListView;->mIsHoveredByMouse:Z

    .line 4910
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/AbsHorizontalListView;->mAlwaysDisableHoverHighlight:Z

    .line 4911
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/AbsHorizontalListView;->mIsPnePressed:Z

    .line 6207
    const/4 v9, 0x0

    iput-object v9, p0, Landroid/widget/AbsHorizontalListView;->mTwSmoothScrollByMove:Landroid/widget/AbsHorizontalListView$TwSmoothScrollByMove;

    .line 6208
    const/4 v9, 0x0

    iput-object v9, p0, Landroid/widget/AbsHorizontalListView;->mTwTwScrollRemains:Ljava/util/LinkedList;

    .line 6209
    const/16 v9, 0x1f4

    iput v9, p0, Landroid/widget/AbsHorizontalListView;->mTwScrollAmount:I

    .line 8286
    new-instance v9, Landroid/widget/AbsHorizontalListView$6;

    invoke-direct {v9, p0}, Landroid/widget/AbsHorizontalListView$6;-><init>(Landroid/widget/AbsHorizontalListView;)V

    iput-object v9, p0, Landroid/widget/AbsHorizontalListView;->mMotionListener:Landroid/hardware/motion/MRListener;

    .line 8355
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsHorizontalListView;->mHoverScrollSpeed:I

    .line 1017
    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->initAbsListView()V

    .line 1019
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v9

    iput-object v9, p0, Landroid/widget/AbsHorizontalListView;->mOwnerThread:Ljava/lang/Thread;

    .line 1021
    sget-object v9, Lcom/android/internal/R$styleable;->AbsListView:[I

    const/4 v10, 0x0

    invoke-virtual {p1, p2, v9, p3, v10}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1024
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1025
    .local v2, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    .line 1026
    invoke-virtual {p0, v2}, Landroid/widget/AbsHorizontalListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 1029
    :cond_0
    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    iput-boolean v9, p0, Landroid/widget/AbsHorizontalListView;->mDrawSelectorOnTop:Z

    .line 1032
    const/4 v9, 0x2

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    .line 1033
    .local v6, "stackFromBottom":Z
    invoke-virtual {p0, v6}, Landroid/widget/AbsHorizontalListView;->setStackFromBottom(Z)V

    .line 1035
    const/4 v9, 0x3

    const/4 v10, 0x1

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    .line 1036
    .local v4, "scrollingCacheEnabled":Z
    invoke-virtual {p0, v4}, Landroid/widget/AbsHorizontalListView;->setScrollingCacheEnabled(Z)V

    .line 1038
    const/4 v9, 0x4

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    .line 1039
    .local v8, "useTextFilter":Z
    invoke-virtual {p0, v8}, Landroid/widget/AbsHorizontalListView;->setTextFilterEnabled(Z)V

    .line 1041
    const/4 v9, 0x5

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    .line 1043
    .local v7, "transcriptMode":I
    invoke-virtual {p0, v7}, Landroid/widget/AbsHorizontalListView;->setTranscriptMode(I)V

    .line 1045
    const/4 v9, 0x6

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 1046
    .local v1, "color":I
    invoke-virtual {p0, v1}, Landroid/widget/AbsHorizontalListView;->setCacheColorHint(I)V

    .line 1048
    const/16 v9, 0x8

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    .line 1049
    .local v3, "enableFastScroll":Z
    invoke-virtual {p0, v3}, Landroid/widget/AbsHorizontalListView;->setFastScrollEnabled(Z)V

    .line 1051
    const/16 v9, 0x9

    const/4 v10, 0x1

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    .line 1052
    .local v5, "smoothScrollbar":Z
    invoke-virtual {p0, v5}, Landroid/widget/AbsHorizontalListView;->setSmoothScrollbarEnabled(Z)V

    .line 1054
    const/4 v9, 0x7

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    invoke-virtual {p0, v9}, Landroid/widget/AbsHorizontalListView;->setChoiceMode(I)V

    .line 1055
    const/16 v9, 0xa

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    invoke-virtual {p0, v9}, Landroid/widget/AbsHorizontalListView;->setFastScrollAlwaysVisible(Z)V

    .line 1058
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1063
    iget-object v9, p0, Landroid/widget/AbsHorizontalListView;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-nez v9, :cond_1

    .line 1064
    const-string v9, "AbsHorizontalListView"

    const-string v10, "Get MotionRecognitionManager"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1065
    const-string/jumbo v9, "motion_recognition"

    invoke-virtual {p1, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/hardware/motion/MotionRecognitionManager;

    iput-object v9, p0, Landroid/widget/AbsHorizontalListView;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

    .line 1069
    :cond_1
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    const-string v10, "com.sec.feature.hovering_ui"

    invoke-virtual {v9, v10}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v9

    iput-boolean v9, p0, Landroid/widget/AbsHorizontalListView;->isHoveringUIEnabled:Z

    .line 1070
    return-void
.end method

.method private acceptFilter()Z
    .locals 1

    .prologue
    .line 2235
    iget-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mTextFilterEnabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/Filterable;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/Filterable;

    invoke-interface {v0}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$000(Landroid/widget/AbsHorizontalListView;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;
    .param p1, "x1"    # Z

    .prologue
    .line 129
    invoke-direct {p0, p1}, Landroid/widget/AbsHorizontalListView;->setFastScrollerEnabledUiThread(Z)V

    return-void
.end method

.method static synthetic access$100(Landroid/widget/AbsHorizontalListView;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;
    .param p1, "x1"    # Z

    .prologue
    .line 129
    invoke-direct {p0, p1}, Landroid/widget/AbsHorizontalListView;->setFastScrollerAlwaysVisibleUiThread(Z)V

    return-void
.end method

.method static synthetic access$1002(Landroid/widget/AbsHorizontalListView;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;
    .param p1, "x1"    # Z

    .prologue
    .line 129
    iput-boolean p1, p0, Landroid/widget/AbsHorizontalListView;->mIsChildViewEnabled:Z

    return p1
.end method

.method static synthetic access$1100(Landroid/widget/AbsHorizontalListView;)Landroid/widget/AbsHorizontalListView$CheckForLongPress;
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;

    .prologue
    .line 129
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mPendingCheckForLongPress:Landroid/widget/AbsHorizontalListView$CheckForLongPress;

    return-object v0
.end method

.method static synthetic access$1102(Landroid/widget/AbsHorizontalListView;Landroid/widget/AbsHorizontalListView$CheckForLongPress;)Landroid/widget/AbsHorizontalListView$CheckForLongPress;
    .locals 0
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;
    .param p1, "x1"    # Landroid/widget/AbsHorizontalListView$CheckForLongPress;

    .prologue
    .line 129
    iput-object p1, p0, Landroid/widget/AbsHorizontalListView;->mPendingCheckForLongPress:Landroid/widget/AbsHorizontalListView$CheckForLongPress;

    return-object p1
.end method

.method static synthetic access$1502(Landroid/widget/AbsHorizontalListView;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 129
    iput-object p1, p0, Landroid/widget/AbsHorizontalListView;->mTouchModeReset:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$1600(Landroid/widget/AbsHorizontalListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;

    .prologue
    .line 129
    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mActivePointerId:I

    return v0
.end method

.method static synthetic access$1700(Landroid/widget/AbsHorizontalListView;)Landroid/view/VelocityTracker;
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;

    .prologue
    .line 129
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    return-object v0
.end method

.method static synthetic access$1900(Landroid/widget/AbsHorizontalListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;

    .prologue
    .line 129
    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mMaximumVelocity:I

    return v0
.end method

.method static synthetic access$2000(Landroid/widget/AbsHorizontalListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;

    .prologue
    .line 129
    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mMinimumVelocity:I

    return v0
.end method

.method static synthetic access$2100(Landroid/widget/AbsHorizontalListView;)Landroid/os/StrictMode$Span;
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;

    .prologue
    .line 129
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    return-object v0
.end method

.method static synthetic access$2102(Landroid/widget/AbsHorizontalListView;Landroid/os/StrictMode$Span;)Landroid/os/StrictMode$Span;
    .locals 0
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;
    .param p1, "x1"    # Landroid/os/StrictMode$Span;

    .prologue
    .line 129
    iput-object p1, p0, Landroid/widget/AbsHorizontalListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    return-object p1
.end method

.method static synthetic access$2200(Landroid/widget/AbsHorizontalListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;

    .prologue
    .line 129
    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mScrollX:I

    return v0
.end method

.method static synthetic access$2300(Landroid/widget/AbsHorizontalListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;

    .prologue
    .line 129
    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mScrollX:I

    return v0
.end method

.method static synthetic access$2400(Landroid/widget/AbsHorizontalListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;

    .prologue
    .line 129
    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mScrollX:I

    return v0
.end method

.method static synthetic access$2500(Landroid/widget/AbsHorizontalListView;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;

    .prologue
    .line 129
    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->contentFits()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2600(Landroid/widget/AbsHorizontalListView;)Landroid/widget/EdgeEffect;
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;

    .prologue
    .line 129
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    return-object v0
.end method

.method static synthetic access$2700(Landroid/widget/AbsHorizontalListView;)Landroid/widget/EdgeEffect;
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;

    .prologue
    .line 129
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    return-object v0
.end method

.method static synthetic access$2800(Landroid/widget/AbsHorizontalListView;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;

    .prologue
    .line 129
    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->clearScrollingCache()V

    return-void
.end method

.method static synthetic access$2900(Landroid/widget/AbsHorizontalListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;

    .prologue
    .line 129
    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mPaddingRight:I

    return v0
.end method

.method static synthetic access$3000(Landroid/widget/AbsHorizontalListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;

    .prologue
    .line 129
    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mPaddingLeft:I

    return v0
.end method

.method static synthetic access$3100(Landroid/widget/AbsHorizontalListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;

    .prologue
    .line 129
    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mPaddingRight:I

    return v0
.end method

.method static synthetic access$3200(Landroid/widget/AbsHorizontalListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;

    .prologue
    .line 129
    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mPaddingLeft:I

    return v0
.end method

.method static synthetic access$3300(Landroid/widget/AbsHorizontalListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;

    .prologue
    .line 129
    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mScrollX:I

    return v0
.end method

.method static synthetic access$3400(Landroid/widget/AbsHorizontalListView;IIIIIIIIZ)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # I
    .param p6, "x6"    # I
    .param p7, "x7"    # I
    .param p8, "x8"    # I
    .param p9, "x9"    # Z

    .prologue
    .line 129
    invoke-virtual/range {p0 .. p9}, Landroid/widget/AbsHorizontalListView;->overScrollBy(IIIIIIIIZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3500(Landroid/widget/AbsHorizontalListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;

    .prologue
    .line 129
    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mScrollX:I

    return v0
.end method

.method static synthetic access$3600(Landroid/widget/AbsHorizontalListView;IIIIIIIIZ)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # I
    .param p6, "x6"    # I
    .param p7, "x7"    # I
    .param p8, "x8"    # I
    .param p9, "x9"    # Z

    .prologue
    .line 129
    invoke-virtual/range {p0 .. p9}, Landroid/widget/AbsHorizontalListView;->overScrollBy(IIIIIIIIZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3700(Landroid/widget/AbsHorizontalListView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;

    .prologue
    .line 129
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3800(Landroid/widget/AbsHorizontalListView;)Landroid/widget/AbsHorizontalListView$FlingRunnable;
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;

    .prologue
    .line 129
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mFlingRunnable:Landroid/widget/AbsHorizontalListView$FlingRunnable;

    return-object v0
.end method

.method static synthetic access$3900(Landroid/widget/AbsHorizontalListView;)Ljava/util/LinkedList;
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;

    .prologue
    .line 129
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mTwTwScrollRemains:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$400(Landroid/widget/AbsHorizontalListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;

    .prologue
    .line 129
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$4100(Landroid/widget/AbsHorizontalListView;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;
    .param p1, "x1"    # Z

    .prologue
    .line 129
    invoke-virtual {p0, p1}, Landroid/widget/AbsHorizontalListView;->setChildrenDrawnWithCacheEnabled(Z)V

    return-void
.end method

.method static synthetic access$4200(Landroid/widget/AbsHorizontalListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;

    .prologue
    .line 129
    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mPersistentDrawingCache:I

    return v0
.end method

.method static synthetic access$4300(Landroid/widget/AbsHorizontalListView;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;
    .param p1, "x1"    # Z

    .prologue
    .line 129
    invoke-virtual {p0, p1}, Landroid/widget/AbsHorizontalListView;->setChildrenDrawingCacheEnabled(Z)V

    return-void
.end method

.method static synthetic access$4400(Landroid/widget/AbsHorizontalListView;)Landroid/view/inputmethod/InputConnection;
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;

    .prologue
    .line 129
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mDefInputConnection:Landroid/view/inputmethod/InputConnection;

    return-object v0
.end method

.method static synthetic access$4600(Landroid/widget/AbsHorizontalListView;)Landroid/widget/HorizontalFastScroller;
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;

    .prologue
    .line 129
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mFastScroller:Landroid/widget/HorizontalFastScroller;

    return-object v0
.end method

.method static synthetic access$4700(Landroid/widget/AbsHorizontalListView;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;

    .prologue
    .line 129
    iget-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mTwCustomMultiChoiceMode:Z

    return v0
.end method

.method static synthetic access$4800(Landroid/widget/AbsHorizontalListView;Landroid/view/View;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Z

    .prologue
    .line 129
    invoke-virtual {p0, p1, p2}, Landroid/widget/AbsHorizontalListView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$4900(Landroid/widget/AbsHorizontalListView;Landroid/view/View;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Z

    .prologue
    .line 129
    invoke-virtual {p0, p1, p2}, Landroid/widget/AbsHorizontalListView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$500(Landroid/widget/AbsHorizontalListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;

    .prologue
    .line 129
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$5000(Landroid/widget/AbsHorizontalListView;Landroid/view/View;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Z

    .prologue
    .line 129
    invoke-virtual {p0, p1, p2}, Landroid/widget/AbsHorizontalListView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$5100(Landroid/widget/AbsHorizontalListView;Landroid/view/View;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Z

    .prologue
    .line 129
    invoke-virtual {p0, p1, p2}, Landroid/widget/AbsHorizontalListView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$5200(Landroid/widget/AbsHorizontalListView;Landroid/view/View;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Z

    .prologue
    .line 129
    invoke-virtual {p0, p1, p2}, Landroid/widget/AbsHorizontalListView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$5300(Landroid/widget/AbsHorizontalListView;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;

    .prologue
    .line 129
    iget-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mMotionEnable:Z

    return v0
.end method

.method static synthetic access$5400(Landroid/widget/AbsHorizontalListView;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;

    .prologue
    .line 129
    iget-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mHasWindowFocusForMotion:Z

    return v0
.end method

.method static synthetic access$5500(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 129
    invoke-static {p0}, Landroid/widget/AbsHorizontalListView;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5600(Landroid/widget/AbsHorizontalListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;

    .prologue
    .line 129
    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mHoverRecognitionCurrentTime:I

    return v0
.end method

.method static synthetic access$5602(Landroid/widget/AbsHorizontalListView;I)I
    .locals 0
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;
    .param p1, "x1"    # I

    .prologue
    .line 129
    iput p1, p0, Landroid/widget/AbsHorizontalListView;->mHoverRecognitionCurrentTime:I

    return p1
.end method

.method static synthetic access$5700(Landroid/widget/AbsHorizontalListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;

    .prologue
    .line 129
    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mHoverRecognitionDurationTime:I

    return v0
.end method

.method static synthetic access$5702(Landroid/widget/AbsHorizontalListView;I)I
    .locals 0
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;
    .param p1, "x1"    # I

    .prologue
    .line 129
    iput p1, p0, Landroid/widget/AbsHorizontalListView;->mHoverRecognitionDurationTime:I

    return p1
.end method

.method static synthetic access$5800(Landroid/widget/AbsHorizontalListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;

    .prologue
    .line 129
    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mHoverRecognitionStartTime:I

    return v0
.end method

.method static synthetic access$5900(Landroid/widget/AbsHorizontalListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;

    .prologue
    .line 129
    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mHoverScrollStartTime:I

    return v0
.end method

.method static synthetic access$6000(Landroid/widget/AbsHorizontalListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;

    .prologue
    .line 129
    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mHoverScrollTimeInterval:I

    return v0
.end method

.method static synthetic access$6100(Landroid/widget/AbsHorizontalListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;

    .prologue
    .line 129
    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mRight:I

    return v0
.end method

.method static synthetic access$6200(Landroid/widget/AbsHorizontalListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;

    .prologue
    .line 129
    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mHoverScrollSpeed:I

    return v0
.end method

.method static synthetic access$6202(Landroid/widget/AbsHorizontalListView;I)I
    .locals 0
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;
    .param p1, "x1"    # I

    .prologue
    .line 129
    iput p1, p0, Landroid/widget/AbsHorizontalListView;->mHoverScrollSpeed:I

    return p1
.end method

.method static synthetic access$6300(Landroid/widget/AbsHorizontalListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;

    .prologue
    .line 129
    iget v0, p0, Landroid/widget/AbsHorizontalListView;->HOVERSCROLL_SPEED:I

    return v0
.end method

.method static synthetic access$6400(Landroid/widget/AbsHorizontalListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;

    .prologue
    .line 129
    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mHoverScrollDirection:I

    return v0
.end method

.method static synthetic access$6500(Landroid/widget/AbsHorizontalListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;

    .prologue
    .line 129
    iget v0, p0, Landroid/widget/AbsHorizontalListView;->HOVERSCROLL_DELAY:I

    return v0
.end method

.method static synthetic access$6600(Landroid/widget/AbsHorizontalListView;)Landroid/widget/AbsHorizontalListView$HoverScrollHandler;
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;

    .prologue
    .line 129
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mHoverHandler:Landroid/widget/AbsHorizontalListView$HoverScrollHandler;

    return-object v0
.end method

.method static synthetic access$6700(Landroid/widget/AbsHorizontalListView;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;

    .prologue
    .line 129
    iget-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mIsHoverOverscrolled:Z

    return v0
.end method

.method static synthetic access$6702(Landroid/widget/AbsHorizontalListView;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;
    .param p1, "x1"    # Z

    .prologue
    .line 129
    iput-boolean p1, p0, Landroid/widget/AbsHorizontalListView;->mIsHoverOverscrolled:Z

    return p1
.end method

.method static synthetic access$700(Landroid/widget/AbsHorizontalListView;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;

    .prologue
    .line 129
    iget-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mForcedClick:Z

    return v0
.end method

.method static synthetic access$800(Landroid/widget/AbsHorizontalListView;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;

    .prologue
    .line 129
    iget-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mIsShiftkeyPressed:Z

    return v0
.end method

.method static synthetic access$900(Landroid/widget/AbsHorizontalListView;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;

    .prologue
    .line 129
    iget-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mIsCtrlkeyPressed:Z

    return v0
.end method

.method private clearScrollingCache()V
    .locals 1

    .prologue
    .line 6333
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_1

    .line 6334
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mClearScrollingCache:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 6335
    new-instance v0, Landroid/widget/AbsHorizontalListView$4;

    invoke-direct {v0, p0}, Landroid/widget/AbsHorizontalListView$4;-><init>(Landroid/widget/AbsHorizontalListView;)V

    iput-object v0, p0, Landroid/widget/AbsHorizontalListView;->mClearScrollingCache:Ljava/lang/Runnable;

    .line 6351
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mClearScrollingCache:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/AbsHorizontalListView;->post(Ljava/lang/Runnable;)Z

    .line 6353
    :cond_1
    return-void
.end method

.method private contentFits()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1573
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getChildCount()I

    move-result v0

    .line 1574
    .local v0, "childCount":I
    if-nez v0, :cond_1

    .line 1577
    :cond_0
    :goto_0
    return v1

    .line 1575
    :cond_1
    iget v3, p0, Landroid/widget/AbsHorizontalListView;->mItemCount:I

    if-eq v0, v3, :cond_2

    move v1, v2

    goto :goto_0

    .line 1577
    :cond_2
    invoke-virtual {p0, v2}, Landroid/widget/AbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    iget-object v4, p0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    if-lt v3, v4, :cond_3

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p0, v3}, Landroid/widget/AbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getWidth()I

    move-result v4

    iget-object v5, p0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v5

    if-le v3, v4, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method private createScrollingCache()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 6325
    iget-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mScrollingCacheEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mCachingStarted:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6326
    invoke-virtual {p0, v1}, Landroid/widget/AbsHorizontalListView;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 6327
    invoke-virtual {p0, v1}, Landroid/widget/AbsHorizontalListView;->setChildrenDrawingCacheEnabled(Z)V

    .line 6328
    iput-boolean v1, p0, Landroid/widget/AbsHorizontalListView;->mCachingActive:Z

    iput-boolean v1, p0, Landroid/widget/AbsHorizontalListView;->mCachingStarted:Z

    .line 6330
    :cond_0
    return-void
.end method

.method private createTextFilter(Z)V
    .locals 4
    .param p1, "animateEntrance"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x2

    .line 7289
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mPopup:Landroid/widget/PopupWindow;

    if-nez v1, :cond_0

    .line 7290
    new-instance v0, Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 7291
    .local v0, "p":Landroid/widget/PopupWindow;
    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 7292
    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 7293
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 7294
    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->getTextFilterInput()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 7295
    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 7296
    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 7297
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 7298
    iput-object v0, p0, Landroid/widget/AbsHorizontalListView;->mPopup:Landroid/widget/PopupWindow;

    .line 7299
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 7300
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/AbsHorizontalListView;->mGlobalLayoutListenerAddedFilter:Z

    .line 7302
    .end local v0    # "p":Landroid/widget/PopupWindow;
    :cond_0
    if-eqz p1, :cond_1

    .line 7303
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mPopup:Landroid/widget/PopupWindow;

    const v2, 0x10302d9

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 7307
    :goto_0
    return-void

    .line 7305
    :cond_1
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mPopup:Landroid/widget/PopupWindow;

    const v2, 0x10302da

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    goto :goto_0
.end method

.method private dismissPopup()V
    .locals 1

    .prologue
    .line 7040
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 7041
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 7043
    :cond_0
    return-void
.end method

.method private drawSelector(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 2950
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 2951
    .local v4, "tempSelectorRect":Landroid/graphics/Rect;
    const/4 v2, 0x0

    .line 2952
    .local v2, "selectedPosition":I
    const/4 v1, 0x0

    .line 2953
    .local v1, "selectedChild":Landroid/view/View;
    iget-object v5, p0, Landroid/widget/AbsHorizontalListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 2954
    iget-object v3, p0, Landroid/widget/AbsHorizontalListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 2955
    .local v3, "selector":Landroid/graphics/drawable/Drawable;
    iget-object v5, p0, Landroid/widget/AbsHorizontalListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v5}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 2956
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2960
    .end local v3    # "selector":Landroid/graphics/drawable/Drawable;
    :cond_0
    iget-boolean v5, p0, Landroid/widget/AbsHorizontalListView;->mIsMultiFocusEnabled:Z

    if-eqz v5, :cond_2

    .line 2962
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v5, p0, Landroid/widget/AbsHorizontalListView;->mTwPressItemListIndex:I

    if-ge v0, v5, :cond_2

    .line 2963
    iget-object v5, p0, Landroid/widget/AbsHorizontalListView;->mTwPressItemListArray:[I

    aget v2, v5, v0

    .line 2964
    iget v5, p0, Landroid/widget/AbsHorizontalListView;->mFirstPosition:I

    sub-int v5, v2, v5

    invoke-virtual {p0, v5}, Landroid/widget/AbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2966
    if-eqz v1, :cond_1

    .line 2967
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v6

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v7

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v8

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 2968
    iget-object v5, p0, Landroid/widget/AbsHorizontalListView;->mMultiFocusImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 2969
    iget-object v5, p0, Landroid/widget/AbsHorizontalListView;->mMultiFocusImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2962
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2974
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method private finishGlows()V
    .locals 1

    .prologue
    .line 7530
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_0

    .line 7531
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->finish()V

    .line 7532
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->finish()V

    .line 7534
    :cond_0
    return-void
.end method

.method static getDistance(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I
    .locals 8
    .param p0, "source"    # Landroid/graphics/Rect;
    .param p1, "dest"    # Landroid/graphics/Rect;
    .param p2, "direction"    # I

    .prologue
    .line 7086
    sparse-switch p2, :sswitch_data_0

    .line 7119
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT, FOCUS_FORWARD, FOCUS_BACKWARD}."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 7088
    :sswitch_0
    iget v4, p0, Landroid/graphics/Rect;->right:I

    .line 7089
    .local v4, "sX":I
    iget v6, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v5, v6, v7

    .line 7090
    .local v5, "sY":I
    iget v0, p1, Landroid/graphics/Rect;->left:I

    .line 7091
    .local v0, "dX":I
    iget v6, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v1, v6, v7

    .line 7123
    .local v1, "dY":I
    :goto_0
    sub-int v2, v0, v4

    .line 7124
    .local v2, "deltaX":I
    sub-int v3, v1, v5

    .line 7125
    .local v3, "deltaY":I
    mul-int v6, v3, v3

    mul-int v7, v2, v2

    add-int/2addr v6, v7

    return v6

    .line 7094
    .end local v0    # "dX":I
    .end local v1    # "dY":I
    .end local v2    # "deltaX":I
    .end local v3    # "deltaY":I
    .end local v4    # "sX":I
    .end local v5    # "sY":I
    :sswitch_1
    iget v6, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v4, v6, v7

    .line 7095
    .restart local v4    # "sX":I
    iget v5, p0, Landroid/graphics/Rect;->bottom:I

    .line 7096
    .restart local v5    # "sY":I
    iget v6, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v0, v6, v7

    .line 7097
    .restart local v0    # "dX":I
    iget v1, p1, Landroid/graphics/Rect;->top:I

    .line 7098
    .restart local v1    # "dY":I
    goto :goto_0

    .line 7100
    .end local v0    # "dX":I
    .end local v1    # "dY":I
    .end local v4    # "sX":I
    .end local v5    # "sY":I
    :sswitch_2
    iget v4, p0, Landroid/graphics/Rect;->left:I

    .line 7101
    .restart local v4    # "sX":I
    iget v6, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v5, v6, v7

    .line 7102
    .restart local v5    # "sY":I
    iget v0, p1, Landroid/graphics/Rect;->right:I

    .line 7103
    .restart local v0    # "dX":I
    iget v6, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v1, v6, v7

    .line 7104
    .restart local v1    # "dY":I
    goto :goto_0

    .line 7106
    .end local v0    # "dX":I
    .end local v1    # "dY":I
    .end local v4    # "sX":I
    .end local v5    # "sY":I
    :sswitch_3
    iget v6, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v4, v6, v7

    .line 7107
    .restart local v4    # "sX":I
    iget v5, p0, Landroid/graphics/Rect;->top:I

    .line 7108
    .restart local v5    # "sY":I
    iget v6, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v0, v6, v7

    .line 7109
    .restart local v0    # "dX":I
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    .line 7110
    .restart local v1    # "dY":I
    goto :goto_0

    .line 7113
    .end local v0    # "dX":I
    .end local v1    # "dY":I
    .end local v4    # "sX":I
    .end local v5    # "sY":I
    :sswitch_4
    iget v6, p0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v4, v6, v7

    .line 7114
    .restart local v4    # "sX":I
    iget v6, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v5, v6, v7

    .line 7115
    .restart local v5    # "sY":I
    iget v6, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v0, v6, v7

    .line 7116
    .restart local v0    # "dX":I
    iget v6, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v1, v6, v7

    .line 7117
    .restart local v1    # "dY":I
    goto :goto_0

    .line 7086
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_4
        0x2 -> :sswitch_4
        0x11 -> :sswitch_2
        0x21 -> :sswitch_3
        0x42 -> :sswitch_0
        0x82 -> :sswitch_1
    .end sparse-switch
.end method

.method private getTextFilterInput()Landroid/widget/EditText;
    .locals 3

    .prologue
    .line 7310
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mTextFilter:Landroid/widget/EditText;

    if-nez v1, :cond_0

    .line 7311
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 7312
    .local v0, "layoutInflater":Landroid/view/LayoutInflater;
    const v1, 0x1090156

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Landroid/widget/AbsHorizontalListView;->mTextFilter:Landroid/widget/EditText;

    .line 7317
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mTextFilter:Landroid/widget/EditText;

    const/16 v2, 0xb1

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 7319
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mTextFilter:Landroid/widget/EditText;

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 7320
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 7322
    .end local v0    # "layoutInflater":Landroid/view/LayoutInflater;
    :cond_0
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mTextFilter:Landroid/widget/EditText;

    return-object v1
.end method

.method private initAbsListView()V
    .locals 11

    .prologue
    const-wide/16 v4, 0x0

    const/4 v0, 0x0

    const/4 v10, 0x1

    .line 1074
    invoke-virtual {p0, v10}, Landroid/widget/AbsHorizontalListView;->setClickable(Z)V

    .line 1075
    invoke-virtual {p0, v10}, Landroid/widget/AbsHorizontalListView;->setFocusableInTouchMode(Z)V

    .line 1076
    invoke-virtual {p0, v0}, Landroid/widget/AbsHorizontalListView;->setWillNotDraw(Z)V

    .line 1077
    invoke-virtual {p0, v0}, Landroid/widget/AbsHorizontalListView;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 1078
    invoke-virtual {p0, v10}, Landroid/widget/AbsHorizontalListView;->setScrollingCacheEnabled(Z)V

    .line 1079
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->twEnableHorizontalScrollbar()V

    .line 1081
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 1082
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v7

    .line 1083
    .local v7, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v7}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Landroid/widget/AbsHorizontalListView;->mTouchSlop:I

    .line 1084
    invoke-virtual {v7}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Landroid/widget/AbsHorizontalListView;->mMinimumVelocity:I

    .line 1085
    invoke-virtual {v7}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Landroid/widget/AbsHorizontalListView;->mMaximumVelocity:I

    .line 1086
    invoke-virtual {v7}, Landroid/view/ViewConfiguration;->getScaledOverscrollDistance()I

    move-result v1

    iput v1, p0, Landroid/widget/AbsHorizontalListView;->mOverscrollDistance:I

    .line 1087
    invoke-virtual {v7}, Landroid/view/ViewConfiguration;->getScaledOverflingDistance()I

    move-result v1

    iput v1, p0, Landroid/widget/AbsHorizontalListView;->mOverflingDistance:I

    .line 1090
    .end local v7    # "configuration":Landroid/view/ViewConfiguration;
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1091
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Landroid/widget/AbsHorizontalListView;->mDensityScale:F

    .line 1095
    :cond_1
    new-instance v1, Landroid/view/HapticPreDrawListener;

    invoke-direct {v1}, Landroid/view/HapticPreDrawListener;-><init>()V

    iput-object v1, p0, Landroid/widget/AbsHorizontalListView;->mHapticPreDrawListener:Landroid/view/HapticPreDrawListener;

    .line 1098
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_3

    .line 1099
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "finger_air_view"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v10, :cond_2

    move v0, v10

    :cond_2
    iput-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->AIR_VIEW_WINSET:Z

    .line 1103
    :cond_3
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_4

    .line 1104
    new-instance v0, Landroid/os/DVFSHelper;

    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mContext:Landroid/content/Context;

    const-string v2, "LIST_SCROLL_BOOSTER"

    const/16 v3, 0xc

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Landroid/widget/AbsHorizontalListView;->mDVFSHelper:Landroid/os/DVFSHelper;

    .line 1105
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mDVFSHelper:Landroid/os/DVFSHelper;

    const-string v1, "ListView_scroll"

    invoke-virtual {v0, v1}, Landroid/os/DVFSHelper;->addExtraOptionsByDefaultPolicy(Ljava/lang/String;)V

    .line 1107
    sget v0, Landroid/os/DVFSHelper;->LIST_SCROLL_BOOSTER_CORE_NUM:I

    if-eqz v0, :cond_4

    .line 1108
    new-instance v0, Landroid/os/DVFSHelper;

    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mContext:Landroid/content/Context;

    const-string v2, "LIST_SCROLL_BOOSTER_CORE"

    const/16 v3, 0xe

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Landroid/widget/AbsHorizontalListView;->mDVFSHelperCore:Landroid/os/DVFSHelper;

    .line 1109
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mDVFSHelperCore:Landroid/os/DVFSHelper;

    const-string v1, "CORE_NUM"

    sget v2, Landroid/os/DVFSHelper;->LIST_SCROLL_BOOSTER_CORE_NUM:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 1114
    :cond_4
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1115
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Landroid/widget/AbsHorizontalListView;->mAudioManager:Landroid/media/AudioManager;

    .line 1119
    :cond_5
    const-class v6, Ldalvik/system/VMRuntime;

    .line 1121
    .local v6, "clazz":Ljava/lang/Class;
    :try_start_0
    const-string/jumbo v0, "pauseGc"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {v6, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsHorizontalListView;->methodPauseGc:Ljava/lang/reflect/Method;

    .line 1122
    const-string/jumbo v0, "resumeGc"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    invoke-virtual {v6, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsHorizontalListView;->methodResumeGc:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1128
    :goto_0
    new-instance v9, Landroid/util/TypedValue;

    invoke-direct {v9}, Landroid/util/TypedValue;-><init>()V

    .line 1129
    .local v9, "value":Landroid/util/TypedValue;
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_6

    .line 1130
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const v1, 0x10105ae

    invoke-virtual {v0, v1, v9, v10}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v8

    .line 1132
    .local v8, "resolved":Z
    if-eqz v8, :cond_6

    .line 1133
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, v9, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsHorizontalListView;->mMultiFocusImage:Landroid/graphics/drawable/Drawable;

    .line 1137
    .end local v8    # "resolved":Z
    :cond_6
    return-void

    .line 1124
    .end local v9    # "value":Landroid/util/TypedValue;
    :catch_0
    move-exception v0

    goto :goto_0

    .line 1123
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private initOrResetVelocityTracker()V
    .locals 1

    .prologue
    .line 5127
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 5128
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsHorizontalListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 5132
    :goto_0
    return-void

    .line 5130
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_0
.end method

.method private initVelocityTrackerIfNotExists()V
    .locals 1

    .prologue
    .line 5135
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 5136
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsHorizontalListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 5138
    :cond_0
    return-void
.end method

.method private isOwnerThread()Z
    .locals 2

    .prologue
    .line 1673
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mOwnerThread:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "log"    # Ljava/lang/String;

    .prologue
    .line 8459
    const-string v0, "AbsHorizontalListView"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8460
    return-void
.end method

.method private onHoverDrawableState(Landroid/view/MotionEvent;)V
    .locals 17
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 4919
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 4920
    .local v1, "action":I
    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v11

    .line 4923
    .local v11, "toolType":I
    const/4 v14, 0x7

    if-eq v1, v14, :cond_0

    const/16 v14, 0x9

    if-ne v1, v14, :cond_3

    :cond_0
    const/4 v14, 0x2

    if-ne v11, v14, :cond_3

    .line 4924
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsHorizontalListView;->mIsPnePressed:Z

    .line 4930
    :cond_1
    :goto_0
    const/4 v14, 0x1

    if-eq v11, v14, :cond_5

    .line 4931
    const/4 v14, 0x3

    if-ne v11, v14, :cond_4

    const/4 v14, 0x1

    :goto_1
    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsHorizontalListView;->mIsHoveredByMouse:Z

    .line 5041
    :cond_2
    :goto_2
    return-void

    .line 4925
    :cond_3
    const/16 v14, 0xa

    if-ne v1, v14, :cond_1

    .line 4926
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsHorizontalListView;->mIsPnePressed:Z

    goto :goto_0

    .line 4931
    :cond_4
    const/4 v14, 0x0

    goto :goto_1

    .line 4934
    :cond_5
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsHorizontalListView;->mIsHoveredByMouse:Z

    .line 4937
    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/widget/AbsHorizontalListView;->mAlwaysDisableHoverHighlight:Z

    if-nez v14, :cond_2

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsHorizontalListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v14, :cond_2

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsHorizontalListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v14}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v14

    if-eqz v14, :cond_2

    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/widget/AbsHorizontalListView;->mHoverAreaEnter:Z

    const/4 v15, 0x1

    if-eq v14, v15, :cond_2

    .line 4942
    const/16 v14, 0x9

    if-ne v1, v14, :cond_6

    .line 4943
    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/widget/AbsHorizontalListView;->mIsPnePressed:Z

    if-nez v14, :cond_2

    .line 4944
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsHorizontalListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v14}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_2

    .line 4949
    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView;->isMultiWindows()Z

    move-result v14

    if-nez v14, :cond_2

    .line 4953
    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/widget/AbsHorizontalListView;->mIsPnePressed:Z

    if-nez v14, :cond_7

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView;->isInDialog()Z

    move-result v14

    if-eqz v14, :cond_7

    .line 4954
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsHorizontalListView;->mSelector:Landroid/graphics/drawable/Drawable;

    sget-object v15, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v14, v15}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 4955
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsHorizontalListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v14}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_2

    .line 4959
    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsHorizontalListView;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "finger_air_view"

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_c

    const/4 v6, 0x1

    .line 4964
    .local v6, "isFingerAirView":Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsHorizontalListView;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "finger_air_view_information_preview"

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_d

    const/4 v7, 0x1

    .line 4967
    .local v7, "isFingerAirViewPreview":Z
    :goto_4
    if-eqz v6, :cond_2

    if-eqz v7, :cond_2

    .line 4970
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView;->isHovered()Z

    move-result v14

    if-nez v14, :cond_9

    .line 4971
    const/4 v14, 0x1

    if-ne v11, v14, :cond_8

    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/widget/AbsHorizontalListView;->setFingerHovered(Z)V

    .line 4972
    :cond_8
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/widget/AbsHorizontalListView;->setHovered(Z)V

    .line 4974
    :cond_9
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v14

    float-to-int v12, v14

    .line 4975
    .local v12, "x":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v14

    float-to-int v13, v14

    .line 4976
    .local v13, "y":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Landroid/widget/AbsHorizontalListView;->pointToPosition(II)I

    move-result v9

    .line 4977
    .local v9, "newHoverPosition":I
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/AbsHorizontalListView;->mHoverPosition:I

    if-eq v14, v9, :cond_e

    const/4 v2, 0x1

    .line 4978
    .local v2, "bChanged":Z
    :goto_5
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView;->shouldShowSelectorDefault()Z

    move-result v10

    .line 4980
    .local v10, "shouldShowSelector":Z
    const/4 v3, 0x0

    .line 4982
    .local v3, "child":Landroid/view/View;
    if-gez v9, :cond_f

    .line 4983
    if-nez v10, :cond_a

    .line 4984
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsHorizontalListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v14}, Landroid/graphics/Rect;->setEmpty()V

    .line 4987
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/widget/AbsHorizontalListView;->mHoveredOnEllipsizedText:Z

    if-eqz v14, :cond_b

    .line 4988
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsHorizontalListView;->mSelector:Landroid/graphics/drawable/Drawable;

    sget-object v15, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v14, v15}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 4989
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView;->postInvalidateOnAnimation()V

    .line 4990
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsHorizontalListView;->mHoveredOnEllipsizedText:Z

    .line 4992
    :cond_b
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsHorizontalListView;->mHoverPosition:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 5037
    .end local v2    # "bChanged":Z
    .end local v3    # "child":Landroid/view/View;
    .end local v9    # "newHoverPosition":I
    .end local v10    # "shouldShowSelector":Z
    .end local v12    # "x":I
    .end local v13    # "y":I
    :catch_0
    move-exception v4

    .line 5038
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 4959
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v6    # "isFingerAirView":Z
    .end local v7    # "isFingerAirViewPreview":Z
    :cond_c
    const/4 v6, 0x0

    goto :goto_3

    .line 4964
    .restart local v6    # "isFingerAirView":Z
    :cond_d
    const/4 v7, 0x0

    goto :goto_4

    .line 4977
    .restart local v7    # "isFingerAirViewPreview":Z
    .restart local v9    # "newHoverPosition":I
    .restart local v12    # "x":I
    .restart local v13    # "y":I
    :cond_e
    const/4 v2, 0x0

    goto :goto_5

    .line 4996
    .restart local v2    # "bChanged":Z
    .restart local v3    # "child":Landroid/view/View;
    .restart local v10    # "shouldShowSelector":Z
    :cond_f
    :try_start_1
    move-object/from16 v0, p0

    iput v9, v0, Landroid/widget/AbsHorizontalListView;->mHoverPosition:I

    .line 4998
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/AbsHorizontalListView;->mHoverPosition:I

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/AbsHorizontalListView;->mFirstPosition:I

    sub-int/2addr v14, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/widget/AbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 5000
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/widget/AbsHorizontalListView;->findEllipsizedTextView(Landroid/view/View;)Z

    move-result v5

    .line 5002
    .local v5, "foundEllipsizedTextView":Z
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/widget/AbsHorizontalListView;->findSetFingerHovedInAppWidget(Landroid/view/View;)Z

    move-result v8

    .line 5016
    .local v8, "isSetFingerHovedInAppWidget":Z
    invoke-virtual {v3}, Landroid/view/View;->isEnabled()Z

    move-result v14

    if-eqz v14, :cond_12

    if-eqz v5, :cond_12

    if-eqz v8, :cond_12

    .line 5017
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/AbsHorizontalListView;->mHoverPosition:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v3}, Landroid/widget/AbsHorizontalListView;->positionSelector(ILandroid/view/View;)V

    .line 5018
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsHorizontalListView;->mHoveredOnEllipsizedText:Z

    .line 5025
    :cond_10
    :goto_6
    if-eqz v2, :cond_11

    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/widget/AbsHorizontalListView;->mHoveredOnEllipsizedText:Z

    if-eqz v14, :cond_11

    .line 5026
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView;->refreshDrawableState()V

    .line 5027
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView;->postInvalidateOnAnimation()V

    .line 5030
    :cond_11
    const/16 v14, 0xa

    if-ne v1, v14, :cond_2

    if-nez v10, :cond_2

    .line 5031
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsHorizontalListView;->mHoveredOnEllipsizedText:Z

    .line 5032
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsHorizontalListView;->mHoverPosition:I

    .line 5033
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsHorizontalListView;->mSelector:Landroid/graphics/drawable/Drawable;

    sget-object v15, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v14, v15}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 5034
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsHorizontalListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v14}, Landroid/graphics/Rect;->setEmpty()V

    .line 5035
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView;->postInvalidateOnAnimation()V

    goto/16 :goto_2

    .line 5020
    :cond_12
    if-nez v10, :cond_10

    .line 5021
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsHorizontalListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v14}, Landroid/graphics/Rect;->setEmpty()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_6
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    .line 5256
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const v5, 0xff00

    and-int/2addr v4, v5

    shr-int/lit8 v2, v4, 0x8

    .line 5258
    .local v2, "pointerIndex":I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 5259
    .local v1, "pointerId":I
    iget v4, p0, Landroid/widget/AbsHorizontalListView;->mActivePointerId:I

    if-ne v1, v4, :cond_0

    .line 5263
    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 5264
    .local v0, "newPointerIndex":I
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Landroid/widget/AbsHorizontalListView;->mMotionX:I

    .line 5265
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Landroid/widget/AbsHorizontalListView;->mMotionY:I

    .line 5266
    iput v3, p0, Landroid/widget/AbsHorizontalListView;->mMotionCorrection:I

    .line 5267
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Landroid/widget/AbsHorizontalListView;->mActivePointerId:I

    .line 5273
    iget v3, p0, Landroid/widget/AbsHorizontalListView;->mMotionX:I

    iput v3, p0, Landroid/widget/AbsHorizontalListView;->mLastX:I

    .line 5275
    .end local v0    # "newPointerIndex":I
    :cond_0
    return-void

    :cond_1
    move v0, v3

    .line 5263
    goto :goto_0
.end method

.method private onTouchCancel()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 4873
    iget v1, p0, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    packed-switch v1, :pswitch_data_0

    .line 4886
    iput v4, p0, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    .line 4887
    invoke-virtual {p0, v3}, Landroid/widget/AbsHorizontalListView;->setPressed(Z)V

    .line 4888
    iget v1, p0, Landroid/widget/AbsHorizontalListView;->mMotionPosition:I

    iget v2, p0, Landroid/widget/AbsHorizontalListView;->mFirstPosition:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Landroid/widget/AbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4889
    .local v0, "motionView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 4890
    invoke-virtual {v0, v3}, Landroid/view/View;->setPressed(Z)V

    .line 4892
    :cond_0
    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->clearScrollingCache()V

    .line 4893
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mPendingCheckForLongPress:Landroid/widget/AbsHorizontalListView$CheckForLongPress;

    invoke-virtual {p0, v1}, Landroid/widget/AbsHorizontalListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4894
    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->recycleVelocityTracker()V

    .line 4897
    .end local v0    # "motionView":Landroid/view/View;
    :goto_0
    :pswitch_0
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_1

    .line 4898
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 4899
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 4901
    :cond_1
    iput v4, p0, Landroid/widget/AbsHorizontalListView;->mActivePointerId:I

    .line 4902
    iput v3, p0, Landroid/widget/AbsHorizontalListView;->mPointerCount:I

    .line 4903
    return-void

    .line 4875
    :pswitch_1
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mFlingRunnable:Landroid/widget/AbsHorizontalListView$FlingRunnable;

    if-nez v1, :cond_2

    .line 4876
    new-instance v1, Landroid/widget/AbsHorizontalListView$FlingRunnable;

    invoke-direct {v1, p0}, Landroid/widget/AbsHorizontalListView$FlingRunnable;-><init>(Landroid/widget/AbsHorizontalListView;)V

    iput-object v1, p0, Landroid/widget/AbsHorizontalListView;->mFlingRunnable:Landroid/widget/AbsHorizontalListView$FlingRunnable;

    .line 4878
    :cond_2
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mFlingRunnable:Landroid/widget/AbsHorizontalListView$FlingRunnable;

    invoke-virtual {v1}, Landroid/widget/AbsHorizontalListView$FlingRunnable;->startSpringback()V

    goto :goto_0

    .line 4873
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private onTouchDown(Landroid/view/MotionEvent;)V
    .locals 8
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x0

    .line 4574
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    iput v4, p0, Landroid/widget/AbsHorizontalListView;->mActivePointerId:I

    .line 4575
    iget v4, p0, Landroid/widget/AbsHorizontalListView;->mPointerCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Landroid/widget/AbsHorizontalListView;->mPointerCount:I

    .line 4577
    iget v4, p0, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    const/4 v5, 0x6

    if-ne v4, v5, :cond_2

    .line 4579
    iget-object v4, p0, Landroid/widget/AbsHorizontalListView;->mFlingRunnable:Landroid/widget/AbsHorizontalListView$FlingRunnable;

    invoke-virtual {v4}, Landroid/widget/AbsHorizontalListView$FlingRunnable;->endFling()V

    .line 4580
    iget-object v4, p0, Landroid/widget/AbsHorizontalListView;->mPositionScroller:Landroid/widget/AbsHorizontalListView$PositionScroller;

    if-eqz v4, :cond_0

    .line 4581
    iget-object v4, p0, Landroid/widget/AbsHorizontalListView;->mPositionScroller:Landroid/widget/AbsHorizontalListView$PositionScroller;

    invoke-virtual {v4}, Landroid/widget/AbsHorizontalListView$PositionScroller;->stop()V

    .line 4583
    :cond_0
    const/4 v4, 0x5

    iput v4, p0, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    .line 4584
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Landroid/widget/AbsHorizontalListView;->mMotionX:I

    .line 4585
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Landroid/widget/AbsHorizontalListView;->mMotionY:I

    .line 4586
    iget v4, p0, Landroid/widget/AbsHorizontalListView;->mMotionX:I

    iput v4, p0, Landroid/widget/AbsHorizontalListView;->mLastX:I

    .line 4587
    iput v6, p0, Landroid/widget/AbsHorizontalListView;->mMotionCorrection:I

    .line 4588
    iput v6, p0, Landroid/widget/AbsHorizontalListView;->mDirection:I

    .line 4635
    :goto_0
    iget v4, p0, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    if-nez v4, :cond_1

    iget v4, p0, Landroid/widget/AbsHorizontalListView;->mMotionPosition:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    invoke-virtual {p0, p1}, Landroid/widget/AbsHorizontalListView;->performButtonActionOnTouchDown(Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 4637
    iget-object v4, p0, Landroid/widget/AbsHorizontalListView;->mPendingCheckForTap:Ljava/lang/Runnable;

    invoke-virtual {p0, v4}, Landroid/widget/AbsHorizontalListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4639
    :cond_1
    return-void

    .line 4590
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v2, v4

    .line 4591
    .local v2, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v3, v4

    .line 4592
    .local v3, "y":I
    invoke-virtual {p0, v2, v3}, Landroid/widget/AbsHorizontalListView;->pointToPosition(II)I

    move-result v0

    .line 4594
    .local v0, "motionPosition":I
    iget-boolean v4, p0, Landroid/widget/AbsHorizontalListView;->mDataChanged:Z

    if-nez v4, :cond_3

    .line 4595
    iget v4, p0, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_5

    .line 4597
    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->createScrollingCache()V

    .line 4598
    const/4 v4, 0x3

    iput v4, p0, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    .line 4599
    iput v6, p0, Landroid/widget/AbsHorizontalListView;->mMotionCorrection:I

    .line 4600
    invoke-virtual {p0, v3}, Landroid/widget/AbsHorizontalListView;->findMotionRow(I)I

    move-result v0

    .line 4601
    iget-object v4, p0, Landroid/widget/AbsHorizontalListView;->mFlingRunnable:Landroid/widget/AbsHorizontalListView$FlingRunnable;

    invoke-virtual {v4}, Landroid/widget/AbsHorizontalListView$FlingRunnable;->flywheelTouch()V

    .line 4623
    :cond_3
    :goto_1
    if-ltz v0, :cond_4

    .line 4625
    iget v4, p0, Landroid/widget/AbsHorizontalListView;->mFirstPosition:I

    sub-int v4, v0, v4

    invoke-virtual {p0, v4}, Landroid/widget/AbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 4626
    .local v1, "v":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v4

    iput v4, p0, Landroid/widget/AbsHorizontalListView;->mMotionViewOriginalLeft:I

    .line 4629
    .end local v1    # "v":Landroid/view/View;
    :cond_4
    iput v2, p0, Landroid/widget/AbsHorizontalListView;->mMotionX:I

    .line 4630
    iput v3, p0, Landroid/widget/AbsHorizontalListView;->mMotionY:I

    .line 4631
    iput v0, p0, Landroid/widget/AbsHorizontalListView;->mMotionPosition:I

    .line 4632
    const/high16 v4, -0x80000000

    iput v4, p0, Landroid/widget/AbsHorizontalListView;->mLastX:I

    goto :goto_0

    .line 4602
    :cond_5
    if-ltz v0, :cond_3

    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v4

    check-cast v4, Landroid/widget/ListAdapter;

    invoke-interface {v4, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 4606
    iput v6, p0, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    .line 4609
    iget-boolean v4, p0, Landroid/widget/AbsHorizontalListView;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v4, :cond_6

    .line 4610
    const/16 v4, 0x4e8e

    invoke-virtual {p0, v4}, Landroid/widget/AbsHorizontalListView;->performHapticFeedback(I)Z

    .line 4615
    :cond_6
    iget-object v4, p0, Landroid/widget/AbsHorizontalListView;->mPendingCheckForTap:Ljava/lang/Runnable;

    if-nez v4, :cond_7

    .line 4616
    new-instance v4, Landroid/widget/AbsHorizontalListView$CheckForTap;

    invoke-direct {v4, p0}, Landroid/widget/AbsHorizontalListView$CheckForTap;-><init>(Landroid/widget/AbsHorizontalListView;)V

    iput-object v4, p0, Landroid/widget/AbsHorizontalListView;->mPendingCheckForTap:Ljava/lang/Runnable;

    .line 4619
    :cond_7
    iget-object v4, p0, Landroid/widget/AbsHorizontalListView;->mPendingCheckForTap:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v5

    int-to-long v6, v5

    invoke-virtual {p0, v4, v6, v7}, Landroid/widget/AbsHorizontalListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1
.end method

.method private onTouchMove(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V
    .locals 7
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "vtev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x0

    .line 4642
    iget v4, p0, Landroid/widget/AbsHorizontalListView;->mActivePointerId:I

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    .line 4643
    .local v1, "pointerIndex":I
    const/4 v4, -0x1

    if-ne v1, v4, :cond_0

    .line 4644
    const/4 v1, 0x0

    .line 4645
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    iput v4, p0, Landroid/widget/AbsHorizontalListView;->mActivePointerId:I

    .line 4647
    :cond_0
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    float-to-int v2, v4

    .line 4648
    .local v2, "x":I
    iget-boolean v4, p0, Landroid/widget/AbsHorizontalListView;->mDataChanged:Z

    if-eqz v4, :cond_1

    .line 4651
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->layoutChildren()V

    .line 4654
    :cond_1
    iget v4, p0, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    packed-switch v4, :pswitch_data_0

    .line 4691
    :cond_2
    :goto_0
    :pswitch_0
    return-void

    .line 4660
    :pswitch_1
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    float-to-int v4, v4

    invoke-direct {p0, v2, v4, p2}, Landroid/widget/AbsHorizontalListView;->startScrollIfNeeded(IILandroid/view/MotionEvent;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 4665
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    .line 4666
    .local v3, "y":F
    int-to-float v4, v2

    iget v5, p0, Landroid/widget/AbsHorizontalListView;->mTouchSlop:I

    int-to-float v5, v5

    invoke-virtual {p0, v4, v3, v5}, Landroid/widget/AbsHorizontalListView;->pointInView(FFF)Z

    move-result v4

    if-nez v4, :cond_2

    .line 4667
    invoke-virtual {p0, v6}, Landroid/widget/AbsHorizontalListView;->setPressed(Z)V

    .line 4668
    iget v4, p0, Landroid/widget/AbsHorizontalListView;->mMotionPosition:I

    iget v5, p0, Landroid/widget/AbsHorizontalListView;->mFirstPosition:I

    sub-int/2addr v4, v5

    invoke-virtual {p0, v4}, Landroid/widget/AbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4669
    .local v0, "motionView":Landroid/view/View;
    if-eqz v0, :cond_3

    .line 4670
    invoke-virtual {v0, v6}, Landroid/view/View;->setPressed(Z)V

    .line 4672
    :cond_3
    iget v4, p0, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    if-nez v4, :cond_4

    iget-object v4, p0, Landroid/widget/AbsHorizontalListView;->mPendingCheckForTap:Ljava/lang/Runnable;

    :goto_1
    invoke-virtual {p0, v4}, Landroid/widget/AbsHorizontalListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4674
    const/4 v4, 0x2

    iput v4, p0, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    .line 4675
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->updateSelectorState()V

    goto :goto_0

    .line 4672
    :cond_4
    iget-object v4, p0, Landroid/widget/AbsHorizontalListView;->mPendingCheckForLongPress:Landroid/widget/AbsHorizontalListView$CheckForLongPress;

    goto :goto_1

    .line 4688
    .end local v0    # "motionView":Landroid/view/View;
    .end local v3    # "y":F
    :pswitch_2
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    float-to-int v4, v4

    invoke-direct {p0, v2, v4, p2}, Landroid/widget/AbsHorizontalListView;->scrollIfNeeded(IILandroid/view/MotionEvent;)V

    goto :goto_0

    .line 4654
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private onTouchUp(Landroid/view/MotionEvent;)V
    .locals 20
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 4694
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    move/from16 v17, v0

    packed-switch v17, :pswitch_data_0

    .line 4844
    :cond_0
    :goto_0
    :pswitch_0
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/AbsHorizontalListView;->setPressed(Z)V

    .line 4846
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1

    .line 4847
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 4848
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 4852
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView;->invalidate()V

    .line 4853
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mPendingCheckForLongPress:Landroid/widget/AbsHorizontalListView$CheckForLongPress;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/AbsHorizontalListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4854
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView;->recycleVelocityTracker()V

    .line 4856
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsHorizontalListView;->mActivePointerId:I

    .line 4857
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsHorizontalListView;->mPointerCount:I

    .line 4866
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2

    .line 4867
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/os/StrictMode$Span;->finish()V

    .line 4868
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsHorizontalListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 4870
    :cond_2
    :goto_1
    return-void

    .line 4698
    :pswitch_1
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/AbsHorizontalListView;->mMotionPosition:I

    .line 4699
    .local v13, "motionPosition":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mFirstPosition:I

    move/from16 v17, v0

    sub-int v17, v13, v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/AbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 4700
    .local v4, "child":Landroid/view/View;
    if-eqz v4, :cond_d

    .line 4701
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    move/from16 v17, v0

    if-eqz v17, :cond_3

    .line 4702
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/view/View;->setPressed(Z)V

    .line 4705
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v16

    .line 4706
    .local v16, "x":F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    cmpl-float v17, v16, v17

    if-lez v17, :cond_8

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView;->getWidth()I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    cmpg-float v17, v16, v17

    if-gez v17, :cond_8

    const/4 v10, 0x1

    .line 4707
    .local v10, "inList":Z
    :goto_2
    if-eqz v10, :cond_d

    invoke-virtual {v4}, Landroid/view/View;->hasFocusable()Z

    move-result v17

    if-nez v17, :cond_d

    .line 4708
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mPerformClick:Landroid/widget/AbsHorizontalListView$PerformClick;

    move-object/from16 v17, v0

    if-nez v17, :cond_4

    .line 4709
    new-instance v17, Landroid/widget/AbsHorizontalListView$PerformClick;

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Landroid/widget/AbsHorizontalListView$PerformClick;-><init>(Landroid/widget/AbsHorizontalListView;Landroid/widget/AbsHorizontalListView$1;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsHorizontalListView;->mPerformClick:Landroid/widget/AbsHorizontalListView$PerformClick;

    .line 4712
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsHorizontalListView;->mPerformClick:Landroid/widget/AbsHorizontalListView$PerformClick;

    .line 4713
    .local v14, "performClick":Landroid/widget/AbsHorizontalListView$PerformClick;
    iput v13, v14, Landroid/widget/AbsHorizontalListView$PerformClick;->mClickMotionPosition:I

    .line 4714
    invoke-virtual {v14}, Landroid/widget/AbsHorizontalListView$PerformClick;->rememberWindowAttachCount()V

    .line 4716
    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/AbsHorizontalListView;->mResurrectToPosition:I

    .line 4718
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    move/from16 v17, v0

    if-eqz v17, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_b

    .line 4719
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    move/from16 v17, v0

    if-nez v17, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mPendingCheckForTap:Ljava/lang/Runnable;

    move-object/from16 v17, v0

    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/AbsHorizontalListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4721
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsHorizontalListView;->mLayoutMode:I

    .line 4722
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsHorizontalListView;->mDataChanged:Z

    move/from16 v17, v0

    if-nez v17, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v13}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v17

    if-eqz v17, :cond_a

    .line 4723
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    .line 4724
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mMotionPosition:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/AbsHorizontalListView;->setSelectedPositionInt(I)V

    .line 4725
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView;->layoutChildren()V

    .line 4726
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/view/View;->setPressed(Z)V

    .line 4727
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mMotionPosition:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1, v4}, Landroid/widget/AbsHorizontalListView;->positionSelector(ILandroid/view/View;)V

    .line 4728
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/AbsHorizontalListView;->setPressed(Z)V

    .line 4729
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mSelector:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    if-eqz v17, :cond_6

    .line 4730
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mSelector:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 4731
    .local v8, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v8, :cond_6

    instance-of v0, v8, Landroid/graphics/drawable/TransitionDrawable;

    move/from16 v17, v0

    if-eqz v17, :cond_6

    .line 4732
    check-cast v8, Landroid/graphics/drawable/TransitionDrawable;

    .end local v8    # "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v8}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    .line 4735
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mTouchModeReset:Ljava/lang/Runnable;

    move-object/from16 v17, v0

    if-eqz v17, :cond_7

    .line 4736
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mTouchModeReset:Ljava/lang/Runnable;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/AbsHorizontalListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4738
    :cond_7
    new-instance v17, Landroid/widget/AbsHorizontalListView$3;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4, v14}, Landroid/widget/AbsHorizontalListView$3;-><init>(Landroid/widget/AbsHorizontalListView;Landroid/view/View;Landroid/widget/AbsHorizontalListView$PerformClick;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsHorizontalListView;->mTouchModeReset:Ljava/lang/Runnable;

    .line 4750
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mTouchModeReset:Ljava/lang/Runnable;

    move-object/from16 v17, v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v18

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-wide/from16 v2, v18

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/AbsHorizontalListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    .line 4706
    .end local v10    # "inList":Z
    .end local v14    # "performClick":Landroid/widget/AbsHorizontalListView$PerformClick;
    :cond_8
    const/4 v10, 0x0

    goto/16 :goto_2

    .line 4719
    .restart local v10    # "inList":Z
    .restart local v14    # "performClick":Landroid/widget/AbsHorizontalListView$PerformClick;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mPendingCheckForLongPress:Landroid/widget/AbsHorizontalListView$CheckForLongPress;

    move-object/from16 v17, v0

    goto/16 :goto_3

    .line 4753
    :cond_a
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    .line 4754
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView;->updateSelectorState()V

    .line 4755
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsHorizontalListView;->mForcedClick:Z

    move/from16 v17, v0

    if-eqz v17, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v13}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 4756
    invoke-virtual {v14}, Landroid/widget/AbsHorizontalListView$PerformClick;->run()V

    goto/16 :goto_1

    .line 4760
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsHorizontalListView;->mForcedClick:Z

    move/from16 v17, v0

    if-nez v17, :cond_c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsHorizontalListView;->mDataChanged:Z

    move/from16 v17, v0

    if-nez v17, :cond_d

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v13}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v17

    if-eqz v17, :cond_d

    .line 4761
    invoke-virtual {v14}, Landroid/widget/AbsHorizontalListView$PerformClick;->run()V

    .line 4766
    .end local v10    # "inList":Z
    .end local v14    # "performClick":Landroid/widget/AbsHorizontalListView$PerformClick;
    .end local v16    # "x":F
    :cond_d
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    .line 4767
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView;->updateSelectorState()V

    goto/16 :goto_0

    .line 4770
    .end local v4    # "child":Landroid/view/View;
    .end local v13    # "motionPosition":I
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView;->getChildCount()I

    move-result v5

    .line 4771
    .local v5, "childCount":I
    if-lez v5, :cond_14

    .line 4772
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/AbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getLeft()I

    move-result v9

    .line 4773
    .local v9, "firstChildLeft":I
    add-int/lit8 v17, v5, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/AbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getRight()I

    move-result v12

    .line 4774
    .local v12, "lastChildRight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v6, v0, Landroid/graphics/Rect;->left:I

    .line 4775
    .local v6, "contentLeft":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView;->getWidth()I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    sub-int v7, v17, v18

    .line 4776
    .local v7, "contentRight":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mFirstPosition:I

    move/from16 v17, v0

    if-nez v17, :cond_e

    if-lt v9, v6, :cond_e

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mFirstPosition:I

    move/from16 v17, v0

    add-int v17, v17, v5

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mItemCount:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_e

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView;->getWidth()I

    move-result v17

    sub-int v17, v17, v7

    move/from16 v0, v17

    if-gt v12, v0, :cond_e

    .line 4779
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    .line 4780
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/AbsHorizontalListView;->reportScrollStateChange(I)V

    goto/16 :goto_0

    .line 4782
    :cond_e
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/AbsHorizontalListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 4783
    .local v15, "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v17, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mMaximumVelocity:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 4785
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mActivePointerId:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mVelocityScale:F

    move/from16 v18, v0

    mul-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v11, v0

    .line 4791
    .local v11, "initialVelocity":I
    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mMinimumVelocity:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_12

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mFirstPosition:I

    move/from16 v17, v0

    if-nez v17, :cond_f

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mOverscrollDistance:I

    move/from16 v17, v0

    sub-int v17, v6, v17

    move/from16 v0, v17

    if-eq v9, v0, :cond_12

    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mFirstPosition:I

    move/from16 v17, v0

    add-int v17, v17, v5

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mItemCount:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_10

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mOverscrollDistance:I

    move/from16 v17, v0

    add-int v17, v17, v7

    move/from16 v0, v17

    if-eq v12, v0, :cond_12

    .line 4796
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mFlingRunnable:Landroid/widget/AbsHorizontalListView$FlingRunnable;

    move-object/from16 v17, v0

    if-nez v17, :cond_11

    .line 4797
    new-instance v17, Landroid/widget/AbsHorizontalListView$FlingRunnable;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/AbsHorizontalListView$FlingRunnable;-><init>(Landroid/widget/AbsHorizontalListView;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsHorizontalListView;->mFlingRunnable:Landroid/widget/AbsHorizontalListView$FlingRunnable;

    .line 4799
    :cond_11
    const/16 v17, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/AbsHorizontalListView;->reportScrollStateChange(I)V

    .line 4801
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mFlingRunnable:Landroid/widget/AbsHorizontalListView$FlingRunnable;

    move-object/from16 v17, v0

    neg-int v0, v11

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/AbsHorizontalListView$FlingRunnable;->start(I)V

    goto/16 :goto_0

    .line 4803
    :cond_12
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    .line 4804
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/AbsHorizontalListView;->reportScrollStateChange(I)V

    .line 4805
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mFlingRunnable:Landroid/widget/AbsHorizontalListView$FlingRunnable;

    move-object/from16 v17, v0

    if-eqz v17, :cond_13

    .line 4806
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mFlingRunnable:Landroid/widget/AbsHorizontalListView$FlingRunnable;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/AbsHorizontalListView$FlingRunnable;->endFling()V

    .line 4808
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mPositionScroller:Landroid/widget/AbsHorizontalListView$PositionScroller;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    .line 4809
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mPositionScroller:Landroid/widget/AbsHorizontalListView$PositionScroller;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/AbsHorizontalListView$PositionScroller;->stop()V

    goto/16 :goto_0

    .line 4814
    .end local v6    # "contentLeft":I
    .end local v7    # "contentRight":I
    .end local v9    # "firstChildLeft":I
    .end local v11    # "initialVelocity":I
    .end local v12    # "lastChildRight":I
    .end local v15    # "velocityTracker":Landroid/view/VelocityTracker;
    :cond_14
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    .line 4815
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/AbsHorizontalListView;->reportScrollStateChange(I)V

    goto/16 :goto_0

    .line 4822
    .end local v5    # "childCount":I
    :pswitch_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsHorizontalListView;->USE_SET_INTEGRATOR_HAPTIC:Z

    move/from16 v17, v0

    if-eqz v17, :cond_15

    .line 4823
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsHorizontalListView;->mHapticOverScroll:Z

    .line 4827
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mFlingRunnable:Landroid/widget/AbsHorizontalListView$FlingRunnable;

    move-object/from16 v17, v0

    if-nez v17, :cond_16

    .line 4828
    new-instance v17, Landroid/widget/AbsHorizontalListView$FlingRunnable;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/AbsHorizontalListView$FlingRunnable;-><init>(Landroid/widget/AbsHorizontalListView;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsHorizontalListView;->mFlingRunnable:Landroid/widget/AbsHorizontalListView$FlingRunnable;

    .line 4830
    :cond_16
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/AbsHorizontalListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 4831
    .restart local v15    # "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v17, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mMaximumVelocity:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 4832
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mActivePointerId:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v17

    move/from16 v0, v17

    float-to-int v11, v0

    .line 4834
    .restart local v11    # "initialVelocity":I
    const/16 v17, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/AbsHorizontalListView;->reportScrollStateChange(I)V

    .line 4835
    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mMinimumVelocity:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_17

    .line 4836
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mFlingRunnable:Landroid/widget/AbsHorizontalListView$FlingRunnable;

    move-object/from16 v17, v0

    neg-int v0, v11

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/AbsHorizontalListView$FlingRunnable;->startOverfling(I)V

    goto/16 :goto_0

    .line 4838
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mFlingRunnable:Landroid/widget/AbsHorizontalListView$FlingRunnable;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/AbsHorizontalListView$FlingRunnable;->startSpringback()V

    goto/16 :goto_0

    .line 4694
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private positionPopup()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 7059
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v1, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 7060
    .local v1, "screenHeight":I
    const/4 v3, 0x2

    new-array v2, v3, [I

    .line 7061
    .local v2, "xy":[I
    invoke-virtual {p0, v2}, Landroid/widget/AbsHorizontalListView;->getLocationOnScreen([I)V

    .line 7064
    const/4 v3, 0x1

    aget v3, v2, v3

    sub-int v3, v1, v3

    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/widget/AbsHorizontalListView;->mDensityScale:F

    const/high16 v5, 0x41a00000    # 20.0f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    add-int v0, v3, v4

    .line 7065
    .local v0, "bottomGap":I
    iget-object v3, p0, Landroid/widget/AbsHorizontalListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v3

    if-nez v3, :cond_0

    .line 7066
    iget-object v3, p0, Landroid/widget/AbsHorizontalListView;->mPopup:Landroid/widget/PopupWindow;

    const/16 v4, 0x51

    aget v5, v2, v7

    invoke-virtual {v3, p0, v4, v5, v0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 7071
    :goto_0
    return-void

    .line 7069
    :cond_0
    iget-object v3, p0, Landroid/widget/AbsHorizontalListView;->mPopup:Landroid/widget/PopupWindow;

    aget v4, v2, v7

    invoke-virtual {v3, v4, v0, v6, v6}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_0
.end method

.method private positionSelector(IIII)V
    .locals 5
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "r"    # I
    .param p4, "b"    # I

    .prologue
    .line 2840
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mSelectorRect:Landroid/graphics/Rect;

    iget v1, p0, Landroid/widget/AbsHorizontalListView;->mSelectionLeftPadding:I

    sub-int v1, p1, v1

    iget v2, p0, Landroid/widget/AbsHorizontalListView;->mSelectionTopPadding:I

    sub-int v2, p2, v2

    iget v3, p0, Landroid/widget/AbsHorizontalListView;->mSelectionRightPadding:I

    add-int/2addr v3, p3

    iget v4, p0, Landroid/widget/AbsHorizontalListView;->mSelectionBottomPadding:I

    add-int/2addr v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 2842
    return-void
.end method

.method private recycleVelocityTracker()V
    .locals 1

    .prologue
    .line 5141
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 5142
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 5143
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/AbsHorizontalListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 5145
    :cond_0
    return-void
.end method

.method private registerMotionListener()V
    .locals 3

    .prologue
    .line 8311
    const-string v0, "[registerDoubleTapMotionListener]"

    invoke-static {v0}, Landroid/widget/AbsHorizontalListView;->log(Ljava/lang/String;)V

    .line 8312
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v0, :cond_0

    .line 8313
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mMotionListener:Landroid/hardware/motion/MRListener;

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/hardware/motion/MotionRecognitionManager;->registerListenerEvent(Landroid/hardware/motion/MRListener;I)V

    .line 8316
    :cond_0
    return-void
.end method

.method private releaseAllBoosters()V
    .locals 1

    .prologue
    .line 933
    iget-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mDVFSLockAcquired:Z

    if-eqz v0, :cond_2

    .line 934
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mDVFSHelper:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_0

    .line 935
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mDVFSHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    .line 937
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mDVFSHelperCore:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_1

    .line 938
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mDVFSHelperCore:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    .line 940
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mDVFSLockAcquired:Z

    .line 942
    :cond_2
    return-void
.end method

.method static retrieveFromScrap(Ljava/util/ArrayList;I)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;I)",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 8266
    .local p0, "scrapViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 8267
    .local v1, "size":I
    if-lez v1, :cond_2

    .line 8269
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 8270
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 8271
    .local v2, "view":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/AbsHorizontalListView$LayoutParams;

    iget v3, v3, Landroid/widget/AbsHorizontalListView$LayoutParams;->scrappedFromPosition:I

    if-ne v3, p1, :cond_0

    .line 8273
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 8279
    .end local v0    # "i":I
    .end local v2    # "view":Landroid/view/View;
    :goto_1
    return-object v2

    .line 8269
    .restart local v0    # "i":I
    .restart local v2    # "view":Landroid/view/View;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 8277
    .end local v2    # "view":Landroid/view/View;
    :cond_1
    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    move-object v2, v3

    goto :goto_1

    .line 8279
    .end local v0    # "i":I
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private scrollIfNeeded(IILandroid/view/MotionEvent;)V
    .locals 30
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "vtev"    # Landroid/view/MotionEvent;

    .prologue
    .line 3799
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsHorizontalListView;->mMotionX:I

    sub-int v29, p1, v3

    .line 3800
    .local v29, "rawDeltaX":I
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsHorizontalListView;->mMotionCorrection:I

    sub-int v16, v29, v3

    .line 3801
    .local v16, "deltaX":I
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsHorizontalListView;->mLastX:I

    const/high16 v5, -0x80000000

    if-eq v3, v5, :cond_a

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsHorizontalListView;->mLastX:I

    sub-int v17, p1, v3

    .line 3803
    .local v17, "incrementalDeltaX":I
    :goto_0
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    const/4 v5, 0x3

    if-ne v3, v5, :cond_e

    .line 3811
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsHorizontalListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    if-nez v3, :cond_0

    .line 3813
    const-string v3, "AbsHorizontalListView-scroll"

    invoke-static {v3}, Landroid/os/StrictMode;->enterCriticalSpan(Ljava/lang/String;)Landroid/os/StrictMode$Span;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/widget/AbsHorizontalListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 3816
    :cond_0
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsHorizontalListView;->mLastX:I

    move/from16 v0, p1

    if-eq v0, v3, :cond_9

    .line 3820
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsHorizontalListView;->mGroupFlags:I

    const/high16 v5, 0x80000

    and-int/2addr v3, v5

    if-nez v3, :cond_1

    invoke-static/range {v29 .. v29}, Ljava/lang/Math;->abs(I)I

    move-result v3

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/AbsHorizontalListView;->mTouchSlop:I

    if-le v3, v5, :cond_1

    .line 3822
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView;->getParent()Landroid/view/ViewParent;

    move-result-object v28

    .line 3823
    .local v28, "parent":Landroid/view/ViewParent;
    if-eqz v28, :cond_1

    .line 3824
    const/4 v3, 0x1

    move-object/from16 v0, v28

    invoke-interface {v0, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 3829
    .end local v28    # "parent":Landroid/view/ViewParent;
    :cond_1
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsHorizontalListView;->mMotionPosition:I

    if-ltz v3, :cond_b

    .line 3830
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsHorizontalListView;->mMotionPosition:I

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/AbsHorizontalListView;->mFirstPosition:I

    sub-int v18, v3, v5

    .line 3837
    .local v18, "motionIndex":I
    :goto_1
    const/16 v21, 0x0

    .line 3838
    .local v21, "motionViewPrevLeft":I
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/AbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    .line 3839
    .local v20, "motionView":Landroid/view/View;
    if-eqz v20, :cond_2

    .line 3840
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getLeft()I

    move-result v21

    .line 3844
    :cond_2
    const/4 v15, 0x0

    .line 3845
    .local v15, "atEdge":Z
    if-eqz v17, :cond_3

    .line 3846
    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsHorizontalListView;->trackMotionScroll(II)Z

    move-result v15

    .line 3850
    :cond_3
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/AbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    .line 3851
    if-eqz v20, :cond_8

    .line 3854
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getLeft()I

    move-result v22

    .line 3855
    .local v22, "motionViewRealLeft":I
    if-eqz v15, :cond_7

    .line 3858
    move/from16 v0, v17

    neg-int v3, v0

    sub-int v5, v22, v21

    sub-int v4, v3, v5

    .line 3860
    .local v4, "overscroll":I
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/AbsHorizontalListView;->mScrollX:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget v10, v0, Landroid/widget/AbsHorizontalListView;->mOverscrollDistance:I

    const/4 v11, 0x0

    const/4 v12, 0x1

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v12}, Landroid/widget/AbsHorizontalListView;->overScrollBy(IIIIIIIIZ)Z

    .line 3862
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsHorizontalListView;->mOverscrollDistance:I

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/AbsHorizontalListView;->mScrollX:I

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-ne v3, v5, :cond_4

    .line 3864
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsHorizontalListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_4

    .line 3865
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsHorizontalListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 3869
    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView;->getOverScrollMode()I

    move-result v27

    .line 3870
    .local v27, "overscrollMode":I
    if-eqz v27, :cond_5

    const/4 v3, 0x1

    move/from16 v0, v27

    if-ne v0, v3, :cond_7

    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView;->contentFits()Z

    move-result v3

    if-nez v3, :cond_7

    .line 3873
    :cond_5
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/AbsHorizontalListView;->mDirection:I

    .line 3876
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    move/from16 v26, v0

    .line 3879
    .local v26, "oldTouchMode":I
    const/4 v3, 0x5

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    .line 3880
    if-lez v29, :cond_c

    .line 3892
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsHorizontalListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    neg-int v5, v4

    int-to-float v5, v5

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView;->getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v5, v7

    const/high16 v7, 0x3f800000    # 1.0f

    move/from16 v0, p2

    int-to-float v8, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView;->getHeight()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    sub-float/2addr v7, v8

    invoke-virtual {v3, v5, v7}, Landroid/widget/EdgeEffect;->onPull(FF)V

    .line 3894
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsHorizontalListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_6

    .line 3895
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsHorizontalListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 3897
    :cond_6
    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/widget/AbsHorizontalListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->getMaxHeight()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView;->getPaddingLeft()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView;->getHeight()I

    move-result v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v5, v7, v8}, Landroid/widget/AbsHorizontalListView;->invalidate(IIII)V

    .line 3911
    .end local v4    # "overscroll":I
    .end local v26    # "oldTouchMode":I
    .end local v27    # "overscrollMode":I
    :cond_7
    :goto_2
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsHorizontalListView;->mMotionX:I

    .line 3913
    .end local v22    # "motionViewRealLeft":I
    :cond_8
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsHorizontalListView;->mLastX:I

    .line 3987
    .end local v15    # "atEdge":Z
    .end local v18    # "motionIndex":I
    .end local v20    # "motionView":Landroid/view/View;
    .end local v21    # "motionViewPrevLeft":I
    :cond_9
    :goto_3
    return-void

    .end local v17    # "incrementalDeltaX":I
    :cond_a
    move/from16 v17, v16

    .line 3801
    goto/16 :goto_0

    .line 3834
    .restart local v17    # "incrementalDeltaX":I
    :cond_b
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView;->getChildCount()I

    move-result v3

    div-int/lit8 v18, v3, 0x2

    .restart local v18    # "motionIndex":I
    goto/16 :goto_1

    .line 3899
    .restart local v4    # "overscroll":I
    .restart local v15    # "atEdge":Z
    .restart local v20    # "motionView":Landroid/view/View;
    .restart local v21    # "motionViewPrevLeft":I
    .restart local v22    # "motionViewRealLeft":I
    .restart local v26    # "oldTouchMode":I
    .restart local v27    # "overscrollMode":I
    :cond_c
    if-gez v29, :cond_7

    .line 3900
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsHorizontalListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    int-to-float v5, v4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView;->getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v5, v7

    move/from16 v0, p2

    int-to-float v7, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    invoke-virtual {v3, v5, v7}, Landroid/widget/EdgeEffect;->onPull(FF)V

    .line 3902
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsHorizontalListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_d

    .line 3903
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsHorizontalListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 3905
    :cond_d
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView;->getWidth()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView;->getPaddingRight()I

    move-result v5

    sub-int/2addr v3, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/AbsHorizontalListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v5}, Landroid/widget/EdgeEffect;->getMaxHeight()I

    move-result v5

    sub-int/2addr v3, v5

    const/4 v5, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView;->getWidth()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView;->getHeight()I

    move-result v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v5, v7, v8}, Landroid/widget/AbsHorizontalListView;->invalidate(IIII)V

    goto :goto_2

    .line 3915
    .end local v4    # "overscroll":I
    .end local v15    # "atEdge":Z
    .end local v18    # "motionIndex":I
    .end local v20    # "motionView":Landroid/view/View;
    .end local v21    # "motionViewPrevLeft":I
    .end local v22    # "motionViewRealLeft":I
    .end local v26    # "oldTouchMode":I
    .end local v27    # "overscrollMode":I
    :cond_e
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    const/4 v5, 0x5

    if-ne v3, v5, :cond_9

    .line 3916
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsHorizontalListView;->mLastX:I

    move/from16 v0, p1

    if-eq v0, v3, :cond_9

    .line 3917
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mScrollX:I

    move/from16 v25, v0

    .line 3918
    .local v25, "oldScroll":I
    sub-int v24, v25, v17

    .line 3919
    .local v24, "newScroll":I
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsHorizontalListView;->mLastX:I

    move/from16 v0, p1

    if-le v0, v3, :cond_17

    const/16 v23, 0x1

    .line 3921
    .local v23, "newDirection":I
    :goto_4
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsHorizontalListView;->mDirection:I

    if-nez v3, :cond_f

    .line 3922
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsHorizontalListView;->mDirection:I

    .line 3925
    :cond_f
    move/from16 v0, v17

    neg-int v6, v0

    .line 3926
    .local v6, "overScrollDistance":I
    if-gez v24, :cond_10

    if-gez v25, :cond_11

    :cond_10
    if-lez v24, :cond_18

    if-gtz v25, :cond_18

    .line 3927
    :cond_11
    move/from16 v0, v25

    neg-int v6, v0

    .line 3928
    add-int v17, v17, v6

    .line 3933
    :goto_5
    if-eqz v6, :cond_14

    .line 3934
    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v8, v0, Landroid/widget/AbsHorizontalListView;->mScrollX:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget v12, v0, Landroid/widget/AbsHorizontalListView;->mOverscrollDistance:I

    const/4 v13, 0x0

    const/4 v14, 0x1

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v14}, Landroid/widget/AbsHorizontalListView;->overScrollBy(IIIIIIIIZ)Z

    .line 3936
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView;->getOverScrollMode()I

    move-result v27

    .line 3937
    .restart local v27    # "overscrollMode":I
    if-eqz v27, :cond_12

    const/4 v3, 0x1

    move/from16 v0, v27

    if-ne v0, v3, :cond_14

    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView;->contentFits()Z

    move-result v3

    if-nez v3, :cond_14

    .line 3940
    :cond_12
    if-lez v29, :cond_19

    .line 3941
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsHorizontalListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    int-to-float v5, v6

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView;->getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v5, v7

    const/high16 v7, 0x3f800000    # 1.0f

    move/from16 v0, p2

    int-to-float v8, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView;->getHeight()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    sub-float/2addr v7, v8

    invoke-virtual {v3, v5, v7}, Landroid/widget/EdgeEffect;->onPull(FF)V

    .line 3943
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsHorizontalListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_13

    .line 3944
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsHorizontalListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 3946
    :cond_13
    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/widget/AbsHorizontalListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->getMaxHeight()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView;->getPaddingLeft()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView;->getHeight()I

    move-result v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v5, v7, v8}, Landroid/widget/AbsHorizontalListView;->invalidate(IIII)V

    .line 3962
    .end local v27    # "overscrollMode":I
    :cond_14
    :goto_6
    if-eqz v17, :cond_16

    .line 3964
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsHorizontalListView;->mScrollX:I

    if-eqz v3, :cond_15

    .line 3965
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/AbsHorizontalListView;->mScrollX:I

    .line 3966
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView;->invalidateParentIfNeeded()V

    .line 3969
    :cond_15
    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsHorizontalListView;->trackMotionScroll(II)Z

    .line 3971
    const/4 v3, 0x3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    .line 3975
    invoke-virtual/range {p0 .. p1}, Landroid/widget/AbsHorizontalListView;->findClosestMotionRow(I)I

    move-result v19

    .line 3977
    .local v19, "motionPosition":I
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/AbsHorizontalListView;->mMotionCorrection:I

    .line 3978
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsHorizontalListView;->mFirstPosition:I

    sub-int v3, v19, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/widget/AbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    .line 3979
    .restart local v20    # "motionView":Landroid/view/View;
    if-eqz v20, :cond_1b

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getLeft()I

    move-result v3

    :goto_7
    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/AbsHorizontalListView;->mMotionViewOriginalLeft:I

    .line 3980
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsHorizontalListView;->mMotionX:I

    .line 3981
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsHorizontalListView;->mMotionPosition:I

    .line 3983
    .end local v19    # "motionPosition":I
    .end local v20    # "motionView":Landroid/view/View;
    :cond_16
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsHorizontalListView;->mLastX:I

    .line 3984
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsHorizontalListView;->mDirection:I

    goto/16 :goto_3

    .line 3919
    .end local v6    # "overScrollDistance":I
    .end local v23    # "newDirection":I
    :cond_17
    const/16 v23, -0x1

    goto/16 :goto_4

    .line 3930
    .restart local v6    # "overScrollDistance":I
    .restart local v23    # "newDirection":I
    :cond_18
    const/16 v17, 0x0

    goto/16 :goto_5

    .line 3949
    .restart local v27    # "overscrollMode":I
    :cond_19
    if-gez v29, :cond_14

    .line 3950
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsHorizontalListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    int-to-float v5, v6

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView;->getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v5, v7

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView;->getHeight()I

    move-result v7

    div-int v7, p2, v7

    int-to-float v7, v7

    invoke-virtual {v3, v5, v7}, Landroid/widget/EdgeEffect;->onPull(FF)V

    .line 3952
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsHorizontalListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_1a

    .line 3953
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsHorizontalListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 3955
    :cond_1a
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView;->getWidth()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView;->getPaddingRight()I

    move-result v5

    sub-int/2addr v3, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/AbsHorizontalListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v5}, Landroid/widget/EdgeEffect;->getMaxHeight()I

    move-result v5

    sub-int/2addr v3, v5

    const/4 v5, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView;->getWidth()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView;->getHeight()I

    move-result v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v5, v7, v8}, Landroid/widget/AbsHorizontalListView;->invalidate(IIII)V

    goto/16 :goto_6

    .line 3979
    .end local v27    # "overscrollMode":I
    .restart local v19    # "motionPosition":I
    .restart local v20    # "motionView":Landroid/view/View;
    :cond_1b
    const/4 v3, 0x0

    goto :goto_7
.end method

.method private setFastScrollerAlwaysVisibleUiThread(Z)V
    .locals 1
    .param p1, "alwaysShow"    # Z

    .prologue
    .line 1664
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mFastScroller:Landroid/widget/HorizontalFastScroller;

    if-eqz v0, :cond_0

    .line 1665
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mFastScroller:Landroid/widget/HorizontalFastScroller;

    invoke-virtual {v0, p1}, Landroid/widget/HorizontalFastScroller;->setAlwaysShow(Z)V

    .line 1667
    :cond_0
    return-void
.end method

.method private setFastScrollerEnabledUiThread(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 1614
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mFastScroller:Landroid/widget/HorizontalFastScroller;

    if-eqz v0, :cond_2

    .line 1615
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mFastScroller:Landroid/widget/HorizontalFastScroller;

    invoke-virtual {v0, p1}, Landroid/widget/HorizontalFastScroller;->setEnabled(Z)V

    .line 1621
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->resolvePadding()V

    .line 1623
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mFastScroller:Landroid/widget/HorizontalFastScroller;

    if-eqz v0, :cond_1

    .line 1624
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mFastScroller:Landroid/widget/HorizontalFastScroller;

    invoke-virtual {v0}, Landroid/widget/HorizontalFastScroller;->updateLayout()V

    .line 1626
    :cond_1
    return-void

    .line 1616
    :cond_2
    if-eqz p1, :cond_0

    .line 1617
    new-instance v0, Landroid/widget/HorizontalFastScroller;

    invoke-direct {v0, p0}, Landroid/widget/HorizontalFastScroller;-><init>(Landroid/widget/AbsHorizontalListView;)V

    iput-object v0, p0, Landroid/widget/AbsHorizontalListView;->mFastScroller:Landroid/widget/HorizontalFastScroller;

    .line 1618
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mFastScroller:Landroid/widget/HorizontalFastScroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalFastScroller;->setEnabled(Z)V

    goto :goto_0
.end method

.method private showPopup()V
    .locals 1

    .prologue
    .line 7050
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getWindowVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 7051
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/widget/AbsHorizontalListView;->createTextFilter(Z)V

    .line 7052
    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->positionPopup()V

    .line 7054
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->checkFocus()V

    .line 7056
    :cond_0
    return-void
.end method

.method private startScrollIfNeeded(IILandroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "vtev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 3754
    iget v7, p0, Landroid/widget/AbsHorizontalListView;->mMotionX:I

    sub-int v1, p1, v7

    .line 3755
    .local v1, "deltaX":I
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 3756
    .local v2, "distance":I
    iget v7, p0, Landroid/widget/AbsHorizontalListView;->mScrollX:I

    if-eqz v7, :cond_2

    move v5, v9

    .line 3757
    .local v5, "overscroll":Z
    :goto_0
    if-nez v5, :cond_0

    iget v7, p0, Landroid/widget/AbsHorizontalListView;->mTouchSlop:I

    if-le v2, v7, :cond_7

    .line 3758
    :cond_0
    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->createScrollingCache()V

    .line 3759
    if-eqz v5, :cond_3

    .line 3760
    const/4 v7, 0x5

    iput v7, p0, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    .line 3761
    iput v8, p0, Landroid/widget/AbsHorizontalListView;->mMotionCorrection:I

    .line 3766
    :goto_1
    iget-object v7, p0, Landroid/widget/AbsHorizontalListView;->mPendingCheckForLongPress:Landroid/widget/AbsHorizontalListView$CheckForLongPress;

    invoke-virtual {p0, v7}, Landroid/widget/AbsHorizontalListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3767
    invoke-virtual {p0, v8}, Landroid/widget/AbsHorizontalListView;->setPressed(Z)V

    .line 3768
    iget v7, p0, Landroid/widget/AbsHorizontalListView;->mMotionPosition:I

    iget v10, p0, Landroid/widget/AbsHorizontalListView;->mFirstPosition:I

    sub-int/2addr v7, v10

    invoke-virtual {p0, v7}, Landroid/widget/AbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 3769
    .local v4, "motionView":Landroid/view/View;
    if-eqz v4, :cond_1

    .line 3770
    invoke-virtual {v4, v8}, Landroid/view/View;->setPressed(Z)V

    .line 3773
    :cond_1
    iget v7, p0, Landroid/widget/AbsHorizontalListView;->mPointerCount:I

    if-le v7, v9, :cond_5

    .line 3779
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getChildCount()I

    move-result v0

    .line 3780
    .local v0, "childCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    if-ge v3, v0, :cond_5

    .line 3781
    invoke-virtual {p0, v3}, Landroid/widget/AbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/view/View;->setPressed(Z)V

    .line 3780
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .end local v0    # "childCount":I
    .end local v3    # "i":I
    .end local v4    # "motionView":Landroid/view/View;
    .end local v5    # "overscroll":Z
    :cond_2
    move v5, v8

    .line 3756
    goto :goto_0

    .line 3763
    .restart local v5    # "overscroll":Z
    :cond_3
    const/4 v7, 0x3

    iput v7, p0, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    .line 3764
    if-lez v1, :cond_4

    iget v7, p0, Landroid/widget/AbsHorizontalListView;->mTouchSlop:I

    :goto_3
    iput v7, p0, Landroid/widget/AbsHorizontalListView;->mMotionCorrection:I

    goto :goto_1

    :cond_4
    iget v7, p0, Landroid/widget/AbsHorizontalListView;->mTouchSlop:I

    neg-int v7, v7

    goto :goto_3

    .line 3784
    .restart local v4    # "motionView":Landroid/view/View;
    :cond_5
    invoke-virtual {p0, v9}, Landroid/widget/AbsHorizontalListView;->reportScrollStateChange(I)V

    .line 3787
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    .line 3788
    .local v6, "parent":Landroid/view/ViewParent;
    if-eqz v6, :cond_6

    .line 3789
    invoke-interface {v6, v9}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 3791
    :cond_6
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AbsHorizontalListView;->scrollIfNeeded(IILandroid/view/MotionEvent;)V

    move v7, v9

    .line 3795
    .end local v4    # "motionView":Landroid/view/View;
    .end local v6    # "parent":Landroid/view/ViewParent;
    :goto_4
    return v7

    :cond_7
    move v7, v8

    goto :goto_4
.end method

.method private unregisterMotionListener()V
    .locals 2

    .prologue
    .line 8322
    const-string v0, "[unregisterDoubleTapMotionListener]"

    invoke-static {v0}, Landroid/widget/AbsHorizontalListView;->log(Ljava/lang/String;)V

    .line 8323
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v0, :cond_0

    .line 8324
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mMotionListener:Landroid/hardware/motion/MRListener;

    invoke-virtual {v0, v1}, Landroid/hardware/motion/MotionRecognitionManager;->unregisterListener(Landroid/hardware/motion/MRListener;)V

    .line 8326
    :cond_0
    return-void
.end method

.method private updateOnScreenCheckedViews()V
    .locals 8

    .prologue
    .line 1462
    iget v2, p0, Landroid/widget/AbsHorizontalListView;->mFirstPosition:I

    .line 1463
    .local v2, "firstPos":I
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getChildCount()I

    move-result v1

    .line 1464
    .local v1, "count":I
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v7, 0xb

    if-lt v6, v7, :cond_1

    const/4 v5, 0x1

    .line 1466
    .local v5, "useActivated":Z
    :goto_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v1, :cond_3

    .line 1467
    invoke-virtual {p0, v3}, Landroid/widget/AbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1468
    .local v0, "child":Landroid/view/View;
    add-int v4, v2, v3

    .line 1470
    .local v4, "position":I
    instance-of v6, v0, Landroid/widget/Checkable;

    if-eqz v6, :cond_2

    .line 1471
    check-cast v0, Landroid/widget/Checkable;

    .end local v0    # "child":Landroid/view/View;
    iget-object v6, p0, Landroid/widget/AbsHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    invoke-interface {v0, v6}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 1466
    :cond_0
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1464
    .end local v3    # "i":I
    .end local v4    # "position":I
    .end local v5    # "useActivated":Z
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .line 1472
    .restart local v0    # "child":Landroid/view/View;
    .restart local v3    # "i":I
    .restart local v4    # "position":I
    .restart local v5    # "useActivated":Z
    :cond_2
    if-eqz v5, :cond_0

    .line 1473
    iget-object v6, p0, Landroid/widget/AbsHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    invoke-virtual {v0, v6}, Landroid/view/View;->setActivated(Z)V

    goto :goto_2

    .line 1476
    .end local v0    # "child":Landroid/view/View;
    .end local v4    # "position":I
    :cond_3
    return-void
.end method

.method private useDefaultSelector()V
    .locals 2

    .prologue
    .line 1959
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080062

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/AbsHorizontalListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 1961
    return-void
.end method


# virtual methods
.method public addToPressItemListArray(II)V
    .locals 7
    .param p1, "firstpoint"    # I
    .param p2, "secondpoint"    # I

    .prologue
    .line 8471
    const/4 v2, 0x0

    .line 8472
    .local v2, "isSameValueExist":Z
    const/4 v0, 0x0

    .line 8474
    .local v0, "checkCount":I
    iget-boolean v4, p0, Landroid/widget/AbsHorizontalListView;->mIsMultiFocusEnabled:Z

    if-nez v4, :cond_0

    .line 8554
    :goto_0
    return-void

    .line 8478
    :cond_0
    const/4 v4, -0x1

    if-ne p2, v4, :cond_5

    .line 8479
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget v4, p0, Landroid/widget/AbsHorizontalListView;->mTwPressItemListIndex:I

    if-ge v1, v4, :cond_3

    .line 8480
    iget-object v4, p0, Landroid/widget/AbsHorizontalListView;->mTwPressItemListArray:[I

    aget v4, v4, v1

    if-ne v4, p1, :cond_2

    .line 8481
    const/4 v2, 0x1

    .line 8483
    move v3, v1

    .local v3, "j":I
    :goto_2
    iget v4, p0, Landroid/widget/AbsHorizontalListView;->mTwPressItemListIndex:I

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_1

    .line 8484
    iget-object v4, p0, Landroid/widget/AbsHorizontalListView;->mTwPressItemListArray:[I

    iget-object v5, p0, Landroid/widget/AbsHorizontalListView;->mTwPressItemListArray:[I

    add-int/lit8 v6, v3, 0x1

    aget v5, v5, v6

    aput v5, v4, v3

    .line 8483
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 8486
    :cond_1
    iget v4, p0, Landroid/widget/AbsHorizontalListView;->mTwPressItemListIndex:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Landroid/widget/AbsHorizontalListView;->mTwPressItemListIndex:I

    .line 8479
    .end local v3    # "j":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 8491
    :cond_3
    if-nez v2, :cond_4

    .line 8492
    iget-object v4, p0, Landroid/widget/AbsHorizontalListView;->mTwPressItemListArray:[I

    iget v5, p0, Landroid/widget/AbsHorizontalListView;->mTwPressItemListIndex:I

    aput p1, v4, v5

    .line 8493
    iget v4, p0, Landroid/widget/AbsHorizontalListView;->mTwPressItemListIndex:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Landroid/widget/AbsHorizontalListView;->mTwPressItemListIndex:I

    .line 8552
    :cond_4
    :goto_3
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->invalidate()V

    goto :goto_0

    .line 8497
    .end local v1    # "i":I
    :cond_5
    if-ge p1, p2, :cond_9

    .line 8498
    sub-int v4, p2, p1

    add-int/lit8 v0, v4, 0x1

    .line 8500
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_4
    if-ge v1, v0, :cond_4

    .line 8501
    const/4 v2, 0x0

    .line 8503
    const/4 v3, 0x0

    .restart local v3    # "j":I
    :goto_5
    iget v4, p0, Landroid/widget/AbsHorizontalListView;->mTwPressItemListIndex:I

    if-ge v3, v4, :cond_7

    .line 8504
    iget-object v4, p0, Landroid/widget/AbsHorizontalListView;->mTwPressItemListArray:[I

    aget v4, v4, v3

    if-ne v4, p1, :cond_6

    .line 8505
    const/4 v2, 0x1

    .line 8503
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 8510
    :cond_7
    if-nez v2, :cond_8

    .line 8511
    iget-object v4, p0, Landroid/widget/AbsHorizontalListView;->mTwPressItemListArray:[I

    iget v5, p0, Landroid/widget/AbsHorizontalListView;->mTwPressItemListIndex:I

    aput p1, v4, v5

    .line 8512
    iget v4, p0, Landroid/widget/AbsHorizontalListView;->mTwPressItemListIndex:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Landroid/widget/AbsHorizontalListView;->mTwPressItemListIndex:I

    .line 8514
    :cond_8
    add-int/lit8 p1, p1, 0x1

    .line 8500
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 8517
    .end local v1    # "i":I
    .end local v3    # "j":I
    :cond_9
    if-le p1, p2, :cond_d

    .line 8518
    sub-int v4, p1, p2

    add-int/lit8 v0, v4, 0x1

    .line 8519
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_6
    if-ge v1, v0, :cond_4

    .line 8520
    const/4 v2, 0x0

    .line 8522
    const/4 v3, 0x0

    .restart local v3    # "j":I
    :goto_7
    iget v4, p0, Landroid/widget/AbsHorizontalListView;->mTwPressItemListIndex:I

    if-ge v3, v4, :cond_b

    .line 8523
    iget-object v4, p0, Landroid/widget/AbsHorizontalListView;->mTwPressItemListArray:[I

    aget v4, v4, v3

    if-ne v4, p1, :cond_a

    .line 8524
    const/4 v2, 0x1

    .line 8522
    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 8529
    :cond_b
    if-nez v2, :cond_c

    .line 8530
    iget-object v4, p0, Landroid/widget/AbsHorizontalListView;->mTwPressItemListArray:[I

    iget v5, p0, Landroid/widget/AbsHorizontalListView;->mTwPressItemListIndex:I

    aput p1, v4, v5

    .line 8531
    iget v4, p0, Landroid/widget/AbsHorizontalListView;->mTwPressItemListIndex:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Landroid/widget/AbsHorizontalListView;->mTwPressItemListIndex:I

    .line 8534
    :cond_c
    add-int/lit8 p1, p1, -0x1

    .line 8519
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 8537
    .end local v1    # "i":I
    .end local v3    # "j":I
    :cond_d
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_8
    iget v4, p0, Landroid/widget/AbsHorizontalListView;->mTwPressItemListIndex:I

    if-ge v1, v4, :cond_f

    .line 8538
    iget-object v4, p0, Landroid/widget/AbsHorizontalListView;->mTwPressItemListArray:[I

    aget v4, v4, v1

    if-ne v4, p1, :cond_e

    .line 8539
    const/4 v2, 0x1

    .line 8537
    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 8544
    :cond_f
    if-nez v2, :cond_4

    .line 8545
    iget-object v4, p0, Landroid/widget/AbsHorizontalListView;->mTwPressItemListArray:[I

    iget v5, p0, Landroid/widget/AbsHorizontalListView;->mTwPressItemListIndex:I

    aput p1, v4, v5

    .line 8546
    iget v4, p0, Landroid/widget/AbsHorizontalListView;->mTwPressItemListIndex:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Landroid/widget/AbsHorizontalListView;->mTwPressItemListIndex:I

    goto :goto_3
.end method

.method public addTouchables(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5282
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getChildCount()I

    move-result v2

    .line 5283
    .local v2, "count":I
    iget v3, p0, Landroid/widget/AbsHorizontalListView;->mFirstPosition:I

    .line 5284
    .local v3, "firstPosition":I
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 5286
    .local v0, "adapter":Landroid/widget/ListAdapter;
    if-nez v0, :cond_1

    .line 5297
    :cond_0
    return-void

    .line 5290
    :cond_1
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 5291
    invoke-virtual {p0, v4}, Landroid/widget/AbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 5292
    .local v1, "child":Landroid/view/View;
    add-int v5, v3, v4

    invoke-interface {v0, v5}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 5293
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5295
    :cond_2
    invoke-virtual {v1, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    .line 5290
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 7408
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 7367
    return-void
.end method

.method public canScrollList(I)Z
    .locals 10
    .param p1, "direction"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 6375
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getChildCount()I

    move-result v0

    .line 6376
    .local v0, "childCount":I
    if-nez v0, :cond_1

    .line 6388
    :cond_0
    :goto_0
    return v6

    .line 6380
    :cond_1
    iget v1, p0, Landroid/widget/AbsHorizontalListView;->mFirstPosition:I

    .line 6381
    .local v1, "firstPosition":I
    iget-object v5, p0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    .line 6382
    .local v5, "listPadding":Landroid/graphics/Rect;
    if-lez p1, :cond_3

    .line 6383
    add-int/lit8 v8, v0, -0x1

    invoke-virtual {p0, v8}, Landroid/widget/AbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v3

    .line 6384
    .local v3, "lastBottom":I
    add-int v4, v1, v0

    .line 6385
    .local v4, "lastPosition":I
    iget v8, p0, Landroid/widget/AbsHorizontalListView;->mItemCount:I

    if-lt v4, v8, :cond_2

    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getHeight()I

    move-result v8

    iget v9, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v9

    if-le v3, v8, :cond_0

    :cond_2
    move v6, v7

    goto :goto_0

    .line 6387
    .end local v3    # "lastBottom":I
    .end local v4    # "lastPosition":I
    :cond_3
    invoke-virtual {p0, v6}, Landroid/widget/AbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v2

    .line 6388
    .local v2, "firstTop":I
    if-gtz v1, :cond_4

    iget v8, v5, Landroid/graphics/Rect;->top:I

    if-ge v2, v8, :cond_0

    :cond_4
    move v6, v7

    goto :goto_0
.end method

.method public checkInputConnectionProxy(Landroid/view/View;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 7280
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mTextFilter:Landroid/widget/EditText;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 7436
    instance-of v0, p1, Landroid/widget/AbsHorizontalListView$LayoutParams;

    return v0
.end method

.method public clearChoices()V
    .locals 1

    .prologue
    .line 1281
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    .line 1282
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 1284
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_1

    .line 1285
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    .line 1287
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/AbsHorizontalListView;->mCheckedItemCount:I

    .line 1288
    return-void
.end method

.method public clearTextFilter()V
    .locals 2

    .prologue
    .line 7329
    iget-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mFiltered:Z

    if-eqz v0, :cond_0

    .line 7330
    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->getTextFilterInput()Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 7331
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mFiltered:Z

    .line 7332
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7333
    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->dismissPopup()V

    .line 7336
    :cond_0
    return-void
.end method

.method protected computeHorizontalScrollExtent()I
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 2340
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getChildCount()I

    move-result v0

    .line 2341
    .local v0, "count":I
    if-lez v0, :cond_3

    .line 2342
    iget-boolean v7, p0, Landroid/widget/AbsHorizontalListView;->mSmoothScrollbarEnabled:Z

    if-eqz v7, :cond_2

    .line 2343
    mul-int/lit8 v1, v0, 0x64

    .line 2345
    .local v1, "extent":I
    invoke-virtual {p0, v6}, Landroid/widget/AbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2346
    .local v4, "view":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v2

    .line 2347
    .local v2, "left":I
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v5

    .line 2348
    .local v5, "width":I
    if-lez v5, :cond_0

    .line 2349
    mul-int/lit8 v6, v2, 0x64

    div-int/2addr v6, v5

    add-int/2addr v1, v6

    .line 2352
    :cond_0
    add-int/lit8 v6, v0, -0x1

    invoke-virtual {p0, v6}, Landroid/widget/AbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2353
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v3

    .line 2354
    .local v3, "right":I
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v5

    .line 2355
    if-lez v5, :cond_1

    .line 2356
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getWidth()I

    move-result v6

    sub-int v6, v3, v6

    mul-int/lit8 v6, v6, 0x64

    div-int/2addr v6, v5

    sub-int/2addr v1, v6

    .line 2364
    .end local v1    # "extent":I
    .end local v2    # "left":I
    .end local v3    # "right":I
    .end local v4    # "view":Landroid/view/View;
    .end local v5    # "width":I
    :cond_1
    :goto_0
    return v1

    .line 2361
    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    move v1, v6

    .line 2364
    goto :goto_0
.end method

.method protected computeHorizontalScrollOffset()I
    .locals 11

    .prologue
    const/4 v7, 0x0

    .line 2369
    iget v2, p0, Landroid/widget/AbsHorizontalListView;->mFirstPosition:I

    .line 2370
    .local v2, "firstPosition":I
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getChildCount()I

    move-result v0

    .line 2371
    .local v0, "childCount":I
    if-ltz v2, :cond_0

    if-lez v0, :cond_0

    .line 2372
    iget-boolean v8, p0, Landroid/widget/AbsHorizontalListView;->mSmoothScrollbarEnabled:Z

    if-eqz v8, :cond_1

    .line 2373
    invoke-virtual {p0, v7}, Landroid/widget/AbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 2374
    .local v5, "view":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v4

    .line 2375
    .local v4, "left":I
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v6

    .line 2376
    .local v6, "width":I
    if-lez v6, :cond_0

    .line 2377
    mul-int/lit8 v8, v2, 0x64

    mul-int/lit8 v9, v4, 0x64

    div-int/2addr v9, v6

    sub-int/2addr v8, v9

    iget v9, p0, Landroid/widget/AbsHorizontalListView;->mScrollX:I

    int-to-float v9, v9

    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getWidth()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v9, v10

    iget v10, p0, Landroid/widget/AbsHorizontalListView;->mItemCount:I

    int-to-float v10, v10

    mul-float/2addr v9, v10

    const/high16 v10, 0x42c80000    # 100.0f

    mul-float/2addr v9, v10

    float-to-int v9, v9

    add-int/2addr v8, v9

    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 2393
    .end local v4    # "left":I
    .end local v5    # "view":Landroid/view/View;
    .end local v6    # "width":I
    :cond_0
    :goto_0
    return v7

    .line 2382
    :cond_1
    iget v1, p0, Landroid/widget/AbsHorizontalListView;->mItemCount:I

    .line 2383
    .local v1, "count":I
    if-nez v2, :cond_2

    .line 2384
    const/4 v3, 0x0

    .line 2390
    .local v3, "index":I
    :goto_1
    int-to-float v7, v2

    int-to-float v8, v0

    int-to-float v9, v3

    int-to-float v10, v1

    div-float/2addr v9, v10

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    float-to-int v7, v7

    goto :goto_0

    .line 2385
    .end local v3    # "index":I
    :cond_2
    add-int v7, v2, v0

    if-ne v7, v1, :cond_3

    .line 2386
    move v3, v1

    .restart local v3    # "index":I
    goto :goto_1

    .line 2388
    .end local v3    # "index":I
    :cond_3
    div-int/lit8 v7, v0, 0x2

    add-int v3, v2, v7

    .restart local v3    # "index":I
    goto :goto_1
.end method

.method protected computeHorizontalScrollRange()I
    .locals 3

    .prologue
    .line 2399
    iget-boolean v1, p0, Landroid/widget/AbsHorizontalListView;->mSmoothScrollbarEnabled:Z

    if-eqz v1, :cond_1

    .line 2400
    iget v1, p0, Landroid/widget/AbsHorizontalListView;->mItemCount:I

    mul-int/lit8 v1, v1, 0x64

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2401
    .local v0, "result":I
    iget v1, p0, Landroid/widget/AbsHorizontalListView;->mScrollX:I

    if-eqz v1, :cond_0

    .line 2403
    iget v1, p0, Landroid/widget/AbsHorizontalListView;->mScrollX:I

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget v2, p0, Landroid/widget/AbsHorizontalListView;->mItemCount:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 2408
    :cond_0
    :goto_0
    return v0

    .line 2406
    .end local v0    # "result":I
    :cond_1
    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mItemCount:I

    .restart local v0    # "result":I
    goto :goto_0
.end method

.method confirmCheckedPositionsById()V
    .locals 18

    .prologue
    .line 6824
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->clear()V

    .line 6826
    const/4 v2, 0x0

    .line 6827
    .local v2, "checkedCountChanged":Z
    const/4 v9, 0x0

    .local v9, "checkedIndex":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsHorizontalListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v3}, Landroid/util/LongSparseArray;->size()I

    move-result v3

    if-ge v9, v3, :cond_4

    .line 6828
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsHorizontalListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v9}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v6

    .line 6829
    .local v6, "id":J
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsHorizontalListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v9}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 6831
    .local v5, "lastPos":I
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, v5}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v12

    .line 6832
    .local v12, "lastPosId":J
    cmp-long v3, v6, v12

    if-eqz v3, :cond_3

    .line 6834
    const/4 v3, 0x0

    add-int/lit8 v4, v5, -0x14

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v17

    .line 6835
    .local v17, "start":I
    add-int/lit8 v3, v5, 0x14

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/AbsHorizontalListView;->mItemCount:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 6836
    .local v10, "end":I
    const/4 v11, 0x0

    .line 6837
    .local v11, "found":Z
    move/from16 v16, v17

    .local v16, "searchPos":I
    :goto_1
    move/from16 v0, v16

    if-ge v0, v10, :cond_0

    .line 6838
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    move/from16 v0, v16

    invoke-interface {v3, v0}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v14

    .line 6839
    .local v14, "searchId":J
    cmp-long v3, v6, v14

    if-nez v3, :cond_2

    .line 6840
    const/4 v11, 0x1

    .line 6841
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    const/4 v4, 0x1

    move/from16 v0, v16

    invoke-virtual {v3, v0, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 6842
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsHorizontalListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v9, v4}, Landroid/util/LongSparseArray;->setValueAt(ILjava/lang/Object;)V

    .line 6847
    .end local v14    # "searchId":J
    :cond_0
    if-nez v11, :cond_1

    .line 6848
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsHorizontalListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v6, v7}, Landroid/util/LongSparseArray;->delete(J)V

    .line 6849
    add-int/lit8 v9, v9, -0x1

    .line 6850
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsHorizontalListView;->mCheckedItemCount:I

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/AbsHorizontalListView;->mCheckedItemCount:I

    .line 6851
    const/4 v2, 0x1

    .line 6852
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsHorizontalListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsHorizontalListView;->mMultiChoiceModeCallback:Landroid/widget/AbsHorizontalListView$MultiChoiceModeWrapper;

    if-eqz v3, :cond_1

    .line 6853
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsHorizontalListView;->mMultiChoiceModeCallback:Landroid/widget/AbsHorizontalListView$MultiChoiceModeWrapper;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/AbsHorizontalListView;->mChoiceActionMode:Landroid/view/ActionMode;

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/widget/AbsHorizontalListView$MultiChoiceModeWrapper;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    .line 6827
    .end local v10    # "end":I
    .end local v11    # "found":Z
    .end local v16    # "searchPos":I
    .end local v17    # "start":I
    :cond_1
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 6837
    .restart local v10    # "end":I
    .restart local v11    # "found":Z
    .restart local v14    # "searchId":J
    .restart local v16    # "searchPos":I
    .restart local v17    # "start":I
    :cond_2
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 6858
    .end local v10    # "end":I
    .end local v11    # "found":Z
    .end local v14    # "searchId":J
    .end local v16    # "searchPos":I
    .end local v17    # "start":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    const/4 v4, 0x1

    invoke-virtual {v3, v5, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_2

    .line 6862
    .end local v5    # "lastPos":I
    .end local v6    # "id":J
    .end local v12    # "lastPosId":J
    :cond_4
    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsHorizontalListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v3, :cond_5

    .line 6863
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsHorizontalListView;->mChoiceActionMode:Landroid/view/ActionMode;

    invoke-virtual {v3}, Landroid/view/ActionMode;->invalidate()V

    .line 6865
    :cond_5
    return-void
.end method

.method createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    .line 3325
    new-instance v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/widget/AdapterView$AdapterContextMenuInfo;-><init>(Landroid/view/View;IJ)V

    return-object v0
.end method

.method public deferNotifyDataSetChanged()V
    .locals 1

    .prologue
    .line 7581
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mDeferNotifyDataSetChanged:Z

    .line 7582
    return-void
.end method

.method public dispatchDragEvent(Landroid/view/DragEvent;)Z
    .locals 15
    .param p1, "ev"    # Landroid/view/DragEvent;

    .prologue
    .line 4303
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    .line 4305
    .local v0, "action":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getClipDescription()Landroid/content/ClipDescription;

    move-result-object v3

    .line 4306
    .local v3, "cd":Landroid/content/ClipDescription;
    if-eqz v3, :cond_0

    const-string v12, "cropUri"

    invoke-virtual {v3}, Landroid/content/ClipDescription;->getLabel()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 4307
    :cond_0
    invoke-super/range {p0 .. p1}, Landroid/widget/AdapterView;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v12

    .line 4463
    :goto_0
    return v12

    .line 4311
    :cond_1
    const/4 v12, 0x1

    if-ne v0, v12, :cond_4

    .line 4312
    iget v12, p0, Landroid/widget/AbsHorizontalListView;->mDragScrollWorkingZonePx:I

    if-gtz v12, :cond_2

    .line 4313
    const/4 v12, 0x1

    const/high16 v13, 0x41c80000    # 25.0f

    iget-object v14, p0, Landroid/widget/AbsHorizontalListView;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v14

    invoke-static {v12, v13, v14}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v12

    const/high16 v13, 0x3f000000    # 0.5f

    add-float/2addr v12, v13

    float-to-int v12, v12

    iput v12, p0, Landroid/widget/AbsHorizontalListView;->mDragScrollWorkingZonePx:I

    .line 4317
    :cond_2
    invoke-super/range {p0 .. p1}, Landroid/widget/AdapterView;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v12

    if-nez v12, :cond_3

    :cond_3
    const/4 v12, 0x1

    goto :goto_0

    .line 4320
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getX()F

    move-result v12

    float-to-int v10, v12

    .line 4321
    .local v10, "x":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getY()F

    move-result v12

    float-to-int v11, v12

    .line 4322
    .local v11, "y":I
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getChildCount()I

    move-result v5

    .line 4323
    .local v5, "childCount":I
    const/4 v6, 0x0

    .line 4324
    .local v6, "contentRight":I
    const/4 v8, 0x0

    .line 4325
    .local v8, "lastChildRight":I
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getChildCount()I

    move-result v7

    .line 4329
    .local v7, "count":I
    if-eqz v5, :cond_5

    .line 4330
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getWidth()I

    move-result v6

    .line 4334
    :cond_5
    iget v12, p0, Landroid/widget/AbsHorizontalListView;->mFirstPosition:I

    add-int/2addr v12, v7

    iget v13, p0, Landroid/widget/AbsHorizontalListView;->mItemCount:I

    if-ge v12, v13, :cond_f

    const/4 v2, 0x1

    .line 4336
    .local v2, "canScrollRight":Z
    :goto_1
    if-nez v2, :cond_7

    if-lez v7, :cond_7

    .line 4337
    add-int/lit8 v12, v7, -0x1

    invoke-virtual {p0, v12}, Landroid/widget/AbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 4338
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v12

    iget v13, p0, Landroid/widget/AbsHorizontalListView;->mRight:I

    iget-object v14, p0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->right:I

    sub-int/2addr v13, v14

    if-gt v12, v13, :cond_6

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v12

    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getWidth()I

    move-result v13

    iget-object v14, p0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->right:I

    sub-int/2addr v13, v14

    if-le v12, v13, :cond_10

    :cond_6
    const/4 v2, 0x1

    .line 4343
    .end local v4    # "child":Landroid/view/View;
    :cond_7
    :goto_2
    iget v12, p0, Landroid/widget/AbsHorizontalListView;->mFirstPosition:I

    if-lez v12, :cond_11

    const/4 v1, 0x1

    .line 4345
    .local v1, "canScrollLeft":Z
    :goto_3
    if-nez v1, :cond_8

    .line 4346
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getChildCount()I

    move-result v12

    if-lez v12, :cond_8

    .line 4347
    const/4 v12, 0x0

    invoke-virtual {p0, v12}, Landroid/widget/AbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 4348
    .restart local v4    # "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v12

    iget-object v13, p0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->left:I

    if-ge v12, v13, :cond_12

    const/4 v1, 0x1

    .line 4353
    .end local v4    # "child":Landroid/view/View;
    :cond_8
    :goto_4
    iget v12, p0, Landroid/widget/AbsHorizontalListView;->mDragScrollWorkingZonePx:I

    if-le v10, v12, :cond_9

    iget v12, p0, Landroid/widget/AbsHorizontalListView;->mDragScrollWorkingZonePx:I

    sub-int v12, v6, v12

    if-lt v10, v12, :cond_a

    :cond_9
    if-lez v11, :cond_a

    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getBottom()I

    move-result v12

    if-gt v11, v12, :cond_a

    if-nez v1, :cond_13

    if-nez v2, :cond_13

    .line 4356
    :cond_a
    iget-object v12, p0, Landroid/widget/AbsHorizontalListView;->mHoverHandler:Landroid/widget/AbsHorizontalListView$HoverScrollHandler;

    if-eqz v12, :cond_b

    iget-object v12, p0, Landroid/widget/AbsHorizontalListView;->mHoverHandler:Landroid/widget/AbsHorizontalListView$HoverScrollHandler;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 4357
    iget-object v12, p0, Landroid/widget/AbsHorizontalListView;->mHoverHandler:Landroid/widget/AbsHorizontalListView$HoverScrollHandler;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->removeMessages(I)V

    .line 4360
    :cond_b
    iget-boolean v12, p0, Landroid/widget/AbsHorizontalListView;->mIsHoverOverscrolled:Z

    const/4 v13, 0x1

    if-eq v12, v13, :cond_c

    iget v12, p0, Landroid/widget/AbsHorizontalListView;->mHoverScrollStartTime:I

    if-eqz v12, :cond_d

    .line 4361
    :cond_c
    const/4 v12, 0x0

    iput-boolean v12, p0, Landroid/widget/AbsHorizontalListView;->mIsHoverOverscrolled:Z

    .line 4364
    :cond_d
    const/4 v12, 0x0

    iput v12, p0, Landroid/widget/AbsHorizontalListView;->mHoverRecognitionStartTime:I

    .line 4365
    const/4 v12, 0x0

    iput v12, p0, Landroid/widget/AbsHorizontalListView;->mHoverScrollStartTime:I

    .line 4366
    const/4 v12, 0x0

    iput-boolean v12, p0, Landroid/widget/AbsHorizontalListView;->mHoverAreaEnter:Z

    .line 4369
    const/4 v12, 0x2

    if-ne v0, v12, :cond_e

    iget-boolean v12, p0, Landroid/widget/AbsHorizontalListView;->mIsDragScrolled:Z

    if-eqz v12, :cond_e

    .line 4370
    const/4 v12, 0x0

    iput-boolean v12, p0, Landroid/widget/AbsHorizontalListView;->mIsDragScrolled:Z

    .line 4374
    :cond_e
    invoke-super/range {p0 .. p1}, Landroid/widget/AdapterView;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v12

    goto/16 :goto_0

    .line 4334
    .end local v1    # "canScrollLeft":Z
    .end local v2    # "canScrollRight":Z
    :cond_f
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 4338
    .restart local v2    # "canScrollRight":Z
    .restart local v4    # "child":Landroid/view/View;
    :cond_10
    const/4 v2, 0x0

    goto :goto_2

    .line 4343
    .end local v4    # "child":Landroid/view/View;
    :cond_11
    const/4 v1, 0x0

    goto :goto_3

    .line 4348
    .restart local v1    # "canScrollLeft":Z
    .restart local v4    # "child":Landroid/view/View;
    :cond_12
    const/4 v1, 0x0

    goto :goto_4

    .line 4378
    .end local v4    # "child":Landroid/view/View;
    :cond_13
    iget-object v12, p0, Landroid/widget/AbsHorizontalListView;->mHoverHandler:Landroid/widget/AbsHorizontalListView$HoverScrollHandler;

    if-nez v12, :cond_14

    .line 4379
    new-instance v12, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;

    const/4 v13, 0x0

    invoke-direct {v12, p0, v13}, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;-><init>(Landroid/widget/AbsHorizontalListView;Landroid/widget/AbsHorizontalListView$1;)V

    iput-object v12, p0, Landroid/widget/AbsHorizontalListView;->mHoverHandler:Landroid/widget/AbsHorizontalListView$HoverScrollHandler;

    .line 4381
    :cond_14
    iget-boolean v12, p0, Landroid/widget/AbsHorizontalListView;->mHoverAreaEnter:Z

    if-nez v12, :cond_15

    .line 4382
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    long-to-int v12, v12

    iput v12, p0, Landroid/widget/AbsHorizontalListView;->mHoverScrollStartTime:I

    .line 4384
    :cond_15
    packed-switch v0, :pswitch_data_0

    .line 4463
    :cond_16
    :goto_5
    invoke-super/range {p0 .. p1}, Landroid/widget/AdapterView;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v12

    goto/16 :goto_0

    .line 4386
    :pswitch_0
    const/4 v12, 0x1

    iput-boolean v12, p0, Landroid/widget/AbsHorizontalListView;->mHoverAreaEnter:Z

    .line 4387
    if-ltz v10, :cond_17

    iget v12, p0, Landroid/widget/AbsHorizontalListView;->mDragScrollWorkingZonePx:I

    if-gt v10, v12, :cond_17

    .line 4389
    iget-object v12, p0, Landroid/widget/AbsHorizontalListView;->mHoverHandler:Landroid/widget/AbsHorizontalListView$HoverScrollHandler;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v12

    if-nez v12, :cond_16

    .line 4390
    const/4 v12, 0x1

    iput-boolean v12, p0, Landroid/widget/AbsHorizontalListView;->mIsDragScrolled:Z

    .line 4391
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    long-to-int v12, v12

    iput v12, p0, Landroid/widget/AbsHorizontalListView;->mHoverRecognitionStartTime:I

    .line 4392
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v9

    .line 4393
    .local v9, "msg":Landroid/os/Message;
    const/4 v12, 0x1

    iput v12, v9, Landroid/os/Message;->what:I

    .line 4394
    const/4 v12, 0x2

    iput v12, p0, Landroid/widget/AbsHorizontalListView;->mHoverScrollDirection:I

    .line 4395
    iget-object v12, p0, Landroid/widget/AbsHorizontalListView;->mHoverHandler:Landroid/widget/AbsHorizontalListView$HoverScrollHandler;

    invoke-virtual {v12, v9}, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_5

    .line 4397
    .end local v9    # "msg":Landroid/os/Message;
    :cond_17
    iget v12, p0, Landroid/widget/AbsHorizontalListView;->mDragScrollWorkingZonePx:I

    sub-int v12, v6, v12

    if-lt v10, v12, :cond_16

    if-gt v10, v6, :cond_16

    .line 4399
    iget-object v12, p0, Landroid/widget/AbsHorizontalListView;->mHoverHandler:Landroid/widget/AbsHorizontalListView$HoverScrollHandler;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v12

    if-nez v12, :cond_16

    .line 4400
    const/4 v12, 0x1

    iput-boolean v12, p0, Landroid/widget/AbsHorizontalListView;->mIsDragScrolled:Z

    .line 4401
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    long-to-int v12, v12

    iput v12, p0, Landroid/widget/AbsHorizontalListView;->mHoverRecognitionStartTime:I

    .line 4402
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v9

    .line 4403
    .restart local v9    # "msg":Landroid/os/Message;
    const/4 v12, 0x1

    iput v12, v9, Landroid/os/Message;->what:I

    .line 4404
    const/4 v12, 0x1

    iput v12, p0, Landroid/widget/AbsHorizontalListView;->mHoverScrollDirection:I

    .line 4405
    iget-object v12, p0, Landroid/widget/AbsHorizontalListView;->mHoverHandler:Landroid/widget/AbsHorizontalListView$HoverScrollHandler;

    invoke-virtual {v12, v9}, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_5

    .line 4411
    .end local v9    # "msg":Landroid/os/Message;
    :pswitch_1
    iget-boolean v12, p0, Landroid/widget/AbsHorizontalListView;->mHoverAreaEnter:Z

    if-nez v12, :cond_18

    .line 4412
    const/4 v12, 0x1

    iput-boolean v12, p0, Landroid/widget/AbsHorizontalListView;->mHoverAreaEnter:Z

    .line 4415
    :cond_18
    if-ltz v10, :cond_19

    iget v12, p0, Landroid/widget/AbsHorizontalListView;->mDragScrollWorkingZonePx:I

    if-gt v10, v12, :cond_19

    .line 4417
    iget-object v12, p0, Landroid/widget/AbsHorizontalListView;->mHoverHandler:Landroid/widget/AbsHorizontalListView$HoverScrollHandler;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v12

    if-nez v12, :cond_16

    .line 4418
    const/4 v12, 0x1

    iput-boolean v12, p0, Landroid/widget/AbsHorizontalListView;->mIsDragScrolled:Z

    .line 4419
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    long-to-int v12, v12

    iput v12, p0, Landroid/widget/AbsHorizontalListView;->mHoverRecognitionStartTime:I

    .line 4420
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v9

    .line 4421
    .restart local v9    # "msg":Landroid/os/Message;
    const/4 v12, 0x1

    iput v12, v9, Landroid/os/Message;->what:I

    .line 4422
    const/4 v12, 0x2

    iput v12, p0, Landroid/widget/AbsHorizontalListView;->mHoverScrollDirection:I

    .line 4423
    iget-object v12, p0, Landroid/widget/AbsHorizontalListView;->mHoverHandler:Landroid/widget/AbsHorizontalListView$HoverScrollHandler;

    invoke-virtual {v12, v9}, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_5

    .line 4425
    .end local v9    # "msg":Landroid/os/Message;
    :cond_19
    iget v12, p0, Landroid/widget/AbsHorizontalListView;->mDragScrollWorkingZonePx:I

    sub-int v12, v6, v12

    if-lt v10, v12, :cond_16

    if-gt v10, v6, :cond_16

    .line 4427
    iget-object v12, p0, Landroid/widget/AbsHorizontalListView;->mHoverHandler:Landroid/widget/AbsHorizontalListView$HoverScrollHandler;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v12

    if-nez v12, :cond_16

    .line 4428
    const/4 v12, 0x1

    iput-boolean v12, p0, Landroid/widget/AbsHorizontalListView;->mIsDragScrolled:Z

    .line 4429
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    long-to-int v12, v12

    iput v12, p0, Landroid/widget/AbsHorizontalListView;->mHoverRecognitionStartTime:I

    .line 4430
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v9

    .line 4431
    .restart local v9    # "msg":Landroid/os/Message;
    const/4 v12, 0x1

    iput v12, v9, Landroid/os/Message;->what:I

    .line 4432
    const/4 v12, 0x1

    iput v12, p0, Landroid/widget/AbsHorizontalListView;->mHoverScrollDirection:I

    .line 4433
    iget-object v12, p0, Landroid/widget/AbsHorizontalListView;->mHoverHandler:Landroid/widget/AbsHorizontalListView$HoverScrollHandler;

    invoke-virtual {v12, v9}, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_5

    .line 4440
    .end local v9    # "msg":Landroid/os/Message;
    :pswitch_2
    iget-boolean v12, p0, Landroid/widget/AbsHorizontalListView;->mIsDragScrolled:Z

    if-eqz v12, :cond_1a

    .line 4441
    const/4 v12, 0x0

    iput-boolean v12, p0, Landroid/widget/AbsHorizontalListView;->mIsDragScrolled:Z

    .line 4448
    :cond_1a
    :pswitch_3
    iget-object v12, p0, Landroid/widget/AbsHorizontalListView;->mHoverHandler:Landroid/widget/AbsHorizontalListView$HoverScrollHandler;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v12

    if-eqz v12, :cond_1b

    .line 4449
    iget-object v12, p0, Landroid/widget/AbsHorizontalListView;->mHoverHandler:Landroid/widget/AbsHorizontalListView$HoverScrollHandler;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->removeMessages(I)V

    .line 4451
    :cond_1b
    const/4 v12, 0x0

    iput-boolean v12, p0, Landroid/widget/AbsHorizontalListView;->mIsDragScrolled:Z

    .line 4453
    const/4 v12, 0x0

    iput v12, p0, Landroid/widget/AbsHorizontalListView;->mHoverRecognitionStartTime:I

    .line 4454
    const/4 v12, 0x0

    iput v12, p0, Landroid/widget/AbsHorizontalListView;->mHoverScrollStartTime:I

    .line 4455
    const/4 v12, 0x0

    iput-boolean v12, p0, Landroid/widget/AbsHorizontalListView;->mIsHoverOverscrolled:Z

    .line 4456
    const/4 v12, 0x0

    iput-boolean v12, p0, Landroid/widget/AbsHorizontalListView;->mHoverAreaEnter:Z

    goto/16 :goto_5

    .line 4384
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 2846
    const/4 v2, 0x0

    .line 2847
    .local v2, "saveCount":I
    iget v5, p0, Landroid/widget/AbsHorizontalListView;->mGroupFlags:I

    and-int/lit8 v5, v5, 0x22

    const/16 v6, 0x22

    if-ne v5, v6, :cond_4

    const/4 v0, 0x1

    .line 2848
    .local v0, "clipToPadding":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 2849
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 2850
    iget v3, p0, Landroid/widget/AbsHorizontalListView;->mScrollX:I

    .line 2851
    .local v3, "scrollX":I
    iget v4, p0, Landroid/widget/AbsHorizontalListView;->mScrollY:I

    .line 2852
    .local v4, "scrollY":I
    iget v5, p0, Landroid/widget/AbsHorizontalListView;->mPaddingLeft:I

    add-int/2addr v5, v3

    iget v6, p0, Landroid/widget/AbsHorizontalListView;->mPaddingTop:I

    add-int/2addr v6, v4

    iget v7, p0, Landroid/widget/AbsHorizontalListView;->mRight:I

    add-int/2addr v7, v3

    iget v8, p0, Landroid/widget/AbsHorizontalListView;->mLeft:I

    sub-int/2addr v7, v8

    iget v8, p0, Landroid/widget/AbsHorizontalListView;->mPaddingRight:I

    sub-int/2addr v7, v8

    iget v8, p0, Landroid/widget/AbsHorizontalListView;->mBottom:I

    add-int/2addr v8, v4

    iget v9, p0, Landroid/widget/AbsHorizontalListView;->mTop:I

    sub-int/2addr v8, v9

    iget v9, p0, Landroid/widget/AbsHorizontalListView;->mPaddingBottom:I

    sub-int/2addr v8, v9

    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 2855
    iget v5, p0, Landroid/widget/AbsHorizontalListView;->mGroupFlags:I

    and-int/lit8 v5, v5, -0x23

    iput v5, p0, Landroid/widget/AbsHorizontalListView;->mGroupFlags:I

    .line 2858
    .end local v3    # "scrollX":I
    .end local v4    # "scrollY":I
    :cond_0
    iget-boolean v1, p0, Landroid/widget/AbsHorizontalListView;->mDrawSelectorOnTop:Z

    .line 2859
    .local v1, "drawSelectorOnTop":Z
    if-nez v1, :cond_1

    .line 2860
    invoke-direct {p0, p1}, Landroid/widget/AbsHorizontalListView;->drawSelector(Landroid/graphics/Canvas;)V

    .line 2863
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 2865
    if-eqz v1, :cond_2

    .line 2866
    invoke-direct {p0, p1}, Landroid/widget/AbsHorizontalListView;->drawSelector(Landroid/graphics/Canvas;)V

    .line 2869
    :cond_2
    if-eqz v0, :cond_3

    .line 2870
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2871
    iget v5, p0, Landroid/widget/AbsHorizontalListView;->mGroupFlags:I

    or-int/lit8 v5, v5, 0x22

    iput v5, p0, Landroid/widget/AbsHorizontalListView;->mGroupFlags:I

    .line 2873
    :cond_3
    return-void

    .line 2847
    .end local v0    # "clipToPadding":Z
    .end local v1    # "drawSelectorOnTop":Z
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 21
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 4079
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string/jumbo v19, "pen_hovering"

    const/16 v20, 0x0

    invoke-static/range {v18 .. v20}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_3

    const/4 v12, 0x1

    .line 4080
    .local v12, "isHoveringOn":Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string/jumbo v19, "pen_hovering_list_scroll"

    const/16 v20, 0x0

    invoke-static/range {v18 .. v20}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_4

    const/4 v11, 0x1

    .line 4083
    .local v11, "isHoverListScrollOn":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mHoverHandler:Landroid/widget/AbsHorizontalListView$HoverScrollHandler;

    move-object/from16 v18, v0

    if-nez v18, :cond_0

    .line 4084
    new-instance v18, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;-><init>(Landroid/widget/AbsHorizontalListView;Landroid/widget/AbsHorizontalListView$1;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsHorizontalListView;->mHoverHandler:Landroid/widget/AbsHorizontalListView$HoverScrollHandler;

    .line 4086
    :cond_0
    invoke-direct/range {p0 .. p1}, Landroid/widget/AbsHorizontalListView;->onHoverDrawableState(Landroid/view/MotionEvent;)V

    .line 4089
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsHorizontalListView;->isHoveringUIEnabled:Z

    move/from16 v18, v0

    if-eqz v18, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsHorizontalListView;->mHoverScrollEnable:Z

    move/from16 v18, v0

    if-eqz v18, :cond_2

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v18

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1

    if-eqz v12, :cond_2

    if-eqz v11, :cond_2

    :cond_1
    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v18

    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_5

    .line 4092
    :cond_2
    invoke-super/range {p0 .. p1}, Landroid/widget/AdapterView;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v18

    .line 4293
    :goto_2
    return v18

    .line 4079
    .end local v11    # "isHoverListScrollOn":Z
    .end local v12    # "isHoveringOn":Z
    :cond_3
    const/4 v12, 0x0

    goto :goto_0

    .line 4080
    .restart local v12    # "isHoveringOn":Z
    :cond_4
    const/4 v11, 0x0

    goto :goto_1

    .line 4095
    .restart local v11    # "isHoverListScrollOn":Z
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v18

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v16, v0

    .line 4096
    .local v16, "x":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v18

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v17, v0

    .line 4097
    .local v17, "y":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView;->getChildCount()I

    move-result v7

    .line 4098
    .local v7, "childCount":I
    const/4 v8, 0x0

    .line 4099
    .local v8, "contentRight":I
    const/4 v14, 0x0

    .line 4100
    .local v14, "lastChildRight":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView;->getChildCount()I

    move-result v9

    .line 4104
    .local v9, "count":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mHoverLeftAreaWidth:I

    move/from16 v18, v0

    if-lez v18, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mHoverRightAreaWidth:I

    move/from16 v18, v0

    if-gtz v18, :cond_7

    .line 4105
    :cond_6
    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mHoverLeftAreaWidth_DP:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v20

    invoke-static/range {v18 .. v20}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v18

    const/high16 v19, 0x3f000000    # 0.5f

    add-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsHorizontalListView;->mHoverLeftAreaWidth:I

    .line 4113
    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mHoverRightAreaWidth_DP:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v20

    invoke-static/range {v18 .. v20}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v18

    const/high16 v19, 0x3f000000    # 0.5f

    add-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsHorizontalListView;->mHoverRightAreaWidth:I

    .line 4122
    :cond_7
    if-eqz v7, :cond_8

    .line 4123
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView;->getWidth()I

    move-result v8

    .line 4127
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mFirstPosition:I

    move/from16 v18, v0

    add-int v18, v18, v9

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mItemCount:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_13

    const/4 v5, 0x1

    .line 4129
    .local v5, "canScrollRight":Z
    :goto_3
    if-nez v5, :cond_a

    if-lez v9, :cond_a

    .line 4130
    add-int/lit8 v18, v9, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/AbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 4131
    .local v6, "child":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mRight:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_9

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v18

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView;->getWidth()I

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_14

    :cond_9
    const/4 v5, 0x1

    .line 4136
    .end local v6    # "child":Landroid/view/View;
    :cond_a
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mFirstPosition:I

    move/from16 v18, v0

    if-lez v18, :cond_15

    const/4 v4, 0x1

    .line 4138
    .local v4, "canScrollLeft":Z
    :goto_5
    if-nez v4, :cond_b

    .line 4139
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView;->getChildCount()I

    move-result v18

    if-lez v18, :cond_b

    .line 4140
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/AbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 4141
    .restart local v6    # "child":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_16

    const/4 v4, 0x1

    .line 4145
    .end local v6    # "child":Landroid/view/View;
    :cond_b
    :goto_6
    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v18

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_17

    const/4 v13, 0x1

    .line 4147
    .local v13, "isPossibleTooltype":Z
    :goto_7
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mHoverLeftAreaWidth:I

    move/from16 v18, v0

    move/from16 v0, v16

    move/from16 v1, v18

    if-le v0, v1, :cond_c

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mHoverRightAreaWidth:I

    move/from16 v18, v0

    sub-int v18, v8, v18

    move/from16 v0, v16

    move/from16 v1, v18

    if-lt v0, v1, :cond_f

    :cond_c
    if-lez v17, :cond_f

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView;->getBottom()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-gt v0, v1, :cond_f

    if-nez v4, :cond_d

    if-eqz v5, :cond_f

    :cond_d
    if-eqz v13, :cond_e

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v18

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_f

    :cond_e
    if-eqz v13, :cond_f

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView;->isLockScreenMode()Z

    move-result v18

    if-eqz v18, :cond_18

    .line 4150
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mHoverHandler:Landroid/widget/AbsHorizontalListView$HoverScrollHandler;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v18

    if-eqz v18, :cond_10

    .line 4151
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mHoverHandler:Landroid/widget/AbsHorizontalListView$HoverScrollHandler;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->removeMessages(I)V

    .line 4153
    const/16 v18, 0x1

    const/16 v19, -0x1

    :try_start_0
    invoke-static/range {v18 .. v19}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4159
    :cond_10
    :goto_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsHorizontalListView;->mIsHoverOverscrolled:Z

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_11

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mHoverScrollStartTime:I

    move/from16 v18, v0

    if-eqz v18, :cond_12

    .line 4160
    :cond_11
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsHorizontalListView;->mIsHoverOverscrolled:Z

    .line 4162
    const/16 v18, 0x1

    const/16 v19, -0x1

    :try_start_1
    invoke-static/range {v18 .. v19}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 4168
    :cond_12
    :goto_9
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsHorizontalListView;->mHoverRecognitionStartTime:I

    .line 4169
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsHorizontalListView;->mHoverScrollStartTime:I

    .line 4170
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsHorizontalListView;->mHoverAreaEnter:Z

    .line 4172
    invoke-super/range {p0 .. p1}, Landroid/widget/AdapterView;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v18

    goto/16 :goto_2

    .line 4127
    .end local v4    # "canScrollLeft":Z
    .end local v5    # "canScrollRight":Z
    .end local v13    # "isPossibleTooltype":Z
    :cond_13
    const/4 v5, 0x0

    goto/16 :goto_3

    .line 4131
    .restart local v5    # "canScrollRight":Z
    .restart local v6    # "child":Landroid/view/View;
    :cond_14
    const/4 v5, 0x0

    goto/16 :goto_4

    .line 4136
    .end local v6    # "child":Landroid/view/View;
    :cond_15
    const/4 v4, 0x0

    goto/16 :goto_5

    .line 4141
    .restart local v4    # "canScrollLeft":Z
    .restart local v6    # "child":Landroid/view/View;
    :cond_16
    const/4 v4, 0x0

    goto/16 :goto_6

    .line 4145
    .end local v6    # "child":Landroid/view/View;
    :cond_17
    const/4 v13, 0x0

    goto/16 :goto_7

    .line 4154
    .restart local v13    # "isPossibleTooltype":Z
    :catch_0
    move-exception v10

    .line 4155
    .local v10, "e":Landroid/os/RemoteException;
    const-string v18, "AbsHorizontalListView"

    const-string v19, "Failed to change Pen Point to HOVERING_SPENICON_DEFAULT"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 4163
    .end local v10    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v10

    .line 4164
    .restart local v10    # "e":Landroid/os/RemoteException;
    const-string v18, "AbsHorizontalListView"

    const-string v19, "Failed to change Pen Point to HOVERING_SPENICON_DEFAULT"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 4175
    .end local v10    # "e":Landroid/os/RemoteException;
    :cond_18
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsHorizontalListView;->mHoverAreaEnter:Z

    move/from16 v18, v0

    if-nez v18, :cond_19

    .line 4176
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsHorizontalListView;->mHoverScrollStartTime:I

    .line 4178
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mOnScrollListener:Landroid/widget/AbsHorizontalListView$OnScrollListener;

    move-object/from16 v18, v0

    if-eqz v18, :cond_19

    .line 4179
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mOnScrollListener:Landroid/widget/AbsHorizontalListView$OnScrollListener;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move/from16 v2, v19

    invoke-interface {v0, v1, v2}, Landroid/widget/AbsHorizontalListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsHorizontalListView;I)V

    .line 4184
    :cond_19
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v18

    packed-switch v18, :pswitch_data_0

    .line 4293
    :cond_1a
    :goto_a
    :pswitch_0
    const/16 v18, 0x1

    goto/16 :goto_2

    .line 4186
    :pswitch_1
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsHorizontalListView;->mHoverAreaEnter:Z

    .line 4188
    if-ltz v16, :cond_1b

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mHoverLeftAreaWidth:I

    move/from16 v18, v0

    move/from16 v0, v16

    move/from16 v1, v18

    if-gt v0, v1, :cond_1b

    .line 4190
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mHoverHandler:Landroid/widget/AbsHorizontalListView$HoverScrollHandler;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v18

    if-nez v18, :cond_1a

    .line 4191
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsHorizontalListView;->mHoverRecognitionStartTime:I

    .line 4193
    const/16 v18, 0x11

    const/16 v19, -0x1

    :try_start_2
    invoke-static/range {v18 .. v19}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 4197
    :goto_b
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v15

    .line 4198
    .local v15, "msg":Landroid/os/Message;
    const/16 v18, 0x1

    move/from16 v0, v18

    iput v0, v15, Landroid/os/Message;->what:I

    .line 4199
    const/16 v18, 0x2

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsHorizontalListView;->mHoverScrollDirection:I

    .line 4200
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mHoverHandler:Landroid/widget/AbsHorizontalListView$HoverScrollHandler;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_a

    .line 4194
    .end local v15    # "msg":Landroid/os/Message;
    :catch_2
    move-exception v10

    .line 4195
    .restart local v10    # "e":Landroid/os/RemoteException;
    const-string v18, "AbsHorizontalListView"

    const-string v19, "Failed to change Pen Point to HOVERING_SCROLL_LEFT"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 4202
    .end local v10    # "e":Landroid/os/RemoteException;
    :cond_1b
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mHoverRightAreaWidth:I

    move/from16 v18, v0

    sub-int v18, v8, v18

    move/from16 v0, v16

    move/from16 v1, v18

    if-lt v0, v1, :cond_1a

    move/from16 v0, v16

    if-gt v0, v8, :cond_1a

    .line 4204
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mHoverHandler:Landroid/widget/AbsHorizontalListView$HoverScrollHandler;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v18

    if-nez v18, :cond_1a

    .line 4205
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsHorizontalListView;->mHoverRecognitionStartTime:I

    .line 4207
    const/16 v18, 0xd

    const/16 v19, -0x1

    :try_start_3
    invoke-static/range {v18 .. v19}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    .line 4211
    :goto_c
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v15

    .line 4212
    .restart local v15    # "msg":Landroid/os/Message;
    const/16 v18, 0x1

    move/from16 v0, v18

    iput v0, v15, Landroid/os/Message;->what:I

    .line 4213
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsHorizontalListView;->mHoverScrollDirection:I

    .line 4214
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mHoverHandler:Landroid/widget/AbsHorizontalListView$HoverScrollHandler;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_a

    .line 4208
    .end local v15    # "msg":Landroid/os/Message;
    :catch_3
    move-exception v10

    .line 4209
    .restart local v10    # "e":Landroid/os/RemoteException;
    const-string v18, "AbsHorizontalListView"

    const-string v19, "Failed to change Pen Point to HOVERING_SCROLL_RIGHT"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 4221
    .end local v10    # "e":Landroid/os/RemoteException;
    :pswitch_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsHorizontalListView;->mHoverAreaEnter:Z

    move/from16 v18, v0

    if-nez v18, :cond_1c

    .line 4222
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsHorizontalListView;->mHoverAreaEnter:Z

    .line 4223
    const/16 v18, 0xa

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 4224
    invoke-super/range {p0 .. p1}, Landroid/widget/AdapterView;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v18

    goto/16 :goto_2

    .line 4227
    :cond_1c
    if-ltz v16, :cond_1f

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mHoverLeftAreaWidth:I

    move/from16 v18, v0

    move/from16 v0, v16

    move/from16 v1, v18

    if-gt v0, v1, :cond_1f

    .line 4229
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mHoverHandler:Landroid/widget/AbsHorizontalListView$HoverScrollHandler;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v18

    if-nez v18, :cond_1a

    .line 4230
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsHorizontalListView;->mHoverRecognitionStartTime:I

    .line 4233
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsHorizontalListView;->mIsHoverOverscrolled:Z

    move/from16 v18, v0

    if-eqz v18, :cond_1d

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mHoverScrollDirection:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1e

    .line 4235
    :cond_1d
    const/16 v18, 0x11

    const/16 v19, -0x1

    :try_start_4
    invoke-static/range {v18 .. v19}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    .line 4241
    :cond_1e
    :goto_d
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v15

    .line 4242
    .restart local v15    # "msg":Landroid/os/Message;
    const/16 v18, 0x1

    move/from16 v0, v18

    iput v0, v15, Landroid/os/Message;->what:I

    .line 4243
    const/16 v18, 0x2

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsHorizontalListView;->mHoverScrollDirection:I

    .line 4244
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mHoverHandler:Landroid/widget/AbsHorizontalListView$HoverScrollHandler;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_a

    .line 4236
    .end local v15    # "msg":Landroid/os/Message;
    :catch_4
    move-exception v10

    .line 4237
    .restart local v10    # "e":Landroid/os/RemoteException;
    const-string v18, "AbsHorizontalListView"

    const-string v19, "Failed to change Pen Point to HOVERING_SCROLL_LEFT"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 4246
    .end local v10    # "e":Landroid/os/RemoteException;
    :cond_1f
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mHoverRightAreaWidth:I

    move/from16 v18, v0

    sub-int v18, v8, v18

    move/from16 v0, v16

    move/from16 v1, v18

    if-lt v0, v1, :cond_1a

    move/from16 v0, v16

    if-gt v0, v8, :cond_1a

    .line 4248
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mHoverHandler:Landroid/widget/AbsHorizontalListView$HoverScrollHandler;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v18

    if-nez v18, :cond_1a

    .line 4249
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsHorizontalListView;->mHoverRecognitionStartTime:I

    .line 4252
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsHorizontalListView;->mIsHoverOverscrolled:Z

    move/from16 v18, v0

    if-eqz v18, :cond_20

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mHoverScrollDirection:I

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_21

    .line 4254
    :cond_20
    const/16 v18, 0xd

    const/16 v19, -0x1

    :try_start_5
    invoke-static/range {v18 .. v19}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_5

    .line 4260
    :cond_21
    :goto_e
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v15

    .line 4261
    .restart local v15    # "msg":Landroid/os/Message;
    const/16 v18, 0x1

    move/from16 v0, v18

    iput v0, v15, Landroid/os/Message;->what:I

    .line 4262
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsHorizontalListView;->mHoverScrollDirection:I

    .line 4263
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mHoverHandler:Landroid/widget/AbsHorizontalListView$HoverScrollHandler;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_a

    .line 4255
    .end local v15    # "msg":Landroid/os/Message;
    :catch_5
    move-exception v10

    .line 4256
    .restart local v10    # "e":Landroid/os/RemoteException;
    const-string v18, "AbsHorizontalListView"

    const-string v19, "Failed to change Pen Point to HOVERING_SCROLL_RIGHT"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 4269
    .end local v10    # "e":Landroid/os/RemoteException;
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mHoverHandler:Landroid/widget/AbsHorizontalListView$HoverScrollHandler;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v18

    if-eqz v18, :cond_22

    .line 4270
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mHoverHandler:Landroid/widget/AbsHorizontalListView$HoverScrollHandler;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->removeMessages(I)V

    .line 4274
    :cond_22
    const/16 v18, 0x1

    const/16 v19, -0x1

    :try_start_6
    invoke-static/range {v18 .. v19}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_6

    .line 4279
    :goto_f
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsHorizontalListView;->mHoverRecognitionStartTime:I

    .line 4280
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsHorizontalListView;->mHoverScrollStartTime:I

    .line 4281
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsHorizontalListView;->mIsHoverOverscrolled:Z

    .line 4282
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsHorizontalListView;->mHoverAreaEnter:Z

    .line 4284
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mOnScrollListener:Landroid/widget/AbsHorizontalListView$OnScrollListener;

    move-object/from16 v18, v0

    if-eqz v18, :cond_23

    .line 4285
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mOnScrollListener:Landroid/widget/AbsHorizontalListView$OnScrollListener;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move/from16 v2, v19

    invoke-interface {v0, v1, v2}, Landroid/widget/AbsHorizontalListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsHorizontalListView;I)V

    .line 4288
    :cond_23
    invoke-super/range {p0 .. p1}, Landroid/widget/AdapterView;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v18

    goto/16 :goto_2

    .line 4275
    :catch_6
    move-exception v10

    .line 4276
    .restart local v10    # "e":Landroid/os/RemoteException;
    const-string v18, "AbsHorizontalListView"

    const-string v19, "Failed to change Pen Point to HOVERING_SPENICON_DEFAULT"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 4184
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method protected dispatchSetPressed(Z)V
    .locals 0
    .param p1, "pressed"    # Z

    .prologue
    .line 3652
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 5076
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->draw(Landroid/graphics/Canvas;)V

    .line 5077
    iget-object v8, p0, Landroid/widget/AbsHorizontalListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    if-eqz v8, :cond_3

    .line 5078
    iget v5, p0, Landroid/widget/AbsHorizontalListView;->mScrollX:I

    .line 5079
    .local v5, "scrollX":I
    iget-object v8, p0, Landroid/widget/AbsHorizontalListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v8}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v8

    if-nez v8, :cond_1

    .line 5080
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    .line 5081
    .local v4, "restoreCount":I
    iget-object v8, p0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    iget v9, p0, Landroid/widget/AbsHorizontalListView;->mGlowPaddingTop:I

    add-int v6, v8, v9

    .line 5082
    .local v6, "topPadding":I
    iget-object v8, p0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    iget v9, p0, Landroid/widget/AbsHorizontalListView;->mGlowPaddingBottom:I

    add-int v0, v8, v9

    .line 5083
    .local v0, "bottomPadding":I
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getHeight()I

    move-result v8

    sub-int/2addr v8, v6

    sub-int v3, v8, v0

    .line 5085
    .local v3, "height":I
    neg-int v8, v3

    add-int v2, v8, v6

    .line 5086
    .local v2, "edgeY":I
    const/4 v8, 0x0

    iget v9, p0, Landroid/widget/AbsHorizontalListView;->mFirstPositionDistanceGuess:I

    add-int/2addr v9, v5

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 5087
    .local v1, "edgeX":I
    const/high16 v8, 0x43870000    # 270.0f

    invoke-virtual {p1, v8}, Landroid/graphics/Canvas;->rotate(F)V

    .line 5088
    int-to-float v8, v2

    int-to-float v9, v1

    invoke-virtual {p1, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 5089
    iget-object v8, p0, Landroid/widget/AbsHorizontalListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getWidth()I

    move-result v9

    invoke-virtual {v8, v3, v9}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 5090
    iget-object v8, p0, Landroid/widget/AbsHorizontalListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v8, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 5094
    :cond_0
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 5096
    .end local v0    # "bottomPadding":I
    .end local v1    # "edgeX":I
    .end local v2    # "edgeY":I
    .end local v3    # "height":I
    .end local v4    # "restoreCount":I
    .end local v6    # "topPadding":I
    :cond_1
    iget-object v8, p0, Landroid/widget/AbsHorizontalListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v8}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v8

    if-nez v8, :cond_3

    .line 5097
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    .line 5098
    .restart local v4    # "restoreCount":I
    iget-object v8, p0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    iget v9, p0, Landroid/widget/AbsHorizontalListView;->mGlowPaddingTop:I

    add-int v6, v8, v9

    .line 5099
    .restart local v6    # "topPadding":I
    iget-object v8, p0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    iget v9, p0, Landroid/widget/AbsHorizontalListView;->mGlowPaddingBottom:I

    add-int v0, v8, v9

    .line 5100
    .restart local v0    # "bottomPadding":I
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getHeight()I

    move-result v8

    sub-int/2addr v8, v6

    sub-int v3, v8, v0

    .line 5101
    .restart local v3    # "height":I
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getWidth()I

    move-result v7

    .line 5103
    .local v7, "width":I
    neg-int v2, v6

    .line 5104
    .restart local v2    # "edgeY":I
    iget v8, p0, Landroid/widget/AbsHorizontalListView;->mLastPositionDistanceGuess:I

    add-int/2addr v8, v5

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    neg-int v1, v8

    .line 5105
    .restart local v1    # "edgeX":I
    const/high16 v8, 0x42b40000    # 90.0f

    invoke-virtual {p1, v8}, Landroid/graphics/Canvas;->rotate(F)V

    .line 5106
    int-to-float v8, v2

    int-to-float v9, v1

    invoke-virtual {p1, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 5107
    iget-object v8, p0, Landroid/widget/AbsHorizontalListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v8, v3, v7}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 5108
    iget-object v8, p0, Landroid/widget/AbsHorizontalListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v8, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 5113
    :cond_2
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 5116
    .end local v0    # "bottomPadding":I
    .end local v1    # "edgeX":I
    .end local v2    # "edgeY":I
    .end local v3    # "height":I
    .end local v4    # "restoreCount":I
    .end local v5    # "scrollX":I
    .end local v6    # "topPadding":I
    .end local v7    # "width":I
    :cond_3
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 0

    .prologue
    .line 3096
    invoke-super {p0}, Landroid/widget/AdapterView;->drawableStateChanged()V

    .line 3097
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->updateSelectorState()V

    .line 3098
    return-void
.end method

.method abstract fillGap(Z)V
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 8342
    :try_start_0
    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->unregisterMotionListener()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8344
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 8346
    return-void

    .line 8344
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method findClosestMotionRow(I)I
    .locals 3
    .param p1, "x"    # I

    .prologue
    const/4 v2, -0x1

    .line 6677
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getChildCount()I

    move-result v0

    .line 6678
    .local v0, "childCount":I
    if-nez v0, :cond_1

    move v1, v2

    .line 6683
    :cond_0
    :goto_0
    return v1

    .line 6682
    :cond_1
    invoke-virtual {p0, p1}, Landroid/widget/AbsHorizontalListView;->findMotionRow(I)I

    move-result v1

    .line 6683
    .local v1, "motionRow":I
    if-ne v1, v2, :cond_0

    iget v2, p0, Landroid/widget/AbsHorizontalListView;->mFirstPosition:I

    add-int/2addr v2, v0

    add-int/lit8 v1, v2, -0x1

    goto :goto_0
.end method

.method abstract findMotionRow(I)I
.end method

.method public findViewByAccessibilityIdTraversal(I)Landroid/view/View;
    .locals 1
    .param p1, "accessibilityId"    # I

    .prologue
    .line 1870
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getAccessibilityViewId()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 1880
    .end local p0    # "this":Landroid/widget/AbsHorizontalListView;
    :goto_0
    return-object p0

    .line 1877
    .restart local p0    # "this":Landroid/widget/AbsHorizontalListView;
    :cond_0
    iget-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mDataChanged:Z

    if-eqz v0, :cond_1

    .line 1878
    const/4 p0, 0x0

    goto :goto_0

    .line 1880
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->findViewByAccessibilityIdTraversal(I)Landroid/view/View;

    move-result-object p0

    goto :goto_0
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 4

    .prologue
    .line 7420
    new-instance v0, Landroid/widget/AbsHorizontalListView$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/AbsHorizontalListView$LayoutParams;-><init>(III)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "x0"    # Landroid/util/AttributeSet;

    .prologue
    .line 129
    invoke-virtual {p0, p1}, Landroid/widget/AbsHorizontalListView;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/AbsHorizontalListView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 7426
    new-instance v0, Landroid/widget/AbsHorizontalListView$LayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/AbsHorizontalListView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/AbsHorizontalListView$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 7431
    new-instance v0, Landroid/widget/AbsHorizontalListView$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/AbsHorizontalListView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected getBottomPaddingOffset()I
    .locals 2

    .prologue
    .line 2897
    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x22

    const/16 v1, 0x22

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mPaddingBottom:I

    goto :goto_0
.end method

.method public getCacheColorHint()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    .line 7497
    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mCacheColorHint:I

    return v0
.end method

.method public getCheckedItemCount()I
    .locals 1

    .prologue
    .line 1198
    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mCheckedItemCount:I

    return v0
.end method

.method public getCheckedItemIds()[J
    .locals 6

    .prologue
    .line 1262
    iget v4, p0, Landroid/widget/AbsHorizontalListView;->mChoiceMode:I

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/widget/AbsHorizontalListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v4, :cond_2

    .line 1263
    :cond_0
    const/4 v4, 0x0

    new-array v3, v4, [J

    .line 1274
    :cond_1
    return-object v3

    .line 1266
    :cond_2
    iget-object v2, p0, Landroid/widget/AbsHorizontalListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 1267
    .local v2, "idStates":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    .line 1268
    .local v0, "count":I
    new-array v3, v0, [J

    .line 1270
    .local v3, "ids":[J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1271
    invoke-virtual {v2, v1}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v4

    aput-wide v4, v3, v1

    .line 1270
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getCheckedItemPosition()I
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1230
    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mChoiceMode:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 1231
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v0

    .line 1234
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getCheckedItemPositions()Landroid/util/SparseBooleanArray;
    .locals 1

    .prologue
    .line 1247
    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mChoiceMode:I

    if-eqz v0, :cond_0

    .line 1248
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 1250
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getChoiceMode()I
    .locals 1

    .prologue
    .line 1484
    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mChoiceMode:I

    return v0
.end method

.method protected getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .prologue
    .line 3504
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    return-object v0
.end method

.method public getFocusedRect(Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "r"    # Landroid/graphics/Rect;

    .prologue
    .line 1946
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 1947
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-ne v1, p0, :cond_0

    .line 1950
    invoke-virtual {v0, p1}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 1951
    invoke-virtual {p0, v0, p1}, Landroid/widget/AbsHorizontalListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1956
    :goto_0
    return-void

    .line 1954
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->getFocusedRect(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method getFooterViewsCount()I
    .locals 1

    .prologue
    .line 6620
    const/4 v0, 0x0

    return v0
.end method

.method getHeaderViewsCount()I
    .locals 1

    .prologue
    .line 6610
    const/4 v0, 0x0

    return v0
.end method

.method public getHorizontalScrollbarHeight()I
    .locals 2

    .prologue
    .line 1692
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mFastScroller:Landroid/widget/HorizontalFastScroller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mFastScroller:Landroid/widget/HorizontalFastScroller;

    invoke-virtual {v0}, Landroid/widget/HorizontalFastScroller;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1693
    invoke-super {p0}, Landroid/widget/AdapterView;->getHorizontalScrollbarHeight()I

    move-result v0

    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mFastScroller:Landroid/widget/HorizontalFastScroller;

    invoke-virtual {v1}, Landroid/widget/HorizontalFastScroller;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1695
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/widget/AdapterView;->getHorizontalScrollbarHeight()I

    move-result v0

    goto :goto_0
.end method

.method protected getLeftFadingEdgeStrength()F
    .locals 5

    .prologue
    .line 2413
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getChildCount()I

    move-result v0

    .line 2414
    .local v0, "count":I
    invoke-super {p0}, Landroid/widget/AdapterView;->getLeftFadingEdgeStrength()F

    move-result v1

    .line 2415
    .local v1, "fadeEdge":F
    if-nez v0, :cond_1

    .line 2424
    .end local v1    # "fadeEdge":F
    :cond_0
    :goto_0
    return v1

    .line 2418
    .restart local v1    # "fadeEdge":F
    :cond_1
    iget v4, p0, Landroid/widget/AbsHorizontalListView;->mFirstPosition:I

    if-lez v4, :cond_2

    .line 2419
    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    .line 2422
    :cond_2
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Landroid/widget/AbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v3

    .line 2423
    .local v3, "left":I
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getHorizontalFadingEdgeLength()I

    move-result v4

    int-to-float v2, v4

    .line 2424
    .local v2, "fadeLength":F
    iget v4, p0, Landroid/widget/AbsHorizontalListView;->mPaddingLeft:I

    if-ge v3, v4, :cond_0

    iget v4, p0, Landroid/widget/AbsHorizontalListView;->mPaddingLeft:I

    sub-int v4, v3, v4

    neg-int v4, v4

    int-to-float v4, v4

    div-float v1, v4, v2

    goto :goto_0
.end method

.method protected getLeftPaddingOffset()I
    .locals 2

    .prologue
    .line 2882
    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x22

    const/16 v1, 0x22

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mPaddingLeft:I

    neg-int v0, v0

    goto :goto_0
.end method

.method public getListPaddingBottom()I
    .locals 1

    .prologue
    .line 2587
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method public getListPaddingLeft()I
    .locals 1

    .prologue
    .line 2599
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public getListPaddingRight()I
    .locals 1

    .prologue
    .line 2611
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0
.end method

.method public getListPaddingTop()I
    .locals 1

    .prologue
    .line 2575
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method protected getRightFadingEdgeStrength()F
    .locals 7

    .prologue
    .line 2430
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getChildCount()I

    move-result v0

    .line 2431
    .local v0, "count":I
    invoke-super {p0}, Landroid/widget/AdapterView;->getRightFadingEdgeStrength()F

    move-result v1

    .line 2432
    .local v1, "fadeEdge":F
    if-nez v0, :cond_1

    .line 2442
    .end local v1    # "fadeEdge":F
    :cond_0
    :goto_0
    return v1

    .line 2435
    .restart local v1    # "fadeEdge":F
    :cond_1
    iget v5, p0, Landroid/widget/AbsHorizontalListView;->mFirstPosition:I

    add-int/2addr v5, v0

    add-int/lit8 v5, v5, -0x1

    iget v6, p0, Landroid/widget/AbsHorizontalListView;->mItemCount:I

    add-int/lit8 v6, v6, -0x1

    if-ge v5, v6, :cond_2

    .line 2436
    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    .line 2439
    :cond_2
    add-int/lit8 v5, v0, -0x1

    invoke-virtual {p0, v5}, Landroid/widget/AbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v3

    .line 2440
    .local v3, "right":I
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getWidth()I

    move-result v4

    .line 2441
    .local v4, "width":I
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getHorizontalFadingEdgeLength()I

    move-result v5

    int-to-float v2, v5

    .line 2442
    .local v2, "fadeLength":F
    iget v5, p0, Landroid/widget/AbsHorizontalListView;->mPaddingRight:I

    sub-int v5, v4, v5

    if-le v3, v5, :cond_0

    sub-int v5, v3, v4

    iget v6, p0, Landroid/widget/AbsHorizontalListView;->mPaddingRight:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    div-float v1, v5, v2

    goto :goto_0
.end method

.method protected getRightPaddingOffset()I
    .locals 2

    .prologue
    .line 2892
    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x22

    const/16 v1, 0x22

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mPaddingRight:I

    goto :goto_0
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 2559
    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mItemCount:I

    if-lez v0, :cond_0

    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mSelectedPosition:I

    if-ltz v0, :cond_0

    .line 2560
    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mSelectedPosition:I

    iget v1, p0, Landroid/widget/AbsHorizontalListView;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/widget/AbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2562
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSelector()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 3023
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mSelector:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getSolidColor()I
    .locals 1

    .prologue
    .line 7465
    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mCacheColorHint:I

    return v0
.end method

.method public getTextFilter()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 2272
    iget-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mTextFilterEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mTextFilter:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 2273
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 2275
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getTopPaddingOffset()I
    .locals 2

    .prologue
    .line 2887
    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x22

    const/16 v1, 0x22

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mPaddingTop:I

    neg-int v0, v0

    goto :goto_0
.end method

.method public getTouchSlop()I
    .locals 1

    .prologue
    .line 972
    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mTouchSlop:I

    return v0
.end method

.method public getTranscriptMode()I
    .locals 1

    .prologue
    .line 7460
    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mTranscriptMode:I

    return v0
.end method

.method protected handleDataChanged()V
    .locals 15

    .prologue
    const/4 v14, 0x5

    const/4 v13, -0x1

    const/4 v8, 0x3

    const/4 v9, 0x1

    const/4 v12, 0x0

    .line 6869
    iget v1, p0, Landroid/widget/AbsHorizontalListView;->mItemCount:I

    .line 6870
    .local v1, "count":I
    iget v3, p0, Landroid/widget/AbsHorizontalListView;->mLastHandledItemCount:I

    .line 6871
    .local v3, "lastHandledItemCount":I
    iget v10, p0, Landroid/widget/AbsHorizontalListView;->mItemCount:I

    iput v10, p0, Landroid/widget/AbsHorizontalListView;->mLastHandledItemCount:I

    .line 6874
    iget-boolean v10, p0, Landroid/widget/AbsHorizontalListView;->mIsMultiFocusEnabled:Z

    if-ne v10, v9, :cond_0

    iget-object v10, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v10, :cond_0

    iget v10, p0, Landroid/widget/AbsHorizontalListView;->mItemCount:I

    iget v11, p0, Landroid/widget/AbsHorizontalListView;->mOldAdapterItemCount:I

    if-eq v10, v11, :cond_0

    .line 6876
    iget v10, p0, Landroid/widget/AbsHorizontalListView;->mItemCount:I

    new-array v10, v10, [I

    iput-object v10, p0, Landroid/widget/AbsHorizontalListView;->mTwPressItemListArray:[I

    .line 6877
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->resetPressItemListArray()V

    .line 6878
    iget v10, p0, Landroid/widget/AbsHorizontalListView;->mItemCount:I

    iput v10, p0, Landroid/widget/AbsHorizontalListView;->mOldAdapterItemCount:I

    .line 6882
    :cond_0
    iget v10, p0, Landroid/widget/AbsHorizontalListView;->mChoiceMode:I

    if-eqz v10, :cond_1

    iget-object v10, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v10, :cond_1

    iget-object v10, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v10}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 6883
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->confirmCheckedPositionsById()V

    .line 6887
    :cond_1
    iget-object v10, p0, Landroid/widget/AbsHorizontalListView;->mRecycler:Landroid/widget/AbsHorizontalListView$RecycleBin;

    invoke-virtual {v10}, Landroid/widget/AbsHorizontalListView$RecycleBin;->clearTransientStateViews()V

    .line 6889
    if-lez v1, :cond_f

    .line 6894
    iget-boolean v10, p0, Landroid/widget/AbsHorizontalListView;->mNeedSync:Z

    if-eqz v10, :cond_8

    .line 6896
    iput-boolean v12, p0, Landroid/widget/AbsHorizontalListView;->mNeedSync:Z

    .line 6897
    const/4 v10, 0x0

    iput-object v10, p0, Landroid/widget/AbsHorizontalListView;->mPendingSync:Landroid/widget/AbsHorizontalListView$SavedState;

    .line 6899
    iget v10, p0, Landroid/widget/AbsHorizontalListView;->mTranscriptMode:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_3

    .line 6900
    iput v8, p0, Landroid/widget/AbsHorizontalListView;->mLayoutMode:I

    .line 7016
    :cond_2
    :goto_0
    return-void

    .line 6902
    :cond_3
    iget v10, p0, Landroid/widget/AbsHorizontalListView;->mTranscriptMode:I

    if-ne v10, v9, :cond_7

    .line 6903
    iget-boolean v10, p0, Landroid/widget/AbsHorizontalListView;->mForceTranscriptScroll:Z

    if-eqz v10, :cond_4

    .line 6904
    iput-boolean v12, p0, Landroid/widget/AbsHorizontalListView;->mForceTranscriptScroll:Z

    .line 6905
    iput v8, p0, Landroid/widget/AbsHorizontalListView;->mLayoutMode:I

    goto :goto_0

    .line 6908
    :cond_4
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getChildCount()I

    move-result v0

    .line 6909
    .local v0, "childCount":I
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getWidth()I

    move-result v10

    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getPaddingRight()I

    move-result v11

    sub-int v5, v10, v11

    .line 6910
    .local v5, "listRight":I
    add-int/lit8 v10, v0, -0x1

    invoke-virtual {p0, v10}, Landroid/widget/AbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 6911
    .local v2, "lastChild":Landroid/view/View;
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v4

    .line 6912
    .local v4, "lastRight":I
    :goto_1
    iget v10, p0, Landroid/widget/AbsHorizontalListView;->mFirstPosition:I

    add-int/2addr v10, v0

    if-lt v10, v3, :cond_6

    if-gt v4, v5, :cond_6

    .line 6914
    iput v8, p0, Landroid/widget/AbsHorizontalListView;->mLayoutMode:I

    goto :goto_0

    .end local v4    # "lastRight":I
    :cond_5
    move v4, v5

    .line 6911
    goto :goto_1

    .line 6919
    .restart local v4    # "lastRight":I
    :cond_6
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->awakenScrollBars()Z

    .line 6922
    .end local v0    # "childCount":I
    .end local v2    # "lastChild":Landroid/view/View;
    .end local v4    # "lastRight":I
    .end local v5    # "listRight":I
    :cond_7
    iget v10, p0, Landroid/widget/AbsHorizontalListView;->mSyncMode:I

    packed-switch v10, :pswitch_data_0

    .line 6970
    :cond_8
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->isInTouchMode()Z

    move-result v10

    if-nez v10, :cond_e

    .line 6972
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getSelectedItemPosition()I

    move-result v6

    .line 6975
    .local v6, "newPos":I
    if-lt v6, v1, :cond_9

    .line 6976
    add-int/lit8 v6, v1, -0x1

    .line 6978
    :cond_9
    if-gez v6, :cond_a

    .line 6979
    const/4 v6, 0x0

    .line 6983
    :cond_a
    invoke-virtual {p0, v6, v9}, Landroid/widget/AbsHorizontalListView;->lookForSelectablePosition(IZ)I

    move-result v7

    .line 6985
    .local v7, "selectablePos":I
    if-ltz v7, :cond_d

    .line 6986
    invoke-virtual {p0, v7}, Landroid/widget/AbsHorizontalListView;->setNextSelectedPositionInt(I)V

    goto :goto_0

    .line 6924
    .end local v6    # "newPos":I
    .end local v7    # "selectablePos":I
    :pswitch_0
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->isInTouchMode()Z

    move-result v10

    if-eqz v10, :cond_b

    .line 6929
    iput v14, p0, Landroid/widget/AbsHorizontalListView;->mLayoutMode:I

    .line 6930
    iget v8, p0, Landroid/widget/AbsHorizontalListView;->mSyncPosition:I

    invoke-static {v12, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    add-int/lit8 v9, v1, -0x1

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    iput v8, p0, Landroid/widget/AbsHorizontalListView;->mSyncPosition:I

    goto :goto_0

    .line 6936
    :cond_b
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->findSyncPosition()I

    move-result v6

    .line 6937
    .restart local v6    # "newPos":I
    if-ltz v6, :cond_8

    .line 6939
    invoke-virtual {p0, v6, v9}, Landroid/widget/AbsHorizontalListView;->lookForSelectablePosition(IZ)I

    move-result v7

    .line 6940
    .restart local v7    # "selectablePos":I
    if-ne v7, v6, :cond_8

    .line 6942
    iput v6, p0, Landroid/widget/AbsHorizontalListView;->mSyncPosition:I

    .line 6944
    iget-wide v8, p0, Landroid/widget/AbsHorizontalListView;->mSyncHeight:J

    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getWidth()I

    move-result v10

    int-to-long v10, v10

    cmp-long v8, v8, v10

    if-nez v8, :cond_c

    .line 6947
    iput v14, p0, Landroid/widget/AbsHorizontalListView;->mLayoutMode:I

    .line 6955
    :goto_2
    invoke-virtual {p0, v6}, Landroid/widget/AbsHorizontalListView;->setNextSelectedPositionInt(I)V

    goto/16 :goto_0

    .line 6951
    :cond_c
    const/4 v8, 0x2

    iput v8, p0, Landroid/widget/AbsHorizontalListView;->mLayoutMode:I

    goto :goto_2

    .line 6963
    .end local v6    # "newPos":I
    .end local v7    # "selectablePos":I
    :pswitch_1
    iput v14, p0, Landroid/widget/AbsHorizontalListView;->mLayoutMode:I

    .line 6964
    iget v8, p0, Landroid/widget/AbsHorizontalListView;->mSyncPosition:I

    invoke-static {v12, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    add-int/lit8 v9, v1, -0x1

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    iput v8, p0, Landroid/widget/AbsHorizontalListView;->mSyncPosition:I

    goto/16 :goto_0

    .line 6990
    .restart local v6    # "newPos":I
    .restart local v7    # "selectablePos":I
    :cond_d
    invoke-virtual {p0, v6, v12}, Landroid/widget/AbsHorizontalListView;->lookForSelectablePosition(IZ)I

    move-result v7

    .line 6991
    if-ltz v7, :cond_f

    .line 6992
    invoke-virtual {p0, v7}, Landroid/widget/AbsHorizontalListView;->setNextSelectedPositionInt(I)V

    goto/16 :goto_0

    .line 6999
    .end local v6    # "newPos":I
    .end local v7    # "selectablePos":I
    :cond_e
    iget v10, p0, Landroid/widget/AbsHorizontalListView;->mResurrectToPosition:I

    if-gez v10, :cond_2

    .line 7007
    :cond_f
    iget-boolean v10, p0, Landroid/widget/AbsHorizontalListView;->mStackFromBottom:Z

    if-eqz v10, :cond_10

    :goto_3
    iput v8, p0, Landroid/widget/AbsHorizontalListView;->mLayoutMode:I

    .line 7008
    iput v13, p0, Landroid/widget/AbsHorizontalListView;->mSelectedPosition:I

    .line 7009
    const-wide/high16 v8, -0x8000000000000000L

    iput-wide v8, p0, Landroid/widget/AbsHorizontalListView;->mSelectedRowId:J

    .line 7010
    iput v13, p0, Landroid/widget/AbsHorizontalListView;->mNextSelectedPosition:I

    .line 7011
    const-wide/high16 v8, -0x8000000000000000L

    iput-wide v8, p0, Landroid/widget/AbsHorizontalListView;->mNextSelectedRowId:J

    .line 7012
    iput-boolean v12, p0, Landroid/widget/AbsHorizontalListView;->mNeedSync:Z

    .line 7013
    const/4 v8, 0x0

    iput-object v8, p0, Landroid/widget/AbsHorizontalListView;->mPendingSync:Landroid/widget/AbsHorizontalListView$SavedState;

    .line 7014
    iput v13, p0, Landroid/widget/AbsHorizontalListView;->mSelectorPosition:I

    .line 7015
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->checkSelectionChanged()V

    goto/16 :goto_0

    :cond_10
    move v8, v9

    .line 7007
    goto :goto_3

    .line 6922
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public hasTextFilter()Z
    .locals 1

    .prologue
    .line 7342
    iget-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mFiltered:Z

    return v0
.end method

.method hideSelector()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 6634
    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mSelectedPosition:I

    if-eq v0, v2, :cond_2

    .line 6635
    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mLayoutMode:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 6636
    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mSelectedPosition:I

    iput v0, p0, Landroid/widget/AbsHorizontalListView;->mResurrectToPosition:I

    .line 6638
    :cond_0
    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mNextSelectedPosition:I

    if-ltz v0, :cond_1

    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mNextSelectedPosition:I

    iget v1, p0, Landroid/widget/AbsHorizontalListView;->mSelectedPosition:I

    if-eq v0, v1, :cond_1

    .line 6639
    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mNextSelectedPosition:I

    iput v0, p0, Landroid/widget/AbsHorizontalListView;->mResurrectToPosition:I

    .line 6641
    :cond_1
    invoke-virtual {p0, v2}, Landroid/widget/AbsHorizontalListView;->setSelectedPositionInt(I)V

    .line 6642
    invoke-virtual {p0, v2}, Landroid/widget/AbsHorizontalListView;->setNextSelectedPositionInt(I)V

    .line 6643
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/AbsHorizontalListView;->mSelectedLeft:I

    .line 6645
    :cond_2
    return-void
.end method

.method public invalidateViews()V
    .locals 1

    .prologue
    .line 6690
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mDataChanged:Z

    .line 6691
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->rememberSyncState()V

    .line 6692
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->requestLayout()V

    .line 6693
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->invalidate()V

    .line 6694
    return-void
.end method

.method invokeOnItemScrollListener()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1793
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mFastScroller:Landroid/widget/HorizontalFastScroller;

    if-eqz v0, :cond_0

    .line 1794
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mFastScroller:Landroid/widget/HorizontalFastScroller;

    iget v1, p0, Landroid/widget/AbsHorizontalListView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getChildCount()I

    move-result v2

    iget v3, p0, Landroid/widget/AbsHorizontalListView;->mItemCount:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/HorizontalFastScroller;->onScroll(III)V

    .line 1796
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mOnScrollListener:Landroid/widget/AbsHorizontalListView$OnScrollListener;

    if-eqz v0, :cond_1

    .line 1797
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mOnScrollListener:Landroid/widget/AbsHorizontalListView$OnScrollListener;

    iget v1, p0, Landroid/widget/AbsHorizontalListView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getChildCount()I

    move-result v2

    iget v3, p0, Landroid/widget/AbsHorizontalListView;->mItemCount:I

    invoke-interface {v0, p0, v1, v2, v3}, Landroid/widget/AbsHorizontalListView$OnScrollListener;->onScroll(Landroid/widget/AbsHorizontalListView;III)V

    .line 1799
    :cond_1
    invoke-virtual {p0, v4, v4, v4, v4}, Landroid/widget/AbsHorizontalListView;->onScrollChanged(IIII)V

    .line 1800
    return-void
.end method

.method public isFastScrollAlwaysVisible()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1683
    iget-object v2, p0, Landroid/widget/AbsHorizontalListView;->mFastScroller:Landroid/widget/HorizontalFastScroller;

    if-nez v2, :cond_2

    .line 1684
    iget-boolean v2, p0, Landroid/widget/AbsHorizontalListView;->mFastScrollEnabled:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Landroid/widget/AbsHorizontalListView;->mFastScrollAlwaysVisible:Z

    if-eqz v2, :cond_1

    .line 1686
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 1684
    goto :goto_0

    .line 1686
    :cond_2
    iget-object v2, p0, Landroid/widget/AbsHorizontalListView;->mFastScroller:Landroid/widget/HorizontalFastScroller;

    invoke-virtual {v2}, Landroid/widget/HorizontalFastScroller;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/widget/AbsHorizontalListView;->mFastScroller:Landroid/widget/HorizontalFastScroller;

    invoke-virtual {v2}, Landroid/widget/HorizontalFastScroller;->isAlwaysShowEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public isFastScrollEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 1706
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mFastScroller:Landroid/widget/HorizontalFastScroller;

    if-nez v0, :cond_0

    .line 1707
    iget-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mFastScrollEnabled:Z

    .line 1709
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mFastScroller:Landroid/widget/HorizontalFastScroller;

    invoke-virtual {v0}, Landroid/widget/HorizontalFastScroller;->isEnabled()Z

    move-result v0

    goto :goto_0
.end method

.method protected isInFilterMode()Z
    .locals 1

    .prologue
    .line 7130
    iget-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mFiltered:Z

    return v0
.end method

.method public isItemChecked(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 1213
    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mChoiceMode:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    .line 1214
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    .line 1217
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLockScreenMode()Z
    .locals 7

    .prologue
    .line 4027
    iget-object v5, p0, Landroid/widget/AbsHorizontalListView;->mContext:Landroid/content/Context;

    iget-object v6, p0, Landroid/widget/AbsHorizontalListView;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "keyguard"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/KeyguardManager;

    .line 4028
    .local v3, "keyguardManager":Landroid/app/KeyguardManager;
    const/4 v2, 0x0

    .line 4029
    .local v2, "isLockState":Z
    invoke-virtual {v3}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v2

    .line 4031
    iget-object v5, p0, Landroid/widget/AbsHorizontalListView;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "window"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v4

    .line 4032
    .local v4, "windowManager":Landroid/view/IWindowManager;
    const/4 v0, 0x1

    .line 4043
    .local v0, "isCoverOpen":Z
    const/4 v1, 0x0

    .line 4044
    .local v1, "isLockScreenAndCoverOpen":Z
    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 4046
    :goto_0
    return v1

    .line 4044
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isMultiFocusEnabled()Z
    .locals 1

    .prologue
    .line 8467
    iget-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mIsMultiFocusEnabled:Z

    return v0
.end method

.method public isMultiWindows()Z
    .locals 2

    .prologue
    .line 1764
    const-string v0, "1"

    const-string/jumbo v1, "sys.multiwindow.running"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected isPaddingOffsetRequired()Z
    .locals 2

    .prologue
    .line 2877
    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x22

    const/16 v1, 0x22

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isScrollingCacheEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 1894
    iget-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mScrollingCacheEnabled:Z

    return v0
.end method

.method public isSmoothScrollbarEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 1776
    iget-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mSmoothScrollbarEnabled:Z

    return v0
.end method

.method public isStackFromBottom()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 1971
    iget-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mStackFromBottom:Z

    return v0
.end method

.method public isTextFilterEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 1941
    iget-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mTextFilterEnabled:Z

    return v0
.end method

.method protected isTwHorizontalScrollBarHidden()Z
    .locals 1

    .prologue
    .line 1735
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->isFastScrollEnabled()Z

    move-result v0

    return v0
.end method

.method protected isTwShowingScrollbar()Z
    .locals 1

    .prologue
    .line 6213
    invoke-super {p0}, Landroid/widget/AdapterView;->isTwShowingScrollbar()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mFastScrollEnabled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isTwUsingAdapterView()Z
    .locals 1

    .prologue
    .line 6224
    const/4 v0, 0x1

    return v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .prologue
    .line 3141
    invoke-super {p0}, Landroid/widget/AdapterView;->jumpDrawablesToCurrentState()V

    .line 3142
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 3143
    :cond_0
    return-void
.end method

.method keyPressed()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 3031
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->isClickable()Z

    move-result v5

    if-nez v5, :cond_1

    .line 3066
    :cond_0
    :goto_0
    return-void

    .line 3035
    :cond_1
    iget-object v2, p0, Landroid/widget/AbsHorizontalListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 3036
    .local v2, "selector":Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Landroid/widget/AbsHorizontalListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 3037
    .local v3, "selectorRect":Landroid/graphics/Rect;
    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->isFocused()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->touchModeDrawsInPressedState()Z

    move-result v5

    if-eqz v5, :cond_0

    :cond_2
    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 3040
    iget v5, p0, Landroid/widget/AbsHorizontalListView;->mSelectedPosition:I

    iget v6, p0, Landroid/widget/AbsHorizontalListView;->mFirstPosition:I

    sub-int/2addr v5, v6

    invoke-virtual {p0, v5}, Landroid/widget/AbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 3042
    .local v4, "v":Landroid/view/View;
    if-eqz v4, :cond_3

    .line 3043
    invoke-virtual {v4}, Landroid/view/View;->hasFocusable()Z

    move-result v5

    if-nez v5, :cond_0

    .line 3044
    invoke-virtual {v4, v7}, Landroid/view/View;->setPressed(Z)V

    .line 3046
    :cond_3
    invoke-virtual {p0, v7}, Landroid/widget/AbsHorizontalListView;->setPressed(Z)V

    .line 3048
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->isLongClickable()Z

    move-result v1

    .line 3049
    .local v1, "longClickable":Z
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 3050
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_4

    instance-of v5, v0, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v5, :cond_4

    .line 3051
    if-eqz v1, :cond_6

    .line 3052
    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 3058
    :cond_4
    :goto_1
    if-eqz v1, :cond_0

    iget-boolean v5, p0, Landroid/widget/AbsHorizontalListView;->mDataChanged:Z

    if-nez v5, :cond_0

    .line 3059
    iget-object v5, p0, Landroid/widget/AbsHorizontalListView;->mPendingCheckForKeyLongPress:Landroid/widget/AbsHorizontalListView$CheckForKeyLongPress;

    if-nez v5, :cond_5

    .line 3060
    new-instance v5, Landroid/widget/AbsHorizontalListView$CheckForKeyLongPress;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Landroid/widget/AbsHorizontalListView$CheckForKeyLongPress;-><init>(Landroid/widget/AbsHorizontalListView;Landroid/widget/AbsHorizontalListView$1;)V

    iput-object v5, p0, Landroid/widget/AbsHorizontalListView;->mPendingCheckForKeyLongPress:Landroid/widget/AbsHorizontalListView$CheckForKeyLongPress;

    .line 3062
    :cond_5
    iget-object v5, p0, Landroid/widget/AbsHorizontalListView;->mPendingCheckForKeyLongPress:Landroid/widget/AbsHorizontalListView$CheckForKeyLongPress;

    invoke-virtual {v5}, Landroid/widget/AbsHorizontalListView$CheckForKeyLongPress;->rememberWindowAttachCount()V

    .line 3063
    iget-object v5, p0, Landroid/widget/AbsHorizontalListView;->mPendingCheckForKeyLongPress:Landroid/widget/AbsHorizontalListView$CheckForKeyLongPress;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {p0, v5, v6, v7}, Landroid/widget/AbsHorizontalListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 3055
    .restart local v0    # "d":Landroid/graphics/drawable/Drawable;
    :cond_6
    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    goto :goto_1
.end method

.method protected layoutChildren()V
    .locals 0

    .prologue
    .line 2520
    return-void
.end method

.method obtainView(I[Z)Landroid/view/View;
    .locals 10
    .param p1, "position"    # I
    .param p2, "isScrap"    # [Z

    .prologue
    const-wide/16 v8, 0x8

    const/4 v4, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2627
    const-string/jumbo v5, "obtainView"

    invoke-static {v8, v9, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2629
    aput-boolean v6, p2, v6

    .line 2632
    iget-object v5, p0, Landroid/widget/AbsHorizontalListView;->mRecycler:Landroid/widget/AbsHorizontalListView$RecycleBin;

    invoke-virtual {v5, p1}, Landroid/widget/AbsHorizontalListView$RecycleBin;->getTransientStateView(I)Landroid/view/View;

    move-result-object v2

    .line 2633
    .local v2, "scrapView":Landroid/view/View;
    if-nez v2, :cond_0

    .line 2634
    iget-object v5, p0, Landroid/widget/AbsHorizontalListView;->mRecycler:Landroid/widget/AbsHorizontalListView$RecycleBin;

    invoke-virtual {v5, p1}, Landroid/widget/AbsHorizontalListView$RecycleBin;->getScrapView(I)Landroid/view/View;

    move-result-object v2

    .line 2638
    :cond_0
    if-eqz v2, :cond_a

    .line 2639
    iget-object v5, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v5, p1, v2, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 2641
    .local v0, "child":Landroid/view/View;
    if-nez v0, :cond_2

    .line 2704
    :cond_1
    :goto_0
    return-object v4

    .line 2644
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v4

    if-nez v4, :cond_3

    .line 2645
    invoke-virtual {v0, v7}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 2648
    :cond_3
    if-eq v0, v2, :cond_8

    .line 2649
    iget-object v4, p0, Landroid/widget/AbsHorizontalListView;->mRecycler:Landroid/widget/AbsHorizontalListView$RecycleBin;

    invoke-virtual {v4, v2, p1}, Landroid/widget/AbsHorizontalListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 2650
    iget v4, p0, Landroid/widget/AbsHorizontalListView;->mCacheColorHint:I

    if-eqz v4, :cond_4

    .line 2651
    iget v4, p0, Landroid/widget/AbsHorizontalListView;->mCacheColorHint:I

    invoke-virtual {v0, v4}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 2679
    :cond_4
    :goto_1
    iget-boolean v4, p0, Landroid/widget/AbsHorizontalListView;->mAdapterHasStableIds:Z

    if-eqz v4, :cond_5

    .line 2680
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 2682
    .local v3, "vlp":Landroid/view/ViewGroup$LayoutParams;
    if-nez v3, :cond_c

    .line 2683
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/AbsHorizontalListView$LayoutParams;

    .line 2689
    .local v1, "lp":Landroid/widget/AbsHorizontalListView$LayoutParams;
    :goto_2
    iget-object v4, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    iput-wide v4, v1, Landroid/widget/AbsHorizontalListView$LayoutParams;->itemId:J

    .line 2690
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2693
    .end local v1    # "lp":Landroid/widget/AbsHorizontalListView$LayoutParams;
    .end local v3    # "vlp":Landroid/view/ViewGroup$LayoutParams;
    :cond_5
    iget-object v4, p0, Landroid/widget/AbsHorizontalListView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 2694
    iget-object v4, p0, Landroid/widget/AbsHorizontalListView;->mAccessibilityDelegate:Landroid/widget/AbsHorizontalListView$ListItemAccessibilityDelegate;

    if-nez v4, :cond_6

    .line 2695
    new-instance v4, Landroid/widget/AbsHorizontalListView$ListItemAccessibilityDelegate;

    invoke-direct {v4, p0}, Landroid/widget/AbsHorizontalListView$ListItemAccessibilityDelegate;-><init>(Landroid/widget/AbsHorizontalListView;)V

    iput-object v4, p0, Landroid/widget/AbsHorizontalListView;->mAccessibilityDelegate:Landroid/widget/AbsHorizontalListView$ListItemAccessibilityDelegate;

    .line 2697
    :cond_6
    invoke-virtual {v0}, Landroid/view/View;->getAccessibilityDelegate()Landroid/view/View$AccessibilityDelegate;

    move-result-object v4

    if-nez v4, :cond_7

    .line 2698
    iget-object v4, p0, Landroid/widget/AbsHorizontalListView;->mAccessibilityDelegate:Landroid/widget/AbsHorizontalListView$ListItemAccessibilityDelegate;

    invoke-virtual {v0, v4}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 2702
    :cond_7
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    move-object v4, v0

    .line 2704
    goto :goto_0

    .line 2654
    :cond_8
    aput-boolean v7, p2, v6

    .line 2658
    invoke-virtual {v0}, Landroid/view/View;->isAccessibilityFocused()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 2659
    invoke-virtual {v0}, Landroid/view/View;->clearAccessibilityFocus()V

    .line 2662
    :cond_9
    invoke-virtual {v0}, Landroid/view/View;->dispatchFinishTemporaryDetach()V

    goto :goto_1

    .line 2665
    .end local v0    # "child":Landroid/view/View;
    :cond_a
    iget-object v5, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v5, p1, v4, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 2667
    .restart local v0    # "child":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 2670
    invoke-virtual {v0}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v4

    if-nez v4, :cond_b

    .line 2671
    invoke-virtual {v0, v7}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 2674
    :cond_b
    iget v4, p0, Landroid/widget/AbsHorizontalListView;->mCacheColorHint:I

    if-eqz v4, :cond_4

    .line 2675
    iget v4, p0, Landroid/widget/AbsHorizontalListView;->mCacheColorHint:I

    invoke-virtual {v0, v4}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    goto :goto_1

    .line 2684
    .restart local v3    # "vlp":Landroid/view/ViewGroup$LayoutParams;
    :cond_c
    invoke-virtual {p0, v3}, Landroid/widget/AbsHorizontalListView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v4

    if-nez v4, :cond_d

    .line 2685
    invoke-virtual {p0, v3}, Landroid/widget/AbsHorizontalListView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/AbsHorizontalListView$LayoutParams;

    .restart local v1    # "lp":Landroid/widget/AbsHorizontalListView$LayoutParams;
    goto :goto_2

    .end local v1    # "lp":Landroid/widget/AbsHorizontalListView$LayoutParams;
    :cond_d
    move-object v1, v3

    .line 2687
    check-cast v1, Landroid/widget/AbsHorizontalListView$LayoutParams;

    .restart local v1    # "lp":Landroid/widget/AbsHorizontalListView$LayoutParams;
    goto :goto_2
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    .line 3147
    invoke-super {p0}, Landroid/widget/AdapterView;->onAttachedToWindow()V

    .line 3149
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 3150
    .local v0, "treeObserver":Landroid/view/ViewTreeObserver;
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 3153
    iget-boolean v1, p0, Landroid/widget/AbsHorizontalListView;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v1, :cond_0

    .line 3154
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mHapticPreDrawListener:Landroid/view/HapticPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 3158
    :cond_0
    iget-boolean v1, p0, Landroid/widget/AbsHorizontalListView;->mTextFilterEnabled:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Landroid/widget/AbsHorizontalListView;->mGlobalLayoutListenerAddedFilter:Z

    if-nez v1, :cond_1

    .line 3159
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 3162
    :cond_1
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mDataSetObserver:Landroid/widget/AbsHorizontalListView$AdapterDataSetObserver;

    if-nez v1, :cond_2

    .line 3163
    new-instance v1, Landroid/widget/AbsHorizontalListView$AdapterDataSetObserver;

    invoke-direct {v1, p0}, Landroid/widget/AbsHorizontalListView$AdapterDataSetObserver;-><init>(Landroid/widget/AbsHorizontalListView;)V

    iput-object v1, p0, Landroid/widget/AbsHorizontalListView;->mDataSetObserver:Landroid/widget/AbsHorizontalListView$AdapterDataSetObserver;

    .line 3164
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Landroid/widget/AbsHorizontalListView;->mDataSetObserver:Landroid/widget/AbsHorizontalListView$AdapterDataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 3167
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/AbsHorizontalListView;->mDataChanged:Z

    .line 3168
    iget v1, p0, Landroid/widget/AbsHorizontalListView;->mItemCount:I

    iput v1, p0, Landroid/widget/AbsHorizontalListView;->mOldItemCount:I

    .line 3169
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    iput v1, p0, Landroid/widget/AbsHorizontalListView;->mItemCount:I

    .line 3172
    :cond_2
    return-void
.end method

.method public onCancelPendingInputEvents()V
    .locals 1

    .prologue
    .line 3330
    invoke-super {p0}, Landroid/widget/AdapterView;->onCancelPendingInputEvents()V

    .line 3331
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mPerformClick:Landroid/widget/AbsHorizontalListView$PerformClick;

    if-eqz v0, :cond_0

    .line 3332
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mPerformClick:Landroid/widget/AbsHorizontalListView$PerformClick;

    invoke-virtual {p0, v0}, Landroid/widget/AbsHorizontalListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3334
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mPendingCheckForTap:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 3335
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mPendingCheckForTap:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/AbsHorizontalListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3337
    :cond_1
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mPendingCheckForLongPress:Landroid/widget/AbsHorizontalListView$CheckForLongPress;

    if-eqz v0, :cond_2

    .line 3338
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mPendingCheckForLongPress:Landroid/widget/AbsHorizontalListView$CheckForLongPress;

    invoke-virtual {p0, v0}, Landroid/widget/AbsHorizontalListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3340
    :cond_2
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mPendingCheckForKeyLongPress:Landroid/widget/AbsHorizontalListView$CheckForKeyLongPress;

    if-eqz v0, :cond_3

    .line 3341
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mPendingCheckForKeyLongPress:Landroid/widget/AbsHorizontalListView$CheckForKeyLongPress;

    invoke-virtual {p0, v0}, Landroid/widget/AbsHorizontalListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3343
    :cond_3
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 6
    .param p1, "extraSpace"    # I

    .prologue
    .line 3103
    iget-boolean v4, p0, Landroid/widget/AbsHorizontalListView;->mIsChildViewEnabled:Z

    if-eqz v4, :cond_1

    .line 3105
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onCreateDrawableState(I)[I

    move-result-object v3

    .line 3131
    :cond_0
    :goto_0
    return-object v3

    .line 3111
    :cond_1
    sget-object v4, Landroid/widget/AbsHorizontalListView;->ENABLED_STATE_SET:[I

    const/4 v5, 0x0

    aget v1, v4, v5

    .line 3116
    .local v1, "enabledState":I
    add-int/lit8 v4, p1, 0x1

    invoke-super {p0, v4}, Landroid/widget/AdapterView;->onCreateDrawableState(I)[I

    move-result-object v3

    .line 3117
    .local v3, "state":[I
    const/4 v0, -0x1

    .line 3118
    .local v0, "enabledPos":I
    array-length v4, v3

    add-int/lit8 v2, v4, -0x1

    .local v2, "i":I
    :goto_1
    if-ltz v2, :cond_2

    .line 3119
    aget v4, v3, v2

    if-ne v4, v1, :cond_3

    .line 3120
    move v0, v2

    .line 3126
    :cond_2
    if-ltz v0, :cond_0

    .line 3127
    add-int/lit8 v4, v0, 0x1

    array-length v5, v3

    sub-int/2addr v5, v0

    add-int/lit8 v5, v5, -0x1

    invoke-static {v3, v4, v3, v0, v5}, Ljava/lang/System;->arraycopy([II[III)V

    goto :goto_0

    .line 3118
    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_1
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 3
    .param p1, "outAttrs"    # Landroid/view/inputmethod/EditorInfo;

    .prologue
    const/4 v1, 0x0

    .line 7225
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->isTextFilterEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7229
    invoke-direct {p0, v1}, Landroid/widget/AbsHorizontalListView;->createTextFilter(Z)V

    .line 7230
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mPublicInputConnection:Landroid/view/inputmethod/InputConnectionWrapper;

    if-nez v0, :cond_0

    .line 7231
    new-instance v0, Landroid/view/inputmethod/BaseInputConnection;

    invoke-direct {v0, p0, v1}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    iput-object v0, p0, Landroid/widget/AbsHorizontalListView;->mDefInputConnection:Landroid/view/inputmethod/InputConnection;

    .line 7232
    new-instance v0, Landroid/widget/AbsHorizontalListView$5;

    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Landroid/widget/AbsHorizontalListView$5;-><init>(Landroid/widget/AbsHorizontalListView;Landroid/view/inputmethod/InputConnection;Z)V

    iput-object v0, p0, Landroid/widget/AbsHorizontalListView;->mPublicInputConnection:Landroid/view/inputmethod/InputConnectionWrapper;

    .line 7266
    :cond_0
    const/16 v0, 0xb1

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 7268
    const/4 v0, 0x6

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 7269
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mPublicInputConnection:Landroid/view/inputmethod/InputConnectionWrapper;

    .line 7271
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 3176
    invoke-super {p0}, Landroid/widget/AdapterView;->onDetachedFromWindow()V

    .line 3177
    const-string v1, "AbsHorizontalListView"

    const-string/jumbo v2, "onDetachedFromWindow"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3180
    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->dismissPopup()V

    .line 3183
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mRecycler:Landroid/widget/AbsHorizontalListView$RecycleBin;

    invoke-virtual {v1}, Landroid/widget/AbsHorizontalListView$RecycleBin;->clear()V

    .line 3185
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 3186
    .local v0, "treeObserver":Landroid/view/ViewTreeObserver;
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 3187
    iget-boolean v1, p0, Landroid/widget/AbsHorizontalListView;->mTextFilterEnabled:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_0

    .line 3188
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 3189
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/AbsHorizontalListView;->mGlobalLayoutListenerAddedFilter:Z

    .line 3192
    :cond_0
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mDataSetObserver:Landroid/widget/AbsHorizontalListView$AdapterDataSetObserver;

    if-eqz v1, :cond_1

    .line 3193
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Landroid/widget/AbsHorizontalListView;->mDataSetObserver:Landroid/widget/AbsHorizontalListView$AdapterDataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 3194
    iput-object v3, p0, Landroid/widget/AbsHorizontalListView;->mDataSetObserver:Landroid/widget/AbsHorizontalListView$AdapterDataSetObserver;

    .line 3197
    :cond_1
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v1, :cond_2

    .line 3198
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v1}, Landroid/os/StrictMode$Span;->finish()V

    .line 3199
    iput-object v3, p0, Landroid/widget/AbsHorizontalListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 3202
    :cond_2
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v1, :cond_3

    .line 3203
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v1}, Landroid/os/StrictMode$Span;->finish()V

    .line 3204
    iput-object v3, p0, Landroid/widget/AbsHorizontalListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 3207
    :cond_3
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mFlingRunnable:Landroid/widget/AbsHorizontalListView$FlingRunnable;

    if-eqz v1, :cond_4

    .line 3208
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mFlingRunnable:Landroid/widget/AbsHorizontalListView$FlingRunnable;

    invoke-virtual {p0, v1}, Landroid/widget/AbsHorizontalListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3211
    :cond_4
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mPositionScroller:Landroid/widget/AbsHorizontalListView$PositionScroller;

    if-eqz v1, :cond_5

    .line 3212
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mPositionScroller:Landroid/widget/AbsHorizontalListView$PositionScroller;

    invoke-virtual {v1}, Landroid/widget/AbsHorizontalListView$PositionScroller;->stop()V

    .line 3215
    :cond_5
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mClearScrollingCache:Ljava/lang/Runnable;

    if-eqz v1, :cond_6

    .line 3216
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mClearScrollingCache:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Landroid/widget/AbsHorizontalListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3219
    :cond_6
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mPerformClick:Landroid/widget/AbsHorizontalListView$PerformClick;

    if-eqz v1, :cond_7

    .line 3220
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mPerformClick:Landroid/widget/AbsHorizontalListView$PerformClick;

    invoke-virtual {p0, v1}, Landroid/widget/AbsHorizontalListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3223
    :cond_7
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mTouchModeReset:Ljava/lang/Runnable;

    if-eqz v1, :cond_8

    .line 3224
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mTouchModeReset:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Landroid/widget/AbsHorizontalListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3225
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mTouchModeReset:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 3228
    :cond_8
    iget v1, p0, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    if-eq v1, v4, :cond_9

    .line 3229
    iput v4, p0, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    .line 3233
    :cond_9
    iget-boolean v1, p0, Landroid/widget/AbsHorizontalListView;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v1, :cond_a

    .line 3234
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mHapticPreDrawListener:Landroid/view/HapticPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 3238
    :cond_a
    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->releaseAllBoosters()V

    .line 3239
    return-void
.end method

.method protected onDisplayHint(I)V
    .locals 1
    .param p1, "hint"    # I

    .prologue
    .line 7020
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onDisplayHint(I)V

    .line 7021
    sparse-switch p1, :sswitch_data_0

    .line 7033
    :cond_0
    :goto_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mPopupHidden:Z

    .line 7034
    return-void

    .line 7023
    :sswitch_0
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7024
    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->dismissPopup()V

    goto :goto_0

    .line 7028
    :sswitch_1
    iget-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mFiltered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7029
    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->showPopup()V

    goto :goto_0

    .line 7033
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 7021
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x4 -> :sswitch_0
    .end sparse-switch
.end method

.method public onFilterComplete(I)V
    .locals 1
    .param p1, "count"    # I

    .prologue
    .line 7412
    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mSelectedPosition:I

    if-gez v0, :cond_0

    if-lez p1, :cond_0

    .line 7413
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/AbsHorizontalListView;->mResurrectToPosition:I

    .line 7414
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->resurrectSelection()Z

    .line 7416
    :cond_0
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1
    .param p1, "gainFocus"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 2280
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AdapterView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 2281
    if-eqz p1, :cond_1

    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mSelectedPosition:I

    if-gez v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2282
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 2285
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mDataChanged:Z

    .line 2286
    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mItemCount:I

    iput v0, p0, Landroid/widget/AbsHorizontalListView;->mOldItemCount:I

    .line 2287
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    iput v0, p0, Landroid/widget/AbsHorizontalListView;->mItemCount:I

    .line 2289
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->resurrectSelection()Z

    .line 2292
    :cond_1
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mSelectedPosition:I

    if-ltz v0, :cond_2

    .line 2299
    :cond_2
    if-nez p1, :cond_3

    .line 2300
    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->releaseAllBoosters()V

    .line 2302
    :cond_3
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 5056
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    .line 5057
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 5071
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    :goto_0
    return v2

    .line 5059
    :pswitch_0
    iget v2, p0, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 5060
    const/16 v2, 0xa

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v1

    .line 5061
    .local v1, "hscroll":F
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_0

    .line 5062
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getHorizontalScrollFactor()F

    move-result v2

    mul-float/2addr v2, v1

    float-to-int v0, v2

    .line 5063
    .local v0, "delta":I
    invoke-virtual {p0, v0, v0}, Landroid/widget/AbsHorizontalListView;->trackMotionScroll(II)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5064
    const/4 v2, 0x1

    goto :goto_0

    .line 5057
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public onGlobalLayout()V
    .locals 1

    .prologue
    .line 7347
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7349
    iget-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mFiltered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mPopupHidden:Z

    if-nez v0, :cond_0

    .line 7350
    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->showPopup()V

    .line 7359
    :cond_0
    :goto_0
    return-void

    .line 7354
    :cond_1
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7355
    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->dismissPopup()V

    goto :goto_0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 1823
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1824
    const-class v0, Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 1825
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    const/4 v2, 0x1

    .line 1829
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1830
    const-class v0, Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 1831
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1832
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getFirstVisiblePosition()I

    move-result v0

    if-lez v0, :cond_0

    .line 1833
    const/16 v0, 0x2000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 1834
    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 1836
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getLastVisiblePosition()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    .line 1837
    const/16 v0, 0x1000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 1838
    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 1841
    :cond_1
    return-void
.end method

.method public onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;ILandroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    const/4 v2, 0x1

    .line 2788
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ListAdapter;

    .line 2789
    .local v0, "adapter":Landroid/widget/ListAdapter;
    const/4 v1, -0x1

    if-eq p2, v1, :cond_0

    if-nez v0, :cond_1

    .line 2815
    :cond_0
    :goto_0
    return-void

    .line 2794
    :cond_1
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0, p2}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 2795
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p3, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    goto :goto_0

    .line 2799
    :cond_3
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getSelectedItemPosition()I

    move-result v1

    if-ne p2, v1, :cond_5

    .line 2800
    invoke-virtual {p3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSelected(Z)V

    .line 2801
    const/16 v1, 0x8

    invoke-virtual {p3, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2806
    :goto_1
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->isClickable()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2807
    const/16 v1, 0x10

    invoke-virtual {p3, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2808
    invoke-virtual {p3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 2811
    :cond_4
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->isLongClickable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2812
    const/16 v1, 0x20

    invoke-virtual {p3, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2813
    invoke-virtual {p3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLongClickable(Z)V

    goto :goto_0

    .line 2803
    :cond_5
    const/4 v1, 0x4

    invoke-virtual {p3, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    goto :goto_1
.end method

.method public onInterceptHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 5157
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mFastScroller:Landroid/widget/HorizontalFastScroller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mFastScroller:Landroid/widget/HorizontalFastScroller;

    invoke-virtual {v0, p1}, Landroid/widget/HorizontalFastScroller;->onInterceptHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5158
    const/4 v0, 0x1

    .line 5161
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onInterceptHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v11, 0x4

    const/4 v10, -0x1

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 5166
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 5169
    .local v0, "action":I
    iget-object v9, p0, Landroid/widget/AbsHorizontalListView;->mPositionScroller:Landroid/widget/AbsHorizontalListView$PositionScroller;

    if-eqz v9, :cond_0

    .line 5170
    iget-object v9, p0, Landroid/widget/AbsHorizontalListView;->mPositionScroller:Landroid/widget/AbsHorizontalListView$PositionScroller;

    invoke-virtual {v9}, Landroid/widget/AbsHorizontalListView$PositionScroller;->stop()V

    .line 5173
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->isAttachedToWindow()Z

    move-result v9

    if-nez v9, :cond_2

    .line 5252
    :cond_1
    :goto_0
    return v7

    .line 5181
    :cond_2
    iget-object v9, p0, Landroid/widget/AbsHorizontalListView;->mFastScroller:Landroid/widget/HorizontalFastScroller;

    if-eqz v9, :cond_3

    iget-object v9, p0, Landroid/widget/AbsHorizontalListView;->mFastScroller:Landroid/widget/HorizontalFastScroller;

    invoke-virtual {v9, p1}, Landroid/widget/HorizontalFastScroller;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v9

    if-eqz v9, :cond_3

    move v7, v8

    .line 5182
    goto :goto_0

    .line 5185
    :cond_3
    and-int/lit16 v9, v0, 0xff

    packed-switch v9, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 5187
    :pswitch_1
    iget v3, p0, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    .line 5188
    .local v3, "touchMode":I
    const/4 v9, 0x6

    if-eq v3, v9, :cond_4

    const/4 v9, 0x5

    if-ne v3, v9, :cond_5

    .line 5189
    :cond_4
    iput v7, p0, Landroid/widget/AbsHorizontalListView;->mMotionCorrection:I

    move v7, v8

    .line 5190
    goto :goto_0

    .line 5193
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    float-to-int v5, v9

    .line 5194
    .local v5, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    float-to-int v6, v9

    .line 5195
    .local v6, "y":I
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v9

    iput v9, p0, Landroid/widget/AbsHorizontalListView;->mActivePointerId:I

    .line 5197
    invoke-virtual {p0, v5}, Landroid/widget/AbsHorizontalListView;->findMotionRow(I)I

    move-result v1

    .line 5198
    .local v1, "motionPosition":I
    if-eq v3, v11, :cond_6

    if-ltz v1, :cond_6

    .line 5201
    iget v9, p0, Landroid/widget/AbsHorizontalListView;->mFirstPosition:I

    sub-int v9, v1, v9

    invoke-virtual {p0, v9}, Landroid/widget/AbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 5202
    .local v4, "v":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v9

    iput v9, p0, Landroid/widget/AbsHorizontalListView;->mMotionViewOriginalLeft:I

    .line 5203
    iput v5, p0, Landroid/widget/AbsHorizontalListView;->mMotionX:I

    .line 5204
    iput v6, p0, Landroid/widget/AbsHorizontalListView;->mMotionY:I

    .line 5205
    iput v1, p0, Landroid/widget/AbsHorizontalListView;->mMotionPosition:I

    .line 5206
    iput v7, p0, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    .line 5207
    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->clearScrollingCache()V

    .line 5209
    .end local v4    # "v":Landroid/view/View;
    :cond_6
    const/high16 v9, -0x80000000

    iput v9, p0, Landroid/widget/AbsHorizontalListView;->mLastX:I

    .line 5210
    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->initOrResetVelocityTracker()V

    .line 5211
    iget-object v9, p0, Landroid/widget/AbsHorizontalListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 5212
    if-ne v3, v11, :cond_1

    move v7, v8

    .line 5213
    goto :goto_0

    .line 5219
    .end local v1    # "motionPosition":I
    .end local v3    # "touchMode":I
    .end local v5    # "x":I
    .end local v6    # "y":I
    :pswitch_2
    iget v9, p0, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    packed-switch v9, :pswitch_data_1

    goto :goto_0

    .line 5221
    :pswitch_3
    iget v9, p0, Landroid/widget/AbsHorizontalListView;->mActivePointerId:I

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    .line 5222
    .local v2, "pointerIndex":I
    if-ne v2, v10, :cond_7

    .line 5223
    const/4 v2, 0x0

    .line 5224
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v9

    iput v9, p0, Landroid/widget/AbsHorizontalListView;->mActivePointerId:I

    .line 5226
    :cond_7
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    float-to-int v5, v9

    .line 5227
    .restart local v5    # "x":I
    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->initVelocityTrackerIfNotExists()V

    .line 5228
    iget-object v9, p0, Landroid/widget/AbsHorizontalListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 5229
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    float-to-int v9, v9

    const/4 v10, 0x0

    invoke-direct {p0, v5, v9, v10}, Landroid/widget/AbsHorizontalListView;->startScrollIfNeeded(IILandroid/view/MotionEvent;)Z

    move-result v9

    if-eqz v9, :cond_1

    move v7, v8

    .line 5230
    goto/16 :goto_0

    .line 5239
    .end local v2    # "pointerIndex":I
    .end local v5    # "x":I
    :pswitch_4
    iput v10, p0, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    .line 5240
    iput v10, p0, Landroid/widget/AbsHorizontalListView;->mActivePointerId:I

    .line 5241
    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->recycleVelocityTracker()V

    .line 5242
    invoke-virtual {p0, v7}, Landroid/widget/AbsHorizontalListView;->reportScrollStateChange(I)V

    goto/16 :goto_0

    .line 5247
    :pswitch_5
    invoke-direct {p0, p1}, Landroid/widget/AbsHorizontalListView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 5185
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch

    .line 5219
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 3549
    sparse-switch p1, :sswitch_data_0

    .line 3560
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 3552
    :sswitch_0
    iput-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mIsCtrlkeyPressed:Z

    goto :goto_0

    .line 3556
    :sswitch_1
    iput-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mIsShiftkeyPressed:Z

    goto :goto_0

    .line 3549
    :sswitch_data_0
    .sparse-switch
        0x3b -> :sswitch_1
        0x3c -> :sswitch_1
        0x71 -> :sswitch_0
        0x72 -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 9
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v6, -0x1

    const/4 v3, 0x1

    const/4 v8, 0x0

    .line 3565
    iget v4, p0, Landroid/widget/AbsHorizontalListView;->mSelectedPosition:I

    iget v5, p0, Landroid/widget/AbsHorizontalListView;->mFirstPosition:I

    sub-int/2addr v4, v5

    invoke-virtual {p0, v4}, Landroid/widget/AbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3566
    .local v1, "selectedview":Landroid/view/View;
    const/4 v0, 0x0

    .line 3568
    .local v0, "currentview":Landroid/view/View;
    invoke-static {p1}, Landroid/view/KeyEvent;->isConfirmKey(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3569
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_0

    .line 3645
    :goto_0
    return v3

    .line 3572
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->isClickable()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->isPressed()Z

    move-result v4

    if-eqz v4, :cond_2

    iget v4, p0, Landroid/widget/AbsHorizontalListView;->mSelectedPosition:I

    if-ltz v4, :cond_2

    iget-object v4, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v4, :cond_2

    iget v4, p0, Landroid/widget/AbsHorizontalListView;->mSelectedPosition:I

    iget-object v5, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v5}, Landroid/widget/ListAdapter;->getCount()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 3576
    iget v4, p0, Landroid/widget/AbsHorizontalListView;->mSelectedPosition:I

    iget v5, p0, Landroid/widget/AbsHorizontalListView;->mFirstPosition:I

    sub-int/2addr v4, v5

    invoke-virtual {p0, v4}, Landroid/widget/AbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 3577
    .local v2, "view":Landroid/view/View;
    if-eqz v2, :cond_1

    .line 3578
    iget v4, p0, Landroid/widget/AbsHorizontalListView;->mSelectedPosition:I

    iget-wide v6, p0, Landroid/widget/AbsHorizontalListView;->mSelectedRowId:J

    invoke-virtual {p0, v2, v4, v6, v7}, Landroid/widget/AbsHorizontalListView;->performItemClick(Landroid/view/View;IJ)Z

    .line 3579
    invoke-virtual {v2, v8}, Landroid/view/View;->setPressed(Z)V

    .line 3581
    :cond_1
    invoke-virtual {p0, v8}, Landroid/widget/AbsHorizontalListView;->setPressed(Z)V

    goto :goto_0

    .line 3586
    .end local v2    # "view":Landroid/view/View;
    :cond_2
    sparse-switch p1, :sswitch_data_0

    .line 3645
    :cond_3
    :goto_1
    invoke-super {p0, p1, p2}, Landroid/widget/AdapterView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v3

    goto :goto_0

    .line 3592
    :sswitch_0
    iget-boolean v4, p0, Landroid/widget/AbsHorizontalListView;->mIsShiftkeyPressed:Z

    if-ne v4, v3, :cond_4

    .line 3593
    iget v4, p0, Landroid/widget/AbsHorizontalListView;->mOldKeyCode:I

    if-nez v4, :cond_6

    .line 3594
    iput p1, p0, Landroid/widget/AbsHorizontalListView;->mOldKeyCode:I

    .line 3600
    :cond_4
    :goto_2
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->isClickable()Z

    move-result v4

    if-eqz v4, :cond_3

    iget v4, p0, Landroid/widget/AbsHorizontalListView;->mSelectedPosition:I

    if-ltz v4, :cond_3

    iget-object v4, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v4, :cond_3

    iget v4, p0, Landroid/widget/AbsHorizontalListView;->mSelectedPosition:I

    iget-object v5, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v5}, Landroid/widget/ListAdapter;->getCount()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 3604
    iget v4, p0, Landroid/widget/AbsHorizontalListView;->mTwCurrentFocusPosition:I

    invoke-virtual {p0, v4}, Landroid/widget/AbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3606
    iget-boolean v4, p0, Landroid/widget/AbsHorizontalListView;->mIsShiftkeyPressed:Z

    if-ne v4, v3, :cond_5

    if-eqz v1, :cond_5

    .line 3607
    iget v3, p0, Landroid/widget/AbsHorizontalListView;->mCurrentKeyCode:I

    if-nez v3, :cond_7

    .line 3608
    iget v3, p0, Landroid/widget/AbsHorizontalListView;->mTwCurrentFocusPosition:I

    iget-wide v4, p0, Landroid/widget/AbsHorizontalListView;->mSelectedRowId:J

    invoke-virtual {p0, v0, v3, v4, v5}, Landroid/widget/AbsHorizontalListView;->twNotifyKeyPressState(Landroid/view/View;IJ)Z

    .line 3609
    iget v3, p0, Landroid/widget/AbsHorizontalListView;->mSelectedPosition:I

    iget-wide v4, p0, Landroid/widget/AbsHorizontalListView;->mSelectedRowId:J

    invoke-virtual {p0, v1, v3, v4, v5}, Landroid/widget/AbsHorizontalListView;->twNotifyKeyPressState(Landroid/view/View;IJ)Z

    .line 3610
    iget v3, p0, Landroid/widget/AbsHorizontalListView;->mTwCurrentFocusPosition:I

    iget v4, p0, Landroid/widget/AbsHorizontalListView;->mSelectedPosition:I

    invoke-virtual {p0, v3, v4}, Landroid/widget/AbsHorizontalListView;->addToPressItemListArray(II)V

    .line 3611
    iget v3, p0, Landroid/widget/AbsHorizontalListView;->mTwCurrentFocusPosition:I

    iput v3, p0, Landroid/widget/AbsHorizontalListView;->mFirstPressedPoint:I

    .line 3619
    :cond_5
    :goto_3
    iget v3, p0, Landroid/widget/AbsHorizontalListView;->mCurrentKeyCode:I

    if-eqz v3, :cond_3

    .line 3620
    iget v3, p0, Landroid/widget/AbsHorizontalListView;->mCurrentKeyCode:I

    iput v3, p0, Landroid/widget/AbsHorizontalListView;->mOldKeyCode:I

    goto :goto_1

    .line 3596
    :cond_6
    iput p1, p0, Landroid/widget/AbsHorizontalListView;->mCurrentKeyCode:I

    goto :goto_2

    .line 3613
    :cond_7
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->resetPressItemListArray()V

    .line 3614
    iget v3, p0, Landroid/widget/AbsHorizontalListView;->mSelectedPosition:I

    iget-wide v4, p0, Landroid/widget/AbsHorizontalListView;->mSelectedRowId:J

    invoke-virtual {p0, v1, v3, v4, v5}, Landroid/widget/AbsHorizontalListView;->twNotifyKeyPressState(Landroid/view/View;IJ)Z

    .line 3615
    iget v3, p0, Landroid/widget/AbsHorizontalListView;->mFirstPressedPoint:I

    iget v4, p0, Landroid/widget/AbsHorizontalListView;->mSelectedPosition:I

    invoke-virtual {p0, v3, v4}, Landroid/widget/AbsHorizontalListView;->addToPressItemListArray(II)V

    goto :goto_3

    .line 3627
    :sswitch_1
    iput-boolean v8, p0, Landroid/widget/AbsHorizontalListView;->mIsCtrlkeyPressed:Z

    goto :goto_1

    .line 3631
    :sswitch_2
    iput-boolean v8, p0, Landroid/widget/AbsHorizontalListView;->mIsShiftkeyPressed:Z

    .line 3632
    iput v8, p0, Landroid/widget/AbsHorizontalListView;->mOldKeyCode:I

    .line 3633
    iput v8, p0, Landroid/widget/AbsHorizontalListView;->mCurrentKeyCode:I

    .line 3634
    iput v6, p0, Landroid/widget/AbsHorizontalListView;->mFirstPressedPoint:I

    .line 3635
    iput v6, p0, Landroid/widget/AbsHorizontalListView;->mSecondPressedPoint:I

    goto :goto_1

    .line 3638
    :sswitch_3
    iget-boolean v4, p0, Landroid/widget/AbsHorizontalListView;->mIsCtrlkeyPressed:Z

    if-ne v4, v3, :cond_3

    .line 3639
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->resetPressItemListArray()V

    goto/16 :goto_1

    .line 3586
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x15 -> :sswitch_0
        0x16 -> :sswitch_0
        0x1f -> :sswitch_3
        0x3b -> :sswitch_2
        0x3c -> :sswitch_2
        0x71 -> :sswitch_1
        0x72 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 2476
    invoke-super/range {p0 .. p5}, Landroid/widget/AdapterView;->onLayout(ZIIII)V

    .line 2477
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/widget/AbsHorizontalListView;->mInLayout:Z

    .line 2478
    if-eqz p1, :cond_1

    .line 2479
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getChildCount()I

    move-result v0

    .line 2480
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 2481
    invoke-virtual {p0, v1}, Landroid/widget/AbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->forceLayout()V

    .line 2480
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2483
    :cond_0
    iget-object v2, p0, Landroid/widget/AbsHorizontalListView;->mRecycler:Landroid/widget/AbsHorizontalListView$RecycleBin;

    invoke-virtual {v2}, Landroid/widget/AbsHorizontalListView$RecycleBin;->markChildrenDirty()V

    .line 2486
    .end local v0    # "childCount":I
    .end local v1    # "i":I
    :cond_1
    iget-object v2, p0, Landroid/widget/AbsHorizontalListView;->mFastScroller:Landroid/widget/HorizontalFastScroller;

    if-eqz v2, :cond_3

    iget v2, p0, Landroid/widget/AbsHorizontalListView;->mItemCount:I

    iget v3, p0, Landroid/widget/AbsHorizontalListView;->mOldItemCount:I

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Landroid/widget/AbsHorizontalListView;->mDataChanged:Z

    if-eqz v2, :cond_3

    .line 2487
    :cond_2
    iget-object v2, p0, Landroid/widget/AbsHorizontalListView;->mFastScroller:Landroid/widget/HorizontalFastScroller;

    iget v3, p0, Landroid/widget/AbsHorizontalListView;->mItemCount:I

    invoke-virtual {v2, v3}, Landroid/widget/HorizontalFastScroller;->onItemCountChanged(I)V

    .line 2490
    :cond_3
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->layoutChildren()V

    .line 2491
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/widget/AbsHorizontalListView;->mInLayout:Z

    .line 2493
    sub-int v2, p4, p2

    div-int/lit8 v2, v2, 0x3

    iput v2, p0, Landroid/widget/AbsHorizontalListView;->mOverscrollMax:I

    .line 2494
    return-void
.end method

.method protected onMeasure(II)V
    .locals 8
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v5, 0x1

    .line 2449
    iget-object v6, p0, Landroid/widget/AbsHorizontalListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-nez v6, :cond_0

    .line 2450
    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->useDefaultSelector()V

    .line 2452
    :cond_0
    iget-object v3, p0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    .line 2453
    .local v3, "listPadding":Landroid/graphics/Rect;
    iget v6, p0, Landroid/widget/AbsHorizontalListView;->mSelectionLeftPadding:I

    iget v7, p0, Landroid/widget/AbsHorizontalListView;->mPaddingLeft:I

    add-int/2addr v6, v7

    iput v6, v3, Landroid/graphics/Rect;->left:I

    .line 2454
    iget v6, p0, Landroid/widget/AbsHorizontalListView;->mSelectionTopPadding:I

    iget v7, p0, Landroid/widget/AbsHorizontalListView;->mPaddingTop:I

    add-int/2addr v6, v7

    iput v6, v3, Landroid/graphics/Rect;->top:I

    .line 2455
    iget v6, p0, Landroid/widget/AbsHorizontalListView;->mSelectionRightPadding:I

    iget v7, p0, Landroid/widget/AbsHorizontalListView;->mPaddingRight:I

    add-int/2addr v6, v7

    iput v6, v3, Landroid/graphics/Rect;->right:I

    .line 2456
    iget v6, p0, Landroid/widget/AbsHorizontalListView;->mSelectionBottomPadding:I

    iget v7, p0, Landroid/widget/AbsHorizontalListView;->mPaddingBottom:I

    add-int/2addr v6, v7

    iput v6, v3, Landroid/graphics/Rect;->bottom:I

    .line 2459
    iget v6, p0, Landroid/widget/AbsHorizontalListView;->mTranscriptMode:I

    if-ne v6, v5, :cond_1

    .line 2460
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getChildCount()I

    move-result v0

    .line 2461
    .local v0, "childCount":I
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getPaddingRight()I

    move-result v7

    sub-int v4, v6, v7

    .line 2462
    .local v4, "listRight":I
    add-int/lit8 v6, v0, -0x1

    invoke-virtual {p0, v6}, Landroid/widget/AbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2463
    .local v1, "lastChild":Landroid/view/View;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v2

    .line 2464
    .local v2, "lastRight":I
    :goto_0
    iget v6, p0, Landroid/widget/AbsHorizontalListView;->mFirstPosition:I

    add-int/2addr v6, v0

    iget v7, p0, Landroid/widget/AbsHorizontalListView;->mLastHandledItemCount:I

    if-lt v6, v7, :cond_3

    if-gt v2, v4, :cond_3

    :goto_1
    iput-boolean v5, p0, Landroid/widget/AbsHorizontalListView;->mForceTranscriptScroll:Z

    .line 2468
    .end local v0    # "childCount":I
    .end local v1    # "lastChild":Landroid/view/View;
    .end local v2    # "lastRight":I
    .end local v4    # "listRight":I
    :cond_1
    return-void

    .restart local v0    # "childCount":I
    .restart local v1    # "lastChild":Landroid/view/View;
    .restart local v4    # "listRight":I
    :cond_2
    move v2, v4

    .line 2463
    goto :goto_0

    .line 2464
    .restart local v2    # "lastRight":I
    :cond_3
    const/4 v5, 0x0

    goto :goto_1
.end method

.method protected onOverScrolled(IIZZ)V
    .locals 3
    .param p1, "scrollX"    # I
    .param p2, "scrollY"    # I
    .param p3, "clampedX"    # Z
    .param p4, "clampedY"    # Z

    .prologue
    .line 5045
    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mScrollX:I

    if-eq v0, p1, :cond_0

    .line 5046
    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mScrollY:I

    iget v1, p0, Landroid/widget/AbsHorizontalListView;->mScrollX:I

    iget v2, p0, Landroid/widget/AbsHorizontalListView;->mScrollY:I

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/widget/AbsHorizontalListView;->onScrollChanged(IIII)V

    .line 5047
    iput p1, p0, Landroid/widget/AbsHorizontalListView;->mScrollX:I

    .line 5048
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->invalidateParentIfNeeded()V

    .line 5050
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->awakenScrollBars()Z

    .line 5052
    :cond_0
    return-void
.end method

.method public onRemoteAdapterConnected()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 7589
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    iget-object v2, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eq v1, v2, :cond_1

    .line 7590
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {p0, v1}, Landroid/widget/AbsHorizontalListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 7591
    iget-boolean v1, p0, Landroid/widget/AbsHorizontalListView;->mDeferNotifyDataSetChanged:Z

    if-eqz v1, :cond_0

    .line 7592
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v1}, Landroid/widget/RemoteViewsAdapter;->notifyDataSetChanged()V

    .line 7593
    iput-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mDeferNotifyDataSetChanged:Z

    .line 7600
    :cond_0
    :goto_0
    return v0

    .line 7596
    :cond_1
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v1, :cond_0

    .line 7597
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v0}, Landroid/widget/RemoteViewsAdapter;->superNotifyDataSetChanged()V

    .line 7598
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onRemoteAdapterDisconnected()V
    .locals 0

    .prologue
    .line 7613
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 8
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    const-wide/16 v6, 0x0

    const/4 v5, -0x1

    const/4 v4, 0x1

    .line 2187
    move-object v0, p1

    check-cast v0, Landroid/widget/AbsHorizontalListView$SavedState;

    .line 2189
    .local v0, "ss":Landroid/widget/AbsHorizontalListView$SavedState;
    invoke-virtual {v0}, Landroid/widget/AbsHorizontalListView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/AdapterView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 2190
    iput-boolean v4, p0, Landroid/widget/AbsHorizontalListView;->mDataChanged:Z

    .line 2192
    iget v1, v0, Landroid/widget/AbsHorizontalListView$SavedState;->width:I

    int-to-long v2, v1

    iput-wide v2, p0, Landroid/widget/AbsHorizontalListView;->mSyncHeight:J

    .line 2194
    iget-wide v2, v0, Landroid/widget/AbsHorizontalListView$SavedState;->selectedId:J

    cmp-long v1, v2, v6

    if-ltz v1, :cond_4

    .line 2195
    iput-boolean v4, p0, Landroid/widget/AbsHorizontalListView;->mNeedSync:Z

    .line 2196
    iput-object v0, p0, Landroid/widget/AbsHorizontalListView;->mPendingSync:Landroid/widget/AbsHorizontalListView$SavedState;

    .line 2197
    iget-wide v2, v0, Landroid/widget/AbsHorizontalListView$SavedState;->selectedId:J

    iput-wide v2, p0, Landroid/widget/AbsHorizontalListView;->mSyncRowId:J

    .line 2198
    iget v1, v0, Landroid/widget/AbsHorizontalListView$SavedState;->position:I

    iput v1, p0, Landroid/widget/AbsHorizontalListView;->mSyncPosition:I

    .line 2199
    iget v1, v0, Landroid/widget/AbsHorizontalListView$SavedState;->viewLeft:I

    iput v1, p0, Landroid/widget/AbsHorizontalListView;->mSpecificTop:I

    .line 2200
    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/AbsHorizontalListView;->mSyncMode:I

    .line 2214
    :cond_0
    :goto_0
    iget-object v1, v0, Landroid/widget/AbsHorizontalListView$SavedState;->filter:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/widget/AbsHorizontalListView;->setFilterText(Ljava/lang/String;)V

    .line 2216
    iget-object v1, v0, Landroid/widget/AbsHorizontalListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    if-eqz v1, :cond_1

    .line 2217
    iget-object v1, v0, Landroid/widget/AbsHorizontalListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    iput-object v1, p0, Landroid/widget/AbsHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 2220
    :cond_1
    iget-object v1, v0, Landroid/widget/AbsHorizontalListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    if-eqz v1, :cond_2

    .line 2221
    iget-object v1, v0, Landroid/widget/AbsHorizontalListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    iput-object v1, p0, Landroid/widget/AbsHorizontalListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 2224
    :cond_2
    iget v1, v0, Landroid/widget/AbsHorizontalListView$SavedState;->checkedItemCount:I

    iput v1, p0, Landroid/widget/AbsHorizontalListView;->mCheckedItemCount:I

    .line 2226
    iget-boolean v1, v0, Landroid/widget/AbsHorizontalListView$SavedState;->inActionMode:Z

    if-eqz v1, :cond_3

    iget v1, p0, Landroid/widget/AbsHorizontalListView;->mChoiceMode:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mMultiChoiceModeCallback:Landroid/widget/AbsHorizontalListView$MultiChoiceModeWrapper;

    if-eqz v1, :cond_3

    .line 2228
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mMultiChoiceModeCallback:Landroid/widget/AbsHorizontalListView$MultiChoiceModeWrapper;

    invoke-virtual {p0, v1}, Landroid/widget/AbsHorizontalListView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/AbsHorizontalListView;->mChoiceActionMode:Landroid/view/ActionMode;

    .line 2231
    :cond_3
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->requestLayout()V

    .line 2232
    return-void

    .line 2201
    :cond_4
    iget-wide v2, v0, Landroid/widget/AbsHorizontalListView$SavedState;->firstId:J

    cmp-long v1, v2, v6

    if-ltz v1, :cond_0

    .line 2202
    invoke-virtual {p0, v5}, Landroid/widget/AbsHorizontalListView;->setSelectedPositionInt(I)V

    .line 2204
    invoke-virtual {p0, v5}, Landroid/widget/AbsHorizontalListView;->setNextSelectedPositionInt(I)V

    .line 2205
    iput v5, p0, Landroid/widget/AbsHorizontalListView;->mSelectorPosition:I

    .line 2206
    iput-boolean v4, p0, Landroid/widget/AbsHorizontalListView;->mNeedSync:Z

    .line 2207
    iput-object v0, p0, Landroid/widget/AbsHorizontalListView;->mPendingSync:Landroid/widget/AbsHorizontalListView$SavedState;

    .line 2208
    iget-wide v2, v0, Landroid/widget/AbsHorizontalListView$SavedState;->firstId:J

    iput-wide v2, p0, Landroid/widget/AbsHorizontalListView;->mSyncRowId:J

    .line 2209
    iget v1, v0, Landroid/widget/AbsHorizontalListView$SavedState;->position:I

    iput v1, p0, Landroid/widget/AbsHorizontalListView;->mSyncPosition:I

    .line 2210
    iget v1, v0, Landroid/widget/AbsHorizontalListView$SavedState;->viewLeft:I

    iput v1, p0, Landroid/widget/AbsHorizontalListView;->mSpecificTop:I

    .line 2211
    iput v4, p0, Landroid/widget/AbsHorizontalListView;->mSyncMode:I

    goto :goto_0
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 2
    .param p1, "layoutDirection"    # I

    .prologue
    .line 3307
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onRtlPropertiesChanged(I)V

    .line 3308
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mFastScroller:Landroid/widget/HorizontalFastScroller;

    if-eqz v0, :cond_0

    .line 3309
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mFastScroller:Landroid/widget/HorizontalFastScroller;

    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getTwHorizontalScrollbarPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalFastScroller;->setScrollbarPosition(I)V

    .line 3311
    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 15

    .prologue
    .line 2095
    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->dismissPopup()V

    .line 2097
    invoke-super {p0}, Landroid/widget/AdapterView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v9

    .line 2099
    .local v9, "superState":Landroid/os/Parcelable;
    new-instance v8, Landroid/widget/AbsHorizontalListView$SavedState;

    invoke-direct {v8, v9}, Landroid/widget/AbsHorizontalListView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 2101
    .local v8, "ss":Landroid/widget/AbsHorizontalListView$SavedState;
    iget-object v12, p0, Landroid/widget/AbsHorizontalListView;->mPendingSync:Landroid/widget/AbsHorizontalListView$SavedState;

    if-eqz v12, :cond_1

    .line 2103
    iget-object v12, p0, Landroid/widget/AbsHorizontalListView;->mPendingSync:Landroid/widget/AbsHorizontalListView$SavedState;

    iget-wide v12, v12, Landroid/widget/AbsHorizontalListView$SavedState;->selectedId:J

    iput-wide v12, v8, Landroid/widget/AbsHorizontalListView$SavedState;->selectedId:J

    .line 2104
    iget-object v12, p0, Landroid/widget/AbsHorizontalListView;->mPendingSync:Landroid/widget/AbsHorizontalListView$SavedState;

    iget-wide v12, v12, Landroid/widget/AbsHorizontalListView$SavedState;->firstId:J

    iput-wide v12, v8, Landroid/widget/AbsHorizontalListView$SavedState;->firstId:J

    .line 2105
    iget-object v12, p0, Landroid/widget/AbsHorizontalListView;->mPendingSync:Landroid/widget/AbsHorizontalListView$SavedState;

    iget v12, v12, Landroid/widget/AbsHorizontalListView$SavedState;->viewLeft:I

    iput v12, v8, Landroid/widget/AbsHorizontalListView$SavedState;->viewLeft:I

    .line 2106
    iget-object v12, p0, Landroid/widget/AbsHorizontalListView;->mPendingSync:Landroid/widget/AbsHorizontalListView$SavedState;

    iget v12, v12, Landroid/widget/AbsHorizontalListView$SavedState;->position:I

    iput v12, v8, Landroid/widget/AbsHorizontalListView$SavedState;->position:I

    .line 2107
    iget-object v12, p0, Landroid/widget/AbsHorizontalListView;->mPendingSync:Landroid/widget/AbsHorizontalListView$SavedState;

    iget v12, v12, Landroid/widget/AbsHorizontalListView$SavedState;->width:I

    iput v12, v8, Landroid/widget/AbsHorizontalListView$SavedState;->width:I

    .line 2108
    iget-object v12, p0, Landroid/widget/AbsHorizontalListView;->mPendingSync:Landroid/widget/AbsHorizontalListView$SavedState;

    iget-object v12, v12, Landroid/widget/AbsHorizontalListView$SavedState;->filter:Ljava/lang/String;

    iput-object v12, v8, Landroid/widget/AbsHorizontalListView$SavedState;->filter:Ljava/lang/String;

    .line 2109
    iget-object v12, p0, Landroid/widget/AbsHorizontalListView;->mPendingSync:Landroid/widget/AbsHorizontalListView$SavedState;

    iget-boolean v12, v12, Landroid/widget/AbsHorizontalListView$SavedState;->inActionMode:Z

    iput-boolean v12, v8, Landroid/widget/AbsHorizontalListView$SavedState;->inActionMode:Z

    .line 2110
    iget-object v12, p0, Landroid/widget/AbsHorizontalListView;->mPendingSync:Landroid/widget/AbsHorizontalListView$SavedState;

    iget v12, v12, Landroid/widget/AbsHorizontalListView$SavedState;->checkedItemCount:I

    iput v12, v8, Landroid/widget/AbsHorizontalListView$SavedState;->checkedItemCount:I

    .line 2111
    iget-object v12, p0, Landroid/widget/AbsHorizontalListView;->mPendingSync:Landroid/widget/AbsHorizontalListView$SavedState;

    iget-object v12, v12, Landroid/widget/AbsHorizontalListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    iput-object v12, v8, Landroid/widget/AbsHorizontalListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    .line 2112
    iget-object v12, p0, Landroid/widget/AbsHorizontalListView;->mPendingSync:Landroid/widget/AbsHorizontalListView$SavedState;

    iget-object v12, v12, Landroid/widget/AbsHorizontalListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    iput-object v12, v8, Landroid/widget/AbsHorizontalListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    .line 2182
    :cond_0
    :goto_0
    return-object v8

    .line 2116
    :cond_1
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getChildCount()I

    move-result v12

    if-lez v12, :cond_4

    iget v12, p0, Landroid/widget/AbsHorizontalListView;->mItemCount:I

    if-lez v12, :cond_4

    const/4 v3, 0x1

    .line 2117
    .local v3, "haveChildren":Z
    :goto_1
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getSelectedItemId()J

    move-result-wide v6

    .line 2118
    .local v6, "selectedId":J
    iput-wide v6, v8, Landroid/widget/AbsHorizontalListView$SavedState;->selectedId:J

    .line 2119
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getWidth()I

    move-result v12

    iput v12, v8, Landroid/widget/AbsHorizontalListView$SavedState;->width:I

    .line 2121
    const-wide/16 v12, 0x0

    cmp-long v12, v6, v12

    if-ltz v12, :cond_5

    .line 2123
    iget v12, p0, Landroid/widget/AbsHorizontalListView;->mSelectedLeft:I

    iput v12, v8, Landroid/widget/AbsHorizontalListView$SavedState;->viewLeft:I

    .line 2124
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getSelectedItemPosition()I

    move-result v12

    iput v12, v8, Landroid/widget/AbsHorizontalListView$SavedState;->position:I

    .line 2125
    const-wide/16 v12, -0x1

    iput-wide v12, v8, Landroid/widget/AbsHorizontalListView$SavedState;->firstId:J

    .line 2152
    :goto_2
    const/4 v12, 0x0

    iput-object v12, v8, Landroid/widget/AbsHorizontalListView$SavedState;->filter:Ljava/lang/String;

    .line 2153
    iget-boolean v12, p0, Landroid/widget/AbsHorizontalListView;->mFiltered:Z

    if-eqz v12, :cond_2

    .line 2154
    iget-object v10, p0, Landroid/widget/AbsHorizontalListView;->mTextFilter:Landroid/widget/EditText;

    .line 2155
    .local v10, "textFilter":Landroid/widget/EditText;
    if-eqz v10, :cond_2

    .line 2156
    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 2157
    .local v1, "filterText":Landroid/text/Editable;
    if-eqz v1, :cond_2

    .line 2158
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v8, Landroid/widget/AbsHorizontalListView$SavedState;->filter:Ljava/lang/String;

    .line 2163
    .end local v1    # "filterText":Landroid/text/Editable;
    .end local v10    # "textFilter":Landroid/widget/EditText;
    :cond_2
    iget v12, p0, Landroid/widget/AbsHorizontalListView;->mChoiceMode:I

    const/4 v13, 0x3

    if-ne v12, v13, :cond_8

    iget-object v12, p0, Landroid/widget/AbsHorizontalListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v12, :cond_8

    const/4 v12, 0x1

    :goto_3
    iput-boolean v12, v8, Landroid/widget/AbsHorizontalListView$SavedState;->inActionMode:Z

    .line 2165
    iget-object v12, p0, Landroid/widget/AbsHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v12, :cond_3

    .line 2166
    iget-object v12, p0, Landroid/widget/AbsHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v12}, Landroid/util/SparseBooleanArray;->clone()Landroid/util/SparseBooleanArray;

    move-result-object v12

    iput-object v12, v8, Landroid/widget/AbsHorizontalListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    .line 2168
    :cond_3
    iget-object v12, p0, Landroid/widget/AbsHorizontalListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v12, :cond_a

    .line 2169
    new-instance v5, Landroid/util/LongSparseArray;

    invoke-direct {v5}, Landroid/util/LongSparseArray;-><init>()V

    .line 2170
    .local v5, "idState":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    iget-object v12, p0, Landroid/widget/AbsHorizontalListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v12}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    .line 2171
    .local v0, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_4
    if-ge v4, v0, :cond_9

    .line 2172
    iget-object v12, p0, Landroid/widget/AbsHorizontalListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v12, v4}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v12

    iget-object v14, p0, Landroid/widget/AbsHorizontalListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v14, v4}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v5, v12, v13, v14}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 2171
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 2116
    .end local v0    # "count":I
    .end local v3    # "haveChildren":Z
    .end local v4    # "i":I
    .end local v5    # "idState":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    .end local v6    # "selectedId":J
    :cond_4
    const/4 v3, 0x0

    goto :goto_1

    .line 2127
    .restart local v3    # "haveChildren":Z
    .restart local v6    # "selectedId":J
    :cond_5
    if-eqz v3, :cond_7

    iget v12, p0, Landroid/widget/AbsHorizontalListView;->mFirstPosition:I

    if-lez v12, :cond_7

    .line 2137
    const/4 v12, 0x0

    invoke-virtual {p0, v12}, Landroid/widget/AbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 2138
    .local v11, "v":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    move-result v12

    iput v12, v8, Landroid/widget/AbsHorizontalListView$SavedState;->viewLeft:I

    .line 2139
    iget v2, p0, Landroid/widget/AbsHorizontalListView;->mFirstPosition:I

    .line 2140
    .local v2, "firstPos":I
    iget v12, p0, Landroid/widget/AbsHorizontalListView;->mItemCount:I

    if-lt v2, v12, :cond_6

    .line 2141
    iget v12, p0, Landroid/widget/AbsHorizontalListView;->mItemCount:I

    add-int/lit8 v2, v12, -0x1

    .line 2143
    :cond_6
    iput v2, v8, Landroid/widget/AbsHorizontalListView$SavedState;->position:I

    .line 2144
    iget-object v12, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v12, v2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v12

    iput-wide v12, v8, Landroid/widget/AbsHorizontalListView$SavedState;->firstId:J

    goto :goto_2

    .line 2146
    .end local v2    # "firstPos":I
    .end local v11    # "v":Landroid/view/View;
    :cond_7
    const/4 v12, 0x0

    iput v12, v8, Landroid/widget/AbsHorizontalListView$SavedState;->viewLeft:I

    .line 2147
    const-wide/16 v12, -0x1

    iput-wide v12, v8, Landroid/widget/AbsHorizontalListView$SavedState;->firstId:J

    .line 2148
    const/4 v12, 0x0

    iput v12, v8, Landroid/widget/AbsHorizontalListView$SavedState;->position:I

    goto/16 :goto_2

    .line 2163
    :cond_8
    const/4 v12, 0x0

    goto :goto_3

    .line 2174
    .restart local v0    # "count":I
    .restart local v4    # "i":I
    .restart local v5    # "idState":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    :cond_9
    iput-object v5, v8, Landroid/widget/AbsHorizontalListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    .line 2176
    .end local v0    # "count":I
    .end local v4    # "i":I
    .end local v5    # "idState":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    :cond_a
    iget v12, p0, Landroid/widget/AbsHorizontalListView;->mCheckedItemCount:I

    iput v12, v8, Landroid/widget/AbsHorizontalListView$SavedState;->checkedItemCount:I

    .line 2178
    iget-object v12, p0, Landroid/widget/AbsHorizontalListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v12, :cond_0

    .line 2179
    iget-object v12, p0, Landroid/widget/AbsHorizontalListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v12}, Landroid/widget/RemoteViewsAdapter;->saveRemoteViewsCache()V

    goto/16 :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 2902
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 2903
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mDataChanged:Z

    .line 2904
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->rememberSyncState()V

    .line 2907
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mFastScroller:Landroid/widget/HorizontalFastScroller;

    if-eqz v0, :cond_1

    .line 2908
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mFastScroller:Landroid/widget/HorizontalFastScroller;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/widget/HorizontalFastScroller;->onSizeChanged(IIII)V

    .line 2910
    :cond_1
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 5
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    const/4 v4, 0x1

    .line 7376
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->isTextFilterEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 7377
    invoke-direct {p0, v4}, Landroid/widget/AbsHorizontalListView;->createTextFilter(Z)V

    .line 7378
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 7379
    .local v1, "length":I
    iget-object v3, p0, Landroid/widget/AbsHorizontalListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    .line 7380
    .local v2, "showing":Z
    if-nez v2, :cond_2

    if-lez v1, :cond_2

    .line 7382
    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->showPopup()V

    .line 7383
    iput-boolean v4, p0, Landroid/widget/AbsHorizontalListView;->mFiltered:Z

    .line 7389
    :cond_0
    :goto_0
    iget-object v3, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v3, v3, Landroid/widget/Filterable;

    if-eqz v3, :cond_1

    .line 7390
    iget-object v3, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v3, Landroid/widget/Filterable;

    invoke-interface {v3}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    .line 7392
    .local v0, "f":Landroid/widget/Filter;
    if-eqz v0, :cond_3

    .line 7393
    invoke-virtual {v0, p1, p0}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterListener;)V

    .line 7400
    .end local v0    # "f":Landroid/widget/Filter;
    .end local v1    # "length":I
    .end local v2    # "showing":Z
    :cond_1
    return-void

    .line 7384
    .restart local v1    # "length":I
    .restart local v2    # "showing":Z
    :cond_2
    if-eqz v2, :cond_0

    if-nez v1, :cond_0

    .line 7386
    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->dismissPopup()V

    .line 7387
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/widget/AbsHorizontalListView;->mFiltered:Z

    goto :goto_0

    .line 7395
    .restart local v0    # "f":Landroid/widget/Filter;
    :cond_3
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "You cannot call onTextChanged with a non filterable adapter"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 4473
    iget-boolean v11, p0, Landroid/widget/AbsHorizontalListView;->mMotionEnable:Z

    if-eqz v11, :cond_0

    .line 4474
    iget-object v11, p0, Landroid/widget/AbsHorizontalListView;->mMotionListener:Landroid/hardware/motion/MRListener;

    if-eqz v11, :cond_0

    .line 4475
    iget-object v11, p0, Landroid/widget/AbsHorizontalListView;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v12, p0, Landroid/widget/AbsHorizontalListView;->mMotionListener:Landroid/hardware/motion/MRListener;

    invoke-virtual {v11, v12, v10}, Landroid/hardware/motion/MotionRecognitionManager;->setMotionAngle(Landroid/hardware/motion/MRListener;I)V

    .line 4479
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->isEnabled()Z

    move-result v11

    if-nez v11, :cond_3

    .line 4482
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->isClickable()Z

    move-result v11

    if-nez v11, :cond_1

    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->isLongClickable()Z

    move-result v11

    if-eqz v11, :cond_2

    :cond_1
    move v9, v10

    .line 4570
    :cond_2
    :goto_0
    return v9

    .line 4485
    :cond_3
    iget-object v11, p0, Landroid/widget/AbsHorizontalListView;->mPositionScroller:Landroid/widget/AbsHorizontalListView$PositionScroller;

    if-eqz v11, :cond_4

    .line 4486
    iget-object v11, p0, Landroid/widget/AbsHorizontalListView;->mPositionScroller:Landroid/widget/AbsHorizontalListView$PositionScroller;

    invoke-virtual {v11}, Landroid/widget/AbsHorizontalListView$PositionScroller;->stop()V

    .line 4489
    :cond_4
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->isAttachedToWindow()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 4497
    iget-object v11, p0, Landroid/widget/AbsHorizontalListView;->mFastScroller:Landroid/widget/HorizontalFastScroller;

    if-eqz v11, :cond_5

    .line 4498
    iget-object v11, p0, Landroid/widget/AbsHorizontalListView;->mFastScroller:Landroid/widget/HorizontalFastScroller;

    invoke-virtual {v11, p1}, Landroid/widget/HorizontalFastScroller;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    .line 4499
    .local v4, "intercepted":Z
    if-eqz v4, :cond_5

    move v9, v10

    .line 4500
    goto :goto_0

    .line 4504
    .end local v4    # "intercepted":Z
    :cond_5
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v6

    .line 4505
    .local v6, "vtev":Landroid/view/MotionEvent;
    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->initVelocityTrackerIfNotExists()V

    .line 4506
    iget-object v11, p0, Landroid/widget/AbsHorizontalListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v11, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 4508
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 4509
    .local v0, "actionMasked":I
    packed-switch v0, :pswitch_data_0

    .line 4569
    :goto_1
    :pswitch_0
    invoke-virtual {v6}, Landroid/view/MotionEvent;->recycle()V

    move v9, v10

    .line 4570
    goto :goto_0

    .line 4511
    :pswitch_1
    invoke-direct {p0, p1}, Landroid/widget/AbsHorizontalListView;->onTouchDown(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 4516
    :pswitch_2
    invoke-direct {p0, p1, v6}, Landroid/widget/AbsHorizontalListView;->onTouchMove(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 4521
    :pswitch_3
    invoke-direct {p0, p1}, Landroid/widget/AbsHorizontalListView;->onTouchUp(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 4526
    :pswitch_4
    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->onTouchCancel()V

    goto :goto_1

    .line 4531
    :pswitch_5
    invoke-direct {p0, p1}, Landroid/widget/AbsHorizontalListView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 4532
    iget v7, p0, Landroid/widget/AbsHorizontalListView;->mMotionX:I

    .line 4533
    .local v7, "x":I
    iget v8, p0, Landroid/widget/AbsHorizontalListView;->mMotionY:I

    .line 4534
    .local v8, "y":I
    invoke-virtual {p0, v7, v8}, Landroid/widget/AbsHorizontalListView;->pointToPosition(II)I

    move-result v5

    .line 4535
    .local v5, "motionPosition":I
    if-ltz v5, :cond_6

    .line 4537
    iget v9, p0, Landroid/widget/AbsHorizontalListView;->mFirstPosition:I

    sub-int v9, v5, v9

    invoke-virtual {p0, v9}, Landroid/widget/AbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 4538
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v9

    iput v9, p0, Landroid/widget/AbsHorizontalListView;->mMotionViewOriginalLeft:I

    .line 4539
    iput v5, p0, Landroid/widget/AbsHorizontalListView;->mMotionPosition:I

    .line 4541
    .end local v1    # "child":Landroid/view/View;
    :cond_6
    iput v7, p0, Landroid/widget/AbsHorizontalListView;->mLastX:I

    .line 4542
    iget v9, p0, Landroid/widget/AbsHorizontalListView;->mPointerCount:I

    add-int/lit8 v9, v9, -0x1

    iput v9, p0, Landroid/widget/AbsHorizontalListView;->mPointerCount:I

    goto :goto_1

    .line 4548
    .end local v5    # "motionPosition":I
    .end local v7    # "x":I
    .end local v8    # "y":I
    :pswitch_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    .line 4549
    .local v3, "index":I
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 4550
    .local v2, "id":I
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v11

    float-to-int v7, v11

    .line 4551
    .restart local v7    # "x":I
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v11

    float-to-int v8, v11

    .line 4552
    .restart local v8    # "y":I
    iput v9, p0, Landroid/widget/AbsHorizontalListView;->mMotionCorrection:I

    .line 4553
    iput v2, p0, Landroid/widget/AbsHorizontalListView;->mActivePointerId:I

    .line 4554
    iput v7, p0, Landroid/widget/AbsHorizontalListView;->mMotionX:I

    .line 4555
    iput v8, p0, Landroid/widget/AbsHorizontalListView;->mMotionY:I

    .line 4556
    invoke-virtual {p0, v7, v8}, Landroid/widget/AbsHorizontalListView;->pointToPosition(II)I

    move-result v5

    .line 4557
    .restart local v5    # "motionPosition":I
    if-ltz v5, :cond_7

    .line 4559
    iget v9, p0, Landroid/widget/AbsHorizontalListView;->mFirstPosition:I

    sub-int v9, v5, v9

    invoke-virtual {p0, v9}, Landroid/widget/AbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 4560
    .restart local v1    # "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v9

    iput v9, p0, Landroid/widget/AbsHorizontalListView;->mMotionViewOriginalLeft:I

    .line 4561
    iput v5, p0, Landroid/widget/AbsHorizontalListView;->mMotionPosition:I

    .line 4563
    .end local v1    # "child":Landroid/view/View;
    :cond_7
    iput v7, p0, Landroid/widget/AbsHorizontalListView;->mLastX:I

    .line 4564
    iget v9, p0, Landroid/widget/AbsHorizontalListView;->mPointerCount:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Landroid/widget/AbsHorizontalListView;->mPointerCount:I

    goto :goto_1

    .line 4509
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method public onTouchModeChanged(Z)V
    .locals 2
    .param p1, "isInTouchMode"    # Z

    .prologue
    .line 3991
    if-eqz p1, :cond_2

    .line 3993
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->hideSelector()V

    .line 3997
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getWidth()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 4000
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->layoutChildren()V

    .line 4002
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->updateSelectorState()V

    .line 4021
    :cond_1
    :goto_0
    return-void

    .line 4004
    :cond_2
    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    .line 4005
    .local v0, "touchMode":I
    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    .line 4006
    :cond_3
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mFlingRunnable:Landroid/widget/AbsHorizontalListView$FlingRunnable;

    if-eqz v1, :cond_4

    .line 4007
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mFlingRunnable:Landroid/widget/AbsHorizontalListView$FlingRunnable;

    invoke-virtual {v1}, Landroid/widget/AbsHorizontalListView$FlingRunnable;->endFling()V

    .line 4009
    :cond_4
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mPositionScroller:Landroid/widget/AbsHorizontalListView$PositionScroller;

    if-eqz v1, :cond_5

    .line 4010
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mPositionScroller:Landroid/widget/AbsHorizontalListView$PositionScroller;

    invoke-virtual {v1}, Landroid/widget/AbsHorizontalListView$PositionScroller;->stop()V

    .line 4013
    :cond_5
    iget v1, p0, Landroid/widget/AbsHorizontalListView;->mScrollX:I

    if-eqz v1, :cond_1

    .line 4014
    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/AbsHorizontalListView;->mScrollX:I

    .line 4015
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->invalidateParentCaches()V

    .line 4016
    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->finishGlows()V

    .line 4017
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->invalidate()V

    goto :goto_0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    .line 8330
    invoke-super {p0, p1, p2}, Landroid/widget/AdapterView;->onVisibilityChanged(Landroid/view/View;I)V

    .line 8331
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/AbsHorizontalListView;->mHoverPosition:I

    .line 8333
    if-nez p2, :cond_0

    .line 8338
    :goto_0
    return-void

    .line 8336
    :cond_0
    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->releaseAllBoosters()V

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 5
    .param p1, "hasWindowFocus"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 3243
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onWindowFocusChanged(Z)V

    .line 3248
    iput-boolean p1, p0, Landroid/widget/AbsHorizontalListView;->mHasWindowFocusForMotion:Z

    .line 3250
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->isInTouchMode()Z

    move-result v3

    if-eqz v3, :cond_4

    move v0, v1

    .line 3252
    .local v0, "touchMode":I
    :goto_0
    if-nez p1, :cond_5

    .line 3253
    invoke-virtual {p0, v1}, Landroid/widget/AbsHorizontalListView;->setChildrenDrawingCacheEnabled(Z)V

    .line 3254
    iget-object v3, p0, Landroid/widget/AbsHorizontalListView;->mFlingRunnable:Landroid/widget/AbsHorizontalListView$FlingRunnable;

    if-eqz v3, :cond_1

    .line 3255
    iget-object v3, p0, Landroid/widget/AbsHorizontalListView;->mFlingRunnable:Landroid/widget/AbsHorizontalListView$FlingRunnable;

    invoke-virtual {p0, v3}, Landroid/widget/AbsHorizontalListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3258
    iget-object v3, p0, Landroid/widget/AbsHorizontalListView;->mFlingRunnable:Landroid/widget/AbsHorizontalListView$FlingRunnable;

    invoke-virtual {v3}, Landroid/widget/AbsHorizontalListView$FlingRunnable;->endFling()V

    .line 3259
    iget-object v3, p0, Landroid/widget/AbsHorizontalListView;->mPositionScroller:Landroid/widget/AbsHorizontalListView$PositionScroller;

    if-eqz v3, :cond_0

    .line 3260
    iget-object v3, p0, Landroid/widget/AbsHorizontalListView;->mPositionScroller:Landroid/widget/AbsHorizontalListView$PositionScroller;

    invoke-virtual {v3}, Landroid/widget/AbsHorizontalListView$PositionScroller;->stop()V

    .line 3262
    :cond_0
    iget v3, p0, Landroid/widget/AbsHorizontalListView;->mScrollY:I

    if-eqz v3, :cond_1

    .line 3263
    iput v1, p0, Landroid/widget/AbsHorizontalListView;->mScrollY:I

    .line 3264
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->invalidateParentCaches()V

    .line 3265
    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->finishGlows()V

    .line 3266
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->invalidate()V

    .line 3270
    :cond_1
    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->dismissPopup()V

    .line 3272
    if-ne v0, v2, :cond_2

    .line 3274
    iget v1, p0, Landroid/widget/AbsHorizontalListView;->mSelectedPosition:I

    iput v1, p0, Landroid/widget/AbsHorizontalListView;->mResurrectToPosition:I

    .line 3298
    :cond_2
    :goto_1
    iput v0, p0, Landroid/widget/AbsHorizontalListView;->mLastTouchMode:I

    .line 3300
    if-nez p1, :cond_3

    .line 3301
    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->releaseAllBoosters()V

    .line 3303
    :cond_3
    return-void

    .end local v0    # "touchMode":I
    :cond_4
    move v0, v2

    .line 3250
    goto :goto_0

    .line 3277
    .restart local v0    # "touchMode":I
    :cond_5
    iget-boolean v3, p0, Landroid/widget/AbsHorizontalListView;->mFiltered:Z

    if-eqz v3, :cond_6

    iget-boolean v3, p0, Landroid/widget/AbsHorizontalListView;->mPopupHidden:Z

    if-nez v3, :cond_6

    .line 3279
    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->showPopup()V

    .line 3283
    :cond_6
    iget v3, p0, Landroid/widget/AbsHorizontalListView;->mLastTouchMode:I

    if-eq v0, v3, :cond_2

    iget v3, p0, Landroid/widget/AbsHorizontalListView;->mLastTouchMode:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    .line 3285
    if-ne v0, v2, :cond_7

    .line 3287
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->resurrectSelection()Z

    goto :goto_1

    .line 3291
    :cond_7
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->hideSelector()V

    .line 3292
    iput v1, p0, Landroid/widget/AbsHorizontalListView;->mLayoutMode:I

    .line 3293
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->layoutChildren()V

    goto :goto_1
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 6
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .prologue
    const/16 v5, 0xc8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1845
    invoke-super {p0, p1, p2}, Landroid/widget/AdapterView;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1864
    :goto_0
    return v1

    .line 1848
    :cond_0
    sparse-switch p1, :sswitch_data_0

    move v1, v2

    .line 1864
    goto :goto_0

    .line 1850
    :sswitch_0
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getLastVisiblePosition()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_1

    .line 1851
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getWidth()I

    move-result v2

    iget-object v3, p0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int v0, v2, v3

    .line 1852
    .local v0, "viewportWidth":I
    invoke-virtual {p0, v0, v5}, Landroid/widget/AbsHorizontalListView;->smoothScrollBy(II)V

    goto :goto_0

    .end local v0    # "viewportWidth":I
    :cond_1
    move v1, v2

    .line 1855
    goto :goto_0

    .line 1857
    :sswitch_1
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Landroid/widget/AbsHorizontalListView;->mFirstPosition:I

    if-lez v3, :cond_2

    .line 1858
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getWidth()I

    move-result v2

    iget-object v3, p0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int v0, v2, v3

    .line 1859
    .restart local v0    # "viewportWidth":I
    neg-int v2, v0

    invoke-virtual {p0, v2, v5}, Landroid/widget/AbsHorizontalListView;->smoothScrollBy(II)V

    goto :goto_0

    .end local v0    # "viewportWidth":I
    :cond_2
    move v1, v2

    .line 1862
    goto :goto_0

    .line 1848
    nop

    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_0
        0x2000 -> :sswitch_1
    .end sparse-switch
.end method

.method public performItemClick(Landroid/view/View;IJ)Z
    .locals 11
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    const/16 v4, 0x4e84

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1370
    const/4 v8, 0x0

    .line 1371
    .local v8, "handled":Z
    const/4 v9, 0x0

    .line 1372
    .local v9, "handledNotifykeyPress":Z
    const/4 v7, 0x1

    .line 1374
    .local v7, "dispatchItemClick":Z
    iget v3, p0, Landroid/widget/AbsHorizontalListView;->mChoiceMode:I

    if-eqz v3, :cond_11

    .line 1375
    const/4 v8, 0x1

    .line 1376
    const/4 v0, 0x0

    .line 1379
    .local v0, "checkedStateChanged":Z
    iget-boolean v3, p0, Landroid/widget/AbsHorizontalListView;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v3, :cond_0

    .line 1380
    iget-object v3, p0, Landroid/widget/AbsHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v3, :cond_7

    instance-of v3, p1, Landroid/widget/Checkable;

    if-eqz v3, :cond_7

    .line 1390
    :cond_0
    :goto_0
    iget-object v3, p0, Landroid/widget/AbsHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v3, :cond_b

    iget v3, p0, Landroid/widget/AbsHorizontalListView;->mChoiceMode:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    iget v3, p0, Landroid/widget/AbsHorizontalListView;->mChoiceMode:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_b

    iget-object v3, p0, Landroid/widget/AbsHorizontalListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v3, :cond_b

    .line 1392
    :cond_1
    iget-object v3, p0, Landroid/widget/AbsHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p2, v2}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v3

    if-nez v3, :cond_8

    move v6, v1

    .line 1393
    .local v6, "checked":Z
    :goto_1
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p2, v6}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1394
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1395
    if-eqz v6, :cond_9

    .line 1396
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v2, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1401
    :cond_2
    :goto_2
    if-eqz v6, :cond_a

    .line 1402
    iget v1, p0, Landroid/widget/AbsHorizontalListView;->mCheckedItemCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/widget/AbsHorizontalListView;->mCheckedItemCount:I

    .line 1406
    :goto_3
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_3

    .line 1407
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mMultiChoiceModeCallback:Landroid/widget/AbsHorizontalListView$MultiChoiceModeWrapper;

    iget-object v2, p0, Landroid/widget/AbsHorizontalListView;->mChoiceActionMode:Landroid/view/ActionMode;

    move v3, p2

    move-wide v4, p3

    invoke-virtual/range {v1 .. v6}, Landroid/widget/AbsHorizontalListView$MultiChoiceModeWrapper;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    .line 1409
    const/4 v7, 0x0

    .line 1411
    :cond_3
    const/4 v0, 0x1

    .line 1428
    .end local v6    # "checked":Z
    :cond_4
    :goto_4
    if-eqz v0, :cond_5

    .line 1429
    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->updateOnScreenCheckedViews()V

    .line 1439
    .end local v0    # "checkedStateChanged":Z
    :cond_5
    :goto_5
    if-eqz v7, :cond_6

    .line 1440
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AdapterView;->performItemClick(Landroid/view/View;IJ)Z

    move-result v1

    or-int/2addr v8, v1

    .line 1443
    :cond_6
    return v8

    .line 1385
    .restart local v0    # "checkedStateChanged":Z
    :cond_7
    invoke-virtual {p0, v4}, Landroid/widget/AbsHorizontalListView;->performHapticFeedback(I)Z

    goto :goto_0

    :cond_8
    move v6, v2

    .line 1392
    goto :goto_1

    .line 1398
    .restart local v6    # "checked":Z
    :cond_9
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v2, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/util/LongSparseArray;->delete(J)V

    goto :goto_2

    .line 1404
    :cond_a
    iget v1, p0, Landroid/widget/AbsHorizontalListView;->mCheckedItemCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/widget/AbsHorizontalListView;->mCheckedItemCount:I

    goto :goto_3

    .line 1412
    .end local v6    # "checked":Z
    :cond_b
    iget-object v3, p0, Landroid/widget/AbsHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v3, :cond_4

    iget v3, p0, Landroid/widget/AbsHorizontalListView;->mChoiceMode:I

    if-ne v3, v1, :cond_4

    .line 1413
    iget-object v3, p0, Landroid/widget/AbsHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p2, v2}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v3

    if-nez v3, :cond_e

    move v6, v1

    .line 1414
    .restart local v6    # "checked":Z
    :goto_6
    if-eqz v6, :cond_f

    .line 1415
    iget-object v2, p0, Landroid/widget/AbsHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->clear()V

    .line 1416
    iget-object v2, p0, Landroid/widget/AbsHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p2, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1417
    iget-object v2, p0, Landroid/widget/AbsHorizontalListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v2, :cond_c

    iget-object v2, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1418
    iget-object v2, p0, Landroid/widget/AbsHorizontalListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v2}, Landroid/util/LongSparseArray;->clear()V

    .line 1419
    iget-object v2, p0, Landroid/widget/AbsHorizontalListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v3, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v4, v5, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1421
    :cond_c
    iput v1, p0, Landroid/widget/AbsHorizontalListView;->mCheckedItemCount:I

    .line 1425
    :cond_d
    :goto_7
    const/4 v0, 0x1

    goto :goto_4

    .end local v6    # "checked":Z
    :cond_e
    move v6, v2

    .line 1413
    goto :goto_6

    .line 1422
    .restart local v6    # "checked":Z
    :cond_f
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    if-eqz v1, :cond_10

    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v1

    if-nez v1, :cond_d

    .line 1423
    :cond_10
    iput v2, p0, Landroid/widget/AbsHorizontalListView;->mCheckedItemCount:I

    goto :goto_7

    .line 1431
    .end local v0    # "checkedStateChanged":Z
    .end local v6    # "checked":Z
    :cond_11
    if-eqz p1, :cond_5

    .line 1433
    iget-boolean v1, p0, Landroid/widget/AbsHorizontalListView;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v1, :cond_5

    .line 1434
    invoke-virtual {p1, v4}, Landroid/view/View;->performHapticFeedback(I)Z

    goto :goto_5
.end method

.method performLongPress(Landroid/view/View;IJ)Z
    .locals 9
    .param p1, "child"    # Landroid/view/View;
    .param p2, "longPressPosition"    # I
    .param p3, "longPressId"    # J

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 3478
    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mChoiceMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 3479
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mMultiChoiceModeCallback:Landroid/widget/AbsHorizontalListView$MultiChoiceModeWrapper;

    invoke-virtual {p0, v0}, Landroid/widget/AbsHorizontalListView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsHorizontalListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 3481
    invoke-virtual {p0, p2, v6}, Landroid/widget/AbsHorizontalListView;->setItemChecked(IZ)V

    .line 3482
    invoke-virtual {p0, v7}, Landroid/widget/AbsHorizontalListView;->performHapticFeedback(I)Z

    .line 3499
    :cond_0
    :goto_0
    return v6

    .line 3487
    :cond_1
    const/4 v6, 0x0

    .line 3488
    .local v6, "handled":Z
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    if-eqz v0, :cond_2

    .line 3489
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v6

    .line 3492
    :cond_2
    if-nez v6, :cond_3

    .line 3493
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/AbsHorizontalListView;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsHorizontalListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 3494
    invoke-super {p0, p0}, Landroid/widget/AdapterView;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v6

    .line 3496
    :cond_3
    if-eqz v6, :cond_0

    .line 3497
    invoke-virtual {p0, v7}, Landroid/widget/AbsHorizontalListView;->performHapticFeedback(I)Z

    goto :goto_0
.end method

.method public pointToPosition(II)I
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 3663
    iget-object v2, p0, Landroid/widget/AbsHorizontalListView;->mTouchFrame:Landroid/graphics/Rect;

    .line 3664
    .local v2, "frame":Landroid/graphics/Rect;
    if-nez v2, :cond_0

    .line 3665
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Landroid/widget/AbsHorizontalListView;->mTouchFrame:Landroid/graphics/Rect;

    .line 3666
    iget-object v2, p0, Landroid/widget/AbsHorizontalListView;->mTouchFrame:Landroid/graphics/Rect;

    .line 3669
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getChildCount()I

    move-result v1

    .line 3670
    .local v1, "count":I
    add-int/lit8 v3, v1, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_2

    .line 3671
    invoke-virtual {p0, v3}, Landroid/widget/AbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3672
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    .line 3673
    invoke-virtual {v0, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 3674
    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3675
    iget v4, p0, Landroid/widget/AbsHorizontalListView;->mFirstPosition:I

    add-int/2addr v4, v3

    .line 3679
    .end local v0    # "child":Landroid/view/View;
    :goto_1
    return v4

    .line 3670
    .restart local v0    # "child":Landroid/view/View;
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 3679
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    const/4 v4, -0x1

    goto :goto_1
.end method

.method public pointToRowId(II)J
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 3692
    invoke-virtual {p0, p1, p2}, Landroid/widget/AbsHorizontalListView;->pointToPosition(II)I

    move-result v0

    .line 3693
    .local v0, "position":I
    if-ltz v0, :cond_0

    .line 3694
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, v0}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    .line 3696
    :goto_0
    return-wide v2

    :cond_0
    const-wide/high16 v2, -0x8000000000000000L

    goto :goto_0
.end method

.method positionSelector(ILandroid/view/View;)V
    .locals 7
    .param p1, "position"    # I
    .param p2, "sel"    # Landroid/view/View;

    .prologue
    const/4 v6, -0x1

    .line 2818
    if-eq p1, v6, :cond_0

    .line 2819
    iput p1, p0, Landroid/widget/AbsHorizontalListView;->mSelectorPosition:I

    .line 2822
    :cond_0
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 2823
    .local v1, "selectorRect":Landroid/graphics/Rect;
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 2824
    instance-of v2, p2, Landroid/widget/AbsHorizontalListView$SelectionBoundsAdjuster;

    if-eqz v2, :cond_1

    move-object v2, p2

    .line 2825
    check-cast v2, Landroid/widget/AbsHorizontalListView$SelectionBoundsAdjuster;

    invoke-interface {v2, v1}, Landroid/widget/AbsHorizontalListView$SelectionBoundsAdjuster;->adjustListItemSelectionBounds(Landroid/graphics/Rect;)V

    .line 2827
    :cond_1
    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v4, v1, Landroid/graphics/Rect;->right:I

    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, v2, v3, v4, v5}, Landroid/widget/AbsHorizontalListView;->positionSelector(IIII)V

    .line 2830
    iget-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mIsChildViewEnabled:Z

    .line 2831
    .local v0, "isChildViewEnabled":Z
    invoke-virtual {p2}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-eq v2, v0, :cond_2

    .line 2832
    if-nez v0, :cond_3

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Landroid/widget/AbsHorizontalListView;->mIsChildViewEnabled:Z

    .line 2833
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getSelectedItemPosition()I

    move-result v2

    if-eq v2, v6, :cond_2

    .line 2834
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->refreshDrawableState()V

    .line 2837
    :cond_2
    return-void

    .line 2832
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public reclaimViews(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 7508
    .local p1, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getChildCount()I

    move-result v1

    .line 7509
    .local v1, "childCount":I
    iget-object v5, p0, Landroid/widget/AbsHorizontalListView;->mRecycler:Landroid/widget/AbsHorizontalListView$RecycleBin;

    invoke-static {v5}, Landroid/widget/AbsHorizontalListView$RecycleBin;->access$4500(Landroid/widget/AbsHorizontalListView$RecycleBin;)Landroid/widget/AbsHorizontalListView$RecyclerListener;

    move-result-object v3

    .line 7512
    .local v3, "listener":Landroid/widget/AbsHorizontalListView$RecyclerListener;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 7513
    invoke-virtual {p0, v2}, Landroid/widget/AbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 7514
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/AbsHorizontalListView$LayoutParams;

    .line 7516
    .local v4, "lp":Landroid/widget/AbsHorizontalListView$LayoutParams;
    if-eqz v4, :cond_0

    iget-object v5, p0, Landroid/widget/AbsHorizontalListView;->mRecycler:Landroid/widget/AbsHorizontalListView$RecycleBin;

    iget v6, v4, Landroid/widget/AbsHorizontalListView$LayoutParams;->viewType:I

    invoke-virtual {v5, v6}, Landroid/widget/AbsHorizontalListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 7517
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7518
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 7519
    if-eqz v3, :cond_0

    .line 7521
    invoke-interface {v3, v0}, Landroid/widget/AbsHorizontalListView$RecyclerListener;->onMovedToScrapHeap(Landroid/view/View;)V

    .line 7512
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7525
    .end local v0    # "child":Landroid/view/View;
    .end local v4    # "lp":Landroid/widget/AbsHorizontalListView$LayoutParams;
    :cond_1
    iget-object v5, p0, Landroid/widget/AbsHorizontalListView;->mRecycler:Landroid/widget/AbsHorizontalListView$RecycleBin;

    invoke-virtual {v5, p1}, Landroid/widget/AbsHorizontalListView$RecycleBin;->reclaimScrapViews(Ljava/util/List;)V

    .line 7526
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->removeAllViewsInLayout()V

    .line 7527
    return-void
.end method

.method reconcileSelectedPosition()I
    .locals 2

    .prologue
    .line 6653
    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mSelectedPosition:I

    .line 6654
    .local v0, "position":I
    if-gez v0, :cond_0

    .line 6655
    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mResurrectToPosition:I

    .line 6657
    :cond_0
    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 6658
    iget v1, p0, Landroid/widget/AbsHorizontalListView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 6659
    return v0
.end method

.method public registerDoubleTapMotion()V
    .locals 1

    .prologue
    .line 948
    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->registerMotionListener()V

    .line 949
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/AbsHorizontalListView;->setMotionEvent(Z)V

    .line 950
    return-void
.end method

.method reportScrollStateChange(I)V
    .locals 7
    .param p1, "newState"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 5307
    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mLastScrollState:I

    if-eq p1, v0, :cond_a

    .line 5309
    iget-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mDVFSLockAcquired:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mHoverAreaEnter:Z

    if-eqz v0, :cond_2

    .line 5310
    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mDVFSCookie:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->methodResumeGc:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 5312
    :try_start_0
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->methodResumeGc:Ljava/lang/reflect/Method;

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Landroid/widget/AbsHorizontalListView;->mDVFSCookie:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_6

    .line 5316
    :goto_0
    iput v5, p0, Landroid/widget/AbsHorizontalListView;->mDVFSCookie:I

    .line 5318
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mDVFSHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    .line 5319
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mDVFSHelperCore:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_1

    .line 5320
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mDVFSHelperCore:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    .line 5322
    :cond_1
    iput-boolean v5, p0, Landroid/widget/AbsHorizontalListView;->mDVFSLockAcquired:Z

    .line 5324
    :cond_2
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mDVFSHelper:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mHoverAreaEnter:Z

    if-nez v0, :cond_9

    iget-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mTwScrollingByScrollbar:Z

    if-nez v0, :cond_9

    .line 5325
    if-eqz p1, :cond_6

    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mLastScrollState:I

    if-nez v0, :cond_6

    .line 5327
    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mDVFSCookie:I

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->methodResumeGc:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_3

    .line 5329
    :try_start_1
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->methodResumeGc:Ljava/lang/reflect/Method;

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Landroid/widget/AbsHorizontalListView;->mDVFSCookie:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_4

    .line 5333
    :goto_1
    iput v5, p0, Landroid/widget/AbsHorizontalListView;->mDVFSCookie:I

    .line 5335
    :cond_3
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->methodPauseGc:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_4

    .line 5337
    :try_start_2
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->methodPauseGc:Ljava/lang/reflect/Method;

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "AbsListScroll"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Landroid/widget/AbsHorizontalListView;->mDVFSCookie:I
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_2

    .line 5342
    :cond_4
    :goto_2
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mDVFSHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->acquire()V

    .line 5343
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mDVFSHelperCore:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_5

    .line 5344
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mDVFSHelperCore:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->acquire()V

    .line 5346
    :cond_5
    iput-boolean v6, p0, Landroid/widget/AbsHorizontalListView;->mDVFSLockAcquired:Z

    .line 5348
    :cond_6
    if-nez p1, :cond_9

    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mLastScrollState:I

    if-eqz v0, :cond_9

    .line 5350
    iget-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mDVFSLockAcquired:Z

    if-eqz v0, :cond_9

    .line 5351
    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mDVFSCookie:I

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->methodResumeGc:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_7

    .line 5353
    :try_start_3
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->methodResumeGc:Ljava/lang/reflect/Method;

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Landroid/widget/AbsHorizontalListView;->mDVFSCookie:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_0

    .line 5357
    :goto_3
    iput v5, p0, Landroid/widget/AbsHorizontalListView;->mDVFSCookie:I

    .line 5359
    :cond_7
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mDVFSHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    .line 5360
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mDVFSHelperCore:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_8

    .line 5361
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mDVFSHelperCore:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    .line 5363
    :cond_8
    iput-boolean v5, p0, Landroid/widget/AbsHorizontalListView;->mDVFSLockAcquired:Z

    .line 5368
    :cond_9
    iput p1, p0, Landroid/widget/AbsHorizontalListView;->mLastScrollState:I

    .line 5369
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mOnScrollListener:Landroid/widget/AbsHorizontalListView$OnScrollListener;

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mHoverAreaEnter:Z

    if-nez v0, :cond_a

    .line 5371
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mOnScrollListener:Landroid/widget/AbsHorizontalListView$OnScrollListener;

    invoke-interface {v0, p0, p1}, Landroid/widget/AbsHorizontalListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsHorizontalListView;I)V

    .line 5374
    :cond_a
    return-void

    .line 5355
    :catch_0
    move-exception v0

    goto :goto_3

    .line 5354
    :catch_1
    move-exception v0

    goto :goto_3

    .line 5339
    :catch_2
    move-exception v0

    goto :goto_2

    .line 5338
    :catch_3
    move-exception v0

    goto :goto_2

    .line 5331
    :catch_4
    move-exception v0

    goto/16 :goto_1

    .line 5330
    :catch_5
    move-exception v0

    goto/16 :goto_1

    .line 5314
    :catch_6
    move-exception v0

    goto/16 :goto_0

    .line 5313
    :catch_7
    move-exception v0

    goto/16 :goto_0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 0
    .param p1, "disallowIntercept"    # Z

    .prologue
    .line 5149
    if-eqz p1, :cond_0

    .line 5150
    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->recycleVelocityTracker()V

    .line 5152
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->requestDisallowInterceptTouchEvent(Z)V

    .line 5153
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 2306
    iget-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mBlockLayoutRequests:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mInLayout:Z

    if-nez v0, :cond_0

    .line 2307
    invoke-super {p0}, Landroid/widget/AdapterView;->requestLayout()V

    .line 2309
    :cond_0
    return-void
.end method

.method requestLayoutIfNecessary()V
    .locals 1

    .prologue
    .line 1989
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 1990
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->resetList()V

    .line 1991
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->requestLayout()V

    .line 1992
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->invalidate()V

    .line 1994
    :cond_0
    return-void
.end method

.method resetList()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 2315
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->removeAllViewsInLayout()V

    .line 2316
    iput v3, p0, Landroid/widget/AbsHorizontalListView;->mFirstPosition:I

    .line 2319
    iget-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v0, :cond_0

    .line 2320
    iput v2, p0, Landroid/widget/AbsHorizontalListView;->mLastPosition:I

    .line 2324
    :cond_0
    iput-boolean v3, p0, Landroid/widget/AbsHorizontalListView;->mDataChanged:Z

    .line 2325
    iput-object v1, p0, Landroid/widget/AbsHorizontalListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    .line 2326
    iput-boolean v3, p0, Landroid/widget/AbsHorizontalListView;->mNeedSync:Z

    .line 2327
    iput-object v1, p0, Landroid/widget/AbsHorizontalListView;->mPendingSync:Landroid/widget/AbsHorizontalListView$SavedState;

    .line 2328
    iput v2, p0, Landroid/widget/AbsHorizontalListView;->mOldSelectedPosition:I

    .line 2329
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Landroid/widget/AbsHorizontalListView;->mOldSelectedRowId:J

    .line 2330
    invoke-virtual {p0, v2}, Landroid/widget/AbsHorizontalListView;->setSelectedPositionInt(I)V

    .line 2331
    invoke-virtual {p0, v2}, Landroid/widget/AbsHorizontalListView;->setNextSelectedPositionInt(I)V

    .line 2332
    iput v3, p0, Landroid/widget/AbsHorizontalListView;->mSelectedLeft:I

    .line 2333
    iput v2, p0, Landroid/widget/AbsHorizontalListView;->mSelectorPosition:I

    .line 2334
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 2335
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->invalidate()V

    .line 2336
    return-void
.end method

.method public resetPressItemListArray()V
    .locals 4

    .prologue
    .line 8557
    iget-object v2, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v2, :cond_1

    .line 8571
    :cond_0
    :goto_0
    return-void

    .line 8560
    :cond_1
    iget-object v2, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 8562
    .local v0, "checkCount":I
    iget-object v2, p0, Landroid/widget/AbsHorizontalListView;->mTwPressItemListArray:[I

    if-eqz v2, :cond_0

    .line 8565
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 8566
    iget-object v2, p0, Landroid/widget/AbsHorizontalListView;->mTwPressItemListArray:[I

    const/4 v3, -0x1

    aput v3, v2, v1

    .line 8565
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 8569
    :cond_2
    const/4 v2, 0x0

    iput v2, p0, Landroid/widget/AbsHorizontalListView;->mTwPressItemListIndex:I

    .line 8570
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->invalidate()V

    goto :goto_0
.end method

.method resurrectSelection()Z
    .locals 19

    .prologue
    .line 6721
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView;->getChildCount()I

    move-result v2

    .line 6723
    .local v2, "childCount":I
    if-gtz v2, :cond_0

    .line 6724
    const/16 v17, 0x0

    .line 6819
    :goto_0
    return v17

    .line 6727
    :cond_0
    const/4 v12, 0x0

    .line 6729
    .local v12, "selectedLeft":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v3, v0, Landroid/graphics/Rect;->left:I

    .line 6730
    .local v3, "childrenLeft":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mRight:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mLeft:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    sub-int v4, v17, v18

    .line 6731
    .local v4, "childrenRight":I
    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/AbsHorizontalListView;->mFirstPosition:I

    .line 6732
    .local v5, "firstPosition":I
    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/AbsHorizontalListView;->mResurrectToPosition:I

    .line 6733
    .local v15, "toPosition":I
    const/4 v10, 0x1

    .line 6735
    .local v10, "rightSide":Z
    if-lt v15, v5, :cond_4

    add-int v17, v5, v2

    move/from16 v0, v17

    if-ge v15, v0, :cond_4

    .line 6736
    move v13, v15

    .line 6738
    .local v13, "selectedPos":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mFirstPosition:I

    move/from16 v17, v0

    sub-int v17, v13, v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/AbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 6739
    .local v11, "selected":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    move-result v12

    .line 6740
    invoke-virtual {v11}, Landroid/view/View;->getRight()I

    move-result v14

    .line 6743
    .local v14, "selectedRight":I
    if-ge v12, v3, :cond_3

    .line 6744
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView;->getHorizontalFadingEdgeLength()I

    move-result v17

    add-int v12, v3, v17

    .line 6800
    .end local v11    # "selected":Landroid/view/View;
    .end local v14    # "selectedRight":I
    :cond_1
    :goto_1
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsHorizontalListView;->mResurrectToPosition:I

    .line 6801
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mFlingRunnable:Landroid/widget/AbsHorizontalListView$FlingRunnable;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/AbsHorizontalListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 6802
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mPositionScroller:Landroid/widget/AbsHorizontalListView$PositionScroller;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2

    .line 6803
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mPositionScroller:Landroid/widget/AbsHorizontalListView$PositionScroller;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/AbsHorizontalListView$PositionScroller;->stop()V

    .line 6805
    :cond_2
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    .line 6806
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView;->clearScrollingCache()V

    .line 6807
    move-object/from16 v0, p0

    iput v12, v0, Landroid/widget/AbsHorizontalListView;->mSpecificTop:I

    .line 6808
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v10}, Landroid/widget/AbsHorizontalListView;->lookForSelectablePosition(IZ)I

    move-result v13

    .line 6809
    if-lt v13, v5, :cond_c

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView;->getLastVisiblePosition()I

    move-result v17

    move/from16 v0, v17

    if-gt v13, v0, :cond_c

    .line 6810
    const/16 v17, 0x4

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsHorizontalListView;->mLayoutMode:I

    .line 6811
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView;->updateSelectorState()V

    .line 6812
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/widget/AbsHorizontalListView;->setSelectionInt(I)V

    .line 6813
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView;->invokeOnItemScrollListener()V

    .line 6817
    :goto_2
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/AbsHorizontalListView;->reportScrollStateChange(I)V

    .line 6819
    if-ltz v13, :cond_d

    const/16 v17, 0x1

    goto/16 :goto_0

    .line 6745
    .restart local v11    # "selected":Landroid/view/View;
    .restart local v14    # "selectedRight":I
    :cond_3
    if-le v14, v4, :cond_1

    .line 6746
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v17

    sub-int v17, v4, v17

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView;->getHorizontalFadingEdgeLength()I

    move-result v18

    sub-int v12, v17, v18

    goto :goto_1

    .line 6750
    .end local v11    # "selected":Landroid/view/View;
    .end local v13    # "selectedPos":I
    .end local v14    # "selectedRight":I
    :cond_4
    if-ge v15, v5, :cond_8

    .line 6752
    move v13, v5

    .line 6753
    .restart local v13    # "selectedPos":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_3
    if-ge v6, v2, :cond_1

    .line 6754
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/widget/AbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    .line 6755
    .local v16, "v":Landroid/view/View;
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getLeft()I

    move-result v8

    .line 6757
    .local v8, "left":I
    if-nez v6, :cond_6

    .line 6759
    move v12, v8

    .line 6761
    if-gtz v5, :cond_5

    if-ge v8, v3, :cond_6

    .line 6764
    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView;->getHorizontalFadingEdgeLength()I

    move-result v17

    add-int v3, v3, v17

    .line 6767
    :cond_6
    if-lt v8, v3, :cond_7

    .line 6769
    add-int v13, v5, v6

    .line 6770
    move v12, v8

    .line 6771
    goto/16 :goto_1

    .line 6753
    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 6775
    .end local v6    # "i":I
    .end local v8    # "left":I
    .end local v13    # "selectedPos":I
    .end local v16    # "v":Landroid/view/View;
    :cond_8
    move-object/from16 v0, p0

    iget v7, v0, Landroid/widget/AbsHorizontalListView;->mItemCount:I

    .line 6776
    .local v7, "itemCount":I
    const/4 v10, 0x0

    .line 6777
    add-int v17, v5, v2

    add-int/lit8 v13, v17, -0x1

    .line 6779
    .restart local v13    # "selectedPos":I
    add-int/lit8 v6, v2, -0x1

    .restart local v6    # "i":I
    :goto_4
    if-ltz v6, :cond_1

    .line 6780
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/widget/AbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    .line 6781
    .restart local v16    # "v":Landroid/view/View;
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getLeft()I

    move-result v8

    .line 6782
    .restart local v8    # "left":I
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getRight()I

    move-result v9

    .line 6784
    .local v9, "right":I
    add-int/lit8 v17, v2, -0x1

    move/from16 v0, v17

    if-ne v6, v0, :cond_a

    .line 6785
    move v12, v8

    .line 6786
    add-int v17, v5, v2

    move/from16 v0, v17

    if-lt v0, v7, :cond_9

    if-le v9, v4, :cond_a

    .line 6787
    :cond_9
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView;->getHorizontalFadingEdgeLength()I

    move-result v17

    sub-int v4, v4, v17

    .line 6791
    :cond_a
    if-gt v9, v4, :cond_b

    .line 6792
    add-int v13, v5, v6

    .line 6793
    move v12, v8

    .line 6794
    goto/16 :goto_1

    .line 6779
    :cond_b
    add-int/lit8 v6, v6, -0x1

    goto :goto_4

    .line 6815
    .end local v6    # "i":I
    .end local v7    # "itemCount":I
    .end local v8    # "left":I
    .end local v9    # "right":I
    .end local v16    # "v":Landroid/view/View;
    :cond_c
    const/4 v13, -0x1

    goto :goto_2

    .line 6819
    :cond_d
    const/16 v17, 0x0

    goto/16 :goto_0
.end method

.method resurrectSelectionIfNeeded()Z
    .locals 1

    .prologue
    .line 6701
    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mSelectedPosition:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->resurrectSelection()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6702
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->updateSelectorState()V

    .line 6703
    const/4 v0, 0x1

    .line 6705
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public scrollListBy(I)V
    .locals 2
    .param p1, "y"    # I

    .prologue
    .line 6362
    neg-int v0, p1

    neg-int v1, p1

    invoke-virtual {p0, v0, v1}, Landroid/widget/AbsHorizontalListView;->trackMotionScroll(II)Z

    .line 6363
    return-void
.end method

.method public sendAccessibilityEvent(I)V
    .locals 3
    .param p1, "eventType"    # I

    .prologue
    .line 1807
    const/16 v2, 0x1000

    if-ne p1, v2, :cond_1

    .line 1808
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getFirstVisiblePosition()I

    move-result v0

    .line 1809
    .local v0, "firstVisiblePosition":I
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getLastVisiblePosition()I

    move-result v1

    .line 1810
    .local v1, "lastVisiblePosition":I
    iget v2, p0, Landroid/widget/AbsHorizontalListView;->mLastAccessibilityScrollEventFromIndex:I

    if-ne v2, v0, :cond_0

    iget v2, p0, Landroid/widget/AbsHorizontalListView;->mLastAccessibilityScrollEventToIndex:I

    if-ne v2, v1, :cond_0

    .line 1819
    .end local v0    # "firstVisiblePosition":I
    .end local v1    # "lastVisiblePosition":I
    :goto_0
    return-void

    .line 1814
    .restart local v0    # "firstVisiblePosition":I
    .restart local v1    # "lastVisiblePosition":I
    :cond_0
    iput v0, p0, Landroid/widget/AbsHorizontalListView;->mLastAccessibilityScrollEventFromIndex:I

    .line 1815
    iput v1, p0, Landroid/widget/AbsHorizontalListView;->mLastAccessibilityScrollEventToIndex:I

    .line 1818
    .end local v0    # "firstVisiblePosition":I
    .end local v1    # "lastVisiblePosition":I
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->sendAccessibilityEvent(I)V

    goto :goto_0
.end method

.method sendToTextFilter(IILandroid/view/KeyEvent;)Z
    .locals 12
    .param p1, "keyCode"    # I
    .param p2, "count"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/16 v11, 0x3c

    const/16 v10, 0x3b

    const/4 v9, -0x1

    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 7142
    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->acceptFilter()Z

    move-result v6

    if-nez v6, :cond_1

    move v2, v5

    .line 7217
    :cond_0
    :goto_0
    return v2

    .line 7146
    :cond_1
    const/4 v2, 0x0

    .line 7147
    .local v2, "handled":Z
    const/4 v3, 0x1

    .line 7148
    .local v3, "okToSend":Z
    sparse-switch p1, :sswitch_data_0

    .line 7180
    :goto_1
    if-eqz v3, :cond_0

    .line 7181
    invoke-direct {p0, v8}, Landroid/widget/AbsHorizontalListView;->createTextFilter(Z)V

    .line 7183
    move-object v1, p3

    .line 7184
    .local v1, "forwardEvent":Landroid/view/KeyEvent;
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v6

    if-lez v6, :cond_2

    .line 7185
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v6

    invoke-static {p3, v6, v7, v5}, Landroid/view/KeyEvent;->changeTimeRepeat(Landroid/view/KeyEvent;JI)Landroid/view/KeyEvent;

    move-result-object v1

    .line 7188
    :cond_2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 7189
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 7191
    :pswitch_0
    iget-object v5, p0, Landroid/widget/AbsHorizontalListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v5, p1, v1}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    .line 7192
    if-eq p1, v10, :cond_3

    if-ne p1, v11, :cond_7

    .line 7193
    :cond_3
    iput-boolean v8, p0, Landroid/widget/AbsHorizontalListView;->mIsShiftkeyPressed:Z

    goto :goto_0

    .line 7155
    .end local v0    # "action":I
    .end local v1    # "forwardEvent":Landroid/view/KeyEvent;
    :sswitch_0
    const/4 v3, 0x0

    .line 7156
    goto :goto_1

    .line 7158
    :sswitch_1
    iget-boolean v6, p0, Landroid/widget/AbsHorizontalListView;->mFiltered:Z

    if-eqz v6, :cond_5

    iget-object v6, p0, Landroid/widget/AbsHorizontalListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v6, :cond_5

    iget-object v6, p0, Landroid/widget/AbsHorizontalListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v6}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 7159
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v6

    if-nez v6, :cond_6

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v6

    if-nez v6, :cond_6

    .line 7161
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v4

    .line 7162
    .local v4, "state":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v4, :cond_4

    .line 7163
    invoke-virtual {v4, p3, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    .line 7165
    :cond_4
    const/4 v2, 0x1

    .line 7172
    .end local v4    # "state":Landroid/view/KeyEvent$DispatcherState;
    :cond_5
    :goto_2
    const/4 v3, 0x0

    .line 7173
    goto :goto_1

    .line 7166
    :cond_6
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v6

    if-ne v6, v8, :cond_5

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v6

    if-nez v6, :cond_5

    .line 7168
    const/4 v2, 0x1

    .line 7169
    iget-object v6, p0, Landroid/widget/AbsHorizontalListView;->mTextFilter:Landroid/widget/EditText;

    const-string v7, ""

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 7176
    :sswitch_2
    iget-boolean v3, p0, Landroid/widget/AbsHorizontalListView;->mFiltered:Z

    goto :goto_1

    .line 7194
    .restart local v0    # "action":I
    .restart local v1    # "forwardEvent":Landroid/view/KeyEvent;
    :cond_7
    const/16 v5, 0x71

    if-eq p1, v5, :cond_8

    const/16 v5, 0x72

    if-ne p1, v5, :cond_0

    .line 7195
    :cond_8
    iput-boolean v8, p0, Landroid/widget/AbsHorizontalListView;->mIsCtrlkeyPressed:Z

    goto/16 :goto_0

    .line 7200
    :pswitch_1
    iget-object v6, p0, Landroid/widget/AbsHorizontalListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v6, p1, v1}, Landroid/widget/EditText;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    .line 7201
    if-eq p1, v10, :cond_9

    if-ne p1, v11, :cond_a

    .line 7202
    :cond_9
    iput-boolean v5, p0, Landroid/widget/AbsHorizontalListView;->mIsShiftkeyPressed:Z

    .line 7203
    iput v5, p0, Landroid/widget/AbsHorizontalListView;->mOldKeyCode:I

    .line 7204
    iput v5, p0, Landroid/widget/AbsHorizontalListView;->mCurrentKeyCode:I

    .line 7205
    iput v9, p0, Landroid/widget/AbsHorizontalListView;->mFirstPressedPoint:I

    .line 7206
    iput v9, p0, Landroid/widget/AbsHorizontalListView;->mSecondPressedPoint:I

    goto/16 :goto_0

    .line 7207
    :cond_a
    const/16 v6, 0x71

    if-eq p1, v6, :cond_b

    const/16 v6, 0x72

    if-ne p1, v6, :cond_0

    .line 7208
    :cond_b
    iput-boolean v5, p0, Landroid/widget/AbsHorizontalListView;->mIsCtrlkeyPressed:Z

    goto/16 :goto_0

    .line 7213
    :pswitch_2
    iget-object v5, p0, Landroid/widget/AbsHorizontalListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v5, p1, p2, p3}, Landroid/widget/EditText;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_0

    .line 7148
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x15 -> :sswitch_0
        0x16 -> :sswitch_0
        0x17 -> :sswitch_0
        0x3e -> :sswitch_2
        0x42 -> :sswitch_0
    .end sparse-switch

    .line 7189
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/Adapter;

    .prologue
    .line 129
    check-cast p1, Landroid/widget/ListAdapter;

    .end local p1    # "x0":Landroid/widget/Adapter;
    invoke-virtual {p0, p1}, Landroid/widget/AbsHorizontalListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 1159
    if-eqz p1, :cond_0

    .line 1160
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    iput-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mAdapterHasStableIds:Z

    .line 1161
    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mChoiceMode:I

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mAdapterHasStableIds:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-nez v0, :cond_0

    .line 1163
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Landroid/widget/AbsHorizontalListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 1167
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_1

    .line 1168
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 1171
    :cond_1
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_2

    .line 1172
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    .line 1176
    :cond_2
    iget-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mIsMultiFocusEnabled:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_3

    .line 1177
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/widget/AbsHorizontalListView;->mTwPressItemListArray:[I

    .line 1178
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->resetPressItemListArray()V

    .line 1179
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    iput v0, p0, Landroid/widget/AbsHorizontalListView;->mOldAdapterItemCount:I

    .line 1182
    :cond_3
    return-void
.end method

.method public setAlwaysDisableHoverHighlight(Z)V
    .locals 0
    .param p1, "disabled"    # Z

    .prologue
    .line 4914
    iput-boolean p1, p0, Landroid/widget/AbsHorizontalListView;->mAlwaysDisableHoverHighlight:Z

    .line 4915
    return-void
.end method

.method public setCacheColorHint(I)V
    .locals 3
    .param p1, "color"    # I

    .prologue
    .line 7479
    iget v2, p0, Landroid/widget/AbsHorizontalListView;->mCacheColorHint:I

    if-eq p1, v2, :cond_1

    .line 7480
    iput p1, p0, Landroid/widget/AbsHorizontalListView;->mCacheColorHint:I

    .line 7481
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getChildCount()I

    move-result v0

    .line 7482
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 7483
    invoke-virtual {p0, v1}, Landroid/widget/AbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 7482
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7485
    :cond_0
    iget-object v2, p0, Landroid/widget/AbsHorizontalListView;->mRecycler:Landroid/widget/AbsHorizontalListView$RecycleBin;

    invoke-virtual {v2, p1}, Landroid/widget/AbsHorizontalListView$RecycleBin;->setCacheColorHint(I)V

    .line 7487
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public setChoiceMode(I)V
    .locals 2
    .param p1, "choiceMode"    # I

    .prologue
    const/4 v1, 0x0

    .line 1497
    iput p1, p0, Landroid/widget/AbsHorizontalListView;->mChoiceMode:I

    .line 1498
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 1499
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mChoiceActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 1500
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/AbsHorizontalListView;->mChoiceActionMode:Landroid/view/ActionMode;

    .line 1502
    :cond_0
    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mChoiceMode:I

    if-eqz v0, :cond_3

    .line 1503
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_1

    .line 1504
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0, v1}, Landroid/util/SparseBooleanArray;-><init>(I)V

    iput-object v0, p0, Landroid/widget/AbsHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 1506
    :cond_1
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1507
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0, v1}, Landroid/util/LongSparseArray;-><init>(I)V

    iput-object v0, p0, Landroid/widget/AbsHorizontalListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 1510
    :cond_2
    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mChoiceMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 1511
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->clearChoices()V

    .line 1512
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/AbsHorizontalListView;->setLongClickable(Z)V

    .line 1515
    :cond_3
    return-void
.end method

.method public setDrawSelectorOnTop(Z)V
    .locals 0
    .param p1, "onTop"    # Z

    .prologue
    .line 2986
    iput-boolean p1, p0, Landroid/widget/AbsHorizontalListView;->mDrawSelectorOnTop:Z

    .line 2987
    return-void
.end method

.method public setEnableMultiFocus(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 8463
    iput-boolean p1, p0, Landroid/widget/AbsHorizontalListView;->mIsMultiFocusEnabled:Z

    .line 8464
    return-void
.end method

.method public setFastScrollAlwaysVisible(Z)V
    .locals 1
    .param p1, "alwaysShow"    # Z

    .prologue
    .line 1643
    iget-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mFastScrollAlwaysVisible:Z

    if-eq v0, p1, :cond_1

    .line 1644
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mFastScrollEnabled:Z

    if-nez v0, :cond_0

    .line 1645
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/AbsHorizontalListView;->setFastScrollEnabled(Z)V

    .line 1648
    :cond_0
    iput-boolean p1, p0, Landroid/widget/AbsHorizontalListView;->mFastScrollAlwaysVisible:Z

    .line 1650
    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->isOwnerThread()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1651
    invoke-direct {p0, p1}, Landroid/widget/AbsHorizontalListView;->setFastScrollerAlwaysVisibleUiThread(Z)V

    .line 1661
    :cond_1
    :goto_0
    return-void

    .line 1653
    :cond_2
    new-instance v0, Landroid/widget/AbsHorizontalListView$2;

    invoke-direct {v0, p0, p1}, Landroid/widget/AbsHorizontalListView$2;-><init>(Landroid/widget/AbsHorizontalListView;Z)V

    invoke-virtual {p0, v0}, Landroid/widget/AbsHorizontalListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public setFastScrollEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 1597
    iget-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mFastScrollEnabled:Z

    if-eq v0, p1, :cond_0

    .line 1598
    iput-boolean p1, p0, Landroid/widget/AbsHorizontalListView;->mFastScrollEnabled:Z

    .line 1600
    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->isOwnerThread()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1601
    invoke-direct {p0, p1}, Landroid/widget/AbsHorizontalListView;->setFastScrollerEnabledUiThread(Z)V

    .line 1611
    :cond_0
    :goto_0
    return-void

    .line 1603
    :cond_1
    new-instance v0, Landroid/widget/AbsHorizontalListView$1;

    invoke-direct {v0, p0, p1}, Landroid/widget/AbsHorizontalListView$1;-><init>(Landroid/widget/AbsHorizontalListView;Z)V

    invoke-virtual {p0, v0}, Landroid/widget/AbsHorizontalListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public setFilterText(Ljava/lang/String;)V
    .locals 3
    .param p1, "filterText"    # Ljava/lang/String;

    .prologue
    .line 2247
    iget-boolean v1, p0, Landroid/widget/AbsHorizontalListView;->mTextFilterEnabled:Z

    if-eqz v1, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2248
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/widget/AbsHorizontalListView;->createTextFilter(Z)V

    .line 2251
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2252
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 2253
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v1, v1, Landroid/widget/Filterable;

    if-eqz v1, :cond_1

    .line 2255
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mPopup:Landroid/widget/PopupWindow;

    if-nez v1, :cond_0

    .line 2256
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v1, Landroid/widget/Filterable;

    invoke-interface {v1}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    .line 2257
    .local v0, "f":Landroid/widget/Filter;
    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 2261
    .end local v0    # "f":Landroid/widget/Filter;
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/AbsHorizontalListView;->mFiltered:Z

    .line 2262
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mDataSetObserver:Landroid/widget/AbsHorizontalListView$AdapterDataSetObserver;

    invoke-virtual {v1}, Landroid/widget/AbsHorizontalListView$AdapterDataSetObserver;->clearSavedState()V

    .line 2265
    :cond_1
    return-void
.end method

.method public setForcedClick(Z)V
    .locals 0
    .param p1, "force"    # Z

    .prologue
    .line 3371
    iput-boolean p1, p0, Landroid/widget/AbsHorizontalListView;->mForcedClick:Z

    .line 3372
    return-void
.end method

.method protected setFrame(IIII)Z
    .locals 3
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 2501
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AdapterView;->setFrame(IIII)Z

    move-result v0

    .line 2503
    .local v0, "changed":Z
    if-eqz v0, :cond_0

    .line 2507
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getWindowVisibility()I

    move-result v2

    if-nez v2, :cond_1

    const/4 v1, 0x1

    .line 2508
    .local v1, "visible":Z
    :goto_0
    iget-boolean v2, p0, Landroid/widget/AbsHorizontalListView;->mFiltered:Z

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    iget-object v2, p0, Landroid/widget/AbsHorizontalListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/widget/AbsHorizontalListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2509
    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->positionPopup()V

    .line 2513
    .end local v1    # "visible":Z
    :cond_0
    return v0

    .line 2507
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setFriction(F)V
    .locals 1
    .param p1, "friction"    # F

    .prologue
    .line 6100
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mFlingRunnable:Landroid/widget/AbsHorizontalListView$FlingRunnable;

    if-nez v0, :cond_0

    .line 6101
    new-instance v0, Landroid/widget/AbsHorizontalListView$FlingRunnable;

    invoke-direct {v0, p0}, Landroid/widget/AbsHorizontalListView$FlingRunnable;-><init>(Landroid/widget/AbsHorizontalListView;)V

    iput-object v0, p0, Landroid/widget/AbsHorizontalListView;->mFlingRunnable:Landroid/widget/AbsHorizontalListView$FlingRunnable;

    .line 6103
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mFlingRunnable:Landroid/widget/AbsHorizontalListView$FlingRunnable;

    invoke-static {v0}, Landroid/widget/AbsHorizontalListView$FlingRunnable;->access$1800(Landroid/widget/AbsHorizontalListView$FlingRunnable;)Landroid/widget/OverScroller;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/OverScroller;->setFriction(F)V

    .line 6104
    return-void
.end method

.method public setHoverScrollDelay(I)V
    .locals 0
    .param p1, "hoverdelay"    # I

    .prologue
    .line 4072
    iput p1, p0, Landroid/widget/AbsHorizontalListView;->HOVERSCROLL_DELAY:I

    .line 4073
    return-void
.end method

.method public setHoverScrollMode(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 4054
    if-eqz p1, :cond_0

    .line 4055
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mHoverScrollEnable:Z

    .line 4059
    :goto_0
    return-void

    .line 4057
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mHoverScrollEnable:Z

    goto :goto_0
.end method

.method public setHoverScrollSpeed(I)V
    .locals 0
    .param p1, "hoverspeed"    # I

    .prologue
    .line 4065
    iput p1, p0, Landroid/widget/AbsHorizontalListView;->HOVERSCROLL_SPEED:I

    .line 4066
    return-void
.end method

.method public setItemChecked(IZ)V
    .locals 9
    .param p1, "position"    # I
    .param p2, "value"    # Z

    .prologue
    const/4 v6, 0x3

    const/4 v1, 0x0

    const/4 v8, 0x1

    .line 1299
    iget v2, p0, Landroid/widget/AbsHorizontalListView;->mChoiceMode:I

    if-nez v2, :cond_1

    .line 1366
    :cond_0
    :goto_0
    return-void

    .line 1304
    :cond_1
    if-eqz p2, :cond_4

    iget v2, p0, Landroid/widget/AbsHorizontalListView;->mChoiceMode:I

    if-ne v2, v6, :cond_4

    iget-object v2, p0, Landroid/widget/AbsHorizontalListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-nez v2, :cond_4

    .line 1305
    iget-object v2, p0, Landroid/widget/AbsHorizontalListView;->mMultiChoiceModeCallback:Landroid/widget/AbsHorizontalListView$MultiChoiceModeWrapper;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/widget/AbsHorizontalListView;->mMultiChoiceModeCallback:Landroid/widget/AbsHorizontalListView$MultiChoiceModeWrapper;

    invoke-virtual {v2}, Landroid/widget/AbsHorizontalListView$MultiChoiceModeWrapper;->hasWrappedCallback()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1307
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "AbsHorizontalListView: attempted to start selection mode for CHOICE_MODE_MULTIPLE_MODAL but no choice mode callback was supplied. Call setMultiChoiceModeListener to set a callback."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1311
    :cond_3
    iget-object v2, p0, Landroid/widget/AbsHorizontalListView;->mMultiChoiceModeCallback:Landroid/widget/AbsHorizontalListView$MultiChoiceModeWrapper;

    invoke-virtual {p0, v2}, Landroid/widget/AbsHorizontalListView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/AbsHorizontalListView;->mChoiceActionMode:Landroid/view/ActionMode;

    .line 1314
    :cond_4
    iget v2, p0, Landroid/widget/AbsHorizontalListView;->mChoiceMode:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_5

    iget v2, p0, Landroid/widget/AbsHorizontalListView;->mChoiceMode:I

    if-ne v2, v6, :cond_c

    .line 1315
    :cond_5
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    .line 1316
    .local v0, "oldValue":Z
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1317
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v1, :cond_6

    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1318
    if-eqz p2, :cond_a

    .line 1319
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v2, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v2, v3, v6}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1324
    :cond_6
    :goto_1
    if-eq v0, p2, :cond_7

    .line 1325
    if-eqz p2, :cond_b

    .line 1326
    iget v1, p0, Landroid/widget/AbsHorizontalListView;->mCheckedItemCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/widget/AbsHorizontalListView;->mCheckedItemCount:I

    .line 1331
    :cond_7
    :goto_2
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_8

    .line 1332
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    .line 1333
    .local v4, "id":J
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mMultiChoiceModeCallback:Landroid/widget/AbsHorizontalListView$MultiChoiceModeWrapper;

    iget-object v2, p0, Landroid/widget/AbsHorizontalListView;->mChoiceActionMode:Landroid/view/ActionMode;

    move v3, p1

    move v6, p2

    invoke-virtual/range {v1 .. v6}, Landroid/widget/AbsHorizontalListView$MultiChoiceModeWrapper;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    .line 1360
    .end local v0    # "oldValue":Z
    .end local v4    # "id":J
    :cond_8
    :goto_3
    iget-boolean v1, p0, Landroid/widget/AbsHorizontalListView;->mInLayout:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Landroid/widget/AbsHorizontalListView;->mBlockLayoutRequests:Z

    if-nez v1, :cond_0

    .line 1361
    iget-boolean v1, p0, Landroid/widget/AbsHorizontalListView;->mForcedClick:Z

    if-nez v1, :cond_9

    .line 1362
    iput-boolean v8, p0, Landroid/widget/AbsHorizontalListView;->mDataChanged:Z

    .line 1363
    :cond_9
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->rememberSyncState()V

    .line 1364
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->requestLayout()V

    goto/16 :goto_0

    .line 1321
    .restart local v0    # "oldValue":Z
    :cond_a
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v2, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/util/LongSparseArray;->delete(J)V

    goto :goto_1

    .line 1328
    :cond_b
    iget v1, p0, Landroid/widget/AbsHorizontalListView;->mCheckedItemCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/widget/AbsHorizontalListView;->mCheckedItemCount:I

    goto :goto_2

    .line 1337
    .end local v0    # "oldValue":Z
    :cond_c
    iget-object v2, p0, Landroid/widget/AbsHorizontalListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v2, :cond_10

    iget-object v2, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v2

    if-eqz v2, :cond_10

    move v7, v8

    .line 1340
    .local v7, "updateIds":Z
    :goto_4
    if-nez p2, :cond_d

    invoke-virtual {p0, p1}, Landroid/widget/AbsHorizontalListView;->isItemChecked(I)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1341
    :cond_d
    iget-object v2, p0, Landroid/widget/AbsHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->clear()V

    .line 1342
    if-eqz v7, :cond_e

    .line 1343
    iget-object v2, p0, Landroid/widget/AbsHorizontalListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v2}, Landroid/util/LongSparseArray;->clear()V

    .line 1348
    :cond_e
    if-eqz p2, :cond_11

    .line 1349
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1, v8}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1350
    if-eqz v7, :cond_f

    .line 1351
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v2, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v2, v3, v6}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1353
    :cond_f
    iput v8, p0, Landroid/widget/AbsHorizontalListView;->mCheckedItemCount:I

    goto :goto_3

    .end local v7    # "updateIds":Z
    :cond_10
    move v7, v1

    .line 1337
    goto :goto_4

    .line 1354
    .restart local v7    # "updateIds":Z
    :cond_11
    iget-object v2, p0, Landroid/widget/AbsHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    if-eqz v2, :cond_12

    iget-object v2, p0, Landroid/widget/AbsHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v2

    if-nez v2, :cond_8

    .line 1355
    :cond_12
    iput v1, p0, Landroid/widget/AbsHorizontalListView;->mCheckedItemCount:I

    goto :goto_3
.end method

.method public setMotionEvent(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 965
    iput-boolean p1, p0, Landroid/widget/AbsHorizontalListView;->mMotionEnable:Z

    .line 966
    return-void
.end method

.method public setMultiChoiceModeListener(Landroid/widget/AbsHorizontalListView$MultiChoiceModeListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/widget/AbsHorizontalListView$MultiChoiceModeListener;

    .prologue
    .line 1527
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mMultiChoiceModeCallback:Landroid/widget/AbsHorizontalListView$MultiChoiceModeWrapper;

    if-nez v0, :cond_0

    .line 1528
    new-instance v0, Landroid/widget/AbsHorizontalListView$MultiChoiceModeWrapper;

    invoke-direct {v0, p0}, Landroid/widget/AbsHorizontalListView$MultiChoiceModeWrapper;-><init>(Landroid/widget/AbsHorizontalListView;)V

    iput-object v0, p0, Landroid/widget/AbsHorizontalListView;->mMultiChoiceModeCallback:Landroid/widget/AbsHorizontalListView$MultiChoiceModeWrapper;

    .line 1530
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mMultiChoiceModeCallback:Landroid/widget/AbsHorizontalListView$MultiChoiceModeWrapper;

    invoke-virtual {v0, p1}, Landroid/widget/AbsHorizontalListView$MultiChoiceModeWrapper;->setWrapped(Landroid/widget/AbsHorizontalListView$MultiChoiceModeListener;)V

    .line 1531
    return-void
.end method

.method public setMultiFocusListItem(II)V
    .locals 1
    .param p1, "startitem"    # I
    .param p2, "enditem"    # I

    .prologue
    .line 8575
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mTwPressItemListArray:[I

    if-nez v0, :cond_0

    .line 8581
    :goto_0
    return-void

    .line 8578
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->resetPressItemListArray()V

    .line 8579
    invoke-virtual {p0, p1, p2}, Landroid/widget/AbsHorizontalListView;->addToPressItemListArray(II)V

    goto :goto_0
.end method

.method public setOnScrollListener(Landroid/widget/AbsHorizontalListView$OnScrollListener;)V
    .locals 0
    .param p1, "l"    # Landroid/widget/AbsHorizontalListView$OnScrollListener;

    .prologue
    .line 1785
    iput-object p1, p0, Landroid/widget/AbsHorizontalListView;->mOnScrollListener:Landroid/widget/AbsHorizontalListView$OnScrollListener;

    .line 1786
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->invokeOnItemScrollListener()V

    .line 1787
    return-void
.end method

.method public setOverScrollEffectPadding(II)V
    .locals 0
    .param p1, "topPadding"    # I
    .param p2, "bottomPadding"    # I

    .prologue
    .line 5122
    iput p1, p0, Landroid/widget/AbsHorizontalListView;->mGlowPaddingTop:I

    .line 5123
    iput p2, p0, Landroid/widget/AbsHorizontalListView;->mGlowPaddingBottom:I

    .line 5124
    return-void
.end method

.method public setOverScrollMode(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    const/4 v2, 0x0

    .line 1141
    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    .line 1142
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    if-nez v1, :cond_0

    .line 1143
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1144
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/widget/EdgeEffect;

    invoke-direct {v1, v0}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/widget/AbsHorizontalListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    .line 1145
    new-instance v1, Landroid/widget/EdgeEffect;

    invoke-direct {v1, v0}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/widget/AbsHorizontalListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    .line 1151
    .end local v0    # "context":Landroid/content/Context;
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->setOverScrollMode(I)V

    .line 1152
    return-void

    .line 1148
    :cond_1
    iput-object v2, p0, Landroid/widget/AbsHorizontalListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    .line 1149
    iput-object v2, p0, Landroid/widget/AbsHorizontalListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    goto :goto_0
.end method

.method public setRecyclerListener(Landroid/widget/AbsHorizontalListView$RecyclerListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/widget/AbsHorizontalListView$RecyclerListener;

    .prologue
    .line 7637
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mRecycler:Landroid/widget/AbsHorizontalListView$RecycleBin;

    invoke-static {v0, p1}, Landroid/widget/AbsHorizontalListView$RecycleBin;->access$4502(Landroid/widget/AbsHorizontalListView$RecycleBin;Landroid/widget/AbsHorizontalListView$RecyclerListener;)Landroid/widget/AbsHorizontalListView$RecyclerListener;

    .line 7638
    return-void
.end method

.method public setRemoteViewsAdapter(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 7544
    iget-object v2, p0, Landroid/widget/AbsHorizontalListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v2, :cond_1

    .line 7545
    new-instance v0, Landroid/content/Intent$FilterComparison;

    invoke-direct {v0, p1}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    .line 7546
    .local v0, "fcNew":Landroid/content/Intent$FilterComparison;
    new-instance v1, Landroid/content/Intent$FilterComparison;

    iget-object v2, p0, Landroid/widget/AbsHorizontalListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v2}, Landroid/widget/RemoteViewsAdapter;->getRemoteViewsServiceIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    .line 7548
    .local v1, "fcOld":Landroid/content/Intent$FilterComparison;
    invoke-virtual {v0, v1}, Landroid/content/Intent$FilterComparison;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7558
    .end local v0    # "fcNew":Landroid/content/Intent$FilterComparison;
    .end local v1    # "fcOld":Landroid/content/Intent$FilterComparison;
    :cond_0
    :goto_0
    return-void

    .line 7552
    :cond_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/widget/AbsHorizontalListView;->mDeferNotifyDataSetChanged:Z

    .line 7554
    new-instance v2, Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, p1, p0}, Landroid/widget/RemoteViewsAdapter;-><init>(Landroid/content/Context;Landroid/content/Intent;Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;)V

    iput-object v2, p0, Landroid/widget/AbsHorizontalListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    .line 7555
    iget-object v2, p0, Landroid/widget/AbsHorizontalListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v2}, Landroid/widget/RemoteViewsAdapter;->isDataReady()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7556
    iget-object v2, p0, Landroid/widget/AbsHorizontalListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {p0, v2}, Landroid/widget/AbsHorizontalListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method

.method public setRemoteViewsOnClickHandler(Landroid/widget/RemoteViews$OnClickHandler;)V
    .locals 1
    .param p1, "handler"    # Landroid/widget/RemoteViews$OnClickHandler;

    .prologue
    .line 7570
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v0, :cond_0

    .line 7571
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/RemoteViewsAdapter;->setRemoteViewsOnClickHandler(Landroid/widget/RemoteViews$OnClickHandler;)V

    .line 7573
    :cond_0
    return-void
.end method

.method public setScrollBarStyle(I)V
    .locals 1
    .param p1, "style"    # I

    .prologue
    .line 1723
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->setScrollBarStyle(I)V

    .line 1724
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mFastScroller:Landroid/widget/HorizontalFastScroller;

    if-eqz v0, :cond_0

    .line 1725
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mFastScroller:Landroid/widget/HorizontalFastScroller;

    invoke-virtual {v0, p1}, Landroid/widget/HorizontalFastScroller;->setScrollBarStyle(I)V

    .line 1727
    :cond_0
    return-void
.end method

.method public setScrollIndicators(Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .param p1, "left"    # Landroid/view/View;
    .param p2, "right"    # Landroid/view/View;

    .prologue
    .line 3069
    iput-object p1, p0, Landroid/widget/AbsHorizontalListView;->mScrollLeft:Landroid/view/View;

    .line 3070
    iput-object p2, p0, Landroid/widget/AbsHorizontalListView;->mScrollRight:Landroid/view/View;

    .line 3071
    return-void
.end method

.method public setScrollingCacheEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 1911
    iget-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mScrollingCacheEnabled:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 1912
    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->clearScrollingCache()V

    .line 1914
    :cond_0
    iput-boolean p1, p0, Landroid/widget/AbsHorizontalListView;->mScrollingCacheEnabled:Z

    .line 1915
    return-void
.end method

.method abstract setSelectionInt(I)V
.end method

.method public setSelector(I)V
    .locals 1
    .param p1, "resID"    # I

    .prologue
    .line 2997
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/AbsHorizontalListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 2998
    return-void
.end method

.method public setSelector(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "sel"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 3001
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 3002
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mSelector:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 3003
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Landroid/widget/AbsHorizontalListView;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3005
    :cond_0
    iput-object p1, p0, Landroid/widget/AbsHorizontalListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 3006
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 3007
    .local v0, "padding":Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 3008
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iput v1, p0, Landroid/widget/AbsHorizontalListView;->mSelectionLeftPadding:I

    .line 3009
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iput v1, p0, Landroid/widget/AbsHorizontalListView;->mSelectionTopPadding:I

    .line 3010
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iput v1, p0, Landroid/widget/AbsHorizontalListView;->mSelectionRightPadding:I

    .line 3011
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iput v1, p0, Landroid/widget/AbsHorizontalListView;->mSelectionBottomPadding:I

    .line 3012
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 3013
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->updateSelectorState()V

    .line 3014
    return-void
.end method

.method public setSmoothScrollbarEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 1757
    iput-boolean p1, p0, Landroid/widget/AbsHorizontalListView;->mSmoothScrollbarEnabled:Z

    .line 1758
    return-void
.end method

.method public setStackFromBottom(Z)V
    .locals 1
    .param p1, "stackFromBottom"    # Z

    .prologue
    .line 1982
    iget-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mStackFromBottom:Z

    if-eq v0, p1, :cond_0

    .line 1983
    iput-boolean p1, p0, Landroid/widget/AbsHorizontalListView;->mStackFromBottom:Z

    .line 1984
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->requestLayoutIfNecessary()V

    .line 1986
    :cond_0
    return-void
.end method

.method public setTextFilterEnabled(Z)V
    .locals 0
    .param p1, "textFilterEnabled"    # Z

    .prologue
    .line 1928
    iput-boolean p1, p0, Landroid/widget/AbsHorizontalListView;->mTextFilterEnabled:Z

    .line 1929
    return-void
.end method

.method public setTouchSlop(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 979
    iput p1, p0, Landroid/widget/AbsHorizontalListView;->mTouchSlop:I

    .line 980
    return-void
.end method

.method public setTranscriptMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 7450
    iput p1, p0, Landroid/widget/AbsHorizontalListView;->mTranscriptMode:I

    .line 7451
    return-void
.end method

.method public setTwHorizontalScrollbarPosition(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 1715
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->setTwHorizontalScrollbarPosition(I)V

    .line 1716
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mFastScroller:Landroid/widget/HorizontalFastScroller;

    if-eqz v0, :cond_0

    .line 1717
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mFastScroller:Landroid/widget/HorizontalFastScroller;

    invoke-virtual {v0, p1}, Landroid/widget/HorizontalFastScroller;->setScrollbarPosition(I)V

    .line 1719
    :cond_0
    return-void
.end method

.method public setVelocityScale(F)V
    .locals 0
    .param p1, "scale"    # F

    .prologue
    .line 6113
    iput p1, p0, Landroid/widget/AbsHorizontalListView;->mVelocityScale:F

    .line 6114
    return-void
.end method

.method setVisibleRangeHint(II)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 7620
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v0, :cond_0

    .line 7621
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v0, p1, p2}, Landroid/widget/RemoteViewsAdapter;->setVisibleRangeHint(II)V

    .line 7623
    :cond_0
    return-void
.end method

.method shouldShowSelector()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2935
    iget-object v4, p0, Landroid/widget/AbsHorizontalListView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "finger_air_view"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_4

    move v0, v2

    .line 2936
    .local v0, "isFingerAirView":Z
    :goto_0
    iget-object v4, p0, Landroid/widget/AbsHorizontalListView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "finger_air_view_information_preview"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_5

    move v1, v2

    .line 2941
    .local v1, "isFingerAirViewPreview":Z
    :goto_1
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->hasFocus()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->isInTouchMode()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->touchModeDrawsInPressedState()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->isPressed()Z

    move-result v4

    if-nez v4, :cond_2

    :cond_1
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->isHovered()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->isFingerHovered()Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    move v3, v2

    :cond_3
    return v3

    .end local v0    # "isFingerAirView":Z
    .end local v1    # "isFingerAirViewPreview":Z
    :cond_4
    move v0, v3

    .line 2935
    goto :goto_0

    .restart local v0    # "isFingerAirView":Z
    :cond_5
    move v1, v3

    .line 2936
    goto :goto_1
.end method

.method shouldShowSelectorDefault()Z
    .locals 1

    .prologue
    .line 2946
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->touchModeDrawsInPressedState()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showContextMenu(FFI)Z
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "metaState"    # I

    .prologue
    .line 3510
    float-to-int v4, p1

    float-to-int v5, p2

    invoke-virtual {p0, v4, v5}, Landroid/widget/AbsHorizontalListView;->pointToPosition(II)I

    move-result v1

    .line 3511
    .local v1, "position":I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    .line 3512
    iget-object v4, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4, v1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    .line 3513
    .local v2, "id":J
    iget v4, p0, Landroid/widget/AbsHorizontalListView;->mFirstPosition:I

    sub-int v4, v1, v4

    invoke-virtual {p0, v4}, Landroid/widget/AbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3514
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 3515
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/widget/AbsHorizontalListView;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v4

    iput-object v4, p0, Landroid/widget/AbsHorizontalListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 3516
    invoke-super {p0, p0}, Landroid/widget/AdapterView;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v4

    .line 3521
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "id":J
    :goto_0
    return v4

    .line 3519
    :cond_0
    const/4 v4, 0x0

    iput-object v4, p0, Landroid/widget/AbsHorizontalListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 3521
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AdapterView;->showContextMenu(FFI)Z

    move-result v4

    goto :goto_0
.end method

.method public showContextMenuForChild(Landroid/view/View;)Z
    .locals 7
    .param p1, "originalView"    # Landroid/view/View;

    .prologue
    .line 3526
    invoke-virtual {p0, p1}, Landroid/widget/AbsHorizontalListView;->getPositionForView(Landroid/view/View;)I

    move-result v3

    .line 3527
    .local v3, "longPressPosition":I
    if-ltz v3, :cond_2

    .line 3528
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    .line 3529
    .local v4, "longPressId":J
    const/4 v6, 0x0

    .line 3531
    .local v6, "handled":Z
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    if-eqz v0, :cond_0

    .line 3532
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    move-object v1, p0

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v6

    .line 3535
    :cond_0
    if-nez v6, :cond_1

    .line 3536
    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mFirstPosition:I

    sub-int v0, v3, v0

    invoke-virtual {p0, v0}, Landroid/widget/AbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0, v3, v4, v5}, Landroid/widget/AbsHorizontalListView;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsHorizontalListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 3539
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v6

    .line 3544
    .end local v4    # "longPressId":J
    .end local v6    # "handled":Z
    :cond_1
    :goto_0
    return v6

    :cond_2
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public smoothScrollBy(II)V
    .locals 1
    .param p1, "distance"    # I
    .param p2, "duration"    # I

    .prologue
    .line 6187
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/widget/AbsHorizontalListView;->smoothScrollBy(IIZ)V

    .line 6188
    return-void
.end method

.method smoothScrollBy(IIZ)V
    .locals 7
    .param p1, "distance"    # I
    .param p2, "duration"    # I
    .param p3, "linear"    # Z

    .prologue
    .line 6263
    iget-object v5, p0, Landroid/widget/AbsHorizontalListView;->mFlingRunnable:Landroid/widget/AbsHorizontalListView$FlingRunnable;

    if-nez v5, :cond_0

    .line 6264
    new-instance v5, Landroid/widget/AbsHorizontalListView$FlingRunnable;

    invoke-direct {v5, p0}, Landroid/widget/AbsHorizontalListView$FlingRunnable;-><init>(Landroid/widget/AbsHorizontalListView;)V

    iput-object v5, p0, Landroid/widget/AbsHorizontalListView;->mFlingRunnable:Landroid/widget/AbsHorizontalListView$FlingRunnable;

    .line 6268
    :cond_0
    iget v1, p0, Landroid/widget/AbsHorizontalListView;->mFirstPosition:I

    .line 6269
    .local v1, "firstPos":I
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getChildCount()I

    move-result v0

    .line 6270
    .local v0, "childCount":I
    add-int v2, v1, v0

    .line 6271
    .local v2, "lastPos":I
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getPaddingLeft()I

    move-result v3

    .line 6272
    .local v3, "leftLimit":I
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getPaddingRight()I

    move-result v6

    sub-int v4, v5, v6

    .line 6274
    .local v4, "rightLimit":I
    if-eqz p1, :cond_2

    iget v5, p0, Landroid/widget/AbsHorizontalListView;->mItemCount:I

    if-eqz v5, :cond_2

    if-eqz v0, :cond_2

    if-nez v1, :cond_1

    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Landroid/widget/AbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    if-ne v5, v3, :cond_1

    if-ltz p1, :cond_2

    :cond_1
    iget v5, p0, Landroid/widget/AbsHorizontalListView;->mItemCount:I

    if-ne v2, v5, :cond_4

    add-int/lit8 v5, v0, -0x1

    invoke-virtual {p0, v5}, Landroid/widget/AbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v5

    if-ne v5, v4, :cond_4

    if-lez p1, :cond_4

    .line 6278
    :cond_2
    iget-object v5, p0, Landroid/widget/AbsHorizontalListView;->mFlingRunnable:Landroid/widget/AbsHorizontalListView$FlingRunnable;

    invoke-virtual {v5}, Landroid/widget/AbsHorizontalListView$FlingRunnable;->endFling()V

    .line 6279
    iget-object v5, p0, Landroid/widget/AbsHorizontalListView;->mPositionScroller:Landroid/widget/AbsHorizontalListView$PositionScroller;

    if-eqz v5, :cond_3

    .line 6280
    iget-object v5, p0, Landroid/widget/AbsHorizontalListView;->mPositionScroller:Landroid/widget/AbsHorizontalListView$PositionScroller;

    invoke-virtual {v5}, Landroid/widget/AbsHorizontalListView$PositionScroller;->stop()V

    .line 6286
    :cond_3
    :goto_0
    return-void

    .line 6283
    :cond_4
    const/4 v5, 0x2

    invoke-virtual {p0, v5}, Landroid/widget/AbsHorizontalListView;->reportScrollStateChange(I)V

    .line 6284
    iget-object v5, p0, Landroid/widget/AbsHorizontalListView;->mFlingRunnable:Landroid/widget/AbsHorizontalListView$FlingRunnable;

    invoke-virtual {v5, p1, p2, p3}, Landroid/widget/AbsHorizontalListView$FlingRunnable;->startScroll(IIZ)V

    goto :goto_0
.end method

.method smoothScrollByOffset(I)V
    .locals 10
    .param p1, "position"    # I

    .prologue
    const/high16 v9, 0x3f400000    # 0.75f

    .line 6292
    const/4 v2, -0x1

    .line 6293
    .local v2, "index":I
    if-gez p1, :cond_3

    .line 6294
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getFirstVisiblePosition()I

    move-result v2

    .line 6299
    :cond_0
    :goto_0
    const/4 v7, -0x1

    if-le v2, v7, :cond_2

    .line 6300
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getFirstVisiblePosition()I

    move-result v7

    sub-int v7, v2, v7

    invoke-virtual {p0, v7}, Landroid/widget/AbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 6301
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_2

    .line 6302
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 6303
    .local v4, "visibleRect":Landroid/graphics/Rect;
    invoke-virtual {v0, v4}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 6305
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v7

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v8

    mul-int v1, v7, v8

    .line 6306
    .local v1, "childRectArea":I
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v8

    mul-int v5, v7, v8

    .line 6307
    .local v5, "visibleRectArea":I
    int-to-float v7, v5

    int-to-float v8, v1

    div-float v3, v7, v8

    .line 6308
    .local v3, "visibleArea":F
    const/high16 v6, 0x3f400000    # 0.75f

    .line 6309
    .local v6, "visibleThreshold":F
    if-gez p1, :cond_4

    cmpg-float v7, v3, v9

    if-gez v7, :cond_4

    .line 6312
    add-int/lit8 v2, v2, 0x1

    .line 6319
    .end local v1    # "childRectArea":I
    .end local v3    # "visibleArea":F
    .end local v5    # "visibleRectArea":I
    .end local v6    # "visibleThreshold":F
    :cond_1
    :goto_1
    const/4 v7, 0x0

    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getCount()I

    move-result v8

    add-int v9, v2, p1

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-virtual {p0, v7}, Landroid/widget/AbsHorizontalListView;->smoothScrollToPosition(I)V

    .line 6322
    .end local v0    # "child":Landroid/view/View;
    .end local v4    # "visibleRect":Landroid/graphics/Rect;
    :cond_2
    return-void

    .line 6295
    :cond_3
    if-lez p1, :cond_0

    .line 6296
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getLastVisiblePosition()I

    move-result v2

    goto :goto_0

    .line 6313
    .restart local v0    # "child":Landroid/view/View;
    .restart local v1    # "childRectArea":I
    .restart local v3    # "visibleArea":F
    .restart local v4    # "visibleRect":Landroid/graphics/Rect;
    .restart local v5    # "visibleRectArea":I
    .restart local v6    # "visibleThreshold":F
    :cond_4
    if-lez p1, :cond_1

    cmpg-float v7, v3, v9

    if-gez v7, :cond_1

    .line 6316
    add-int/lit8 v2, v2, -0x1

    goto :goto_1
.end method

.method public smoothScrollToPosition(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 6122
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mPositionScroller:Landroid/widget/AbsHorizontalListView$PositionScroller;

    if-nez v0, :cond_0

    .line 6123
    new-instance v0, Landroid/widget/AbsHorizontalListView$PositionScroller;

    invoke-direct {v0, p0}, Landroid/widget/AbsHorizontalListView$PositionScroller;-><init>(Landroid/widget/AbsHorizontalListView;)V

    iput-object v0, p0, Landroid/widget/AbsHorizontalListView;->mPositionScroller:Landroid/widget/AbsHorizontalListView$PositionScroller;

    .line 6125
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mPositionScroller:Landroid/widget/AbsHorizontalListView$PositionScroller;

    invoke-virtual {v0, p1}, Landroid/widget/AbsHorizontalListView$PositionScroller;->start(I)V

    .line 6126
    return-void
.end method

.method public smoothScrollToPosition(II)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "boundPosition"    # I

    .prologue
    .line 6175
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mPositionScroller:Landroid/widget/AbsHorizontalListView$PositionScroller;

    if-nez v0, :cond_0

    .line 6176
    new-instance v0, Landroid/widget/AbsHorizontalListView$PositionScroller;

    invoke-direct {v0, p0}, Landroid/widget/AbsHorizontalListView$PositionScroller;-><init>(Landroid/widget/AbsHorizontalListView;)V

    iput-object v0, p0, Landroid/widget/AbsHorizontalListView;->mPositionScroller:Landroid/widget/AbsHorizontalListView$PositionScroller;

    .line 6178
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mPositionScroller:Landroid/widget/AbsHorizontalListView$PositionScroller;

    invoke-virtual {v0, p1, p2}, Landroid/widget/AbsHorizontalListView$PositionScroller;->start(II)V

    .line 6179
    return-void
.end method

.method public smoothScrollToPositionFromTop(II)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "offset"    # I

    .prologue
    .line 6159
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mPositionScroller:Landroid/widget/AbsHorizontalListView$PositionScroller;

    if-nez v0, :cond_0

    .line 6160
    new-instance v0, Landroid/widget/AbsHorizontalListView$PositionScroller;

    invoke-direct {v0, p0}, Landroid/widget/AbsHorizontalListView$PositionScroller;-><init>(Landroid/widget/AbsHorizontalListView;)V

    iput-object v0, p0, Landroid/widget/AbsHorizontalListView;->mPositionScroller:Landroid/widget/AbsHorizontalListView$PositionScroller;

    .line 6162
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mPositionScroller:Landroid/widget/AbsHorizontalListView$PositionScroller;

    invoke-virtual {v0, p1, p2}, Landroid/widget/AbsHorizontalListView$PositionScroller;->startWithOffset(II)V

    .line 6163
    return-void
.end method

.method public smoothScrollToPositionFromTop(III)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "offset"    # I
    .param p3, "duration"    # I

    .prologue
    .line 6141
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mPositionScroller:Landroid/widget/AbsHorizontalListView$PositionScroller;

    if-nez v0, :cond_0

    .line 6142
    new-instance v0, Landroid/widget/AbsHorizontalListView$PositionScroller;

    invoke-direct {v0, p0}, Landroid/widget/AbsHorizontalListView$PositionScroller;-><init>(Landroid/widget/AbsHorizontalListView;)V

    iput-object v0, p0, Landroid/widget/AbsHorizontalListView;->mPositionScroller:Landroid/widget/AbsHorizontalListView$PositionScroller;

    .line 6144
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mPositionScroller:Landroid/widget/AbsHorizontalListView$PositionScroller;

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/AbsHorizontalListView$PositionScroller;->startWithOffset(III)V

    .line 6145
    return-void
.end method

.method touchModeDrawsInPressedState()Z
    .locals 1

    .prologue
    .line 2918
    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    packed-switch v0, :pswitch_data_0

    .line 2923
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 2921
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 2918
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method trackMotionScroll(II)Z
    .locals 32
    .param p1, "deltaX"    # I
    .param p2, "incrementalDeltaX"    # I

    .prologue
    .line 6401
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView;->getChildCount()I

    move-result v7

    .line 6402
    .local v7, "childCount":I
    if-nez v7, :cond_0

    .line 6403
    const/16 v30, 0x1

    .line 6600
    :goto_0
    return v30

    .line 6406
    :cond_0
    const/16 v30, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/AbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getLeft()I

    move-result v13

    .line 6407
    .local v13, "firstLeft":I
    add-int/lit8 v30, v7, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/AbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getRight()I

    move-result v19

    .line 6409
    .local v19, "lastRight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    .line 6414
    .local v21, "listPadding":Landroid/graphics/Rect;
    const/4 v10, 0x0

    .line 6415
    .local v10, "effectivePaddingLeft":I
    const/4 v11, 0x0

    .line 6416
    .local v11, "effectivePaddingRight":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mGroupFlags:I

    move/from16 v30, v0

    and-int/lit8 v30, v30, 0x22

    const/16 v31, 0x22

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_1

    .line 6417
    move-object/from16 v0, v21

    iget v10, v0, Landroid/graphics/Rect;->left:I

    .line 6418
    move-object/from16 v0, v21

    iget v11, v0, Landroid/graphics/Rect;->right:I

    .line 6422
    :cond_1
    sub-int v26, v10, v13

    .line 6423
    .local v26, "spaceAbove":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView;->getWidth()I

    move-result v30

    sub-int v12, v30, v11

    .line 6424
    .local v12, "end":I
    sub-int v27, v19, v12

    .line 6426
    .local v27, "spaceBelow":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView;->getWidth()I

    move-result v30

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mPaddingRight:I

    move/from16 v31, v0

    sub-int v30, v30, v31

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mPaddingLeft:I

    move/from16 v31, v0

    sub-int v29, v30, v31

    .line 6427
    .local v29, "width":I
    if-gez p1, :cond_3

    .line 6428
    add-int/lit8 v30, v29, -0x1

    move/from16 v0, v30

    neg-int v0, v0

    move/from16 v30, v0

    move/from16 v0, v30

    move/from16 v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 6433
    :goto_1
    if-gez p2, :cond_4

    .line 6434
    add-int/lit8 v30, v29, -0x1

    move/from16 v0, v30

    neg-int v0, v0

    move/from16 v30, v0

    move/from16 v0, v30

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 6439
    :goto_2
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/AbsHorizontalListView;->mFirstPosition:I

    .line 6442
    .local v14, "firstPosition":I
    if-nez v14, :cond_5

    .line 6443
    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v30, v0

    sub-int v30, v13, v30

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsHorizontalListView;->mFirstPositionDistanceGuess:I

    .line 6447
    :goto_3
    add-int v30, v14, v7

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mItemCount:I

    move/from16 v31, v0

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_6

    .line 6448
    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v30, v0

    add-int v30, v30, v19

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsHorizontalListView;->mLastPositionDistanceGuess:I

    .line 6453
    :goto_4
    if-nez v14, :cond_7

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v30, v0

    move/from16 v0, v30

    if-lt v13, v0, :cond_7

    if-ltz p2, :cond_7

    const/4 v5, 0x1

    .line 6455
    .local v5, "cannotScrollRight":Z
    :goto_5
    add-int v30, v14, v7

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mItemCount:I

    move/from16 v31, v0

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_8

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView;->getWidth()I

    move-result v30

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v31, v0

    sub-int v30, v30, v31

    move/from16 v0, v19

    move/from16 v1, v30

    if-gt v0, v1, :cond_8

    if-gtz p2, :cond_8

    const/4 v4, 0x1

    .line 6458
    .local v4, "cannotScrollLeft":Z
    :goto_6
    if-nez v5, :cond_2

    if-eqz v4, :cond_a

    .line 6459
    :cond_2
    if-eqz p2, :cond_9

    const/16 v30, 0x1

    goto/16 :goto_0

    .line 6430
    .end local v4    # "cannotScrollLeft":Z
    .end local v5    # "cannotScrollRight":Z
    .end local v14    # "firstPosition":I
    :cond_3
    add-int/lit8 v30, v29, -0x1

    move/from16 v0, v30

    move/from16 v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto/16 :goto_1

    .line 6436
    :cond_4
    add-int/lit8 v30, v29, -0x1

    move/from16 v0, v30

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto/16 :goto_2

    .line 6445
    .restart local v14    # "firstPosition":I
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mFirstPositionDistanceGuess:I

    move/from16 v30, v0

    add-int v30, v30, p2

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsHorizontalListView;->mFirstPositionDistanceGuess:I

    goto :goto_3

    .line 6450
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mLastPositionDistanceGuess:I

    move/from16 v30, v0

    add-int v30, v30, p2

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsHorizontalListView;->mLastPositionDistanceGuess:I

    goto :goto_4

    .line 6453
    :cond_7
    const/4 v5, 0x0

    goto :goto_5

    .line 6455
    .restart local v5    # "cannotScrollRight":Z
    :cond_8
    const/4 v4, 0x0

    goto :goto_6

    .line 6459
    .restart local v4    # "cannotScrollLeft":Z
    :cond_9
    const/16 v30, 0x0

    goto/16 :goto_0

    .line 6462
    :cond_a
    if-gez p2, :cond_14

    const/16 v25, 0x1

    .line 6464
    .local v25, "rightSide":Z
    :goto_7
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView;->isInTouchMode()Z

    move-result v18

    .line 6465
    .local v18, "inTouchMode":Z
    if-eqz v18, :cond_b

    .line 6466
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView;->hideSelector()V

    .line 6469
    :cond_b
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView;->getHeaderViewsCount()I

    move-result v16

    .line 6470
    .local v16, "headerViewsCount":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mItemCount:I

    move/from16 v30, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView;->getFooterViewsCount()I

    move-result v31

    sub-int v15, v30, v31

    .line 6472
    .local v15, "footerViewsStart":I
    const/16 v28, 0x0

    .line 6473
    .local v28, "start":I
    const/4 v9, 0x0

    .line 6476
    .local v9, "count":I
    const/16 v22, 0x1

    .line 6479
    .local v22, "performHaptic":Z
    if-eqz v25, :cond_1b

    .line 6480
    move/from16 v0, p2

    neg-int v0, v0

    move/from16 v20, v0

    .line 6481
    .local v20, "left":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mGroupFlags:I

    move/from16 v30, v0

    and-int/lit8 v30, v30, 0x22

    const/16 v31, 0x22

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_c

    .line 6482
    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v30, v0

    add-int v20, v20, v30

    .line 6484
    :cond_c
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_8
    move/from16 v0, v17

    if-ge v0, v7, :cond_d

    .line 6485
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/AbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 6486
    .local v6, "child":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v30

    move/from16 v0, v30

    move/from16 v1, v20

    if-lt v0, v1, :cond_15

    .line 6556
    .end local v6    # "child":Landroid/view/View;
    .end local v20    # "left":I
    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mMotionViewOriginalLeft:I

    move/from16 v30, v0

    add-int v30, v30, p1

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsHorizontalListView;->mMotionViewNewLeft:I

    .line 6558
    const/16 v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsHorizontalListView;->mBlockLayoutRequests:Z

    .line 6560
    if-lez v9, :cond_e

    .line 6561
    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1, v9}, Landroid/widget/AbsHorizontalListView;->detachViewsFromParent(II)V

    .line 6562
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mRecycler:Landroid/widget/AbsHorizontalListView$RecycleBin;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/widget/AbsHorizontalListView$RecycleBin;->removeSkippedScrap()V

    .line 6567
    :cond_e
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView;->awakenScrollBars()Z

    move-result v30

    if-nez v30, :cond_f

    .line 6568
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView;->invalidate()V

    .line 6571
    :cond_f
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/AbsHorizontalListView;->twOffsetChildrenLeftAndRight(I)V

    .line 6573
    if-eqz v25, :cond_10

    .line 6574
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mFirstPosition:I

    move/from16 v30, v0

    add-int v30, v30, v9

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsHorizontalListView;->mFirstPosition:I

    .line 6577
    :cond_10
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 6578
    .local v3, "absIncrementalDeltaX":I
    move/from16 v0, v26

    if-lt v0, v3, :cond_11

    move/from16 v0, v27

    if-ge v0, v3, :cond_12

    .line 6579
    :cond_11
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/AbsHorizontalListView;->fillGap(Z)V

    .line 6582
    :cond_12
    if-nez v18, :cond_22

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mSelectedPosition:I

    move/from16 v30, v0

    const/16 v31, -0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_22

    .line 6583
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mSelectedPosition:I

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mFirstPosition:I

    move/from16 v31, v0

    sub-int v8, v30, v31

    .line 6584
    .local v8, "childIndex":I
    if-ltz v8, :cond_13

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView;->getChildCount()I

    move-result v30

    move/from16 v0, v30

    if-ge v8, v0, :cond_13

    .line 6585
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mSelectedPosition:I

    move/from16 v30, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/widget/AbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v31

    move-object/from16 v0, p0

    move/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsHorizontalListView;->positionSelector(ILandroid/view/View;)V

    .line 6596
    .end local v8    # "childIndex":I
    :cond_13
    :goto_9
    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsHorizontalListView;->mBlockLayoutRequests:Z

    .line 6598
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView;->invokeOnItemScrollListener()V

    .line 6600
    const/16 v30, 0x0

    goto/16 :goto_0

    .line 6462
    .end local v3    # "absIncrementalDeltaX":I
    .end local v9    # "count":I
    .end local v15    # "footerViewsStart":I
    .end local v16    # "headerViewsCount":I
    .end local v17    # "i":I
    .end local v18    # "inTouchMode":Z
    .end local v22    # "performHaptic":Z
    .end local v25    # "rightSide":Z
    .end local v28    # "start":I
    :cond_14
    const/16 v25, 0x0

    goto/16 :goto_7

    .line 6489
    .restart local v6    # "child":Landroid/view/View;
    .restart local v9    # "count":I
    .restart local v15    # "footerViewsStart":I
    .restart local v16    # "headerViewsCount":I
    .restart local v17    # "i":I
    .restart local v18    # "inTouchMode":Z
    .restart local v20    # "left":I
    .restart local v22    # "performHaptic":Z
    .restart local v25    # "rightSide":Z
    .restart local v28    # "start":I
    :cond_15
    add-int/lit8 v9, v9, 0x1

    .line 6490
    add-int v23, v14, v17

    .line 6491
    .local v23, "position":I
    move/from16 v0, v23

    move/from16 v1, v16

    if-lt v0, v1, :cond_1a

    move/from16 v0, v23

    if-ge v0, v15, :cond_1a

    .line 6494
    invoke-virtual {v6}, Landroid/view/View;->isAccessibilityFocused()Z

    move-result v30

    if-eqz v30, :cond_16

    .line 6495
    invoke-virtual {v6}, Landroid/view/View;->clearAccessibilityFocus()V

    .line 6499
    :cond_16
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsHorizontalListView;->USE_SET_INTEGRATOR_HAPTIC:Z

    move/from16 v30, v0

    if-eqz v30, :cond_19

    .line 6500
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mLastPosition:I

    move/from16 v30, v0

    move/from16 v0, v30

    move/from16 v1, v23

    if-eq v0, v1, :cond_19

    .line 6501
    if-eqz v22, :cond_18

    .line 6502
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mHapticPreDrawListener:Landroid/view/HapticPreDrawListener;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-boolean v0, v0, Landroid/view/HapticPreDrawListener;->mSkipHapticCalls:Z

    move/from16 v30, v0

    if-nez v30, :cond_17

    .line 6503
    const/16 v30, 0x4e98

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/AbsHorizontalListView;->performHapticFeedback(I)Z

    .line 6504
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mHapticPreDrawListener:Landroid/view/HapticPreDrawListener;

    move-object/from16 v30, v0

    const/16 v31, 0x1

    move/from16 v0, v31

    move-object/from16 v1, v30

    iput-boolean v0, v1, Landroid/view/HapticPreDrawListener;->mSkipHapticCalls:Z

    .line 6506
    :cond_17
    const/16 v22, 0x0

    .line 6508
    :cond_18
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsHorizontalListView;->mLastPosition:I

    .line 6512
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mRecycler:Landroid/widget/AbsHorizontalListView$RecycleBin;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move/from16 v1, v23

    invoke-virtual {v0, v6, v1}, Landroid/widget/AbsHorizontalListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 6484
    :cond_1a
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_8

    .line 6517
    .end local v6    # "child":Landroid/view/View;
    .end local v17    # "i":I
    .end local v20    # "left":I
    .end local v23    # "position":I
    :cond_1b
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView;->getWidth()I

    move-result v30

    sub-int v24, v30, p2

    .line 6518
    .local v24, "right":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mGroupFlags:I

    move/from16 v30, v0

    and-int/lit8 v30, v30, 0x22

    const/16 v31, 0x22

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_1c

    .line 6519
    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v30, v0

    sub-int v24, v24, v30

    .line 6521
    :cond_1c
    add-int/lit8 v17, v7, -0x1

    .restart local v17    # "i":I
    :goto_a
    if-ltz v17, :cond_d

    .line 6522
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/AbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 6523
    .restart local v6    # "child":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v30

    move/from16 v0, v30

    move/from16 v1, v24

    if-le v0, v1, :cond_d

    .line 6526
    move/from16 v28, v17

    .line 6527
    add-int/lit8 v9, v9, 0x1

    .line 6528
    add-int v23, v14, v17

    .line 6529
    .restart local v23    # "position":I
    move/from16 v0, v23

    move/from16 v1, v16

    if-lt v0, v1, :cond_21

    move/from16 v0, v23

    if-ge v0, v15, :cond_21

    .line 6532
    invoke-virtual {v6}, Landroid/view/View;->isAccessibilityFocused()Z

    move-result v30

    if-eqz v30, :cond_1d

    .line 6533
    invoke-virtual {v6}, Landroid/view/View;->clearAccessibilityFocus()V

    .line 6537
    :cond_1d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsHorizontalListView;->USE_SET_INTEGRATOR_HAPTIC:Z

    move/from16 v30, v0

    if-eqz v30, :cond_20

    .line 6538
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mLastPosition:I

    move/from16 v30, v0

    move/from16 v0, v30

    move/from16 v1, v23

    if-eq v0, v1, :cond_20

    .line 6539
    if-eqz v22, :cond_1f

    .line 6540
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mHapticPreDrawListener:Landroid/view/HapticPreDrawListener;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-boolean v0, v0, Landroid/view/HapticPreDrawListener;->mSkipHapticCalls:Z

    move/from16 v30, v0

    if-nez v30, :cond_1e

    .line 6541
    const/16 v30, 0x4e98

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/AbsHorizontalListView;->performHapticFeedback(I)Z

    .line 6542
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mHapticPreDrawListener:Landroid/view/HapticPreDrawListener;

    move-object/from16 v30, v0

    const/16 v31, 0x1

    move/from16 v0, v31

    move-object/from16 v1, v30

    iput-boolean v0, v1, Landroid/view/HapticPreDrawListener;->mSkipHapticCalls:Z

    .line 6544
    :cond_1e
    const/16 v22, 0x0

    .line 6546
    :cond_1f
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsHorizontalListView;->mLastPosition:I

    .line 6550
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mRecycler:Landroid/widget/AbsHorizontalListView$RecycleBin;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move/from16 v1, v23

    invoke-virtual {v0, v6, v1}, Landroid/widget/AbsHorizontalListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 6521
    :cond_21
    add-int/lit8 v17, v17, -0x1

    goto :goto_a

    .line 6587
    .end local v6    # "child":Landroid/view/View;
    .end local v23    # "position":I
    .end local v24    # "right":I
    .restart local v3    # "absIncrementalDeltaX":I
    :cond_22
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mSelectorPosition:I

    move/from16 v30, v0

    const/16 v31, -0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_23

    .line 6588
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mSelectorPosition:I

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mFirstPosition:I

    move/from16 v31, v0

    sub-int v8, v30, v31

    .line 6589
    .restart local v8    # "childIndex":I
    if-ltz v8, :cond_13

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView;->getChildCount()I

    move-result v30

    move/from16 v0, v30

    if-ge v8, v0, :cond_13

    .line 6590
    const/16 v30, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/widget/AbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v31

    move-object/from16 v0, p0

    move/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsHorizontalListView;->positionSelector(ILandroid/view/View;)V

    goto/16 :goto_9

    .line 6593
    .end local v8    # "childIndex":I
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mSelectorRect:Landroid/graphics/Rect;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/graphics/Rect;->setEmpty()V

    goto/16 :goto_9
.end method

.method protected twGetItemCount()I
    .locals 2

    .prologue
    .line 6218
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 6219
    .local v0, "adapter":Landroid/widget/Adapter;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v1

    goto :goto_0
.end method

.method public twIsSetCustomMultiChoiceMode()Z
    .locals 1

    .prologue
    .line 1566
    iget-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mTwCustomMultiChoiceMode:Z

    return v0
.end method

.method public twNotifyKeyPressState(Landroid/view/View;IJ)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    .line 1448
    const/4 v0, 0x0

    .line 1453
    .local v0, "handledNotifyKeyPress":Z
    return v0
.end method

.method public twSetCustomMultiChoiceMode(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 1557
    iput-boolean p1, p0, Landroid/widget/AbsHorizontalListView;->mTwCustomMultiChoiceMode:Z

    .line 1558
    return-void
.end method

.method public twSetSelection(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 6229
    invoke-virtual {p0, p1}, Landroid/widget/AbsHorizontalListView;->setSelection(I)V

    .line 6230
    return-void
.end method

.method public twShowMultiChoiceMode(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 1539
    if-eqz p1, :cond_1

    .line 1540
    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mChoiceMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mMultiChoiceModeCallback:Landroid/widget/AbsHorizontalListView$MultiChoiceModeWrapper;

    if-eqz v0, :cond_0

    .line 1541
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mMultiChoiceModeCallback:Landroid/widget/AbsHorizontalListView$MultiChoiceModeWrapper;

    invoke-virtual {p0, v0}, Landroid/widget/AbsHorizontalListView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsHorizontalListView;->mChoiceActionMode:Landroid/view/ActionMode;

    .line 1549
    :cond_0
    :goto_0
    return-void

    .line 1544
    :cond_1
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 1545
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mChoiceActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 1546
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/AbsHorizontalListView;->mChoiceActionMode:Landroid/view/ActionMode;

    goto :goto_0
.end method

.method public twSmoothScrollBy(I)V
    .locals 6
    .param p1, "distance"    # I

    .prologue
    const/16 v5, -0x1f4

    const/16 v4, 0x1f4

    .line 6234
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mFlingRunnable:Landroid/widget/AbsHorizontalListView$FlingRunnable;

    if-nez v1, :cond_0

    .line 6235
    new-instance v1, Landroid/widget/AbsHorizontalListView$FlingRunnable;

    invoke-direct {v1, p0}, Landroid/widget/AbsHorizontalListView$FlingRunnable;-><init>(Landroid/widget/AbsHorizontalListView;)V

    iput-object v1, p0, Landroid/widget/AbsHorizontalListView;->mFlingRunnable:Landroid/widget/AbsHorizontalListView$FlingRunnable;

    .line 6238
    :cond_0
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mTwTwScrollRemains:Ljava/util/LinkedList;

    if-nez v1, :cond_1

    .line 6239
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Landroid/widget/AbsHorizontalListView;->mTwTwScrollRemains:Ljava/util/LinkedList;

    .line 6240
    new-instance v1, Landroid/widget/AbsHorizontalListView$TwSmoothScrollByMove;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/widget/AbsHorizontalListView$TwSmoothScrollByMove;-><init>(Landroid/widget/AbsHorizontalListView;Landroid/widget/AbsHorizontalListView$1;)V

    iput-object v1, p0, Landroid/widget/AbsHorizontalListView;->mTwSmoothScrollByMove:Landroid/widget/AbsHorizontalListView$TwSmoothScrollByMove;

    .line 6243
    :cond_1
    iget-object v2, p0, Landroid/widget/AbsHorizontalListView;->mTwTwScrollRemains:Ljava/util/LinkedList;

    monitor-enter v2

    .line 6244
    :try_start_0
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mTwTwScrollRemains:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    .line 6245
    .local v0, "isEmpty":Z
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-le v1, v4, :cond_3

    .line 6246
    if-lez p1, :cond_2

    .line 6247
    :goto_0
    if-le p1, v4, :cond_3

    .line 6248
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mTwTwScrollRemains:Ljava/util/LinkedList;

    const/16 v3, 0x1f4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 6247
    add-int/lit16 p1, p1, -0x1f4

    goto :goto_0

    .line 6251
    :cond_2
    :goto_1
    if-ge p1, v5, :cond_3

    .line 6252
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mTwTwScrollRemains:Ljava/util/LinkedList;

    const/16 v3, -0x1f4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 6251
    add-int/lit16 p1, p1, 0x1f4

    goto :goto_1

    .line 6256
    :cond_3
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mTwTwScrollRemains:Ljava/util/LinkedList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 6257
    if-eqz v0, :cond_4

    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mTwSmoothScrollByMove:Landroid/widget/AbsHorizontalListView$TwSmoothScrollByMove;

    invoke-virtual {p0, v1}, Landroid/widget/AbsHorizontalListView;->post(Ljava/lang/Runnable;)Z

    .line 6258
    :cond_4
    monitor-exit v2

    .line 6259
    return-void

    .line 6258
    .end local v0    # "isEmpty":Z
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public unregisterDoubleTapMotion()V
    .locals 1

    .prologue
    .line 956
    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->unregisterMotionListener()V

    .line 957
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/AbsHorizontalListView;->setMotionEvent(Z)V

    .line 958
    return-void
.end method

.method public updateCustomEdgeGlow(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "edgeeffectCustomEdge"    # Landroid/graphics/drawable/Drawable;
    .param p2, "edgeeffectCustomGlow"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 986
    return-void
.end method

.method updateScrollIndicators()V
    .locals 10

    .prologue
    const/4 v7, 0x4

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 2523
    iget-object v6, p0, Landroid/widget/AbsHorizontalListView;->mScrollLeft:Landroid/view/View;

    if-eqz v6, :cond_1

    .line 2526
    iget v6, p0, Landroid/widget/AbsHorizontalListView;->mFirstPosition:I

    if-lez v6, :cond_4

    move v0, v4

    .line 2529
    .local v0, "canScrollLeft":Z
    :goto_0
    if-nez v0, :cond_0

    .line 2530
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getChildCount()I

    move-result v6

    if-lez v6, :cond_0

    .line 2531
    invoke-virtual {p0, v5}, Landroid/widget/AbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2532
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v6

    iget-object v8, p0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    if-ge v6, v8, :cond_5

    move v0, v4

    .line 2536
    .end local v2    # "child":Landroid/view/View;
    :cond_0
    :goto_1
    iget-object v8, p0, Landroid/widget/AbsHorizontalListView;->mScrollLeft:Landroid/view/View;

    if-eqz v0, :cond_6

    move v6, v5

    :goto_2
    invoke-virtual {v8, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2539
    .end local v0    # "canScrollLeft":Z
    :cond_1
    iget-object v6, p0, Landroid/widget/AbsHorizontalListView;->mScrollRight:Landroid/view/View;

    if-eqz v6, :cond_3

    .line 2541
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getChildCount()I

    move-result v3

    .line 2544
    .local v3, "count":I
    iget v6, p0, Landroid/widget/AbsHorizontalListView;->mFirstPosition:I

    add-int/2addr v6, v3

    iget v8, p0, Landroid/widget/AbsHorizontalListView;->mItemCount:I

    if-ge v6, v8, :cond_7

    move v1, v4

    .line 2547
    .local v1, "canScrollRight":Z
    :goto_3
    if-nez v1, :cond_2

    if-lez v3, :cond_2

    .line 2548
    add-int/lit8 v6, v3, -0x1

    invoke-virtual {p0, v6}, Landroid/widget/AbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2549
    .restart local v2    # "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v6

    iget v8, p0, Landroid/widget/AbsHorizontalListView;->mRight:I

    iget-object v9, p0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v9

    if-le v6, v8, :cond_8

    move v1, v4

    .line 2552
    .end local v2    # "child":Landroid/view/View;
    :cond_2
    :goto_4
    iget-object v4, p0, Landroid/widget/AbsHorizontalListView;->mScrollRight:Landroid/view/View;

    if-eqz v1, :cond_9

    :goto_5
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2554
    .end local v1    # "canScrollRight":Z
    .end local v3    # "count":I
    :cond_3
    return-void

    :cond_4
    move v0, v5

    .line 2526
    goto :goto_0

    .restart local v0    # "canScrollLeft":Z
    .restart local v2    # "child":Landroid/view/View;
    :cond_5
    move v0, v5

    .line 2532
    goto :goto_1

    .end local v2    # "child":Landroid/view/View;
    :cond_6
    move v6, v7

    .line 2536
    goto :goto_2

    .end local v0    # "canScrollLeft":Z
    .restart local v3    # "count":I
    :cond_7
    move v1, v5

    .line 2544
    goto :goto_3

    .restart local v1    # "canScrollRight":Z
    .restart local v2    # "child":Landroid/view/View;
    :cond_8
    move v1, v5

    .line 2549
    goto :goto_4

    .end local v2    # "child":Landroid/view/View;
    :cond_9
    move v5, v7

    .line 2552
    goto :goto_5
.end method

.method updateSelectorState()V
    .locals 4

    .prologue
    .line 3074
    iget-object v2, p0, Landroid/widget/AbsHorizontalListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    .line 3075
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->shouldShowSelector()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3076
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->isHovered()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Landroid/widget/AbsHorizontalListView;->mIsHoveredByMouse:Z

    if-nez v2, :cond_3

    iget v2, p0, Landroid/widget/AbsHorizontalListView;->mSelectorPosition:I

    iget v3, p0, Landroid/widget/AbsHorizontalListView;->mFirstPosition:I

    if-lt v2, v3, :cond_3

    .line 3077
    iget v2, p0, Landroid/widget/AbsHorizontalListView;->mSelectorPosition:I

    iget v3, p0, Landroid/widget/AbsHorizontalListView;->mFirstPosition:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Landroid/widget/AbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3078
    .local v0, "child":Landroid/view/View;
    invoke-virtual {p0, v0}, Landroid/widget/AbsHorizontalListView;->findEllipsizedTextView(Landroid/view/View;)Z

    move-result v1

    .line 3079
    .local v1, "ellipsized":Z
    iget-boolean v2, p0, Landroid/widget/AbsHorizontalListView;->mIsPnePressed:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Landroid/widget/AbsHorizontalListView;->mAlwaysDisableHoverHighlight:Z

    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_2

    .line 3080
    :cond_0
    iget-object v2, p0, Landroid/widget/AbsHorizontalListView;->mSelector:Landroid/graphics/drawable/Drawable;

    sget-object v3, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 3081
    iget-object v2, p0, Landroid/widget/AbsHorizontalListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    .line 3092
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "ellipsized":Z
    :cond_1
    :goto_0
    return-void

    .line 3083
    .restart local v0    # "child":Landroid/view/View;
    .restart local v1    # "ellipsized":Z
    :cond_2
    iget-object v2, p0, Landroid/widget/AbsHorizontalListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getDrawableState()[I

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_0

    .line 3086
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "ellipsized":Z
    :cond_3
    iget-object v2, p0, Landroid/widget/AbsHorizontalListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getDrawableState()[I

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_0

    .line 3089
    :cond_4
    iget-object v2, p0, Landroid/widget/AbsHorizontalListView;->mSelector:Landroid/graphics/drawable/Drawable;

    sget-object v3, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_0
.end method

.method public verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "dr"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 3136
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    invoke-super {p0, p1}, Landroid/widget/AdapterView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
