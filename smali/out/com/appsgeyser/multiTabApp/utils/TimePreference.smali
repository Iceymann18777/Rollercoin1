.class public Lcom/appsgeyser/multiTabApp/utils/TimePreference;
.super Landroid/preference/DialogPreference;
.source "TimePreference.java"


# instance fields
.field private lastHour:I

.field private lastMinute:I

.field private picker:Landroid/widget/TimePicker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 30
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 13
    iput p1, p0, Lcom/appsgeyser/multiTabApp/utils/TimePreference;->lastHour:I

    .line 14
    iput p1, p0, Lcom/appsgeyser/multiTabApp/utils/TimePreference;->lastMinute:I

    const/4 p1, 0x0

    .line 15
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/utils/TimePreference;->picker:Landroid/widget/TimePicker;

    const-string p1, "Set"

    .line 32
    invoke-virtual {p0, p1}, Lcom/appsgeyser/multiTabApp/utils/TimePreference;->setPositiveButtonText(Ljava/lang/CharSequence;)V

    const-string p1, "Cancel"

    .line 33
    invoke-virtual {p0, p1}, Lcom/appsgeyser/multiTabApp/utils/TimePreference;->setNegativeButtonText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static getHour(Ljava/lang/String;)I
    .registers 2

    const-string v0, ":"

    .line 18
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    .line 20
    aget-object p0, p0, v0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getMinute(Ljava/lang/String;)I
    .registers 2

    const-string v0, ":"

    .line 24
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    .line 26
    aget-object p0, p0, v0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method


# virtual methods
.method protected onBindDialogView(Landroid/view/View;)V
    .registers 3

    .line 45
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 47
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/utils/TimePreference;->picker:Landroid/widget/TimePicker;

    iget v0, p0, Lcom/appsgeyser/multiTabApp/utils/TimePreference;->lastHour:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 48
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/utils/TimePreference;->picker:Landroid/widget/TimePicker;

    iget v0, p0, Lcom/appsgeyser/multiTabApp/utils/TimePreference;->lastMinute:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onCreateDialogView()Landroid/view/View;
    .registers 3

    .line 38
    new-instance v0, Landroid/widget/TimePicker;

    invoke-virtual {p0}, Lcom/appsgeyser/multiTabApp/utils/TimePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TimePicker;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/appsgeyser/multiTabApp/utils/TimePreference;->picker:Landroid/widget/TimePicker;

    return-object v0
.end method

.method protected onDialogClosed(Z)V
    .registers 7

    .line 53
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onDialogClosed(Z)V

    if-eqz p1, :cond_5e

    .line 56
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/utils/TimePreference;->picker:Landroid/widget/TimePicker;

    invoke-virtual {p1}, Landroid/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/appsgeyser/multiTabApp/utils/TimePreference;->lastHour:I

    .line 57
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/utils/TimePreference;->picker:Landroid/widget/TimePicker;

    invoke-virtual {p1}, Landroid/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/appsgeyser/multiTabApp/utils/TimePreference;->lastMinute:I

    .line 59
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    iget v3, p0, Lcom/appsgeyser/multiTabApp/utils/TimePreference;->lastHour:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "%02d"

    invoke-static {v0, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/appsgeyser/multiTabApp/utils/TimePreference;->lastMinute:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v3, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 61
    invoke-virtual {p0, p1}, Lcom/appsgeyser/multiTabApp/utils/TimePreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 62
    invoke-virtual {p0, p1}, Lcom/appsgeyser/multiTabApp/utils/TimePreference;->persistString(Ljava/lang/String;)Z

    :cond_5e
    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .registers 3

    .line 69
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .registers 3

    if-eqz p1, :cond_14

    if-nez p2, :cond_b

    const-string p1, "00:00"

    .line 78
    invoke-virtual {p0, p1}, Lcom/appsgeyser/multiTabApp/utils/TimePreference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_18

    .line 80
    :cond_b
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/appsgeyser/multiTabApp/utils/TimePreference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_18

    .line 83
    :cond_14
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 86
    :goto_18
    invoke-static {p1}, Lcom/appsgeyser/multiTabApp/utils/TimePreference;->getHour(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/appsgeyser/multiTabApp/utils/TimePreference;->lastHour:I

    .line 87
    invoke-static {p1}, Lcom/appsgeyser/multiTabApp/utils/TimePreference;->getMinute(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/appsgeyser/multiTabApp/utils/TimePreference;->lastMinute:I

    return-void
.end method
