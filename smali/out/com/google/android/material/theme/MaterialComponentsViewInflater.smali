.class public Lcom/google/android/material/theme/MaterialComponentsViewInflater;
.super Landroidx/appcompat/app/AppCompatViewInflater;
.source "MaterialComponentsViewInflater.java"


# static fields
.field private static floatingToolbarItemBackgroundResId:I = -0x1


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 43
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatViewInflater;-><init>()V

    return-void
.end method


# virtual methods
.method protected createButton(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatButton;
    .registers 4

    .line 53
    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/theme/MaterialComponentsViewInflater;->shouldInflateAppCompatButton(Landroid/content/Context;Landroid/util/AttributeSet;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 54
    new-instance v0, Landroidx/appcompat/widget/AppCompatButton;

    invoke-direct {v0, p1, p2}, Landroidx/appcompat/widget/AppCompatButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0

    .line 57
    :cond_c
    new-instance v0, Lcom/google/android/material/button/MaterialButton;

    invoke-direct {v0, p1, p2}, Lcom/google/android/material/button/MaterialButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected createCheckBox(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatCheckBox;
    .registers 4

    .line 97
    new-instance v0, Lcom/google/android/material/checkbox/MaterialCheckBox;

    invoke-direct {v0, p1, p2}, Lcom/google/android/material/checkbox/MaterialCheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected createRadioButton(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatRadioButton;
    .registers 4

    .line 103
    new-instance v0, Lcom/google/android/material/radiobutton/MaterialRadioButton;

    invoke-direct {v0, p1, p2}, Lcom/google/android/material/radiobutton/MaterialRadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected createTextView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatTextView;
    .registers 4

    .line 109
    new-instance v0, Lcom/google/android/material/textview/MaterialTextView;

    invoke-direct {v0, p1, p2}, Lcom/google/android/material/textview/MaterialTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected shouldInflateAppCompatButton(Landroid/content/Context;Landroid/util/AttributeSet;)Z
    .registers 8

    .line 67
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x17

    if-eq v0, v2, :cond_14

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-eq v0, v2, :cond_14

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x19

    if-eq v0, v2, :cond_14

    return v1

    .line 73
    :cond_14
    sget v0, Lcom/google/android/material/theme/MaterialComponentsViewInflater;->floatingToolbarItemBackgroundResId:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_29

    .line 76
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const-string v0, "floatingToolbarItemBackgroundDrawable"

    const-string v3, "^attr-private"

    const-string v4, "android"

    .line 77
    invoke-virtual {p1, v0, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    sput p1, Lcom/google/android/material/theme/MaterialComponentsViewInflater;->floatingToolbarItemBackgroundResId:I

    .line 80
    :cond_29
    sget p1, Lcom/google/android/material/theme/MaterialComponentsViewInflater;->floatingToolbarItemBackgroundResId:I

    if-eqz p1, :cond_4d

    if-eq p1, v2, :cond_4d

    const/4 p1, 0x0

    .line 81
    :goto_30
    invoke-interface {p2}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v0

    if-ge p1, v0, :cond_4d

    .line 82
    invoke-interface {p2, p1}, Landroid/util/AttributeSet;->getAttributeNameResource(I)I

    move-result v0

    const v2, 0x10100d4

    if-ne v0, v2, :cond_4a

    const/4 v0, 0x0

    .line 83
    invoke-interface {p2, p1, v0, v1}, Landroid/util/AttributeSet;->getAttributeListValue(I[Ljava/lang/String;I)I

    move-result v0

    .line 84
    sget v2, Lcom/google/android/material/theme/MaterialComponentsViewInflater;->floatingToolbarItemBackgroundResId:I

    if-ne v2, v0, :cond_4a

    const/4 p1, 0x1

    return p1

    :cond_4a
    add-int/lit8 p1, p1, 0x1

    goto :goto_30

    :cond_4d
    return v1
.end method
