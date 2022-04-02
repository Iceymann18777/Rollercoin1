.class public Lcom/appsgeyser/multiTabApp/browser/DownloadsItemAdapter;
.super Landroid/widget/ArrayAdapter;
.source "DownloadsItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appsgeyser/multiTabApp/browser/DownloadsItemAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/appsgeyser/multiTabApp/browser/DownloadsItem;",
        ">;"
    }
.end annotation


# instance fields
.field private context:Landroid/app/Activity;

.field private itemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/appsgeyser/multiTabApp/browser/DownloadsItem;",
            ">;"
        }
    .end annotation
.end field

.field private resource:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;ILjava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "I",
            "Ljava/util/List<",
            "Lcom/appsgeyser/multiTabApp/browser/DownloadsItem;",
            ">;)V"
        }
    .end annotation

    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 29
    iput-object p3, p0, Lcom/appsgeyser/multiTabApp/browser/DownloadsItemAdapter;->itemList:Ljava/util/List;

    .line 30
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/browser/DownloadsItemAdapter;->context:Landroid/app/Activity;

    .line 31
    iput p2, p0, Lcom/appsgeyser/multiTabApp/browser/DownloadsItemAdapter;->resource:I

    return-void
.end method

.method public static isSameDay(Ljava/util/Calendar;Ljava/util/Calendar;)Z
    .registers 6

    if-eqz p0, :cond_27

    if-eqz p1, :cond_27

    const/4 v0, 0x0

    .line 103
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v1, v2, :cond_26

    .line 104
    invoke-virtual {p0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v1, v2, :cond_26

    const/4 v1, 0x6

    .line 105
    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result p0

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    if-ne p0, p1, :cond_26

    const/4 v0, 0x1

    :cond_26
    return v0

    .line 101
    :cond_27
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The dates must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static isSameDay(Ljava/util/Date;Ljava/util/Date;)Z
    .registers 3

    if-eqz p0, :cond_17

    if-eqz p1, :cond_17

    .line 92
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 93
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 94
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p0

    .line 95
    invoke-virtual {p0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 96
    invoke-static {v0, p0}, Lcom/appsgeyser/multiTabApp/browser/DownloadsItemAdapter;->isSameDay(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result p0

    return p0

    .line 90
    :cond_17
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The dates must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 11

    if-nez p2, :cond_45

    .line 47
    iget-object p2, p0, Lcom/appsgeyser/multiTabApp/browser/DownloadsItemAdapter;->context:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    .line 48
    iget p3, p0, Lcom/appsgeyser/multiTabApp/browser/DownloadsItemAdapter;->resource:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p2, p3, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 49
    new-instance p3, Lcom/appsgeyser/multiTabApp/browser/DownloadsItemAdapter$ViewHolder;

    invoke-direct {p3, v1}, Lcom/appsgeyser/multiTabApp/browser/DownloadsItemAdapter$ViewHolder;-><init>(Lcom/appsgeyser/multiTabApp/browser/DownloadsItemAdapter$1;)V

    const v0, 0x7f0a016a

    .line 50
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/appsgeyser/multiTabApp/browser/DownloadsItemAdapter$ViewHolder;->name:Landroid/widget/TextView;

    const v0, 0x7f0a00ae

    .line 51
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/appsgeyser/multiTabApp/browser/DownloadsItemAdapter$ViewHolder;->description:Landroid/widget/TextView;

    const v0, 0x7f0a019c

    .line 52
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p3, Lcom/appsgeyser/multiTabApp/browser/DownloadsItemAdapter$ViewHolder;->progressBar:Landroid/widget/ProgressBar;

    const v0, 0x7f0a0213

    .line 53
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/appsgeyser/multiTabApp/browser/DownloadsItemAdapter$ViewHolder;->date:Landroid/widget/TextView;

    .line 55
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_4b

    .line 57
    :cond_45
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/appsgeyser/multiTabApp/browser/DownloadsItemAdapter$ViewHolder;

    .line 59
    :goto_4b
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/browser/DownloadsItemAdapter;->itemList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/appsgeyser/multiTabApp/browser/DownloadsItem;

    .line 60
    iget-object v0, p3, Lcom/appsgeyser/multiTabApp/browser/DownloadsItemAdapter$ViewHolder;->name:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/appsgeyser/multiTabApp/browser/DownloadsItem;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    iget-object v0, p3, Lcom/appsgeyser/multiTabApp/browser/DownloadsItemAdapter$ViewHolder;->description:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/appsgeyser/multiTabApp/browser/DownloadsItem;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    invoke-virtual {p1}, Lcom/appsgeyser/multiTabApp/browser/DownloadsItem;->getDate()Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_c2

    invoke-virtual {p1}, Lcom/appsgeyser/multiTabApp/browser/DownloadsItem;->getDate()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-nez v0, :cond_7d

    goto :goto_c2

    .line 65
    :cond_7d
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    new-instance v3, Ljava/util/Date;

    invoke-virtual {p1}, Lcom/appsgeyser/multiTabApp/browser/DownloadsItem;->getDate()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-static {v0, v3}, Lcom/appsgeyser/multiTabApp/browser/DownloadsItemAdapter;->isSameDay(Ljava/util/Date;Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_a9

    .line 66
    iget-object v0, p3, Lcom/appsgeyser/multiTabApp/browser/DownloadsItemAdapter$ViewHolder;->date:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/appsgeyser/multiTabApp/browser/DownloadsItem;->getDate()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-string v5, "HH:mm"

    invoke-static {v5, v3, v4}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_bc

    .line 68
    :cond_a9
    iget-object v0, p3, Lcom/appsgeyser/multiTabApp/browser/DownloadsItemAdapter$ViewHolder;->date:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/appsgeyser/multiTabApp/browser/DownloadsItem;->getDate()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-string v5, "dd MMM"

    invoke-static {v5, v3, v4}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    :goto_bc
    iget-object v0, p3, Lcom/appsgeyser/multiTabApp/browser/DownloadsItemAdapter$ViewHolder;->date:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_c7

    .line 63
    :cond_c2
    :goto_c2
    iget-object v0, p3, Lcom/appsgeyser/multiTabApp/browser/DownloadsItemAdapter$ViewHolder;->date:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 72
    :goto_c7
    invoke-virtual {p1}, Lcom/appsgeyser/multiTabApp/browser/DownloadsItem;->getStatus()Lcom/appsgeyser/multiTabApp/browser/DownloadsItem$Status;

    move-result-object v0

    sget-object v3, Lcom/appsgeyser/multiTabApp/browser/DownloadsItem$Status;->InProgress:Lcom/appsgeyser/multiTabApp/browser/DownloadsItem$Status;

    if-ne v0, v3, :cond_e7

    .line 73
    iget-object v0, p3, Lcom/appsgeyser/multiTabApp/browser/DownloadsItemAdapter$ViewHolder;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1}, Lcom/appsgeyser/multiTabApp/browser/DownloadsItem;->getProgress()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 74
    iget-object p1, p3, Lcom/appsgeyser/multiTabApp/browser/DownloadsItemAdapter$ViewHolder;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 75
    iget-object p1, p3, Lcom/appsgeyser/multiTabApp/browser/DownloadsItemAdapter$ViewHolder;->description:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_10c

    .line 77
    :cond_e7
    invoke-virtual {p1}, Lcom/appsgeyser/multiTabApp/browser/DownloadsItem;->getStatus()Lcom/appsgeyser/multiTabApp/browser/DownloadsItem$Status;

    move-result-object v0

    sget-object v3, Lcom/appsgeyser/multiTabApp/browser/DownloadsItem$Status;->Ok:Lcom/appsgeyser/multiTabApp/browser/DownloadsItem$Status;

    if-ne v0, v3, :cond_fa

    .line 78
    iget-object p1, p3, Lcom/appsgeyser/multiTabApp/browser/DownloadsItemAdapter$ViewHolder;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 79
    iget-object p1, p3, Lcom/appsgeyser/multiTabApp/browser/DownloadsItemAdapter$ViewHolder;->description:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_10c

    .line 81
    :cond_fa
    invoke-virtual {p1}, Lcom/appsgeyser/multiTabApp/browser/DownloadsItem;->getStatus()Lcom/appsgeyser/multiTabApp/browser/DownloadsItem$Status;

    move-result-object p1

    sget-object v0, Lcom/appsgeyser/multiTabApp/browser/DownloadsItem$Status;->Fail:Lcom/appsgeyser/multiTabApp/browser/DownloadsItem$Status;

    if-ne p1, v0, :cond_10c

    .line 82
    iget-object p1, p3, Lcom/appsgeyser/multiTabApp/browser/DownloadsItemAdapter$ViewHolder;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 83
    iget-object p1, p3, Lcom/appsgeyser/multiTabApp/browser/DownloadsItemAdapter$ViewHolder;->description:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_10c
    :goto_10c
    return-object p2
.end method
