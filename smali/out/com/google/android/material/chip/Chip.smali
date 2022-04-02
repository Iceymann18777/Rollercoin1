.class public Lcom/google/android/material/chip/Chip;
.super Landroidx/appcompat/widget/AppCompatCheckBox;
.source "Chip.java"

# interfaces
.implements Lcom/google/android/material/chip/ChipDrawable$Delegate;
.implements Lcom/google/android/material/shape/Shapeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/chip/Chip$ChipTouchHelper;
    }
.end annotation


# static fields
.field private static final CHECKABLE_STATE_SET:[I

.field private static final EMPTY_BOUNDS:Landroid/graphics/Rect;

.field private static final SELECTED_STATE:[I


# instance fields
.field private chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

.field private closeIconFocused:Z

.field private closeIconHovered:Z

.field private closeIconPressed:Z

.field private deferredCheckedValue:Z

.field private ensureMinTouchTargetSize:Z

.field private final fontCallback:Lcom/google/android/material/resources/TextAppearanceFontCallback;

.field private insetBackgroundDrawable:Landroid/graphics/drawable/InsetDrawable;

.field private lastLayoutDirection:I

.field private minTouchTargetSize:I

.field private onCheckedChangeListenerInternal:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private onCloseIconClickListener:Landroid/view/View$OnClickListener;

.field private final rect:Landroid/graphics/Rect;

.field private final rectF:Landroid/graphics/RectF;

.field private ripple:Landroid/graphics/drawable/RippleDrawable;

.field private final touchHelper:Lcom/google/android/material/chip/Chip$ChipTouchHelper;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 132
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/google/android/material/chip/Chip;->EMPTY_BOUNDS:Landroid/graphics/Rect;

    const/4 v0, 0x1

    new-array v1, v0, [I

    const v2, 0x10100a1

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 134
    sput-object v1, Lcom/google/android/material/chip/Chip;->SELECTED_STATE:[I

    new-array v0, v0, [I

    const v1, 0x101009f

    aput v1, v0, v3

    .line 135
    sput-object v0, Lcom/google/android/material/chip/Chip;->CHECKABLE_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 186
    sget v0, Lcom/google/android/material/R$attr;->chipStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/chip/Chip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 12

    .line 190
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatCheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 165
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/chip/Chip;->rect:Landroid/graphics/Rect;

    .line 166
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/chip/Chip;->rectF:Landroid/graphics/RectF;

    .line 167
    new-instance v0, Lcom/google/android/material/chip/Chip$1;

    invoke-direct {v0, p0}, Lcom/google/android/material/chip/Chip$1;-><init>(Lcom/google/android/material/chip/Chip;)V

    iput-object v0, p0, Lcom/google/android/material/chip/Chip;->fontCallback:Lcom/google/android/material/resources/TextAppearanceFontCallback;

    .line 191
    invoke-direct {p0, p2}, Lcom/google/android/material/chip/Chip;->validateAttributes(Landroid/util/AttributeSet;)V

    .line 192
    sget v0, Lcom/google/android/material/R$style;->Widget_MaterialComponents_Chip_Action:I

    .line 193
    invoke-static {p1, p2, p3, v0}, Lcom/google/android/material/chip/ChipDrawable;->createFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;II)Lcom/google/android/material/chip/ChipDrawable;

    move-result-object v0

    .line 195
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/chip/Chip;->initMinTouchTarget(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 196
    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/Chip;->setChipDrawable(Lcom/google/android/material/chip/ChipDrawable;)V

    .line 197
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getElevation(Landroid/view/View;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/chip/ChipDrawable;->setElevation(F)V

    .line 198
    sget-object v4, Lcom/google/android/material/R$styleable;->Chip:[I

    sget v6, Lcom/google/android/material/R$style;->Widget_MaterialComponents_Chip_Action:I

    const/4 v1, 0x0

    new-array v7, v1, [I

    move-object v2, p1

    move-object v3, p2

    move v5, p3

    .line 199
    invoke-static/range {v2 .. v7}, Lcom/google/android/material/internal/ThemeEnforcement;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 205
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-ge p3, v2, :cond_4b

    .line 208
    sget p3, Lcom/google/android/material/R$styleable;->Chip_android_textColor:I

    .line 209
    invoke-static {p1, p2, p3}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    .line 208
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 211
    :cond_4b
    sget p1, Lcom/google/android/material/R$styleable;->Chip_shapeAppearance:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p1

    .line 212
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 214
    new-instance p2, Lcom/google/android/material/chip/Chip$ChipTouchHelper;

    invoke-direct {p2, p0, p0}, Lcom/google/android/material/chip/Chip$ChipTouchHelper;-><init>(Lcom/google/android/material/chip/Chip;Lcom/google/android/material/chip/Chip;)V

    iput-object p2, p0, Lcom/google/android/material/chip/Chip;->touchHelper:Lcom/google/android/material/chip/Chip$ChipTouchHelper;

    .line 215
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x18

    if-lt p2, p3, :cond_67

    .line 216
    iget-object p2, p0, Lcom/google/android/material/chip/Chip;->touchHelper:Lcom/google/android/material/chip/Chip$ChipTouchHelper;

    invoke-static {p0, p2}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    goto :goto_6a

    .line 218
    :cond_67
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->updateAccessibilityDelegate()V

    :goto_6a
    if-nez p1, :cond_6f

    .line 221
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->initOutlineProvider()V

    .line 224
    :cond_6f
    iget-boolean p1, p0, Lcom/google/android/material/chip/Chip;->deferredCheckedValue:Z

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->setChecked(Z)V

    .line 225
    invoke-virtual {v0}, Lcom/google/android/material/chip/ChipDrawable;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->setText(Ljava/lang/CharSequence;)V

    .line 226
    invoke-virtual {v0}, Lcom/google/android/material/chip/ChipDrawable;->getEllipsize()Landroid/text/TextUtils$TruncateAt;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 228
    invoke-virtual {p0, v1}, Lcom/google/android/material/chip/Chip;->setIncludeFontPadding(Z)V

    .line 229
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->updateTextPaintDrawState()V

    .line 232
    iget-object p1, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    invoke-virtual {p1}, Lcom/google/android/material/chip/ChipDrawable;->shouldDrawText()Z

    move-result p1

    if-nez p1, :cond_93

    .line 233
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->setSingleLine()V

    :cond_93
    const p1, 0x800013

    .line 237
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->setGravity(I)V

    .line 239
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->updatePaddingInternal()V

    .line 240
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->shouldEnsureMinTouchTargetSize()Z

    move-result p1

    if-eqz p1, :cond_a7

    .line 241
    iget p1, p0, Lcom/google/android/material/chip/Chip;->minTouchTargetSize:I

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->setMinHeight(I)V

    .line 243
    :cond_a7
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/chip/Chip;->lastLayoutDirection:I

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/material/chip/Chip;)Lcom/google/android/material/chip/ChipDrawable;
    .registers 1

    .line 126
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    return-object p0
.end method

.method static synthetic access$100(Lcom/google/android/material/chip/Chip;)Z
    .registers 1

    .line 126
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->hasCloseIcon()Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/google/android/material/chip/Chip;)Landroid/graphics/RectF;
    .registers 1

    .line 126
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->getCloseIconTouchBounds()Landroid/graphics/RectF;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$302(Lcom/google/android/material/chip/Chip;Z)Z
    .registers 2

    .line 126
    iput-boolean p1, p0, Lcom/google/android/material/chip/Chip;->closeIconFocused:Z

    return p1
.end method

.method static synthetic access$400(Lcom/google/android/material/chip/Chip;)Landroid/graphics/Rect;
    .registers 1

    .line 126
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->getCloseIconTouchBoundsInt()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500()Landroid/graphics/Rect;
    .registers 1

    .line 126
    sget-object v0, Lcom/google/android/material/chip/Chip;->EMPTY_BOUNDS:Landroid/graphics/Rect;

    return-object v0
.end method

.method private applyChipDrawable(Lcom/google/android/material/chip/ChipDrawable;)V
    .registers 2

    .line 461
    invoke-virtual {p1, p0}, Lcom/google/android/material/chip/ChipDrawable;->setDelegate(Lcom/google/android/material/chip/ChipDrawable$Delegate;)V

    return-void
.end method

.method private createCloseIconDrawableState()[I
    .registers 5

    .line 895
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    .line 898
    :goto_b
    iget-boolean v3, p0, Lcom/google/android/material/chip/Chip;->closeIconFocused:Z

    if-eqz v3, :cond_11

    add-int/lit8 v0, v0, 0x1

    .line 901
    :cond_11
    iget-boolean v3, p0, Lcom/google/android/material/chip/Chip;->closeIconHovered:Z

    if-eqz v3, :cond_17

    add-int/lit8 v0, v0, 0x1

    .line 904
    :cond_17
    iget-boolean v3, p0, Lcom/google/android/material/chip/Chip;->closeIconPressed:Z

    if-eqz v3, :cond_1d

    add-int/lit8 v0, v0, 0x1

    .line 907
    :cond_1d
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_25

    add-int/lit8 v0, v0, 0x1

    .line 911
    :cond_25
    new-array v0, v0, [I

    .line 914
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_33

    const v3, 0x101009e

    .line 915
    aput v3, v0, v1

    const/4 v1, 0x1

    .line 918
    :cond_33
    iget-boolean v2, p0, Lcom/google/android/material/chip/Chip;->closeIconFocused:Z

    if-eqz v2, :cond_3e

    const v2, 0x101009c

    .line 919
    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    .line 922
    :cond_3e
    iget-boolean v2, p0, Lcom/google/android/material/chip/Chip;->closeIconHovered:Z

    if-eqz v2, :cond_49

    const v2, 0x1010367

    .line 923
    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    .line 926
    :cond_49
    iget-boolean v2, p0, Lcom/google/android/material/chip/Chip;->closeIconPressed:Z

    if-eqz v2, :cond_54

    const v2, 0x10100a7

    .line 927
    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    .line 930
    :cond_54
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_5f

    const v2, 0x10100a1

    .line 931
    aput v2, v0, v1

    :cond_5f
    return-object v0
.end method

.method private ensureChipDrawableHasCallback()V
    .registers 3

    .line 427
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/chip/Chip;->insetBackgroundDrawable:Landroid/graphics/drawable/InsetDrawable;

    if-ne v0, v1, :cond_17

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    invoke-virtual {v0}, Lcom/google/android/material/chip/ChipDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-nez v0, :cond_17

    .line 430
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    iget-object v1, p0, Lcom/google/android/material/chip/Chip;->insetBackgroundDrawable:Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {v0, v1}, Lcom/google/android/material/chip/ChipDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_17
    return-void
.end method

.method private getCloseIconTouchBounds()Landroid/graphics/RectF;
    .registers 3

    .line 943
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->setEmpty()V

    .line 945
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->hasCloseIcon()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 947
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    iget-object v1, p0, Lcom/google/android/material/chip/Chip;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Lcom/google/android/material/chip/ChipDrawable;->getCloseIconTouchBounds(Landroid/graphics/RectF;)V

    .line 950
    :cond_12
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->rectF:Landroid/graphics/RectF;

    return-object v0
.end method

.method private getCloseIconTouchBoundsInt()Landroid/graphics/Rect;
    .registers 6

    .line 955
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->getCloseIconTouchBounds()Landroid/graphics/RectF;

    move-result-object v0

    .line 956
    iget-object v1, p0, Lcom/google/android/material/chip/Chip;->rect:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    float-to-int v2, v2

    iget v3, v0, Landroid/graphics/RectF;->top:F

    float-to-int v3, v3

    iget v4, v0, Landroid/graphics/RectF;->right:F

    float-to-int v4, v4

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    float-to-int v0, v0

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 957
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->rect:Landroid/graphics/Rect;

    return-object v0
.end method

.method private getTextAppearance()Lcom/google/android/material/resources/TextAppearance;
    .registers 2

    .line 1390
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/google/android/material/chip/ChipDrawable;->getTextAppearance()Lcom/google/android/material/resources/TextAppearance;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method private handleAccessibilityExit(Landroid/view/MotionEvent;)Z
    .registers 10

    const-string v0, "Unable to send Accessibility Exit event"

    const-string v1, "Chip"

    .line 794
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v2, 0x0

    const/16 v3, 0xa

    if-ne p1, v3, :cond_5b

    .line 796
    :try_start_d
    const-class p1, Landroidx/customview/widget/ExploreByTouchHelper;

    const-string v3, "mHoveredVirtualViewId"

    invoke-virtual {p1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    const/4 v3, 0x1

    .line 797
    invoke-virtual {p1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 798
    iget-object v4, p0, Lcom/google/android/material/chip/Chip;->touchHelper:Lcom/google/android/material/chip/Chip$ChipTouchHelper;

    invoke-virtual {p1, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/high16 v4, -0x80000000

    if-eq p1, v4, :cond_5b

    .line 801
    const-class p1, Landroidx/customview/widget/ExploreByTouchHelper;

    const-string v5, "updateHoveredVirtualView"

    new-array v6, v3, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v2

    .line 802
    invoke-virtual {p1, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 803
    invoke-virtual {p1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 804
    iget-object v5, p0, Lcom/google/android/material/chip/Chip;->touchHelper:Lcom/google/android/material/chip/Chip$ChipTouchHelper;

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v6, v2

    invoke-virtual {p1, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_47
    .catch Ljava/lang/NoSuchMethodException; {:try_start_d .. :try_end_47} :catch_57
    .catch Ljava/lang/IllegalAccessException; {:try_start_d .. :try_end_47} :catch_52
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_d .. :try_end_47} :catch_4d
    .catch Ljava/lang/NoSuchFieldException; {:try_start_d .. :try_end_47} :catch_48

    return v3

    :catch_48
    move-exception p1

    .line 818
    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5b

    :catch_4d
    move-exception p1

    .line 815
    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5b

    :catch_52
    move-exception p1

    .line 812
    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5b

    :catch_57
    move-exception p1

    .line 809
    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_5b
    :goto_5b
    return v2
.end method

.method private hasCloseIcon()Z
    .registers 2

    .line 938
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/google/android/material/chip/ChipDrawable;->getCloseIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private initMinTouchTarget(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 11

    .line 292
    sget-object v2, Lcom/google/android/material/R$styleable;->Chip:[I

    sget v4, Lcom/google/android/material/R$style;->Widget_MaterialComponents_Chip_Action:I

    const/4 v6, 0x0

    new-array v5, v6, [I

    move-object v0, p1

    move-object v1, p2

    move v3, p3

    .line 293
    invoke-static/range {v0 .. v5}, Lcom/google/android/material/internal/ThemeEnforcement;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 299
    sget p2, Lcom/google/android/material/R$styleable;->Chip_ensureMinTouchTargetSize:I

    invoke-virtual {p1, p2, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/google/android/material/chip/Chip;->ensureMinTouchTargetSize:Z

    .line 302
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getContext()Landroid/content/Context;

    move-result-object p2

    const/16 p3, 0x30

    invoke-static {p2, p3}, Lcom/google/android/material/internal/ViewUtils;->dpToPx(Landroid/content/Context;I)F

    move-result p2

    float-to-double p2, p2

    invoke-static {p2, p3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p2

    double-to-float p2, p2

    .line 303
    sget p3, Lcom/google/android/material/R$styleable;->Chip_chipMinTouchTargetSize:I

    .line 306
    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-double p2, p2

    .line 305
    invoke-static {p2, p3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p2

    double-to-int p2, p2

    iput p2, p0, Lcom/google/android/material/chip/Chip;->minTouchTargetSize:I

    .line 308
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private initOutlineProvider()V
    .registers 3

    .line 381
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_e

    .line 382
    new-instance v0, Lcom/google/android/material/chip/Chip$2;

    invoke-direct {v0, p0}, Lcom/google/android/material/chip/Chip$2;-><init>(Lcom/google/android/material/chip/Chip;)V

    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/Chip;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    :cond_e
    return-void
.end method

.method private insetChipBackgroundDrawable(IIII)V
    .registers 12

    .line 2275
    new-instance v6, Landroid/graphics/drawable/InsetDrawable;

    iget-object v1, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    move-object v0, v6

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    iput-object v6, p0, Lcom/google/android/material/chip/Chip;->insetBackgroundDrawable:Landroid/graphics/drawable/InsetDrawable;

    return-void
.end method

.method private removeBackgroundInset()V
    .registers 2

    .line 2265
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->insetBackgroundDrawable:Landroid/graphics/drawable/InsetDrawable;

    if-eqz v0, :cond_16

    const/4 v0, 0x0

    .line 2266
    iput-object v0, p0, Lcom/google/android/material/chip/Chip;->insetBackgroundDrawable:Landroid/graphics/drawable/InsetDrawable;

    const/4 v0, 0x0

    .line 2267
    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/Chip;->setMinWidth(I)V

    .line 2268
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getChipMinHeight()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/Chip;->setMinHeight(I)V

    .line 2269
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->updateBackgroundDrawable()V

    :cond_16
    return-void
.end method

.method private setCloseIconHovered(Z)V
    .registers 3

    .line 871
    iget-boolean v0, p0, Lcom/google/android/material/chip/Chip;->closeIconHovered:Z

    if-eq v0, p1, :cond_9

    .line 872
    iput-boolean p1, p0, Lcom/google/android/material/chip/Chip;->closeIconHovered:Z

    .line 873
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->refreshDrawableState()V

    :cond_9
    return-void
.end method

.method private setCloseIconPressed(Z)V
    .registers 3

    .line 864
    iget-boolean v0, p0, Lcom/google/android/material/chip/Chip;->closeIconPressed:Z

    if-eq v0, p1, :cond_9

    .line 865
    iput-boolean p1, p0, Lcom/google/android/material/chip/Chip;->closeIconPressed:Z

    .line 866
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->refreshDrawableState()V

    :cond_9
    return-void
.end method

.method private unapplyChipDrawable(Lcom/google/android/material/chip/ChipDrawable;)V
    .registers 3

    if-eqz p1, :cond_6

    const/4 v0, 0x0

    .line 456
    invoke-virtual {p1, v0}, Lcom/google/android/material/chip/ChipDrawable;->setDelegate(Lcom/google/android/material/chip/ChipDrawable$Delegate;)V

    :cond_6
    return-void
.end method

.method private updateAccessibilityDelegate()V
    .registers 3

    .line 280
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_7

    return-void

    .line 283
    :cond_7
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->hasCloseIcon()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->isCloseIconVisible()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 284
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->touchHelper:Lcom/google/android/material/chip/Chip$ChipTouchHelper;

    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    goto :goto_1d

    :cond_19
    const/4 v0, 0x0

    .line 286
    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    :goto_1d
    return-void
.end method

.method private updateBackgroundDrawable()V
    .registers 3

    .line 417
    sget-boolean v0, Lcom/google/android/material/ripple/RippleUtils;->USE_FRAMEWORK_RIPPLE:Z

    if-eqz v0, :cond_8

    .line 418
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->updateFrameworkRippleBackground()V

    goto :goto_18

    .line 420
    :cond_8
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/material/chip/ChipDrawable;->setUseCompatRipple(Z)V

    .line 421
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 422
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->ensureChipDrawableHasCallback()V

    :goto_18
    return-void
.end method

.method private updateFrameworkRippleBackground()V
    .registers 5

    .line 444
    new-instance v0, Landroid/graphics/drawable/RippleDrawable;

    iget-object v1, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    .line 446
    invoke-virtual {v1}, Lcom/google/android/material/chip/ChipDrawable;->getRippleColor()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/material/ripple/RippleUtils;->sanitizeRippleDrawableColor(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 447
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lcom/google/android/material/chip/Chip;->ripple:Landroid/graphics/drawable/RippleDrawable;

    .line 449
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/material/chip/ChipDrawable;->setUseCompatRipple(Z)V

    .line 451
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->ripple:Landroid/graphics/drawable/RippleDrawable;

    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private updatePaddingInternal()V
    .registers 5

    .line 316
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_42

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-nez v0, :cond_f

    goto :goto_42

    .line 321
    :cond_f
    invoke-virtual {v0}, Lcom/google/android/material/chip/ChipDrawable;->getChipEndPadding()F

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    .line 322
    invoke-virtual {v1}, Lcom/google/android/material/chip/ChipDrawable;->getTextEndPadding()F

    move-result v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    .line 323
    invoke-virtual {v1}, Lcom/google/android/material/chip/ChipDrawable;->calculateCloseIconWidth()F

    move-result v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 324
    iget-object v1, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    .line 326
    invoke-virtual {v1}, Lcom/google/android/material/chip/ChipDrawable;->getChipStartPadding()F

    move-result v1

    iget-object v2, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    .line 327
    invoke-virtual {v2}, Lcom/google/android/material/chip/ChipDrawable;->getTextStartPadding()F

    move-result v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    .line 328
    invoke-virtual {v2}, Lcom/google/android/material/chip/ChipDrawable;->calculateChipIconWidth()F

    move-result v2

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 331
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getPaddingBottom()I

    move-result v3

    .line 330
    invoke-static {p0, v1, v2, v0, v3}, Landroidx/core/view/ViewCompat;->setPaddingRelative(Landroid/view/View;IIII)V

    :cond_42
    :goto_42
    return-void
.end method

.method private updateTextPaintDrawState()V
    .registers 5

    .line 1378
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    .line 1379
    iget-object v1, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v1, :cond_e

    .line 1380
    invoke-virtual {v1}, Lcom/google/android/material/chip/ChipDrawable;->getState()[I

    move-result-object v1

    iput-object v1, v0, Landroid/text/TextPaint;->drawableState:[I

    .line 1382
    :cond_e
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->getTextAppearance()Lcom/google/android/material/resources/TextAppearance;

    move-result-object v1

    if-eqz v1, :cond_1d

    .line 1384
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/material/chip/Chip;->fontCallback:Lcom/google/android/material/resources/TextAppearanceFontCallback;

    invoke-virtual {v1, v2, v0, v3}, Lcom/google/android/material/resources/TextAppearance;->updateDrawState(Landroid/content/Context;Landroid/text/TextPaint;Lcom/google/android/material/resources/TextAppearanceFontCallback;)V

    :cond_1d
    return-void
.end method

.method private validateAttributes(Landroid/util/AttributeSet;)V
    .registers 6

    if-nez p1, :cond_3

    return-void

    :cond_3
    const-string v0, "http://schemas.android.com/apk/res/android"

    const-string v1, "background"

    .line 351
    invoke-interface {p1, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Chip"

    if-eqz v1, :cond_14

    const-string v1, "Do not set the background; Chip manages its own background drawable."

    .line 352
    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    const-string v1, "drawableLeft"

    .line 354
    invoke-interface {p1, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_84

    const-string v1, "drawableStart"

    .line 357
    invoke-interface {p1, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_7c

    const-string v1, "drawableEnd"

    .line 360
    invoke-interface {p1, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "Please set end drawable using R.attr#closeIcon."

    if-nez v1, :cond_76

    const-string v1, "drawableRight"

    .line 363
    invoke-interface {p1, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_70

    const-string v1, "singleLine"

    const/4 v3, 0x1

    .line 366
    invoke-interface {p1, v0, v1, v3}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_68

    const-string v1, "lines"

    .line 367
    invoke-interface {p1, v0, v1, v3}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_68

    const-string v1, "minLines"

    .line 368
    invoke-interface {p1, v0, v1, v3}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_68

    const-string v1, "maxLines"

    .line 369
    invoke-interface {p1, v0, v1, v3}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_68

    const-string v1, "gravity"

    const v3, 0x800013

    .line 373
    invoke-interface {p1, v0, v1, v3}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p1

    if-eq p1, v3, :cond_67

    const-string p1, "Chip text must be vertically center and start aligned"

    .line 376
    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_67
    return-void

    .line 370
    :cond_68
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Chip does not support multi-line text"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 364
    :cond_70
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 361
    :cond_76
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 358
    :cond_7c
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Please set start drawable using R.attr#chipIcon."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 355
    :cond_84
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Please set left drawable using R.attr#chipIcon."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 826
    invoke-direct {p0, p1}, Lcom/google/android/material/chip/Chip;->handleAccessibilityExit(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->touchHelper:Lcom/google/android/material/chip/Chip$ChipTouchHelper;

    .line 827
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/Chip$ChipTouchHelper;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 828
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_15

    goto :goto_17

    :cond_15
    const/4 p1, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 p1, 0x1

    :goto_18
    return p1
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 4

    .line 833
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->touchHelper:Lcom/google/android/material/chip/Chip$ChipTouchHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/Chip$ChipTouchHelper;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 840
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->touchHelper:Lcom/google/android/material/chip/Chip$ChipTouchHelper;

    .line 841
    invoke-virtual {v0}, Lcom/google/android/material/chip/Chip$ChipTouchHelper;->getKeyboardFocusedVirtualViewId()I

    move-result v0

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_14

    const/4 p1, 0x1

    return p1

    .line 844
    :cond_14
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected drawableStateChanged()V
    .registers 3

    .line 879
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatCheckBox;->drawableStateChanged()V

    .line 883
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Lcom/google/android/material/chip/ChipDrawable;->isCloseIconStateful()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 884
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->createCloseIconDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/chip/ChipDrawable;->setCloseIconState([I)Z

    move-result v0

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    if-eqz v0, :cond_1e

    .line 888
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->invalidate()V

    :cond_1e
    return-void
.end method

.method public ensureAccessibleTouchTarget(I)Z
    .registers 7

    .line 2222
    iput p1, p0, Lcom/google/android/material/chip/Chip;->minTouchTargetSize:I

    .line 2223
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->shouldEnsureMinTouchTargetSize()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_d

    .line 2224
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->removeBackgroundInset()V

    return v1

    .line 2228
    :cond_d
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    invoke-virtual {v0}, Lcom/google/android/material/chip/ChipDrawable;->getIntrinsicHeight()I

    move-result v0

    sub-int v0, p1, v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2229
    iget-object v2, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    invoke-virtual {v2}, Lcom/google/android/material/chip/ChipDrawable;->getIntrinsicWidth()I

    move-result v2

    sub-int v2, p1, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-gtz v2, :cond_2d

    if-gtz v0, :cond_2d

    .line 2232
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->removeBackgroundInset()V

    return v1

    :cond_2d
    if-lez v2, :cond_32

    .line 2236
    div-int/lit8 v2, v2, 0x2

    goto :goto_33

    :cond_32
    const/4 v2, 0x0

    :goto_33
    if-lez v0, :cond_37

    .line 2237
    div-int/lit8 v1, v0, 0x2

    .line 2239
    :cond_37
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->insetBackgroundDrawable:Landroid/graphics/drawable/InsetDrawable;

    const/4 v3, 0x1

    if-eqz v0, :cond_57

    .line 2240
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 2241
    iget-object v4, p0, Lcom/google/android/material/chip/Chip;->insetBackgroundDrawable:Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {v4, v0}, Landroid/graphics/drawable/InsetDrawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 2242
    iget v4, v0, Landroid/graphics/Rect;->top:I

    if-ne v4, v1, :cond_57

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    if-ne v4, v1, :cond_57

    iget v4, v0, Landroid/graphics/Rect;->left:I

    if-ne v4, v2, :cond_57

    iget v0, v0, Landroid/graphics/Rect;->right:I

    if-ne v0, v2, :cond_57

    return v3

    .line 2249
    :cond_57
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v0, v4, :cond_70

    .line 2250
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getMinHeight()I

    move-result v0

    if-eq v0, p1, :cond_66

    .line 2251
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->setMinHeight(I)V

    .line 2253
    :cond_66
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getMinWidth()I

    move-result v0

    if-eq v0, p1, :cond_76

    .line 2254
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->setMinWidth(I)V

    goto :goto_76

    .line 2257
    :cond_70
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->setMinHeight(I)V

    .line 2258
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->setMinWidth(I)V

    .line 2260
    :cond_76
    :goto_76
    invoke-direct {p0, v2, v1, v2, v1}, Lcom/google/android/material/chip/Chip;->insetChipBackgroundDrawable(IIII)V

    return v3
.end method

.method public getBackgroundDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 436
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->insetBackgroundDrawable:Landroid/graphics/drawable/InsetDrawable;

    if-nez v0, :cond_6

    .line 437
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    :cond_6
    return-object v0
.end method

.method public getCheckedIcon()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 1822
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/google/android/material/chip/ChipDrawable;->getCheckedIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public getChipBackgroundColor()Landroid/content/res/ColorStateList;
    .registers 2

    .line 1071
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/google/android/material/chip/ChipDrawable;->getChipBackgroundColor()Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public getChipCornerRadius()F
    .registers 2

    .line 1139
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/google/android/material/chip/ChipDrawable;->getChipCornerRadius()F

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public getChipDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 399
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    return-object v0
.end method

.method public getChipEndPadding()F
    .registers 2

    .line 2164
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/google/android/material/chip/ChipDrawable;->getChipEndPadding()F

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public getChipIcon()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 1453
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/google/android/material/chip/ChipDrawable;->getChipIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public getChipIconSize()F
    .registers 2

    .line 1523
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/google/android/material/chip/ChipDrawable;->getChipIconSize()F

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public getChipIconTint()Landroid/content/res/ColorStateList;
    .registers 2

    .line 1488
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/google/android/material/chip/ChipDrawable;->getChipIconTint()Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public getChipMinHeight()F
    .registers 2

    .line 1105
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/google/android/material/chip/ChipDrawable;->getChipMinHeight()F

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public getChipStartPadding()F
    .registers 2

    .line 1926
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/google/android/material/chip/ChipDrawable;->getChipStartPadding()F

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public getChipStrokeColor()Landroid/content/res/ColorStateList;
    .registers 2

    .line 1187
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/google/android/material/chip/ChipDrawable;->getChipStrokeColor()Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public getChipStrokeWidth()F
    .registers 2

    .line 1221
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/google/android/material/chip/ChipDrawable;->getChipStrokeWidth()F

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public getChipText()Ljava/lang/CharSequence;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1296
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getCloseIcon()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 1609
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/google/android/material/chip/ChipDrawable;->getCloseIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public getCloseIconContentDescription()Ljava/lang/CharSequence;
    .registers 2

    .line 1725
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/google/android/material/chip/ChipDrawable;->getCloseIconContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public getCloseIconEndPadding()F
    .registers 2

    .line 2130
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/google/android/material/chip/ChipDrawable;->getCloseIconEndPadding()F

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public getCloseIconSize()F
    .registers 2

    .line 1680
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/google/android/material/chip/ChipDrawable;->getCloseIconSize()F

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public getCloseIconStartPadding()F
    .registers 2

    .line 2096
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/google/android/material/chip/ChipDrawable;->getCloseIconStartPadding()F

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public getCloseIconTint()Landroid/content/res/ColorStateList;
    .registers 2

    .line 1646
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/google/android/material/chip/ChipDrawable;->getCloseIconTint()Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public getEllipsize()Landroid/text/TextUtils$TruncateAt;
    .registers 2

    .line 613
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/google/android/material/chip/ChipDrawable;->getEllipsize()Landroid/text/TextUtils$TruncateAt;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public getFocusedRect(Landroid/graphics/Rect;)V
    .registers 4

    .line 855
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->touchHelper:Lcom/google/android/material/chip/Chip$ChipTouchHelper;

    invoke-virtual {v0}, Lcom/google/android/material/chip/Chip$ChipTouchHelper;->getKeyboardFocusedVirtualViewId()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_16

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->touchHelper:Lcom/google/android/material/chip/Chip$ChipTouchHelper;

    .line 856
    invoke-virtual {v0}, Lcom/google/android/material/chip/Chip$ChipTouchHelper;->getAccessibilityFocusedVirtualViewId()I

    move-result v0

    if-ne v0, v1, :cond_12

    goto :goto_16

    .line 859
    :cond_12
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->getFocusedRect(Landroid/graphics/Rect;)V

    goto :goto_1d

    .line 857
    :cond_16
    :goto_16
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->getCloseIconTouchBoundsInt()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :goto_1d
    return-void
.end method

.method public getHideMotionSpec()Lcom/google/android/material/animation/MotionSpec;
    .registers 2

    .line 1892
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/google/android/material/chip/ChipDrawable;->getHideMotionSpec()Lcom/google/android/material/animation/MotionSpec;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public getIconEndPadding()F
    .registers 2

    .line 1994
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/google/android/material/chip/ChipDrawable;->getIconEndPadding()F

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public getIconStartPadding()F
    .registers 2

    .line 1960
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/google/android/material/chip/ChipDrawable;->getIconStartPadding()F

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public getRippleColor()Landroid/content/res/ColorStateList;
    .registers 2

    .line 1256
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/google/android/material/chip/ChipDrawable;->getRippleColor()Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public getShapeAppearanceModel()Lcom/google/android/material/shape/ShapeAppearanceModel;
    .registers 2

    .line 1163
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    invoke-virtual {v0}, Lcom/google/android/material/chip/ChipDrawable;->getShapeAppearanceModel()Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object v0

    return-object v0
.end method

.method public getShowMotionSpec()Lcom/google/android/material/animation/MotionSpec;
    .registers 2

    .line 1857
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/google/android/material/chip/ChipDrawable;->getShowMotionSpec()Lcom/google/android/material/animation/MotionSpec;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public getTextEndPadding()F
    .registers 2

    .line 2062
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/google/android/material/chip/ChipDrawable;->getTextEndPadding()F

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public getTextStartPadding()F
    .registers 2

    .line 2028
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/google/android/material/chip/ChipDrawable;->getTextStartPadding()F

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public isCheckable()Z
    .registers 2

    .line 1735
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/google/android/material/chip/ChipDrawable;->isCheckable()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public isCloseIconVisible()Z
    .registers 2

    .line 1557
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/google/android/material/chip/ChipDrawable;->isCloseIconVisible()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method protected onAttachedToWindow()V
    .registers 2

    .line 248
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatCheckBox;->onAttachedToWindow()V

    .line 250
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    invoke-static {p0, v0}, Lcom/google/android/material/shape/MaterialShapeUtils;->setParentAbsoluteElevation(Landroid/view/View;Lcom/google/android/material/shape/MaterialShapeDrawable;)V

    return-void
.end method

.method public onChipDrawableSizeChange()V
    .registers 3

    .line 672
    iget v0, p0, Lcom/google/android/material/chip/Chip;->minTouchTargetSize:I

    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/Chip;->ensureAccessibleTouchTarget(I)Z

    .line 673
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->updateBackgroundDrawable()V

    .line 674
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->updatePaddingInternal()V

    .line 675
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->requestLayout()V

    .line 676
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_17

    .line 677
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->invalidateOutline()V

    :cond_17
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .registers 3

    add-int/lit8 p1, p1, 0x2

    .line 466
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->onCreateDrawableState(I)[I

    move-result-object p1

    .line 467
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 468
    sget-object v0, Lcom/google/android/material/chip/Chip;->SELECTED_STATE:[I

    invoke-static {p1, v0}, Lcom/google/android/material/chip/Chip;->mergeDrawableStates([I[I)[I

    .line 470
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->isCheckable()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 471
    sget-object v0, Lcom/google/android/material/chip/Chip;->CHECKABLE_STATE_SET:[I

    invoke-static {p1, v0}, Lcom/google/android/material/chip/Chip;->mergeDrawableStates([I[I)[I

    :cond_1c
    return-object p1
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .registers 5

    .line 849
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatCheckBox;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 850
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->touchHelper:Lcom/google/android/material/chip/Chip$ChipTouchHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/material/chip/Chip$ChipTouchHelper;->onFocusChanged(ZILandroid/graphics/Rect;)V

    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 5

    .line 774
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_11

    const/16 v1, 0xa

    if-eq v0, v1, :cond_c

    goto :goto_24

    :cond_c
    const/4 v0, 0x0

    .line 780
    invoke-direct {p0, v0}, Lcom/google/android/material/chip/Chip;->setCloseIconHovered(Z)V

    goto :goto_24

    .line 777
    :cond_11
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->getCloseIconTouchBounds()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/material/chip/Chip;->setCloseIconHovered(Z)V

    .line 785
    :goto_24
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 3

    .line 264
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 265
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->isCheckable()Z

    move-result v0

    if-nez v0, :cond_16

    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_16

    :cond_10
    const-string v0, "android.view.View"

    .line 271
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    goto :goto_24

    .line 267
    :cond_16
    :goto_16
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->isCheckable()Z

    move-result v0

    if-eqz v0, :cond_1f

    const-string v0, "android.widget.CompoundButton"

    goto :goto_21

    :cond_1f
    const-string v0, "android.widget.Button"

    .line 266
    :goto_21
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 273
    :goto_24
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->isCheckable()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    .line 274
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->isClickable()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    return-void
.end method

.method public onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;
    .registers 4

    .line 964
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->getCloseIconTouchBounds()Landroid/graphics/RectF;

    move-result-object p2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {p2, v0, p1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    if-eqz p1, :cond_23

    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_23

    .line 965
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getContext()Landroid/content/Context;

    move-result-object p1

    const/16 p2, 0x3ea

    invoke-static {p1, p2}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object p1

    return-object p1

    :cond_23
    const/4 p1, 0x0

    return-object p1
.end method

.method public onRtlPropertiesChanged(I)V
    .registers 3

    .line 337
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->onRtlPropertiesChanged(I)V

    .line 341
    iget v0, p0, Lcom/google/android/material/chip/Chip;->lastLayoutDirection:I

    if-eq v0, p1, :cond_c

    .line 342
    iput p1, p0, Lcom/google/android/material/chip/Chip;->lastLayoutDirection:I

    .line 343
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->updatePaddingInternal()V

    :cond_c
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7

    .line 740
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 741
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->getCloseIconTouchBounds()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_39

    if-eq v0, v3, :cond_2b

    const/4 v4, 0x2

    if-eq v0, v4, :cond_21

    const/4 v1, 0x3

    if-eq v0, v1, :cond_34

    goto :goto_40

    .line 750
    :cond_21
    iget-boolean v0, p0, Lcom/google/android/material/chip/Chip;->closeIconPressed:Z

    if-eqz v0, :cond_40

    if-nez v1, :cond_3e

    .line 752
    invoke-direct {p0, v2}, Lcom/google/android/material/chip/Chip;->setCloseIconPressed(Z)V

    goto :goto_3e

    .line 758
    :cond_2b
    iget-boolean v0, p0, Lcom/google/android/material/chip/Chip;->closeIconPressed:Z

    if-eqz v0, :cond_34

    .line 759
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->performCloseIconClick()Z

    const/4 v0, 0x1

    goto :goto_35

    :cond_34
    const/4 v0, 0x0

    .line 764
    :goto_35
    invoke-direct {p0, v2}, Lcom/google/android/material/chip/Chip;->setCloseIconPressed(Z)V

    goto :goto_41

    :cond_39
    if-eqz v1, :cond_40

    .line 745
    invoke-direct {p0, v3}, Lcom/google/android/material/chip/Chip;->setCloseIconPressed(Z)V

    :cond_3e
    :goto_3e
    const/4 v0, 0x1

    goto :goto_41

    :cond_40
    :goto_40
    const/4 v0, 0x0

    :goto_41
    if-nez v0, :cond_49

    .line 769
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_4a

    :cond_49
    const/4 v2, 0x1

    :cond_4a
    return v2
.end method

.method public performCloseIconClick()Z
    .registers 4

    const/4 v0, 0x0

    .line 721
    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/Chip;->playSoundEffect(I)V

    .line 724
    iget-object v1, p0, Lcom/google/android/material/chip/Chip;->onCloseIconClickListener:Landroid/view/View$OnClickListener;

    const/4 v2, 0x1

    if-eqz v1, :cond_d

    .line 725
    invoke-interface {v1, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    const/4 v0, 0x1

    .line 731
    :cond_d
    iget-object v1, p0, Lcom/google/android/material/chip/Chip;->touchHelper:Lcom/google/android/material/chip/Chip$ChipTouchHelper;

    invoke-virtual {v1, v2, v2}, Lcom/google/android/material/chip/Chip$ChipTouchHelper;->sendEventForVirtualView(II)Z

    return v0
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .line 506
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eq p1, v0, :cond_12

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->ripple:Landroid/graphics/drawable/RippleDrawable;

    if-eq p1, v0, :cond_12

    const-string p1, "Chip"

    const-string v0, "Do not set the background; Chip manages its own background drawable."

    .line 507
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    .line 509
    :cond_12
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_15
    return-void
.end method

.method public setBackgroundColor(I)V
    .registers 3

    const-string p1, "Chip"

    const-string v0, "Do not set the background color; Chip manages its own background drawable."

    .line 496
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .line 515
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eq p1, v0, :cond_12

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->ripple:Landroid/graphics/drawable/RippleDrawable;

    if-eq p1, v0, :cond_12

    const-string p1, "Chip"

    const-string v0, "Do not set the background drawable; Chip manages its own background drawable."

    .line 516
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    .line 518
    :cond_12
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_15
    return-void
.end method

.method public setBackgroundResource(I)V
    .registers 3

    const-string p1, "Chip"

    const-string v0, "Do not set the background resource; Chip manages its own background drawable."

    .line 501
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .registers 3

    const-string p1, "Chip"

    const-string v0, "Do not set the background tint list; Chip manages its own background drawable."

    .line 486
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .registers 3

    const-string p1, "Chip"

    const-string v0, "Do not set the background tint mode; Chip manages its own background drawable."

    .line 491
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setCheckable(Z)V
    .registers 3

    .line 1757
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_7

    .line 1758
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setCheckable(Z)V

    :cond_7
    return-void
.end method

.method public setCheckableResource(I)V
    .registers 3

    .line 1745
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_7

    .line 1746
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setCheckableResource(I)V

    :cond_7
    return-void
.end method

.method public setChecked(Z)V
    .registers 3

    .line 683
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-nez v0, :cond_7

    .line 685
    iput-boolean p1, p0, Lcom/google/android/material/chip/Chip;->deferredCheckedValue:Z

    goto :goto_1d

    .line 686
    :cond_7
    invoke-virtual {v0}, Lcom/google/android/material/chip/ChipDrawable;->isCheckable()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 687
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->isChecked()Z

    move-result v0

    .line 688
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->setChecked(Z)V

    if-eq v0, p1, :cond_1d

    .line 691
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->onCheckedChangeListenerInternal:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    if-eqz v0, :cond_1d

    .line 692
    invoke-interface {v0, p0, p1}, Landroid/widget/CompoundButton$OnCheckedChangeListener;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    :cond_1d
    :goto_1d
    return-void
.end method

.method public setCheckedIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .line 1844
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_7

    .line 1845
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setCheckedIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_7
    return-void
.end method

.method public setCheckedIconEnabled(Z)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1811
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->setCheckedIconVisible(Z)V

    return-void
.end method

.method public setCheckedIconEnabledResource(I)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1805
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->setCheckedIconVisible(I)V

    return-void
.end method

.method public setCheckedIconResource(I)V
    .registers 3

    .line 1832
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_7

    .line 1833
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setCheckedIconResource(I)V

    :cond_7
    return-void
.end method

.method public setCheckedIconVisible(I)V
    .registers 3

    .line 1785
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_7

    .line 1786
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setCheckedIconVisible(I)V

    :cond_7
    return-void
.end method

.method public setCheckedIconVisible(Z)V
    .registers 3

    .line 1797
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_7

    .line 1798
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setCheckedIconVisible(Z)V

    :cond_7
    return-void
.end method

.method public setChipBackgroundColor(Landroid/content/res/ColorStateList;)V
    .registers 3

    .line 1093
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_7

    .line 1094
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setChipBackgroundColor(Landroid/content/res/ColorStateList;)V

    :cond_7
    return-void
.end method

.method public setChipBackgroundColorResource(I)V
    .registers 3

    .line 1081
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_7

    .line 1082
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setChipBackgroundColorResource(I)V

    :cond_7
    return-void
.end method

.method public setChipCornerRadius(F)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1174
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_7

    .line 1175
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setChipCornerRadius(F)V

    :cond_7
    return-void
.end method

.method public setChipCornerRadiusResource(I)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1150
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_7

    .line 1151
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setChipCornerRadiusResource(I)V

    :cond_7
    return-void
.end method

.method public setChipDrawable(Lcom/google/android/material/chip/ChipDrawable;)V
    .registers 3

    .line 404
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eq v0, p1, :cond_1a

    .line 405
    invoke-direct {p0, v0}, Lcom/google/android/material/chip/Chip;->unapplyChipDrawable(Lcom/google/android/material/chip/ChipDrawable;)V

    .line 406
    iput-object p1, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    const/4 v0, 0x0

    .line 409
    invoke-virtual {p1, v0}, Lcom/google/android/material/chip/ChipDrawable;->setShouldDrawText(Z)V

    .line 410
    iget-object p1, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    invoke-direct {p0, p1}, Lcom/google/android/material/chip/Chip;->applyChipDrawable(Lcom/google/android/material/chip/ChipDrawable;)V

    .line 411
    iget p1, p0, Lcom/google/android/material/chip/Chip;->minTouchTargetSize:I

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->ensureAccessibleTouchTarget(I)Z

    .line 412
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->updateBackgroundDrawable()V

    :cond_1a
    return-void
.end method

.method public setChipEndPadding(F)V
    .registers 3

    .line 2186
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_7

    .line 2187
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setChipEndPadding(F)V

    :cond_7
    return-void
.end method

.method public setChipEndPaddingResource(I)V
    .registers 3

    .line 2174
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_7

    .line 2175
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setChipEndPaddingResource(I)V

    :cond_7
    return-void
.end method

.method public setChipIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .line 1475
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_7

    .line 1476
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setChipIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_7
    return-void
.end method

.method public setChipIconEnabled(Z)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1442
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->setChipIconVisible(Z)V

    return-void
.end method

.method public setChipIconEnabledResource(I)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1436
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->setChipIconVisible(I)V

    return-void
.end method

.method public setChipIconResource(I)V
    .registers 3

    .line 1463
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_7

    .line 1464
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setChipIconResource(I)V

    :cond_7
    return-void
.end method

.method public setChipIconSize(F)V
    .registers 3

    .line 1545
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_7

    .line 1546
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setChipIconSize(F)V

    :cond_7
    return-void
.end method

.method public setChipIconSizeResource(I)V
    .registers 3

    .line 1533
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_7

    .line 1534
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setChipIconSizeResource(I)V

    :cond_7
    return-void
.end method

.method public setChipIconTint(Landroid/content/res/ColorStateList;)V
    .registers 3

    .line 1511
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_7

    .line 1512
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setChipIconTint(Landroid/content/res/ColorStateList;)V

    :cond_7
    return-void
.end method

.method public setChipIconTintResource(I)V
    .registers 3

    .line 1498
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_7

    .line 1499
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setChipIconTintResource(I)V

    :cond_7
    return-void
.end method

.method public setChipIconVisible(I)V
    .registers 3

    .line 1416
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_7

    .line 1417
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setChipIconVisible(I)V

    :cond_7
    return-void
.end method

.method public setChipIconVisible(Z)V
    .registers 3

    .line 1428
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_7

    .line 1429
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setChipIconVisible(Z)V

    :cond_7
    return-void
.end method

.method public setChipMinHeight(F)V
    .registers 3

    .line 1127
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_7

    .line 1128
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setChipMinHeight(F)V

    :cond_7
    return-void
.end method

.method public setChipMinHeightResource(I)V
    .registers 3

    .line 1115
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_7

    .line 1116
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setChipMinHeightResource(I)V

    :cond_7
    return-void
.end method

.method public setChipStartPadding(F)V
    .registers 3

    .line 1948
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_7

    .line 1949
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setChipStartPadding(F)V

    :cond_7
    return-void
.end method

.method public setChipStartPaddingResource(I)V
    .registers 3

    .line 1936
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_7

    .line 1937
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setChipStartPaddingResource(I)V

    :cond_7
    return-void
.end method

.method public setChipStrokeColor(Landroid/content/res/ColorStateList;)V
    .registers 3

    .line 1209
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_7

    .line 1210
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setChipStrokeColor(Landroid/content/res/ColorStateList;)V

    :cond_7
    return-void
.end method

.method public setChipStrokeColorResource(I)V
    .registers 3

    .line 1197
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_7

    .line 1198
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setChipStrokeColorResource(I)V

    :cond_7
    return-void
.end method

.method public setChipStrokeWidth(F)V
    .registers 3

    .line 1243
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_7

    .line 1244
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setChipStrokeWidth(F)V

    :cond_7
    return-void
.end method

.method public setChipStrokeWidthResource(I)V
    .registers 3

    .line 1231
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_7

    .line 1232
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setChipStrokeWidthResource(I)V

    :cond_7
    return-void
.end method

.method public setChipText(Ljava/lang/CharSequence;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1332
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setChipTextResource(I)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1326
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setCloseIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .line 1632
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_7

    .line 1633
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setCloseIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1635
    :cond_7
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->updateAccessibilityDelegate()V

    return-void
.end method

.method public setCloseIconContentDescription(Ljava/lang/CharSequence;)V
    .registers 3

    .line 1713
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_7

    .line 1714
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setCloseIconContentDescription(Ljava/lang/CharSequence;)V

    :cond_7
    return-void
.end method

.method public setCloseIconEnabled(Z)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1598
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->setCloseIconVisible(Z)V

    return-void
.end method

.method public setCloseIconEnabledResource(I)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1592
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->setCloseIconVisible(I)V

    return-void
.end method

.method public setCloseIconEndPadding(F)V
    .registers 3

    .line 2152
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_7

    .line 2153
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setCloseIconEndPadding(F)V

    :cond_7
    return-void
.end method

.method public setCloseIconEndPaddingResource(I)V
    .registers 3

    .line 2140
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_7

    .line 2141
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setCloseIconEndPaddingResource(I)V

    :cond_7
    return-void
.end method

.method public setCloseIconResource(I)V
    .registers 3

    .line 1619
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_7

    .line 1620
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setCloseIconResource(I)V

    .line 1622
    :cond_7
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->updateAccessibilityDelegate()V

    return-void
.end method

.method public setCloseIconSize(F)V
    .registers 3

    .line 1702
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_7

    .line 1703
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setCloseIconSize(F)V

    :cond_7
    return-void
.end method

.method public setCloseIconSizeResource(I)V
    .registers 3

    .line 1690
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_7

    .line 1691
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setCloseIconSizeResource(I)V

    :cond_7
    return-void
.end method

.method public setCloseIconStartPadding(F)V
    .registers 3

    .line 2118
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_7

    .line 2119
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setCloseIconStartPadding(F)V

    :cond_7
    return-void
.end method

.method public setCloseIconStartPaddingResource(I)V
    .registers 3

    .line 2106
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_7

    .line 2107
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setCloseIconStartPaddingResource(I)V

    :cond_7
    return-void
.end method

.method public setCloseIconTint(Landroid/content/res/ColorStateList;)V
    .registers 3

    .line 1668
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_7

    .line 1669
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setCloseIconTint(Landroid/content/res/ColorStateList;)V

    :cond_7
    return-void
.end method

.method public setCloseIconTintResource(I)V
    .registers 3

    .line 1656
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_7

    .line 1657
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setCloseIconTintResource(I)V

    :cond_7
    return-void
.end method

.method public setCloseIconVisible(I)V
    .registers 3

    .line 1573
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->setCloseIconVisible(Z)V

    return-void
.end method

.method public setCloseIconVisible(Z)V
    .registers 3

    .line 1583
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_7

    .line 1584
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setCloseIconVisible(Z)V

    .line 1586
    :cond_7
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->updateAccessibilityDelegate()V

    return-void
.end method

.method public setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .registers 5

    if-nez p1, :cond_10

    if-nez p3, :cond_8

    .line 535
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/appcompat/widget/AppCompatCheckBox;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 532
    :cond_8
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Please set end drawable using R.attr#closeIcon."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 529
    :cond_10
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Please set start drawable using R.attr#chipIcon."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .registers 5

    if-nez p1, :cond_10

    if-nez p3, :cond_8

    .line 579
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/appcompat/widget/AppCompatCheckBox;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 576
    :cond_8
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Please set end drawable using R.attr#closeIcon."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 573
    :cond_10
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Please set start drawable using R.attr#chipIcon."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V
    .registers 5

    if-nez p1, :cond_10

    if-nez p3, :cond_8

    .line 592
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/appcompat/widget/AppCompatCheckBox;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    return-void

    .line 589
    :cond_8
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Please set end drawable using R.attr#closeIcon."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 586
    :cond_10
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Please set start drawable using R.attr#chipIcon."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .registers 5

    if-nez p1, :cond_10

    if-nez p3, :cond_8

    .line 607
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/appcompat/widget/AppCompatCheckBox;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 605
    :cond_8
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Please set end drawable using R.attr#closeIcon."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 602
    :cond_10
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Please set start drawable using R.attr#chipIcon."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setCompoundDrawablesWithIntrinsicBounds(IIII)V
    .registers 5

    if-nez p1, :cond_10

    if-nez p3, :cond_8

    .line 547
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/appcompat/widget/AppCompatCheckBox;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    return-void

    .line 544
    :cond_8
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Please set end drawable using R.attr#closeIcon."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 541
    :cond_10
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Please set start drawable using R.attr#chipIcon."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .registers 5

    if-nez p1, :cond_10

    if-nez p3, :cond_8

    .line 563
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/appcompat/widget/AppCompatCheckBox;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 560
    :cond_8
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Please set right drawable using R.attr#closeIcon."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 557
    :cond_10
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Please set left drawable using R.attr#chipIcon."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setElevation(F)V
    .registers 3

    .line 256
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->setElevation(F)V

    .line 257
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_a

    .line 258
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setElevation(F)V

    :cond_a
    return-void
.end method

.method public setEllipsize(Landroid/text/TextUtils$TruncateAt;)V
    .registers 3

    .line 618
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-nez v0, :cond_5

    return-void

    .line 621
    :cond_5
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-eq p1, v0, :cond_14

    .line 624
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 625
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_13

    .line 626
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    :cond_13
    return-void

    .line 622
    :cond_14
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Text within a chip are not allowed to scroll."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setEnsureMinTouchTargetSize(Z)V
    .registers 2

    .line 2210
    iput-boolean p1, p0, Lcom/google/android/material/chip/Chip;->ensureMinTouchTargetSize:Z

    .line 2211
    iget p1, p0, Lcom/google/android/material/chip/Chip;->minTouchTargetSize:I

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->ensureAccessibleTouchTarget(I)Z

    return-void
.end method

.method public setGravity(I)V
    .registers 3

    const v0, 0x800013

    if-eq p1, v0, :cond_d

    const-string p1, "Chip"

    const-string v0, "Chip text must be vertically center and start aligned"

    .line 479
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    .line 481
    :cond_d
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->setGravity(I)V

    :goto_10
    return-void
.end method

.method public setHideMotionSpec(Lcom/google/android/material/animation/MotionSpec;)V
    .registers 3

    .line 1914
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_7

    .line 1915
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setHideMotionSpec(Lcom/google/android/material/animation/MotionSpec;)V

    :cond_7
    return-void
.end method

.method public setHideMotionSpecResource(I)V
    .registers 3

    .line 1902
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_7

    .line 1903
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setHideMotionSpecResource(I)V

    :cond_7
    return-void
.end method

.method public setIconEndPadding(F)V
    .registers 3

    .line 2016
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_7

    .line 2017
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setIconEndPadding(F)V

    :cond_7
    return-void
.end method

.method public setIconEndPaddingResource(I)V
    .registers 3

    .line 2004
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_7

    .line 2005
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setIconEndPaddingResource(I)V

    :cond_7
    return-void
.end method

.method public setIconStartPadding(F)V
    .registers 3

    .line 1982
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_7

    .line 1983
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setIconStartPadding(F)V

    :cond_7
    return-void
.end method

.method public setIconStartPaddingResource(I)V
    .registers 3

    .line 1970
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_7

    .line 1971
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setIconStartPaddingResource(I)V

    :cond_7
    return-void
.end method

.method public setLayoutDirection(I)V
    .registers 4

    .line 1301
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-nez v0, :cond_5

    return-void

    .line 1304
    :cond_5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_e

    .line 1305
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->setLayoutDirection(I)V

    :cond_e
    return-void
.end method

.method public setLines(I)V
    .registers 3

    const/4 v0, 0x1

    if-gt p1, v0, :cond_7

    .line 643
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->setLines(I)V

    return-void

    .line 641
    :cond_7
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Chip does not support multi-line text"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setMaxLines(I)V
    .registers 3

    const/4 v0, 0x1

    if-gt p1, v0, :cond_7

    .line 659
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->setMaxLines(I)V

    return-void

    .line 657
    :cond_7
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Chip does not support multi-line text"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setMaxWidth(I)V
    .registers 3

    .line 664
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->setMaxWidth(I)V

    .line 665
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_a

    .line 666
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setMaxWidth(I)V

    :cond_a
    return-void
.end method

.method public setMinLines(I)V
    .registers 3

    const/4 v0, 0x1

    if-gt p1, v0, :cond_7

    .line 651
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->setMinLines(I)V

    return-void

    .line 649
    :cond_7
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Chip does not support multi-line text"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method setOnCheckedChangeListenerInternal(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .registers 2

    .line 703
    iput-object p1, p0, Lcom/google/android/material/chip/Chip;->onCheckedChangeListenerInternal:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-void
.end method

.method public setOnCloseIconClickListener(Landroid/view/View$OnClickListener;)V
    .registers 2

    .line 708
    iput-object p1, p0, Lcom/google/android/material/chip/Chip;->onCloseIconClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setRippleColor(Landroid/content/res/ColorStateList;)V
    .registers 3

    .line 1281
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_7

    .line 1282
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setRippleColor(Landroid/content/res/ColorStateList;)V

    .line 1284
    :cond_7
    iget-object p1, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    invoke-virtual {p1}, Lcom/google/android/material/chip/ChipDrawable;->getUseCompatRipple()Z

    move-result p1

    if-nez p1, :cond_12

    .line 1285
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->updateFrameworkRippleBackground()V

    :cond_12
    return-void
.end method

.method public setRippleColorResource(I)V
    .registers 3

    .line 1266
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_12

    .line 1267
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setRippleColorResource(I)V

    .line 1268
    iget-object p1, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    invoke-virtual {p1}, Lcom/google/android/material/chip/ChipDrawable;->getUseCompatRipple()Z

    move-result p1

    if-nez p1, :cond_12

    .line 1269
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->updateFrameworkRippleBackground()V

    :cond_12
    return-void
.end method

.method public setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V
    .registers 3

    .line 1157
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    return-void
.end method

.method public setShowMotionSpec(Lcom/google/android/material/animation/MotionSpec;)V
    .registers 3

    .line 1879
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_7

    .line 1880
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setShowMotionSpec(Lcom/google/android/material/animation/MotionSpec;)V

    :cond_7
    return-void
.end method

.method public setShowMotionSpecResource(I)V
    .registers 3

    .line 1867
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_7

    .line 1868
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setShowMotionSpecResource(I)V

    :cond_7
    return-void
.end method

.method public setSingleLine(Z)V
    .registers 3

    if-eqz p1, :cond_6

    .line 635
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->setSingleLine(Z)V

    return-void

    .line 633
    :cond_6
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Chip does not support multi-line text"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .registers 4

    .line 1311
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-nez v0, :cond_5

    return-void

    :cond_5
    if-nez p1, :cond_9

    const-string p1, ""

    .line 1317
    :cond_9
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    invoke-virtual {v0}, Lcom/google/android/material/chip/ChipDrawable;->shouldDrawText()Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    move-object v0, p1

    :goto_14
    invoke-super {p0, v0, p2}, Landroidx/appcompat/widget/AppCompatCheckBox;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 1318
    iget-object p2, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz p2, :cond_1e

    .line 1319
    invoke-virtual {p2, p1}, Lcom/google/android/material/chip/ChipDrawable;->setText(Ljava/lang/CharSequence;)V

    :cond_1e
    return-void
.end method

.method public setTextAppearance(I)V
    .registers 3

    .line 1370
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->setTextAppearance(I)V

    .line 1371
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_a

    .line 1372
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setTextAppearanceResource(I)V

    .line 1374
    :cond_a
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->updateTextPaintDrawState()V

    return-void
.end method

.method public setTextAppearance(Landroid/content/Context;I)V
    .registers 3

    .line 1361
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatCheckBox;->setTextAppearance(Landroid/content/Context;I)V

    .line 1362
    iget-object p1, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz p1, :cond_a

    .line 1363
    invoke-virtual {p1, p2}, Lcom/google/android/material/chip/ChipDrawable;->setTextAppearanceResource(I)V

    .line 1365
    :cond_a
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->updateTextPaintDrawState()V

    return-void
.end method

.method public setTextAppearance(Lcom/google/android/material/resources/TextAppearance;)V
    .registers 3

    .line 1353
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_7

    .line 1354
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setTextAppearance(Lcom/google/android/material/resources/TextAppearance;)V

    .line 1356
    :cond_7
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->updateTextPaintDrawState()V

    return-void
.end method

.method public setTextAppearanceResource(I)V
    .registers 3

    .line 1342
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/google/android/material/chip/Chip;->setTextAppearance(Landroid/content/Context;I)V

    return-void
.end method

.method public setTextEndPadding(F)V
    .registers 3

    .line 2084
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_7

    .line 2085
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setTextEndPadding(F)V

    :cond_7
    return-void
.end method

.method public setTextEndPaddingResource(I)V
    .registers 3

    .line 2072
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_7

    .line 2073
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setTextEndPaddingResource(I)V

    :cond_7
    return-void
.end method

.method public setTextStartPadding(F)V
    .registers 3

    .line 2050
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_7

    .line 2051
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setTextStartPadding(F)V

    :cond_7
    return-void
.end method

.method public setTextStartPaddingResource(I)V
    .registers 3

    .line 2038
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_7

    .line 2039
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setTextStartPaddingResource(I)V

    :cond_7
    return-void
.end method

.method public shouldEnsureMinTouchTargetSize()Z
    .registers 2

    .line 2199
    iget-boolean v0, p0, Lcom/google/android/material/chip/Chip;->ensureMinTouchTargetSize:Z

    return v0
.end method
