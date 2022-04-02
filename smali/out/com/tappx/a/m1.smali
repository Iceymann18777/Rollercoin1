.class public final Lcom/tappx/a/m1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tappx/a/m1$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/tappx/a/m1;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/tappx/a/m1;->d:Ljava/lang/String;

    .line 4
    iput-object p4, p0, Lcom/tappx/a/m1;->b:Ljava/lang/String;

    .line 5
    iput-object p5, p0, Lcom/tappx/a/m1;->c:Ljava/lang/String;

    .line 6
    iput-object p3, p0, Lcom/tappx/a/m1;->e:Ljava/lang/String;

    .line 7
    iput-boolean p6, p0, Lcom/tappx/a/m1;->f:Z

    return-void
.end method
