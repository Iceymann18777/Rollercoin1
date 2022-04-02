.class public final Lcom/tappx/a/l0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tappx/a/l0$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/tappx/a/l0;->b:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/tappx/a/l0;->a:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/tappx/a/l0;->c:Ljava/lang/String;

    return-void
.end method
