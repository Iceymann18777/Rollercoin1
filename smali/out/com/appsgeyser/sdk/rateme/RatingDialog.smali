.class public Lcom/appsgeyser/sdk/rateme/RatingDialog;
.super Landroidx/appcompat/app/AppCompatDialog;
.source "RatingDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/RatingBar$OnRatingBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;
    }
.end annotation


# instance fields
.field private MyPrefs:Ljava/lang/String;

.field private builder:Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;

.field private context:Landroid/content/Context;

.field private etFeedback:Landroid/widget/EditText;

.field private feedbackButtons:Landroid/widget/LinearLayout;

.field private ivIcon:Landroid/widget/ImageView;

.field private ratingBar:Landroid/widget/RatingBar;

.field private ratingButtons:Landroid/widget/LinearLayout;

.field private session:I

.field private sharedpreferences:Landroid/content/SharedPreferences;

.field private threshold:F

.field private thresholdPassed:Z

.field private tvCancel:Landroid/widget/TextView;

.field private tvFeedback:Landroid/widget/TextView;

.field private tvNegative:Landroid/widget/TextView;

.field private tvPositive:Landroid/widget/TextView;

.field private tvSubmit:Landroid/widget/TextView;

.field private tvTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;)V
    .registers 4

    .line 55
    invoke-direct {p0, p1}, Landroidx/appcompat/app/AppCompatDialog;-><init>(Landroid/content/Context;)V

    const-string v0, "RatingDialog"

    .line 39
    iput-object v0, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog;->MyPrefs:Ljava/lang/String;

    const/4 v0, 0x1

    .line 52
    iput-boolean v0, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog;->thresholdPassed:Z

    .line 56
    iput-object p1, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog;->context:Landroid/content/Context;

    .line 57
    iput-object p2, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog;->builder:Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;

    .line 59
    invoke-static {p2}, Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;->access$000(Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;)I

    move-result p1

    iput p1, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog;->session:I

    .line 60
    invoke-static {p2}, Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;->access$100(Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;)F

    move-result p1

    iput p1, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog;->threshold:F

    return-void
.end method

.method static synthetic access$2200(Lcom/appsgeyser/sdk/rateme/RatingDialog;)Landroid/content/Context;
    .registers 1

    .line 35
    iget-object p0, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/appsgeyser/sdk/rateme/RatingDialog;)V
    .registers 1

    .line 35
    invoke-direct {p0}, Lcom/appsgeyser/sdk/rateme/RatingDialog;->openForm()V

    return-void
.end method

