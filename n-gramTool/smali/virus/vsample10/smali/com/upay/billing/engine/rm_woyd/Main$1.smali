.class Lcom/upay/billing/engine/rm_woyd/Main$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic this$0:Lcom/upay/billing/engine/rm_woyd/Main;


# direct methods
.method constructor <init>(Lcom/upay/billing/engine/rm_woyd/Main;)V
    .locals 0

    iput-object p1, p0, Lcom/upay/billing/engine/rm_woyd/Main$1;->this$0:Lcom/upay/billing/engine/rm_woyd/Main;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/upay/billing/engine/rm_woyd/Main$1;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public compare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
