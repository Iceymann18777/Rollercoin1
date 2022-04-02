.class public Lcom/tappx/a/k4;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tappx/a/k4$c;
    }
.end annotation


# instance fields
.field private final a:Lcom/tappx/a/z3;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 3
    new-instance v0, Lcom/tappx/a/z3;

    invoke-direct {v0}, Lcom/tappx/a/z3;-><init>()V

    invoke-direct {p0, v0}, Lcom/tappx/a/k4;-><init>(Lcom/tappx/a/z3;)V

    return-void
.end method

.method public constructor <init>(Lcom/tappx/a/z3;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/tappx/a/k4;->a:Lcom/tappx/a/z3;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-static {p1, p2}, Lcom/tappx/sdk/android/VideoAdActivity;->startMraid(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method a(Landroid/content/Context;Ljava/lang/String;Lcom/tappx/a/k4$c;)V
    .registers 6

    .line 76
    new-instance v0, Lcom/tappx/a/r3;

    new-instance v1, Lcom/tappx/a/k4$b;

    invoke-direct {v1, p0, p1, p3}, Lcom/tappx/a/k4$b;-><init>(Lcom/tappx/a/k4;Landroid/content/Context;Lcom/tappx/a/k4$c;)V

    invoke-direct {v0, p1, v1}, Lcom/tappx/a/r3;-><init>(Landroid/content/Context;Lcom/tappx/a/r3$b;)V

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/String;

    const/4 p3, 0x0

    aput-object p2, p1, p3

    .line 89
    invoke-static {v0, p1}, Lcom/tappx/a/u4;->a(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    return-void
.end method

.method public a(Landroid/content/Context;Ljava/net/URI;)V
    .registers 4

    .line 75
    iget-object v0, p0, Lcom/tappx/a/k4;->a:Lcom/tappx/a/z3;

    invoke-virtual {p2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/tappx/a/z3;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public a(Landroid/content/Context;Ljava/util/Map;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 46
    invoke-virtual {p0, p1}, Lcom/tappx/a/k4;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_88

    .line 50
    :try_start_6
    invoke-static {p2}, Lcom/tappx/a/m4;->a(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p2

    .line 51
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "vnd.android.cursor.item/event"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 52
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_51

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 53
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 54
    instance-of v4, v3, Ljava/lang/Long;

    if-eqz v4, :cond_3d

    .line 55
    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    goto :goto_1f

    .line 56
    :cond_3d
    instance-of v4, v3, Ljava/lang/Integer;

    if-eqz v4, :cond_4b

    .line 57
    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1f

    .line 59
    :cond_4b
    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1f

    :cond_51
    const/high16 p2, 0x10000000

    .line 62
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 63
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_59
    .catch Landroid/content/ActivityNotFoundException; {:try_start_6 .. :try_end_59} :catch_80
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_59} :catch_61
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_59} :catch_5a

    return-void

    :catch_5a
    move-exception p1

    .line 70
    new-instance p2, Lcom/tappx/a/f4;

    invoke-direct {p2, p1}, Lcom/tappx/a/f4;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_61
    move-exception p1

    .line 71
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid params "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/tappx/a/j4;->a(Ljava/lang/String;)V

    .line 72
    new-instance p2, Lcom/tappx/a/f4;

    invoke-direct {p2, p1}, Lcom/tappx/a/f4;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 73
    :catch_80
    new-instance p1, Lcom/tappx/a/f4;

    const-string p2, "App not found"

    invoke-direct {p1, p2}, Lcom/tappx/a/f4;-><init>(Ljava/lang/String;)V

    throw p1

    .line 74
    :cond_88
    new-instance p1, Lcom/tappx/a/f4;

    const-string p2, "Unsupported action"

    invoke-direct {p1, p2}, Lcom/tappx/a/f4;-><init>(Ljava/lang/String;)V

    goto :goto_91

    :goto_90
    throw p1

    :goto_91
    goto :goto_90
.end method

.method a(Landroid/app/Activity;Landroid/view/View;)Z
    .registers 6

    .line 5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0xc

    if-ge v0, v2, :cond_8

    return v1

    .line 24
    :cond_8
    :goto_8
    invoke-virtual {p2}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 25
    invoke-virtual {p2}, Landroid/view/View;->getLayerType()I

    move-result v0

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/tappx/a/u4;->a(II)Z

    move-result v0

    if-eqz v0, :cond_1a

    goto :goto_3f

    .line 30
    :cond_1a
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-nez v0, :cond_38

    .line 42
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_37

    .line 44
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 p2, 0x1000000

    invoke-static {p1, p2}, Lcom/tappx/a/u4;->a(II)Z

    move-result p1

    if-eqz p1, :cond_37

    return v2

    :cond_37
    return v1

    .line 45
    :cond_38
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    goto :goto_8

    :cond_3f
    :goto_3f
    return v1
.end method

.method a(Landroid/content/Context;)Z
    .registers 7

    .line 2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "vnd.android.cursor.item/event"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0xe

    if-lt v1, v4, :cond_17

    const/4 v1, 0x1

    goto :goto_18

    :cond_17
    const/4 v1, 0x0

    :goto_18
    if-eqz v1, :cond_21

    .line 4
    invoke-static {p1, v0}, Lcom/tappx/a/q3;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_21

    goto :goto_22

    :cond_21
    const/4 v2, 0x0

    :goto_22
    return v2
.end method

.method public b(Landroid/content/Context;Ljava/lang/String;Lcom/tappx/a/k4$c;)V
    .registers 7

    .line 5
    invoke-virtual {p0, p1}, Lcom/tappx/a/k4;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 8
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_36

    .line 9
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Save Image"

    .line 11
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Download image to Gallery?"

    .line 12
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "Cancel"

    .line 13
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/tappx/a/k4$a;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/tappx/a/k4$a;-><init>(Lcom/tappx/a/k4;Landroid/content/Context;Ljava/lang/String;Lcom/tappx/a/k4$c;)V

    const-string p1, "Ok"

    .line 14
    invoke-virtual {v0, p1, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/4 p2, 0x1

    .line 20
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 21
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_43

    :cond_36
    const/4 v0, 0x0

    const-string v1, "Downloading image ..."

    .line 23
    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 24
    invoke-virtual {p0, p1, p2, p3}, Lcom/tappx/a/k4;->a(Landroid/content/Context;Ljava/lang/String;Lcom/tappx/a/k4$c;)V

    :goto_43
    return-void

    .line 25
    :cond_44
    new-instance p1, Lcom/tappx/a/f4;

    const-string p2, "Unsupported action"

    invoke-direct {p1, p2}, Lcom/tappx/a/f4;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method b(Landroid/content/Context;)Z
    .registers 4

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "sms:"

    .line 2
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 4
    invoke-static {p1, v0}, Lcom/tappx/a/q3;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method

.method c(Landroid/content/Context;)Z
    .registers 4

    .line 1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 2
    invoke-static {p1, v0}, Lcom/tappx/a/d3;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_16

    const/4 p1, 0x1

    goto :goto_17

    :cond_16
    const/4 p1, 0x0

    :goto_17
    return p1
.end method

.method d(Landroid/content/Context;)Z
    .registers 4

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DIAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "tel:"

    .line 2
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 4
    invoke-static {p1, v0}, Lcom/tappx/a/q3;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method
