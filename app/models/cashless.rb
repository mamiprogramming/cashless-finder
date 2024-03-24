class Cashless < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: 'キャッシュレス対応' },
    { id: 3, name: '現金のみ' },
  ]
end