.method private checkIfSessionMatches(I)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    return v0

    .line 320
    :cond_4
    iget-object v1, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog;->MyPrefs:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog;->sharedpreferences:Landroid/content/SharedPreferences;

    const-string v2, "show_never"

    .line 322
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_18

    return v3

    .line 326
    :cond_18
    iget-object v1, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog;->sharedpreferences:Landroid/content/SharedPreferences;

    const-string v2, "session_count"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-ne p1, v1, :cond_2f

    .line 329
    iget-object p1, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog;->sharedpreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 330
    invoke-interface {p1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 331
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return v0

    :cond_2f
    if-le p1, v1, :cond_3f

    add-int/2addr v1, v0

    .line 335
    iget-object p1, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog;->sharedpreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 336
    invoke-interface {p1, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 337
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return v3

    .line 340
    :cond_3f
    iget-object p1, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog;->sharedpreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const/4 v0, 0x2

    .line 341
    invoke-interface {p1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 342
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return v3
.end method

.method private init()V
    .registers 6

    .line 88
    iget-object v0, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog;->tvTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog;->builder:Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;

    invoke-static {v1}, Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;->access$200(Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v0, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog;->tvPositive:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog;->builder:Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;

    invoke-static {v1}, Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;->access$300(Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    iget-object v0, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog;->tvNegative:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog;->builder:Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;

    invoke-static {v1}, Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;->access$400(Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    iget-object v0, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog;->tvFeedback:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog;->builder:Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;

    invoke-static {v1}, Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;->access$500(Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    iget-object v0, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog;->tvSubmit:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog;->builder:Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;

    invoke-static {v1}, Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;->access$600(Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    iget-object v0, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog;->tvCancel:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog;->builder:Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;

    invoke-static {v1}, Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;->access$700(Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    iget-object v0, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog;->etFeedback:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog;->builder:Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;

    invoke-static {v1}, Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;->access$800(Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 97
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 98
    iget-object v1, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v2, Lcom/appsgeyser/sdk/R$attr;->colorAccent:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 99
    iget v0, v0, Landroid/util/TypedValue;->data:I

    .line 101
    iget-object v1, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog;->tvTitle:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog;->builder:Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;

    invoke-static {v2}, Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;->access$900(Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;)I

    move-result v2

    if-eqz v2, :cond_73

    iget-object v2, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog;->context:Landroid/content/Context;

    iget-object v4, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog;->builder:Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;

    invoke-static {v4}, Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;->access$900(Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;)I

    move-result v4

    goto :goto_77

    :cond_73
    iget-object v2, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog;->context:Landroid/content/Context;

    sget v4, Lcom/appsgeyser/sdk/R$color;->black:I

    :goto_77
    invoke-static {v2, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 102
    iget-object v1, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog;->tvPositive:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog;->builder:Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;

    invoke-static {v2}, Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;->access$1000(Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;)I

    move-result v2

    if-eqz v2, :cond_95

    iget-object v2, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog;->context:Landroid/content/Context;

    iget-object v4, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog;->builder:Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;

    invoke-static {v4}, Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;->access$1000(Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;)I

    move-result v4

    invoke-static {v2, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    goto :goto_96

    :cond_95
    move v2, v0

    :goto_96
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 103
    iget-object v1, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog;->tvNegative:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog;->builder:Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;

    invoke-static {v2}, Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;->access$1100(Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;)I

    move-result v2

    if-eqz v2, :cond_ac

    iget-object v2, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog;->context:Landroid/content/Context;

    iget-object v4, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog;->builder:Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;

    invoke-static {v4}, Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;->access$1100(Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;)I

    move-result v4

    goto :goto_b0

    :cond_ac
    iget-object v2, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog;->context:Landroid/content/Context;

    sget v4, Lcom/appsgeyser/sdk/R$color;->grey_500:I

    :goto_b0
    invoke-static {v2, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 105
    iget-object v1, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog;->tvFeedback:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog;->builder:Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;

    invoke-static {v2}, Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;->access$900(Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;)I

    move-result v2

    if-eqz v2, :cond_ca

    iget-object v2, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog;->context:Landroid/content/Context;

    iget-object v4, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog;->builder:Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;

    invoke-static {v4}, Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;->access$900(Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;)I

    move-result v4

    goto :goto_ce

    :cond_ca
    iget-object v2, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog;->context:Landroid/content/Context;

    sget v4, Lcom/appsgeyser/sdk/R$color;->black:I

    :goto_ce
    invoke-static {v2, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 106
    iget-object v1, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog;->tvSubmit:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog;->builder:Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;

    invoke-static {v2}, Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;->access$1000(Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;)I

    move-result v2

    if-eqz v2, :cond_eb

    iget-object v0, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog;->builder:Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;

    invoke-static {v2}, Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;->access$1000(Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;)I

    move-result v2

    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    :cond_eb
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 107
    iget-object v0, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog;->tvCancel:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog;->builder:Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;

    invoke-static {v1}, Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;->access$1100(Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;)I

    move-result v1

    if-eqz v1, :cond_101

    iget-object v1, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog;->builder:Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;

    invoke-static {v2}, Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;->access$1100(Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;)I

    move-result v2

    goto :goto_105

    :cond_101
    iget-object v1, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog;->context:Landroid/content/Context;

    sget v2, Lcom/appsgeyser/sdk/R$color;->grey_500:I

    :goto_105
    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 109
    iget-object v0, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog;->builder:Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;

    invoke-static {v0}, Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;->access$1200(Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;)I

    move-result v0

    if-eqz v0, :cond_125

    .line 110
    iget-object v0, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog;->etFeedback:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog;->builder:Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;

    invoke-static {v2}, Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;->access$1200(Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;)I

    move-result v2

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 113
    :cond_125
    iget-object v0, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog;->builder:Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;

    invoke-static {v0}, Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;->access$1300(Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;)I

    move-result v0

    if-eqz v0, :cond_143

    .line 114
    iget-object v0, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog;->tvPositive:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog;->builder:Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;

    invoke-static {v1}, Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;->access$1300(Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 115
    iget-object v0, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog;->tvSubmit:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog;->builder:Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;

    invoke-static {v1}, Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;->access$1300(Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 118
    :cond_143
    iget-object v0, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog;->builder:Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;

    invoke-static {v0}, Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;->access$1400(Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;)I

    move-result v0

    if-eqz v0, :cond_161

    .line 119
    iget-object v0, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog;->tvNegative:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog;->builder:Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;

    invoke-static {v1}, Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;->access$1400(Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 120
    iget-object v0, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog;->tvCancel:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog;->builder:Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;

    invoke-static {v1}, Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;->access$1400(Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 123
    :cond_161
    iget-object v0, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog;->builder:Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;

    invoke-static {v0}, Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;->access$1500(Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;)I

    move-result v0

    if-eqz v0, :cond_1d9

    .line 124
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-le v0, v1, :cond_1c4

    .line 125
    iget-object v0, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog;->ratingBar:Landroid/widget/RatingBar;

    invoke-virtual {v0}, Landroid/widget/RatingBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    const/4 v1, 0x2

    .line 126
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog;->context:Landroid/content/Context;

    iget-object v4, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog;->builder:Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;

    invoke-static {v4}, Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;->access$1500(Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;)I

    move-result v4

    invoke-static {v2, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 127
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog;->context:Landroid/content/Context;

    iget-object v4, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog;->builder:Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;

    invoke-static {v4}, Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;->access$1500(Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;)I

    move-result v4

    invoke-static {v2, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 128
    iget-object v1, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog;->builder:Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;

    invoke-static {v1}, Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;->access$1600(Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;)I

    move-result v1

    if-eqz v1, :cond_1b1

    iget-object v1, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog;->builder:Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;

    invoke-static {v1}, Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;->access$1600(Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;)I

    move-result v1

    goto :goto_1b3

    :cond_1b1
    sget v1, Lcom/appsgeyser/sdk/R$color;->grey_200:I

    :goto_1b3
    const/4 v2, 0x0

    .line 129
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v2, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog;->context:Landroid/content/Context;

    invoke-static {v2, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_1d9

    .line 131
    :cond_1c4
    iget-object v0, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog;->ratingBar:Landroid/widget/RatingBar;

    invoke-virtual {v0}, Landroid/widget/RatingBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 132
    iget-object v1, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog;->builder:Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;

    invoke-static {v2}, Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;->access$1500(Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;)I

    move-result v2

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-static {v0, v1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    .line 136
    :cond_1d9
    :goto_1d9
    iget-object v0, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 137
    iget-object v1, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog;->ivIcon:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog;->builder:Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;

    invoke-static {v2}, Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;->access$1700(Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_1f9

    iget-object v0, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog;->builder:Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;

    invoke-static {v0}, Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;->access$1700(Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_1f9
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 139
    iget-object v0, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog;->ratingBar:Landroid/widget/RatingBar;

    invoke-virtual {v0, p0}, Landroid/widget/RatingBar;->setOnRatingBarChangeListener(Landroid/widget/RatingBar$OnRatingBarChangeListener;)V

    .line 140
    iget-object v0, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog;->tvPositive:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    iget-object v0, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog;->tvNegative:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    iget-object v0, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog;->tvSubmit:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    iget-object v0, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog;->tvCancel:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    iget v0, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog;->session:I

    if-ne v0, v3, :cond_220

    .line 146
    iget-object v0, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog;->tvNegative:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_220
    return-void
.end method

.method private openForm()V
    .registers 3

    .line 232
    iget-object v0, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog;->tvFeedback:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 233
    iget-object v0, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog;->etFeedback:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 234
    iget-object v0, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog;->feedbackButtons:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 235
    iget-object v0, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog;->ratingButtons:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 236
    iget-object v0, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog;->ivIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 237
    iget-object v0, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 238
    iget-object v0, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog;->ratingBar:Landroid/widget/RatingBar;

    invoke-virtual {v0, v1}, Landroid/widget/RatingBar;->setVisibility(I)V

    return-void
.end method

.method private setRatingThresholdClearedListener()V
    .registers 3

    .line 213
    iget-object v0, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog;->builder:Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;

    new-instance v1, Lcom/appsgeyser/sdk/rateme/RatingDialog$1;

    invoke-direct {v1, p0}, Lcom/appsgeyser/sdk/rateme/RatingDialog$1;-><init>(Lcom/appsgeyser/sdk/rateme/RatingDialog;)V

    invoke-static {v0, v1}, Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;->access$1902(Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder$RatingThresholdClearedListener;)Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder$RatingThresholdClearedListener;

    return-void
.end method

.method private setRatingThresholdFailedListener()V
    .registers 3

    .line 223
    iget-object v0, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog;->builder:Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;

    new-instance v1, Lcom/appsgeyser/sdk/rateme/RatingDialog$2;

    invoke-direct {v1, p0}, Lcom/appsgeyser/sdk/rateme/RatingDialog$2;-><init>(Lcom/appsgeyser/sdk/rateme/RatingDialog;)V

    invoke-static {v0, v1}, Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;->access$2002(Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder$RatingThresholdFailedListener;)Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder$RatingThresholdFailedListener;

    return-void
.end method


# virtual methods
.method public getEtFeedback()Landroid/widget/EditText;
    .registers 2

    .line 276
    iget-object v0, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog;->etFeedback:Landroid/widget/EditText;

    return-object v0
.end method

.method public getFormSumbitTextView()Landroid/widget/TextView;
    .registers 2

    .line 280
    iget-object v0, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog;->tvSubmit:Landroid/widget/TextView;

    return-object v0
.end method

.method public getFormTitleTextView()Landroid/widget/TextView;
    .registers 2

    .line 272
    iget-object v0, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog;->tvFeedback:Landroid/widget/TextView;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 153
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/appsgeyser/sdk/R$id;->dialog_rating_button_negative:I

    if-ne v0, v1, :cond_f

    .line 155
    invoke-virtual {p0}, Lcom/appsgeyser/sdk/rateme/RatingDialog;->dismiss()V

    .line 156
    invoke-virtual {p0}, Lcom/appsgeyser/sdk/rateme/RatingDialog;->showNever()V

    goto :goto_68

    .line 158
    :cond_f
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/appsgeyser/sdk/R$id;->dialog_rating_button_positive:I

    if-ne v0, v1, :cond_1b

    .line 160
    invoke-virtual {p0}, Lcom/appsgeyser/sdk/rateme/RatingDialog;->dismiss()V

    goto :goto_68

    .line 162
    :cond_1b
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/appsgeyser/sdk/R$id;->dialog_rating_button_feedback_submit:I

    if-ne v0, v1, :cond_5d

    .line 164
    iget-object p1, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog;->etFeedback:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 165
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 167
    iget-object p1, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog;->context:Landroid/content/Context;

    sget v0, Lcom/appsgeyser/sdk/R$anim;->shake:I

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    .line 168
    iget-object v0, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog;->etFeedback:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->startAnimation(Landroid/view/animation/Animation;)V

    return-void

    .line 172
    :cond_45
    iget-object v0, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog;->builder:Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;

    invoke-static {v0}, Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;->access$1800(Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;)Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder$RatingDialogFormListener;

    move-result-object v0

    if-eqz v0, :cond_56

    .line 173
    iget-object v0, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog;->builder:Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;

    invoke-static {v0}, Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;->access$1800(Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;)Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder$RatingDialogFormListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder$RatingDialogFormListener;->onFormSubmitted(Ljava/lang/String;)V

    .line 176
    :cond_56
    invoke-virtual {p0}, Lcom/appsgeyser/sdk/rateme/RatingDialog;->dismiss()V

    .line 177
    invoke-virtual {p0}, Lcom/appsgeyser/sdk/rateme/RatingDialog;->showNever()V

    goto :goto_68

    .line 179
    :cond_5d
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/appsgeyser/sdk/R$id;->dialog_rating_button_feedback_cancel:I

    if-ne p1, v0, :cond_68

    .line 181
    invoke-virtual {p0}, Lcom/appsgeyser/sdk/rateme/RatingDialog;->dismiss()V

    :cond_68
    :goto_68
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4

    .line 66
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatDialog;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 67
    invoke-virtual {p0, p1}, Lcom/appsgeyser/sdk/rateme/RatingDialog;->requestWindowFeature(I)Z

    .line 68
    invoke-virtual {p0}, Lcom/appsgeyser/sdk/rateme/RatingDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 69
    sget p1, Lcom/appsgeyser/sdk/R$layout;->dialog_rating:I

    invoke-virtual {p0, p1}, Lcom/appsgeyser/sdk/rateme/RatingDialog;->setContentView(I)V

    .line 71
    sget p1, Lcom/appsgeyser/sdk/R$id;->dialog_rating_title:I

    invoke-virtual {p0, p1}, Lcom/appsgeyser/sdk/rateme/RatingDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog;->tvTitle:Landroid/widget/TextView;

    .line 72
    sget p1, Lcom/appsgeyser/sdk/R$id;->dialog_rating_button_negative:I

    invoke-virtual {p0, p1}, Lcom/appsgeyser/sdk/rateme/RatingDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog;->tvNegative:Landroid/widget/TextView;

    .line 73
    sget p1, Lcom/appsgeyser/sdk/R$id;->dialog_rating_button_positive:I

    invoke-virtual {p0, p1}, Lcom/appsgeyser/sdk/rateme/RatingDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog;->tvPositive:Landroid/widget/TextView;

    .line 74
    sget p1, Lcom/appsgeyser/sdk/R$id;->dialog_rating_feedback_title:I

    invoke-virtual {p0, p1}, Lcom/appsgeyser/sdk/rateme/RatingDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog;->tvFeedback:Landroid/widget/TextView;

    .line 75
    sget p1, Lcom/appsgeyser/sdk/R$id;->dialog_rating_button_feedback_submit:I

    invoke-virtual {p0, p1}, Lcom/appsgeyser/sdk/rateme/RatingDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog;->tvSubmit:Landroid/widget/TextView;

    .line 76
    sget p1, Lcom/appsgeyser/sdk/R$id;->dialog_rating_button_feedback_cancel:I

    invoke-virtual {p0, p1}, Lcom/appsgeyser/sdk/rateme/RatingDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog;->tvCancel:Landroid/widget/TextView;

    .line 77
    sget p1, Lcom/appsgeyser/sdk/R$id;->dialog_rating_rating_bar:I

    invoke-virtual {p0, p1}, Lcom/appsgeyser/sdk/rateme/RatingDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RatingBar;

    iput-object p1, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog;->ratingBar:Landroid/widget/RatingBar;

    .line 78
    sget p1, Lcom/appsgeyser/sdk/R$id;->dialog_rating_icon:I

    invoke-virtual {p0, p1}, Lcom/appsgeyser/sdk/rateme/RatingDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog;->ivIcon:Landroid/widget/ImageView;

    .line 79
    sget p1, Lcom/appsgeyser/sdk/R$id;->dialog_rating_feedback:I

    invoke-virtual {p0, p1}, Lcom/appsgeyser/sdk/rateme/RatingDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog;->etFeedback:Landroid/widget/EditText;

    .line 80
    sget p1, Lcom/appsgeyser/sdk/R$id;->dialog_rating_buttons:I

    invoke-virtual {p0, p1}, Lcom/appsgeyser/sdk/rateme/RatingDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog;->ratingButtons:Landroid/widget/LinearLayout;

    .line 81
    sget p1, Lcom/appsgeyser/sdk/R$id;->dialog_rating_feedback_buttons:I

    invoke-virtual {p0, p1}, Lcom/appsgeyser/sdk/rateme/RatingDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog;->feedbackButtons:Landroid/widget/LinearLayout;

    .line 83
    invoke-direct {p0}, Lcom/appsgeyser/sdk/rateme/RatingDialog;->init()V

    return-void
.end method

.method public onRatingChanged(Landroid/widget/RatingBar;FZ)V
    .registers 5

    .line 190
    invoke-virtual {p1}, Landroid/widget/RatingBar;->getRating()F

    move-result p2

    iget p3, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog;->threshold:F

    cmpl-float p2, p2, p3

    if-ltz p2, :cond_28

    const/4 p2, 0x1

    .line 191
    iput-boolean p2, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog;->thresholdPassed:Z

    .line 193
    iget-object p2, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog;->builder:Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;

    invoke-static {p2}, Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;->access$1900(Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;)Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder$RatingThresholdClearedListener;

    move-result-object p2

    if-nez p2, :cond_18

    .line 194
    invoke-direct {p0}, Lcom/appsgeyser/sdk/rateme/RatingDialog;->setRatingThresholdClearedListener()V

    .line 196
    :cond_18
    iget-object p2, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog;->builder:Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;

    invoke-static {p2}, Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;->access$1900(Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;)Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder$RatingThresholdClearedListener;

    move-result-object p2

    invoke-virtual {p1}, Landroid/widget/RatingBar;->getRating()F

    move-result p3

    iget-boolean v0, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog;->thresholdPassed:Z

    invoke-interface {p2, p0, p3, v0}, Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder$RatingThresholdClearedListener;->onThresholdCleared(Lcom/appsgeyser/sdk/rateme/RatingDialog;FZ)V

    goto :goto_45

    :cond_28
    const/4 p2, 0x0

    .line 199
    iput-boolean p2, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog;->thresholdPassed:Z

    .line 201
    iget-object p2, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog;->builder:Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;

    invoke-static {p2}, Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;->access$2000(Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;)Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder$RatingThresholdFailedListener;

    move-result-object p2

    if-nez p2, :cond_36

    .line 202
    invoke-direct {p0}, Lcom/appsgeyser/sdk/rateme/RatingDialog;->setRatingThresholdFailedListener()V

    .line 204
    :cond_36
    iget-object p2, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog;->builder:Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;

    invoke-static {p2}, Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;->access$2000(Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;)Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder$RatingThresholdFailedListener;

    move-result-object p2

    invoke-virtual {p1}, Landroid/widget/RatingBar;->getRating()F

    move-result p3

    iget-boolean v0, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog;->thresholdPassed:Z

    invoke-interface {p2, p0, p3, v0}, Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder$RatingThresholdFailedListener;->onThresholdFailed(Lcom/appsgeyser/sdk/rateme/RatingDialog;FZ)V

    .line 207
    :goto_45
    iget-object p2, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog;->builder:Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;

    invoke-static {p2}, Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;->access$2100(Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;)Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder$RatingDialogListener;

    move-result-object p2

    if-eqz p2, :cond_5c

    .line 208
    iget-object p2, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog;->builder:Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;

    invoke-static {p2}, Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;->access$2100(Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;)Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder$RatingDialogListener;

    move-result-object p2

    invoke-virtual {p1}, Landroid/widget/RatingBar;->getRating()F

    move-result p1

    iget-boolean p3, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog;->thresholdPassed:Z

    invoke-interface {p2, p1, p3}, Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder$RatingDialogListener;->onRatingSelected(FZ)V

    :cond_5c
    return-void
.end method

.method public openPlaystore(Landroid/content/Context;)V
    .registers 5

    .line 242
    iget-object v0, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog;->builder:Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;

    invoke-static {v0}, Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;->access$2400(Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 244
    :try_start_a
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_14
    .catch Landroid/content/ActivityNotFoundException; {:try_start_a .. :try_end_14} :catch_15

    goto :goto_1f

    :catch_15
    const/4 v0, 0x0

    const-string v1, "Couldn\'t find PlayStore on this device"

    .line 246
    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_1f
    return-void
.end method

.method public show()V
    .registers 2

    .line 306
    iget v0, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog;->session:I

    invoke-direct {p0, v0}, Lcom/appsgeyser/sdk/rateme/RatingDialog;->checkIfSessionMatches(I)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 307
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatDialog;->show()V

    .line 308
    iget-object v0, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog;->builder:Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;

    invoke-static {v0}, Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;->access$2100(Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;)Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder$RatingDialogListener;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 309
    iget-object v0, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog;->builder:Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;

    invoke-static {v0}, Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;->access$2100(Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;)Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder$RatingDialogListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder$RatingDialogListener;->onRatingDialogShown()V

    :cond_1c
    return-void
.end method

.method public showNever()V
    .registers 4

    .line 348
    iget-object v0, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog;->MyPrefs:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog;->sharedpreferences:Landroid/content/SharedPreferences;

    .line 349
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "show_never"

    const/4 v2, 0x1

    .line 350
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 351
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public switchToForm()V
    .registers 3

    .line 251
    iget-object v0, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog;->ratingBar:Landroid/widget/RatingBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RatingBar;->setEnabled(Z)V

    .line 252
    iget-object v0, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog;->tvFeedback:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 253
    iget-object v0, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog;->feedbackButtons:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 254
    iget-object v0, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog;->ratingButtons:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 255
    iget-object v0, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog;->ivIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 256
    iget-object v0, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method
